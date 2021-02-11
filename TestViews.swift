{\rtf1\ansi\ansicpg1252\cocoartf2513
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red255\green255\blue255;\red31\green31\blue36;\red252\green95\blue163;
\red93\green216\blue255;\red208\green168\blue255;\red65\green161\blue192;\red103\green183\blue164;\red161\green103\blue230;
\red161\green103\blue230;\red252\green106\blue93;\red158\green241\blue221;}
{\*\expandedcolortbl;;\csgenericrgb\c100000\c100000\c100000\c85000;\csgenericrgb\c12054\c12284\c14131;\csgenericrgb\c98839\c37355\c63833;
\csgenericrgb\c36295\c84643\c99897;\csgenericrgb\c81681\c65692\c99927;\csgenericrgb\c25490\c63137\c75294;\csgenericrgb\c40538\c71705\c64209;\csgenericrgb\c63137\c40392\c90196;
\csgenericrgb\c63232\c40219\c90115;\csgenericrgb\c98912\c41558\c36568;\csgenericrgb\c62145\c94386\c86819;}
\paperw11900\paperh16840\margl1440\margr1440\vieww28300\viewh15220\viewkind0
\deftab692
\pard\tx692\pardeftab692\pardirnatural\partightenfactor0

\f0\fs28 \cf2 \cb3 \
\
\cf4 import\cf2  SwiftUI\
\
\cf4 struct\cf2  \cf5 CapsuleText\cf2 : \cf6 View\cf2  \{\
    \cf4 var\cf2  \cf7 text\cf2 : \cf6 String\cf2 \
    \cf4 var\cf2  \cf7 text2\cf2 : \cf6 String\cf2 \
    \
    \cf4 var\cf2  \cf7 body\cf2 : \cf4 some\cf2  \cf6 View\cf2  \{\
        \cf6 VStack\cf2  \{\
            \cf6 Text\cf2 (\cf8 text\cf2 )\
                .\cf9 font\cf2 (.\cf10 largeTitle\cf2 )\
                .\cf9 padding\cf2 ()\
                .\cf9 background\cf2 (\cf6 Color\cf2 .\cf10 red\cf2 )\
            \cf6 Button\cf2 (\cf8 text2\cf2 ) \{\
                \cf9 print\cf2 (\cf11 "I have been tapped"\cf2 )\
            \}\
        \}\
    \}\
\}\
\
\cf4 struct\cf2  \cf5 ContentView\cf2 : \cf6 View\cf2  \{\
    @\cf6 State\cf2  \cf4 private\cf2  \cf4 var\cf2  \cf7 useRedText\cf2  = \cf4 false\cf2 \
    \cf4 var\cf2  \cf7 body\cf2 : \cf4 some\cf2  \cf6 View\cf2  \{\
        \
        \cf6 VStack\cf2  \{\
            \cf6 Button\cf2 (\cf11 "Hello world"\cf2 ) \{\
            \
                \cf4 self\cf2 .\cf8 useRedText\cf2 .\cf9 toggle\cf2 ()\
            \}\
            .\cf9 foregroundColor\cf2 (\cf8 useRedText\cf2  ? .\cf10 red\cf2  : .\cf10 blue\cf2 )\
            \
            \cf12 CapsuleText\cf2 (text: \cf11 "hello from capsule"\cf2 , text2: \cf11 "second text"\cf2 )\
            \cf12 CapsuleText\cf2 (text: \cf11 "hello from capsule number 2"\cf2 , text2: \cf11 "third text"\cf2 )\
        \}\
        \
        \
    \}\
\}\
\
\cf4 struct\cf2  \cf5 ContentView_Previews\cf2 : \cf6 PreviewProvider\cf2  \{\
    \cf4 static\cf2  \cf4 var\cf2  \cf7 previews\cf2 : \cf4 some\cf2  \cf6 View\cf2  \{\
        \cf12 ContentView\cf2 ()\
    \}\
\}\
}