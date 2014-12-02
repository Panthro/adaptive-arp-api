/*
--| ADAPTIVE RUNTIME PLATFORM |----------------------------------------------------------------------------------------

(C) Copyright 2013-2015 Carlos Lozano Diez t/a Adaptive.me <http://adaptive.me>.

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the
License. You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0 . Unless required by appli-
-cable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS,  WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the  License  for the specific language governing
permissions and limitations under the License.

Original author:

    * Carlos Lozano Diez
            <http://github.com/carloslozano>
            <http://twitter.com/adaptivecoder>
            <mailto:carlos@adaptive.me>

Contributors:

    * See source code files for contributors.

------------------------------------| Engineered with ♥ in Barcelona, Catalonia |--------------------------------------
 */
package me.adaptive.tools.jenerator.typescript;

import com.thoughtworks.qdox.model.DocletTag;
import com.thoughtworks.qdox.model.JavaClass;
import com.thoughtworks.qdox.model.JavaField;
import me.adaptive.tools.jenerator.GeneratorBase;
import me.adaptive.tools.jenerator.utils.IndentPrintStream;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

/**
 * Created by clozano on 02/12/14.
 */
public class TypeScriptGenerator extends GeneratorBase {

    private File currentFile;
    private IndentPrintStream indentPrintStream;
    private File currentFileGlobal;
    private IndentPrintStream indentPrintStreamGlobal;
    private List<String> arrayOfClasses = new ArrayList<>();

    public TypeScriptGenerator(File outRootPath, List<Class> classList, List<JavaClass> sourceList) {
        super(outRootPath, classList, sourceList);
    }

    @Override
    protected void endGeneration() {
        currentFile = new File(getOutputRootDirectory(), "join.sh");
        if (currentFile.exists()) {
            currentFile.delete();
        }
        try {
            indentPrintStream = new IndentPrintStream(new FileOutputStream(currentFile));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        println("#!/bin/sh");
        println("# Join all scripts into a combined JavaScript file. NOTE: you *must* include files in their precise order");
        println("# of inheritance and dependency; failing to do this will report errors when creating instances of classes");
        println("# from JavaScript and you're going to have a very bad time. As Mc Hammer would say: 'You can't touch dis!'");
        println("# unless you *really* know what you're doing.");
        println();
        println("# ps. This file is AUTO-GENERATED.");
        println();
        print("tsc --out adaptive-full.js");
        for (String name : arrayOfClasses) {
            print(" " + name);
        }
        println();

        indentPrintStream.flush();
        indentPrintStream.close();
        indentPrintStreamGlobal.println();
        indentPrintStreamGlobal.println("}");
        indentPrintStreamGlobal.println("/**");
        indentPrintStreamGlobal.println(super.getSourceFooter());
        indentPrintStreamGlobal.println("*/");
        indentPrintStreamGlobal.flush();
        indentPrintStreamGlobal.close();
    }

    @Override
    protected void startGeneration() {

    }

    @Override
    protected void endFields(String simpleName, Class clazz) {

    }

    @Override
    protected void startFields(String simpleName, Class clazz) {

    }

    @Override
    protected String convertJavaToNativeType(Class classType) {
        String type = "Unknown";
        if (classType.isArray()) {
            return "Array<" + convertJavaToNativeType(classType.getComponentType()) + ">";
        } else if (classType.isPrimitive()) {
            if (classType.equals(Double.TYPE)) {
                return "number";
            } else if (classType.equals(Integer.TYPE)) {
                return "number";
            } else if (classType.equals(Long.TYPE)) {
                return "number";
            } else if (classType.equals(Byte.TYPE)) {
                return "number";
            } else if (classType.equals(Float.TYPE)) {
                return "number";
            } else if (classType.equals(Boolean.TYPE)) {
                return "boolean";
            } else if (classType.equals(Character.TYPE)) {
                return "string";
            }
        } else if (classType.isEnum()) {

        } else if (classType.equals(Object.class)) {
            return "any";
        } else if (classType.equals(String.class)) {
            return "string";
        } else {
            type = classType.getSimpleName();
        }
        return type;
    }

    @Override
    protected void declareField(Class clazz, Field field, JavaField fieldByName) {
        if (fieldByName.getComment() != null && fieldByName.getComment().length() > 0) {
            startComment(10);
            startCommentGlobal(10);
            println(13, fieldByName.getComment());
            printlnGlobal(13, fieldByName.getComment());
            endComment(10);
            endCommentGlobal(10);
        }
        println(10, field.getName() + " : " + convertJavaToNativeType(field.getType())+";");
        printlnGlobal(10, field.getName() + " : " + convertJavaToNativeType(field.getType())+";");
    }

    @Override
    protected IndentPrintStream getIndentStream() {
        return this.indentPrintStream;
    }

    @Override
    protected void endBean(String simpleName, Class clazz) {
        println(5, "}"); // Class
        indentPrintStreamGlobal.println(5, "}");
        println("}"); // Module
    }

    @Override
    protected void startBean(String simpleName, Class clazz, String comment, List<DocletTag> tagList) {
        List<String> referenceList = new ArrayList<>();
        if (clazz.getSuperclass() != null && !clazz.getSuperclass().equals(Object.class)) {
            referenceList.add(clazz.getSuperclass().getSimpleName());
        }
        for (Field field : clazz.getDeclaredFields()) {
            if (field.getType().isArray()) {
                if (!field.getType().getComponentType().isPrimitive() && !field.getType().getComponentType().equals(String.class)) {
                    if (!referenceList.contains(field.getType().getComponentType().getSimpleName())) {
                        referenceList.add(field.getType().getComponentType().getSimpleName());
                    }
                }
            } else if (!field.getType().isPrimitive() && !field.getType().equals(String.class) && !field.getType().equals(clazz)) {
                if (!referenceList.contains(field.getType().getSimpleName())) {
                    referenceList.add(field.getType().getSimpleName());
                }
            }
        }
        referenceList.sort(new Comparator<String>() {
            @Override
            public int compare(String o1, String o2) {
                return o1.compareTo(o2);
            }
        });

        if (referenceList.size()>0) {
            for (String reference : referenceList) {
                println("///<reference path=\"" + reference + ".ts\"/>");
            }
            println();
        }

        println("module Adaptive {"); // Module
        println();
        startComment(5);
        startCommentGlobal(5);
        println(5, comment);
        printlnGlobal(5, comment);
        if (tagList.size() > 0) {
            println();
            printlnGlobal();
            for (DocletTag tag : tagList) {
                println(5, "@" + tag.getName() + " " + tag.getValue());
                printlnGlobal(5, "@" + tag.getName() + " " + tag.getValue());
            }
        }
        endComment(5);
        endCommentGlobal(5);
        if (clazz.getSuperclass() != null && !clazz.getSuperclass().equals(Object.class)) {
            println(5, "export class " + simpleName + " extends " + clazz.getSuperclass().getSimpleName() + " {");
            printlnGlobal(5, "export class " + simpleName + " extends " + clazz.getSuperclass().getSimpleName() + " {");
        } else {
            println(5, "export class " + simpleName + " {");
            printlnGlobal(5, "export class " + simpleName + " {");
        }
    }

    private void printGlobal(int indent, String value) {
        if (indentPrintStreamGlobal != null) {
            indentPrintStreamGlobal.print(indent, value);
        }
    }

    private void printGlobal(int indent) {
        this.printlnGlobal(indent, "");
    }

    private void printlnGlobal(int indent, String value) {
        if (indentPrintStreamGlobal != null) {
            indentPrintStreamGlobal.println(indent, value);
        }
    }

    private void printlnGlobal(int indent) {
        this.printlnGlobal(indent, "");
    }

    private void printlnGlobal() {
        this.printlnGlobal(0);
    }

    private void startCommentGlobal(int indent) {
        if (indentPrintStreamGlobal != null) {
            indentPrintStreamGlobal.println(indent, "/**");
        }
    }

    private void endCommentGlobal(int indent) {
        if (indentPrintStreamGlobal != null) {
            indentPrintStreamGlobal.println(indent, "*/");
        }
    }

    @Override
    protected void startClass(Class clazz) {
        currentFile = new File(getOutputRootDirectory(), clazz.getSimpleName() + ".ts");
        if (currentFile.exists()) {
            currentFile.delete();
        }
        try {
            indentPrintStream = new IndentPrintStream(new FileOutputStream(currentFile));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        if (currentFileGlobal == null) {
            currentFileGlobal = new File(getOutputRootDirectory(), "Adaptive.ts");
            if (currentFileGlobal.exists()) {
                currentFileGlobal.delete();
            }
            try {
                indentPrintStreamGlobal = new IndentPrintStream(new FileOutputStream(currentFileGlobal));
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            }
            indentPrintStreamGlobal.println("/**");
            indentPrintStreamGlobal.println(super.getSourceHeader());
            indentPrintStreamGlobal.println("*/");
            indentPrintStreamGlobal.println("module Adaptive {");
            indentPrintStreamGlobal.println();
        }
        this.arrayOfClasses.add(clazz.getSimpleName() + ".ts");
    }

    @Override
    protected void endClass(Class clazz) {
        indentPrintStream.flush();
        indentPrintStream.close();
    }
}