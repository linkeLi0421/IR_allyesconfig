; ModuleID = '/llk/IR_all_yes/scripts/asn1_compiler.c_pt.bc'
source_filename = "../scripts/asn1_compiler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.token = type { i16, i8, i8, ptr, ptr, ptr }
%struct.type = type { ptr, ptr, ptr, i32, i32 }
%struct.action = type { ptr, ptr, i8 }
%struct.element = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i8, i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [15 x i8] c"KBUILD_VERBOSE\00", align 1
@verbose_opt = internal unnamed_addr global i8 0, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@debug_opt = internal unnamed_addr global i1 false, align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [57 x i8] c"Format: %s [-v] [-d] <grammar-file> <c-file> <hdr-file>\0A\00", align 1
@filename = internal unnamed_addr global ptr null, align 8
@outputname = internal unnamed_addr global ptr null, align 8
@headername = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"%s: Short read\0A\00", align 1
@grammar_name = internal unnamed_addr global ptr null, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@token_list = internal unnamed_addr global ptr null, align 8
@directives = internal unnamed_addr constant [82 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97], align 16
@.str.6 = private unnamed_addr constant [4 x i8] c"::=\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"({\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"})\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"%s:%u: Unknown character in grammar: '%c'\0A\00", align 1
@nr_tokens = internal unnamed_addr global i32 0, align 4
@.str.15 = private unnamed_addr constant [21 x i8] c"Extracted %u tokens\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"ABSENT\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"ANY\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"APPLICATION\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"AUTOMATIC\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"BIT\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"BMPString\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"BOOLEAN\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"BY\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"CHARACTER\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"CHOICE\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"CLASS\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"COMPONENT\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"COMPONENTS\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"CONSTRAINED\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"CONTAINING\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"DEFINED\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"DEFINITIONS\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"EMBEDDED\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"ENCODED\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"ENCODING-CONTROL\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"ENUMERATED\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"EXCEPT\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"EXPLICIT\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"EXPORTS\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"EXTENSIBILITY\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"EXTERNAL\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"FROM\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"GeneralString\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"GeneralizedTime\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"GraphicString\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"IA5String\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"IMPLICIT\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"IMPLIED\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"IMPORTS\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"INCLUDES\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"INSTANCE\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"INSTRUCTIONS\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"INTEGER\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"INTERSECTION\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"ISO646String\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"MAX\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"MIN\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"MINUS-INFINITY\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"NumericString\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"OBJECT\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"OCTET\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"OF\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"OPTIONAL\00", align 1
@.str.71 = private unnamed_addr constant [17 x i8] c"ObjectDescriptor\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"PATTERN\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"PDV\00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"PLUS-INFINITY\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"PRESENT\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"PRIVATE\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"PrintableString\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"REAL\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"RELATIVE-OID\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"SEQUENCE\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"SET\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"SIZE\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"SYNTAX\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"T61String\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"TAGS\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"TeletexString\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"UNION\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"UNIQUE\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"UNIVERSAL\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"UTCTime\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"UTF8String\00", align 1
@.str.94 = private unnamed_addr constant [16 x i8] c"UniversalString\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"VideotexString\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"VisibleString\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"WITH\00", align 1
@.str.98 = private unnamed_addr constant [22 x i8] c"%s: No defined types\0A\00", align 1
@nr_types = internal unnamed_addr global i32 0, align 4
@type_list = internal unnamed_addr global ptr null, align 8
@type_index = internal unnamed_addr global ptr null, align 8
@.str.99 = private unnamed_addr constant [20 x i8] c"Extracted %u types\0A\00", align 1
@.str.100 = private unnamed_addr constant [34 x i8] c"%s:%d: Parse error at token '%s'\0A\00", align 1
@.str.101 = private unnamed_addr constant [22 x i8] c"Extracted %u actions\0A\00", align 1
@nr_actions = internal unnamed_addr global i32 0, align 4
@.str.102 = private unnamed_addr constant [42 x i8] c"%s:%d: Unrecognised tag class token '%s'\0A\00", align 1
@.str.103 = private unnamed_addr constant [32 x i8] c"%s:%d: Missing tag number '%s'\0A\00", align 1
@.str.104 = private unnamed_addr constant [44 x i8] c"%s:%d: Missing closing square bracket '%s'\0A\00", align 1
@.str.105 = private unnamed_addr constant [28 x i8] c"%s:%d: Type '%s' undefined\0A\00", align 1
@.str.106 = private unnamed_addr constant [45 x i8] c"%s:%d: Token '%s' does not introduce a type\0A\00", align 1
@.str.107 = private unnamed_addr constant [50 x i8] c"%s:%d: Token '%s' is not an action function name\0A\00", align 1
@action_list = internal unnamed_addr global ptr null, align 8
@.str.108 = private unnamed_addr constant [39 x i8] c"%s:%d: Missing close action, got '%s'\0A\00", align 1
@.str.109 = private unnamed_addr constant [30 x i8] c"%s:%d: Unexpected token '%s'\0A\00", align 1
@.str.110 = private unnamed_addr constant [26 x i8] c"%s: Unexpectedly hit EOF\0A\00", align 1
@element_list = internal unnamed_addr global ptr null, align 8
@token_to_tag = internal unnamed_addr constant <{ [81 x i8], [12 x i8] }> <{ [81 x i8] c"\00\00\00\00\00\00\03\1E\01\00\1D\00\00\00\00\00\00\00\00\00\00\00\00\00\0A\00\00\00\00\08\00\00\1B\18\19\16\00\00\00\00\00\00\00\02\00\00\00\00\00\05\12\06\04\00\00\07\00\00\00\00\00\13\09\0D\10\11\00\00\00\14\00\00\14\00\00\00\17\0C\17\15\1A", [12 x i8] zeroinitializer }>, align 16
@.str.112 = private unnamed_addr constant [55 x i8] c"%s:%d: Expected compound to start with brace not '%s'\0A\00", align 1
@.str.113 = private unnamed_addr constant [23 x i8] c"%s:%d: Empty compound\0A\00", align 1
@.str.114 = private unnamed_addr constant [44 x i8] c"%s:%d: Expected compound closure, got '%s'\0A\00", align 1
@.str.115 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"<...>\00", align 1
@.str.117 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@asn1_classes = internal constant [4 x [5 x i8]] [[5 x i8] c"UNIV\00", [5 x i8] c"APPL\00", [5 x i8] c"CONT\00", [5 x i8] c"PRIV\00"], align 16
@asn1_methods = internal constant [2 x [5 x i8]] [[5 x i8] c"PRIM\00", [5 x i8] c"CONS\00"], align 1
@asn1_universal_tags = internal unnamed_addr constant [32 x ptr] [ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.65, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.78, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr null, ptr null, ptr @.str.134, ptr @.str.81, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr null], align 16
@.str.118 = private unnamed_addr constant [9 x i8] c"%s %s %u\00", align 1
@.str.119 = private unnamed_addr constant [50 x i8] c"%c%c%c%c%c %c %*s[*] \1B[33m%s\1B[m %s %s \1B[35m%s\1B[m\0A\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"-tTqQcaro\00", align 1
@.str.121 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.122 = private unnamed_addr constant [4 x i8] c"EOC\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"BOOL\00", align 1
@.str.124 = private unnamed_addr constant [4 x i8] c"INT\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"BTS\00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c"OTS\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"OID\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"ODE\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"EXT\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c"ENUM\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"EPDV\00", align 1
@.str.132 = private unnamed_addr constant [8 x i8] c"UTF8STR\00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c"RELOID\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"SEQ\00", align 1
@.str.135 = private unnamed_addr constant [7 x i8] c"NUMSTR\00", align 1
@.str.136 = private unnamed_addr constant [7 x i8] c"PRNSTR\00", align 1
@.str.137 = private unnamed_addr constant [7 x i8] c"TEXSTR\00", align 1
@.str.138 = private unnamed_addr constant [7 x i8] c"VIDSTR\00", align 1
@.str.139 = private unnamed_addr constant [7 x i8] c"IA5STR\00", align 1
@.str.140 = private unnamed_addr constant [7 x i8] c"UNITIM\00", align 1
@.str.141 = private unnamed_addr constant [7 x i8] c"GENTIM\00", align 1
@.str.142 = private unnamed_addr constant [7 x i8] c"GRASTR\00", align 1
@.str.143 = private unnamed_addr constant [7 x i8] c"VISSTR\00", align 1
@.str.144 = private unnamed_addr constant [7 x i8] c"GENSTR\00", align 1
@.str.145 = private unnamed_addr constant [7 x i8] c"UNISTR\00", align 1
@.str.146 = private unnamed_addr constant [7 x i8] c"CHRSTR\00", align 1
@.str.147 = private unnamed_addr constant [7 x i8] c"BMPSTR\00", align 1
@.str.148 = private unnamed_addr constant [4 x i8] c"/*\0A\00", align 1
@.str.149 = private unnamed_addr constant [59 x i8] c" * Automatically generated by asn1_compiler.  Do not edit\0A\00", align 1
@.str.150 = private unnamed_addr constant [4 x i8] c" *\0A\00", align 1
@.str.151 = private unnamed_addr constant [24 x i8] c" * ASN.1 parser for %s\0A\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c" */\0A\00", align 1
@.str.153 = private unnamed_addr constant [33 x i8] c"#include <linux/asn1_decoder.h>\0A\00", align 1
@.str.154 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.155 = private unnamed_addr constant [46 x i8] c"extern const struct asn1_decoder %s_decoder;\0A\00", align 1
@.str.156 = private unnamed_addr constant [38 x i8] c"#include <linux/asn1_ber_bytecode.h>\0A\00", align 1
@.str.157 = private unnamed_addr constant [22 x i8] c"#include \22%s.asn1.h\22\0A\00", align 1
@.str.158 = private unnamed_addr constant [69 x i8] c"extern int %s(void *, size_t, unsigned char, const void *, size_t);\0A\00", align 1
@.str.159 = private unnamed_addr constant [19 x i8] c"enum %s_actions {\0A\00", align 1
@.str.160 = private unnamed_addr constant [15 x i8] c"\09ACT_%s = %u,\0A\00", align 1
@.str.161 = private unnamed_addr constant [22 x i8] c"\09NR__%s_actions = %u\0A\00", align 1
@.str.162 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.163 = private unnamed_addr constant [64 x i8] c"static const asn1_action_t %s_action_table[NR__%s_actions] = {\0A\00", align 1
@.str.164 = private unnamed_addr constant [14 x i8] c"\09[%4u] = %s,\0A\00", align 1
@nr_entries = internal unnamed_addr global i32 0, align 4
@.str.166 = private unnamed_addr constant [19 x i8] c"ASN1_OP_COMPLETE,\0A\00", align 1
@.str.168 = private unnamed_addr constant [45 x i8] c"static const unsigned char %s_machine[] = {\0A\00", align 1
@.str.169 = private unnamed_addr constant [42 x i8] c"const struct asn1_decoder %s_decoder = {\0A\00", align 1
@.str.170 = private unnamed_addr constant [25 x i8] c"\09.machine = %s_machine,\0A\00", align 1
@.str.171 = private unnamed_addr constant [33 x i8] c"\09.machlen = sizeof(%s_machine),\0A\00", align 1
@.str.172 = private unnamed_addr constant [30 x i8] c"\09.actions = %s_action_table,\0A\00", align 1
@.str.173 = private unnamed_addr constant [8 x i8] c"\09// %s\0A\00", align 1
@.str.174 = private unnamed_addr constant [6 x i8] c"COND_\00", align 1
@.str.175 = private unnamed_addr constant [5 x i8] c"_ACT\00", align 1
@.str.176 = private unnamed_addr constant [25 x i8] c"ASN1_OP_%sMATCH_ANY%s%s,\00", align 1
@.str.177 = private unnamed_addr constant [9 x i8] c"_OR_SKIP\00", align 1
@.str.178 = private unnamed_addr constant [8 x i8] c"\09\09// %s\00", align 1
@.str.179 = private unnamed_addr constant [21 x i8] c"ASN1_OP_%sMATCH%s%s,\00", align 1
@.str.180 = private unnamed_addr constant [6 x i8] c"_JUMP\00", align 1
@.str.181 = private unnamed_addr constant [19 x i8] c"_tag(%s, %s, %s),\0A\00", align 1
@.str.182 = private unnamed_addr constant [21 x i8] c"_tagn(%s, %s, %2u),\0A\00", align 1
@.str.183 = private unnamed_addr constant [16 x i8] c"ASN1_OP_%sACT,\0A\00", align 1
@.str.184 = private unnamed_addr constant [7 x i8] c"MAYBE_\00", align 1
@.str.185 = private unnamed_addr constant [18 x i8] c"_jump_target(%u),\00", align 1
@.str.186 = private unnamed_addr constant [12 x i8] c"\09\09// --> %s\00", align 1
@render_list_p = internal unnamed_addr global ptr @render_list, align 8
@render_depth = internal unnamed_addr global i32 1, align 4
@.str.187 = private unnamed_addr constant [20 x i8] c"ASN1_OP_END_SEQ%s,\0A\00", align 1
@.str.188 = private unnamed_addr constant [23 x i8] c"ASN1_OP_END_SEQ_OF%s,\0A\00", align 1
@.str.189 = private unnamed_addr constant [23 x i8] c"ASN1_OP_END_SET_OF%s,\0A\00", align 1
@.str.190 = private unnamed_addr constant [19 x i8] c"_jump_target(%u),\0A\00", align 1
@.str.191 = private unnamed_addr constant [48 x i8] c"The ASN.1 SET type is not currently supported.\0A\00", align 1
@.str.192 = private unnamed_addr constant [20 x i8] c"ASN1_OP_COND_FAIL,\0A\00", align 1
@.str.193 = private unnamed_addr constant [14 x i8] c"ASN1_OP_ACT,\0A\00", align 1
@.str.194 = private unnamed_addr constant [18 x i8] c"_action(ACT_%s),\0A\00", align 1
@render_list = internal global ptr null, align 8
@.str.195 = private unnamed_addr constant [12 x i8] c"\09[%4d] =%*s\00", align 1
@.str.196 = private unnamed_addr constant [20 x i8] c"ASN1_OP_END_SET%s,\0A\00", align 1
@.str.197 = private unnamed_addr constant [17 x i8] c"ASN1_OP_RETURN,\0A\00", align 1
@str = private unnamed_addr constant [7 x i8] c"Pass 2\00", align 1
@str.198 = private unnamed_addr constant [7 x i8] c"Pass 1\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr nocapture noundef %argv) local_unnamed_addr #0 {
entry:
  %cursor.i = alloca ptr, align 8
  %st = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %st) #22
  %call = tail call ptr @getenv(ptr noundef nonnull @.str) #22
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i64 @strtol(ptr nocapture noundef nonnull %call, ptr noundef null, i32 noundef 10) #22
  %conv.i = trunc i64 %call.i to i32
  %tobool2 = icmp ne i32 %conv.i, 0
  %frombool = zext i1 %tobool2 to i8
  store i8 %frombool, ptr @verbose_opt, align 1, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp175 = icmp sgt i32 %argc, 4
  br i1 %cmp175, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %arrayidx = getelementptr inbounds ptr, ptr %argv, i64 1
  %arrayidx14 = getelementptr inbounds ptr, ptr %argv, i64 2
  %0 = zext i32 %argc to i64
  br label %while.body

while.body:                                       ; preds = %if.end12, %while.body.lr.ph
  %indvars.iv = phi i64 [ %0, %while.body.lr.ph ], [ %indvars.iv.next, %if.end12 ]
  %1 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %call3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.1) #23
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %while.body
  store i8 1, ptr @verbose_opt, align 1, !tbaa !5
  br label %if.end12

if.else:                                          ; preds = %while.body
  %call7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.2) #23
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.then17

if.then9:                                         ; preds = %if.else
  store i1 true, ptr @debug_opt, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then5
  %sub = shl i64 %indvars.iv, 3
  %2 = add i64 %sub, 34359738352
  %mul = and i64 %2, 34359738360
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %arrayidx, ptr nonnull align 8 %arrayidx14, i64 %mul, i1 false)
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp = icmp sgt i64 %indvars.iv, 5
  br i1 %cmp, label %while.body, label %if.end20

while.end:                                        ; preds = %if.end
  %cmp15.not = icmp eq i32 %argc, 4
  br i1 %cmp15.not, label %if.end20, label %if.then17

if.then17:                                        ; preds = %while.end, %if.else
  %3 = load ptr, ptr @stderr, align 8, !tbaa !9
  %4 = load ptr, ptr %argv, align 8, !tbaa !9
  %call19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef %4) #24
  tail call void @exit(i32 noundef 2) #25
  unreachable

if.end20:                                         ; preds = %while.end, %if.end12
  %arrayidx21 = getelementptr inbounds ptr, ptr %argv, i64 1
  %5 = load ptr, ptr %arrayidx21, align 8, !tbaa !9
  store ptr %5, ptr @filename, align 8, !tbaa !9
  %arrayidx22 = getelementptr inbounds ptr, ptr %argv, i64 2
  %6 = load ptr, ptr %arrayidx22, align 8, !tbaa !9
  store ptr %6, ptr @outputname, align 8, !tbaa !9
  %arrayidx23 = getelementptr inbounds ptr, ptr %argv, i64 3
  %7 = load ptr, ptr %arrayidx23, align 8, !tbaa !9
  store ptr %7, ptr @headername, align 8, !tbaa !9
  %call24 = tail call i32 (ptr, i32, ...) @open(ptr noundef %5, i32 noundef 0) #22
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end20
  %8 = load ptr, ptr @filename, align 8, !tbaa !9
  tail call void @perror(ptr noundef %8) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable

if.end28:                                         ; preds = %if.end20
  %call.i117 = call i32 @__fxstat(i32 noundef 1, i32 noundef %call24, ptr noundef nonnull %st) #22
  %cmp30 = icmp slt i32 %call.i117, 0
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  %9 = load ptr, ptr @filename, align 8, !tbaa !9
  call void @perror(ptr noundef %9) #24
  call void @exit(i32 noundef 1) #25
  unreachable

if.end33:                                         ; preds = %if.end28
  %st_size = getelementptr inbounds %struct.stat, ptr %st, i64 0, i32 8
  %10 = load i64, ptr %st_size, align 8, !tbaa !11
  %add = add nsw i64 %10, 1
  %call34 = call noalias ptr @malloc(i64 noundef %add) #26
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  call void @perror(ptr noundef null) #24
  call void @exit(i32 noundef 1) #25
  unreachable

if.end37:                                         ; preds = %if.end33
  %call39 = call i64 @read(i32 noundef %call24, ptr noundef nonnull %call34, i64 noundef %10) #22
  %cmp40 = icmp slt i64 %call39, 0
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end37
  %11 = load ptr, ptr @filename, align 8, !tbaa !9
  call void @perror(ptr noundef %11) #24
  call void @exit(i32 noundef 1) #25
  unreachable

if.end43:                                         ; preds = %if.end37
  %call44 = call i32 @close(i32 noundef %call24) #22
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end43
  %12 = load ptr, ptr @filename, align 8, !tbaa !9
  call void @perror(ptr noundef %12) #24
  call void @exit(i32 noundef 1) #25
  unreachable

if.end48:                                         ; preds = %if.end43
  %13 = load i64, ptr %st_size, align 8, !tbaa !11
  %cmp50.not = icmp eq i64 %call39, %13
  br i1 %cmp50.not, label %if.end54, label %if.then52

if.then52:                                        ; preds = %if.end48
  %14 = load ptr, ptr @stderr, align 8, !tbaa !9
  %15 = load ptr, ptr @filename, align 8, !tbaa !9
  %call53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.4, ptr noundef %15) #24
  call void @exit(i32 noundef 1) #25
  unreachable

if.end54:                                         ; preds = %if.end48
  %16 = load ptr, ptr %arrayidx21, align 8, !tbaa !9
  %call56 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %16, i32 noundef 47) #23
  %tobool57.not = icmp eq ptr %call56, null
  %add.ptr = getelementptr inbounds i8, ptr %call56, i64 1
  %cond = select i1 %tobool57.not, ptr %16, ptr %add.ptr
  %call59 = call noalias ptr @strdup(ptr noundef %cond) #22
  store ptr %call59, ptr @grammar_name, align 8, !tbaa !9
  %tobool60.not = icmp eq ptr %cond, null
  br i1 %tobool60.not, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end54
  call void @perror(ptr noundef null) #24
  call void @exit(i32 noundef 1) #25
  unreachable

if.end62:                                         ; preds = %if.end54
  %call63 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %call59, i32 noundef 46) #23
  %tobool64.not = icmp eq ptr %call63, null
  br i1 %tobool64.not, label %if.end66, label %if.then65

if.then65:                                        ; preds = %if.end62
  store i8 0, ptr %call63, align 1, !tbaa !16
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end62
  %arrayidx67 = getelementptr inbounds i8, ptr %call34, i64 %call39
  store i8 0, ptr %arrayidx67, align 1, !tbaa !16
  %sub.ptr.lhs.cast.i = ptrtoint ptr %arrayidx67 to i64
  %div.i199223 = lshr i64 %call39, 1
  %call.i118 = call noalias ptr @calloc(i64 noundef %div.i199223, i64 noundef 32) #27
  store ptr %call.i118, ptr @token_list, align 8, !tbaa !9
  %tobool.not.i = icmp eq ptr %call.i118, null
  br i1 %tobool.not.i, label %if.then.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.end66
  %cmp567.i.not = icmp eq i64 %call39, 0
  br i1 %cmp567.i.not, label %while.end349.i, label %while.body.i

if.then.i:                                        ; preds = %if.end66
  call void @perror(ptr noundef null) #28
  call void @exit(i32 noundef 1) #25
  unreachable

while.body.i:                                     ; preds = %while.end348.i, %while.cond.preheader.i
  %buffer.addr.0570.i = phi ptr [ %buffer.addr.1.i, %while.end348.i ], [ %call34, %while.cond.preheader.i ]
  %lineno.0569.i = phi i32 [ %inc.i, %while.end348.i ], [ 0, %while.cond.preheader.i ]
  %tix.0568.i = phi i32 [ %tix.1549.i, %while.end348.i ], [ 0, %while.cond.preheader.i ]
  %inc.i = add i32 %lineno.0569.i, 1
  %sub.ptr.rhs.cast2.i = ptrtoint ptr %buffer.addr.0570.i to i64
  %sub.ptr.sub3.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast2.i
  %call4.i = call ptr @memchr(ptr noundef %buffer.addr.0570.i, i32 noundef 10, i64 noundef %sub.ptr.sub3.i) #23
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.end7.i, label %if.else.i

if.else.i:                                        ; preds = %while.body.i
  %add.ptr.i = getelementptr inbounds i8, ptr %call4.i, i64 1
  store i8 0, ptr %call4.i, align 1, !tbaa !16
  %.pre.i = ptrtoint ptr %call4.i to i64
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %while.body.i
  %sub.ptr.lhs.cast9.pre-phi.i = phi i64 [ %sub.ptr.lhs.cast.i, %while.body.i ], [ %.pre.i, %if.else.i ]
  %nl.0.i = phi ptr [ %arrayidx67, %while.body.i ], [ %call4.i, %if.else.i ]
  %buffer.addr.1.i = phi ptr [ %arrayidx67, %while.body.i ], [ %add.ptr.i, %if.else.i ]
  br label %while.cond8.i

while.cond8.i:                                    ; preds = %while.cond8.i.backedge, %if.end7.i
  %p.1.i = phi ptr [ %buffer.addr.0570.i, %if.end7.i ], [ %p.1.i.be, %while.cond8.i.backedge ]
  %sub.ptr.rhs.cast10.i = ptrtoint ptr %p.1.i to i64
  %sub.ptr.sub11.i = sub i64 %sub.ptr.lhs.cast9.pre-phi.i, %sub.ptr.rhs.cast10.i
  %call12.i = call ptr @memchr(ptr noundef %p.1.i, i32 noundef 45, i64 noundef %sub.ptr.sub11.i) #23
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %while.end39.i, label %while.body14.i

while.body14.i:                                   ; preds = %while.cond8.i
  %arrayidx.i = getelementptr inbounds i8, ptr %call12.i, i64 1
  %17 = load i8, ptr %arrayidx.i, align 1, !tbaa !16
  %cmp15.i = icmp eq i8 %17, 45
  br i1 %cmp15.i, label %if.then17.i, label %while.cond8.i.backedge

while.cond8.i.backedge:                           ; preds = %if.then30.i, %while.body14.i
  %p.1.i.be = phi ptr [ %arrayidx.i, %while.body14.i ], [ %call12.i, %if.then30.i ]
  br label %while.cond8.i

if.then17.i:                                      ; preds = %while.body14.i
  %add.ptr18.i = getelementptr inbounds i8, ptr %call12.i, i64 2
  br label %while.cond19.i

while.cond19.i:                                   ; preds = %while.body25.i, %if.then17.i
  %q.0.i = phi ptr [ %add.ptr18.i, %if.then17.i ], [ %arrayidx26.i, %while.body25.i ]
  %sub.ptr.rhs.cast21.i = ptrtoint ptr %q.0.i to i64
  %sub.ptr.sub22.i = sub i64 %sub.ptr.lhs.cast9.pre-phi.i, %sub.ptr.rhs.cast21.i
  %call23.i = call ptr @memchr(ptr noundef nonnull %q.0.i, i32 noundef 45, i64 noundef %sub.ptr.sub22.i) #23
  %tobool24.not.i = icmp eq ptr %call23.i, null
  br i1 %tobool24.not.i, label %while.end.i, label %while.body25.i

while.body25.i:                                   ; preds = %while.cond19.i
  %arrayidx26.i = getelementptr inbounds i8, ptr %call23.i, i64 1
  %18 = load i8, ptr %arrayidx26.i, align 1, !tbaa !16
  %cmp28.i = icmp eq i8 %18, 45
  br i1 %cmp28.i, label %if.then30.i, label %while.cond19.i

if.then30.i:                                      ; preds = %while.body25.i
  %add.ptr31.i = getelementptr inbounds i8, ptr %call23.i, i64 2
  %sub.ptr.rhs.cast33.i = ptrtoint ptr %add.ptr31.i to i64
  %sub.ptr.sub34.i = sub i64 %sub.ptr.lhs.cast9.pre-phi.i, %sub.ptr.rhs.cast33.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %call12.i, ptr nonnull align 1 %add.ptr31.i, i64 %sub.ptr.sub34.i, i1 false) #22
  br label %while.cond8.i.backedge

while.end.i:                                      ; preds = %while.cond19.i
  store i8 0, ptr %call12.i, align 1, !tbaa !16
  %.pre593.i = ptrtoint ptr %call12.i to i64
  br label %while.end39.i

while.end39.i:                                    ; preds = %while.end.i, %while.cond8.i
  %nl.1586.pre-phi.i = phi i64 [ %.pre593.i, %while.end.i ], [ %sub.ptr.lhs.cast9.pre-phi.i, %while.cond8.i ]
  %nl.1.i = phi ptr [ %call12.i, %while.end.i ], [ %nl.0.i, %while.cond8.i ]
  %cmp41563.i = icmp ult ptr %buffer.addr.0570.i, %nl.1.i
  br i1 %cmp41563.i, label %while.cond44.preheader.lr.ph.i, label %while.end348.i

while.cond44.preheader.lr.ph.i:                   ; preds = %while.end39.i
  %conv59.i = trunc i32 %inc.i to i16
  br label %while.cond44.preheader.i

while.cond44.preheader.i:                         ; preds = %while.cond40.backedge.i, %while.cond44.preheader.lr.ph.i
  %tix.1565.i = phi i32 [ %tix.0568.i, %while.cond44.preheader.lr.ph.i ], [ %tix.1.be.i, %while.cond40.backedge.i ]
  %p.2564.i = phi ptr [ %buffer.addr.0570.i, %while.cond44.preheader.lr.ph.i ], [ %p.2.be.i, %while.cond40.backedge.i ]
  %cmp45555.i = icmp ult ptr %p.2564.i, %nl.1.i
  br i1 %cmp45555.i, label %land.rhs.lr.ph.i, label %while.end348.i

land.rhs.lr.ph.i:                                 ; preds = %while.cond44.preheader.i
  %p.2564587.i = ptrtoint ptr %p.2564.i to i64
  %call47.i = tail call ptr @__ctype_b_loc() #29
  %uglygep.i = getelementptr i8, ptr %p.2564.i, i64 %nl.1586.pre-phi.i
  %19 = sub i64 0, %p.2564587.i
  %uglygep588.i = getelementptr i8, ptr %uglygep.i, i64 %19
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body52.i, %land.rhs.lr.ph.i
  %p.3556.i = phi ptr [ %p.2564.i, %land.rhs.lr.ph.i ], [ %incdec.ptr53.i, %while.body52.i ]
  %20 = load ptr, ptr %call47.i, align 8, !tbaa !9
  %21 = load i8, ptr %p.3556.i, align 1, !tbaa !16
  %idxprom.i = sext i8 %21 to i64
  %arrayidx49.i = getelementptr inbounds i16, ptr %20, i64 %idxprom.i
  %22 = load i16, ptr %arrayidx49.i, align 2, !tbaa !17
  %23 = and i16 %22, 8192
  %tobool51.not.i = icmp eq i16 %23, 0
  br i1 %tobool51.not.i, label %if.end58.i, label %while.body52.i

while.body52.i:                                   ; preds = %land.rhs.i
  %incdec.ptr53.i = getelementptr inbounds i8, ptr %p.3556.i, i64 1
  store i8 0, ptr %p.3556.i, align 1, !tbaa !16
  %exitcond.not.i = icmp eq ptr %incdec.ptr53.i, %uglygep588.i
  br i1 %exitcond.not.i, label %while.end348.i, label %land.rhs.i

if.end58.i:                                       ; preds = %land.rhs.i
  %p.3556.lcssa590.i = ptrtoint ptr %p.3556.i to i64
  %idxprom60.i = zext i32 %tix.1565.i to i64
  %arrayidx61.i = getelementptr inbounds %struct.token, ptr %call.i118, i64 %idxprom60.i
  store i16 %conv59.i, ptr %arrayidx61.i, align 8, !tbaa !19
  %24 = load i8, ptr %p.3556.i, align 1, !tbaa !16
  %idxprom65.i = sext i8 %24 to i64
  %arrayidx66.i = getelementptr inbounds i16, ptr %20, i64 %idxprom65.i
  %25 = load i16, ptr %arrayidx66.i, align 2, !tbaa !17
  %conv67.i = zext i16 %25 to i32
  %and68.i = and i32 %conv67.i, 1024
  %tobool69.not.i = icmp eq i32 %and68.i, 0
  br i1 %tobool69.not.i, label %if.end161.i, label %while.cond72.preheader.i

while.cond72.preheader.i:                         ; preds = %if.end58.i
  %q.1558.i = getelementptr inbounds i8, ptr %p.3556.i, i64 1
  %cmp73559.i = icmp ult ptr %q.1558.i, %nl.1.i
  br i1 %cmp73559.i, label %land.rhs75.preheader.i, label %while.end92.i

land.rhs75.preheader.i:                           ; preds = %while.cond72.preheader.i
  %uglygep589.i = getelementptr i8, ptr %p.3556.i, i64 %nl.1586.pre-phi.i
  %26 = sub i64 0, %p.3556.lcssa590.i
  %uglygep591.i = getelementptr i8, ptr %uglygep589.i, i64 %26
  br label %land.rhs75.i

land.rhs75.i:                                     ; preds = %while.cond72.backedge.i, %land.rhs75.preheader.i
  %q.1560.i = phi ptr [ %q.1.i, %while.cond72.backedge.i ], [ %q.1558.i, %land.rhs75.preheader.i ]
  %27 = load i8, ptr %q.1560.i, align 1, !tbaa !16
  %idxprom78.i = sext i8 %27 to i64
  %arrayidx79.i = getelementptr inbounds i16, ptr %20, i64 %idxprom78.i
  %28 = load i16, ptr %arrayidx79.i, align 2, !tbaa !17
  %.fr535.i = freeze i16 %28
  %29 = and i16 %.fr535.i, 8
  %tobool82.not.not.i = icmp eq i16 %29, 0
  br i1 %tobool82.not.not.i, label %switch.early.test.i, label %while.cond72.backedge.i

while.cond72.backedge.i:                          ; preds = %switch.early.test.i, %switch.early.test.i, %land.rhs75.i
  %q.1.i = getelementptr inbounds i8, ptr %q.1560.i, i64 1
  %exitcond592.not.i = icmp eq ptr %q.1.i, %uglygep591.i
  br i1 %exitcond592.not.i, label %while.end92.i, label %land.rhs75.i

switch.early.test.i:                              ; preds = %land.rhs75.i
  switch i8 %27, label %while.end92.i [
    i8 95, label %while.cond72.backedge.i
    i8 45, label %while.cond72.backedge.i
  ]

while.end92.i:                                    ; preds = %switch.early.test.i, %while.cond72.backedge.i, %while.cond72.preheader.i
  %q.1.lcssa.i = phi ptr [ %q.1558.i, %while.cond72.preheader.i ], [ %uglygep591.i, %while.cond72.backedge.i ], [ %q.1560.i, %switch.early.test.i ]
  %sub.ptr.lhs.cast93.i = ptrtoint ptr %q.1.lcssa.i to i64
  %sub.ptr.sub95.i = sub i64 %sub.ptr.lhs.cast93.i, %p.3556.lcssa590.i
  %conv96.i = trunc i64 %sub.ptr.sub95.i to i8
  %size.i = getelementptr inbounds %struct.token, ptr %call.i118, i64 %idxprom60.i, i32 2
  store i8 %conv96.i, ptr %size.i, align 1, !tbaa !21
  %conv102.i = and i64 %sub.ptr.sub95.i, 255
  %add.i = add nuw nsw i64 %conv102.i, 1
  %call104.i = call noalias ptr @malloc(i64 noundef %add.i) #26
  %content.i = getelementptr inbounds %struct.token, ptr %call.i118, i64 %idxprom60.i, i32 4
  store ptr %call104.i, ptr %content.i, align 8, !tbaa !22
  %tobool110.not.i = icmp eq ptr %call104.i, null
  br i1 %tobool110.not.i, label %if.then111.i, label %if.end112.i

if.then111.i:                                     ; preds = %while.end92.i
  call void @perror(ptr noundef null) #28
  call void @exit(i32 noundef 1) #25
  unreachable

if.end112.i:                                      ; preds = %while.end92.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call104.i, ptr nonnull align 1 %p.3556.i, i64 %conv102.i, i1 false) #22
  %arrayidx127.i = getelementptr inbounds i8, ptr %call104.i, i64 %conv102.i
  store i8 0, ptr %arrayidx127.i, align 1, !tbaa !16
  %30 = load ptr, ptr %call47.i, align 8, !tbaa !9
  %31 = load i8, ptr %call104.i, align 1, !tbaa !16
  %idxprom134.i = sext i8 %31 to i64
  %arrayidx135.i = getelementptr inbounds i16, ptr %30, i64 %idxprom134.i
  %32 = load i16, ptr %arrayidx135.i, align 2, !tbaa !17
  %33 = and i16 %32, 512
  %tobool138.not.i = icmp eq i16 %33, 0
  br i1 %tobool138.not.i, label %while.body.i.i, label %if.then139.i

if.then139.i:                                     ; preds = %if.end112.i
  %token_type.i = getelementptr inbounds %struct.token, ptr %call.i118, i64 %idxprom60.i, i32 1
  store i8 92, ptr %token_type.i, align 2
  br label %while.cond40.backedge.i

while.body.i.i:                                   ; preds = %if.end6.i.i, %if.end112.i
  %__l.020.i.i = phi i64 [ %__l.1.i.i, %if.end6.i.i ], [ 0, %if.end112.i ]
  %__u.019.i.i = phi i64 [ %__u.1.i.i, %if.end6.i.i ], [ 82, %if.end112.i ]
  %add.i.i = add i64 %__u.019.i.i, %__l.020.i.i
  %div17.i.i = lshr i64 %add.i.i, 1
  %mul.i.i = shl i64 %div17.i.i, 3
  %add.ptr.i.i = getelementptr inbounds i8, ptr @directives, i64 %mul.i.i
  %34 = load ptr, ptr %add.ptr.i.i, align 8, !tbaa !9
  %call.i523.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %34) #23
  %35 = call i64 @llvm.umin.i64(i64 %call.i523.i, i64 %conv102.i) #22
  %call4.i.i = call i32 @memcmp(ptr noundef nonnull %call104.i, ptr noundef %34, i64 noundef %35) #23
  %cmp5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %cmp5.not.i.i, label %if.end.i.i, label %directive_compare.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %cmp9.i.i = icmp eq i64 %call.i523.i, %conv102.i
  br i1 %cmp9.i.i, label %if.then148.i, label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.end.i.i
  %sub.i.i = sub i64 %call.i523.i, %conv102.i
  %conv15.i.i = trunc i64 %sub.i.i to i32
  br label %directive_compare.exit.i

directive_compare.exit.i:                         ; preds = %if.end12.i.i, %while.body.i.i
  %retval.0.i524.i = phi i32 [ %conv15.i.i, %if.end12.i.i ], [ %call4.i.i, %while.body.i.i ]
  %cmp1.i.i = icmp slt i32 %retval.0.i524.i, 0
  br i1 %cmp1.i.i, label %if.end6.i.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %directive_compare.exit.i
  %cmp2.not.i.i = icmp eq i32 %retval.0.i524.i, 0
  br i1 %cmp2.not.i.i, label %if.then148.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.else.i.i
  %add4.i.i = add nuw i64 %div17.i.i, 1
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then3.i.i, %directive_compare.exit.i
  %__u.1.i.i = phi i64 [ %__u.019.i.i, %if.then3.i.i ], [ %div17.i.i, %directive_compare.exit.i ]
  %__l.1.i.i = phi i64 [ %add4.i.i, %if.then3.i.i ], [ %__l.020.i.i, %directive_compare.exit.i ]
  %cmp.i.i = icmp ult i64 %__l.1.i.i, %__u.1.i.i
  br i1 %cmp.i.i, label %while.body.i.i, label %if.end156.i

if.then148.i:                                     ; preds = %if.else.i.i, %if.end.i.i
  %token_type155.i = getelementptr inbounds %struct.token, ptr %call.i118, i64 %idxprom60.i, i32 1
  %36 = trunc i64 %div17.i.i to i8
  store i8 %36, ptr %token_type155.i, align 2
  br label %while.cond40.backedge.i

if.end156.i:                                      ; preds = %if.end6.i.i
  %token_type160.i = getelementptr inbounds %struct.token, ptr %call.i118, i64 %idxprom60.i, i32 1
  store i8 91, ptr %token_type160.i, align 2
  br label %while.cond40.backedge.i

while.cond40.backedge.i:                          ; preds = %sw.bb336.i, %sw.bb327.i, %sw.bb318.i, %sw.bb309.i, %sw.bb.i, %if.then277.i, %if.then261.i, %if.then238.i, %if.end208.i, %if.end156.i, %if.then148.i, %if.then139.i
  %p.2.be.i = phi ptr [ %q.2.i, %if.end208.i ], [ %add.ptr239.i, %if.then238.i ], [ %add.ptr262.i, %if.then261.i ], [ %add.ptr278.i, %if.then277.i ], [ %add.ptr337.i, %sw.bb336.i ], [ %add.ptr328.i, %sw.bb327.i ], [ %add.ptr319.i, %sw.bb318.i ], [ %add.ptr310.i, %sw.bb309.i ], [ %add.ptr301.i, %sw.bb.i ], [ %q.1.lcssa.i, %if.end156.i ], [ %q.1.lcssa.i, %if.then148.i ], [ %q.1.lcssa.i, %if.then139.i ]
  %tix.1.be.i = add i32 %tix.1565.i, 1
  %cmp41.i = icmp ult ptr %p.2.be.i, %nl.1.i
  br i1 %cmp41.i, label %while.cond44.preheader.i, label %while.end348.i

if.end161.i:                                      ; preds = %if.end58.i
  %and167.i = and i32 %conv67.i, 2048
  %tobool168.not.i = icmp eq i32 %and167.i, 0
  br i1 %tobool168.not.i, label %if.end228.i, label %while.cond171.i

while.cond171.i:                                  ; preds = %land.rhs174.i, %if.end161.i
  %p.3.pn.i = phi ptr [ %q.2.i, %land.rhs174.i ], [ %p.3556.i, %if.end161.i ]
  %q.2.i = getelementptr inbounds i8, ptr %p.3.pn.i, i64 1
  %cmp172.i = icmp ult ptr %q.2.i, %nl.1.i
  br i1 %cmp172.i, label %land.rhs174.i, label %while.end185.i

land.rhs174.i:                                    ; preds = %while.cond171.i
  %37 = load i8, ptr %q.2.i, align 1, !tbaa !16
  %idxprom177.i = sext i8 %37 to i64
  %arrayidx178.i = getelementptr inbounds i16, ptr %20, i64 %idxprom177.i
  %38 = load i16, ptr %arrayidx178.i, align 2, !tbaa !17
  %39 = and i16 %38, 2048
  %tobool181.not.i = icmp eq i16 %39, 0
  br i1 %tobool181.not.i, label %while.end185.i, label %while.cond171.i

while.end185.i:                                   ; preds = %land.rhs174.i, %while.cond171.i
  %sub.ptr.lhs.cast186.i = ptrtoint ptr %q.2.i to i64
  %sub.ptr.sub188.i = sub i64 %sub.ptr.lhs.cast186.i, %p.3556.lcssa590.i
  %conv189.i = trunc i64 %sub.ptr.sub188.i to i8
  %size192.i = getelementptr inbounds %struct.token, ptr %call.i118, i64 %idxprom60.i, i32 2
  store i8 %conv189.i, ptr %size192.i, align 1, !tbaa !21
  %conv196.i = and i64 %sub.ptr.sub188.i, 255
  %add197.i = add nuw nsw i64 %conv196.i, 1
  %call199.i = call noalias ptr @malloc(i64 noundef %add197.i) #26
  %content202.i = getelementptr inbounds %struct.token, ptr %call.i118, i64 %idxprom60.i, i32 4
  store ptr %call199.i, ptr %content202.i, align 8, !tbaa !22
  %tobool206.not.i = icmp eq ptr %call199.i, null
  br i1 %tobool206.not.i, label %if.then207.i, label %if.end208.i

if.then207.i:                                     ; preds = %while.end185.i
  call void @perror(ptr noundef null) #28
  call void @exit(i32 noundef 1) #25
  unreachable

if.end208.i:                                      ; preds = %while.end185.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call199.i, ptr nonnull align 1 %p.3556.i, i64 %conv196.i, i1 false) #22
  %arrayidx223.i = getelementptr inbounds i8, ptr %call199.i, i64 %conv196.i
  store i8 0, ptr %arrayidx223.i, align 1, !tbaa !16
  %token_type227.i = getelementptr inbounds %struct.token, ptr %call.i118, i64 %idxprom60.i, i32 1
  store i8 90, ptr %token_type227.i, align 2
  br label %while.cond40.backedge.i

if.end228.i:                                      ; preds = %if.end161.i
  %sub.ptr.sub231.i = sub i64 %nl.1586.pre-phi.i, %p.3556.lcssa590.i
  %cmp232.i = icmp sgt i64 %sub.ptr.sub231.i, 2
  br i1 %cmp232.i, label %if.then234.i, label %if.end251.i

if.then234.i:                                     ; preds = %if.end228.i
  %bcmp520.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %p.3556.i, ptr noundef nonnull dereferenceable(3) @.str.6, i64 3) #22
  %cmp236.i = icmp eq i32 %bcmp520.i, 0
  br i1 %cmp236.i, label %if.then238.i, label %if.then257.i

if.then238.i:                                     ; preds = %if.then234.i
  %add.ptr239.i = getelementptr inbounds i8, ptr %p.3556.i, i64 3
  %size242.i = getelementptr inbounds %struct.token, ptr %call.i118, i64 %idxprom60.i, i32 2
  store i8 3, ptr %size242.i, align 1, !tbaa !21
  %content245.i = getelementptr inbounds %struct.token, ptr %call.i118, i64 %idxprom60.i, i32 4
  store ptr @.str.6, ptr %content245.i, align 8, !tbaa !22
  %token_type249.i = getelementptr inbounds %struct.token, ptr %call.i118, i64 %idxprom60.i, i32 1
  store i8 82, ptr %token_type249.i, align 2
  br label %while.cond40.backedge.i

if.end251.i:                                      ; preds = %if.end228.i
  %cmp255.i = icmp eq i64 %sub.ptr.sub231.i, 2
  br i1 %cmp255.i, label %if.then257.i, label %if.end290.i

if.then257.i:                                     ; preds = %if.end251.i, %if.then234.i
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %p.3556.i, ptr noundef nonnull dereferenceable(2) @.str.7, i64 2) #22
  %cmp259.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp259.i, label %if.then261.i, label %if.end273.i

if.then261.i:                                     ; preds = %if.then257.i
  %add.ptr262.i = getelementptr inbounds i8, ptr %p.3556.i, i64 2
  %size265.i = getelementptr inbounds %struct.token, ptr %call.i118, i64 %idxprom60.i, i32 2
  store i8 2, ptr %size265.i, align 1, !tbaa !21
  %content268.i = getelementptr inbounds %struct.token, ptr %call.i118, i64 %idxprom60.i, i32 4
  store ptr @.str.7, ptr %content268.i, align 8, !tbaa !22
  %token_type272.i = getelementptr inbounds %struct.token, ptr %call.i118, i64 %idxprom60.i, i32 1
  store i8 87, ptr %token_type272.i, align 2
  br label %while.cond40.backedge.i

if.end273.i:                                      ; preds = %if.then257.i
  %bcmp519.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %p.3556.i, ptr noundef nonnull dereferenceable(2) @.str.8, i64 2) #22
  %cmp275.i = icmp eq i32 %bcmp519.i, 0
  br i1 %cmp275.i, label %if.then277.i, label %if.then296.i

if.then277.i:                                     ; preds = %if.end273.i
  %add.ptr278.i = getelementptr inbounds i8, ptr %p.3556.i, i64 2
  %size281.i = getelementptr inbounds %struct.token, ptr %call.i118, i64 %idxprom60.i, i32 2
  store i8 2, ptr %size281.i, align 1, !tbaa !21
  %content284.i = getelementptr inbounds %struct.token, ptr %call.i118, i64 %idxprom60.i, i32 4
  store ptr @.str.8, ptr %content284.i, align 8, !tbaa !22
  %token_type288.i = getelementptr inbounds %struct.token, ptr %call.i118, i64 %idxprom60.i, i32 1
  store i8 88, ptr %token_type288.i, align 2
  br label %while.cond40.backedge.i

if.end290.i:                                      ; preds = %if.end251.i
  %cmp294.i = icmp sgt i64 %sub.ptr.sub231.i, 0
  br i1 %cmp294.i, label %if.then296.i, label %if.end345.i

if.then296.i:                                     ; preds = %if.end290.i, %if.end273.i
  %size299.i = getelementptr inbounds %struct.token, ptr %call.i118, i64 %idxprom60.i, i32 2
  store i8 1, ptr %size299.i, align 1, !tbaa !21
  %40 = load i8, ptr %p.3556.i, align 1, !tbaa !16
  %conv300.i = sext i8 %40 to i32
  switch i32 %conv300.i, label %if.end345.i [
    i32 123, label %sw.bb.i
    i32 125, label %sw.bb309.i
    i32 91, label %sw.bb318.i
    i32 93, label %sw.bb327.i
    i32 44, label %sw.bb336.i
  ]

sw.bb.i:                                          ; preds = %if.then296.i
  %add.ptr301.i = getelementptr inbounds i8, ptr %p.3556.i, i64 1
  %content304.i = getelementptr inbounds %struct.token, ptr %call.i118, i64 %idxprom60.i, i32 4
  store ptr @.str.9, ptr %content304.i, align 8, !tbaa !22
  %token_type308.i = getelementptr inbounds %struct.token, ptr %call.i118, i64 %idxprom60.i, i32 1
  store i8 83, ptr %token_type308.i, align 2
  br label %while.cond40.backedge.i

sw.bb309.i:                                       ; preds = %if.then296.i
  %add.ptr310.i = getelementptr inbounds i8, ptr %p.3556.i, i64 1
  %content313.i = getelementptr inbounds %struct.token, ptr %call.i118, i64 %idxprom60.i, i32 4
  store ptr @.str.10, ptr %content313.i, align 8, !tbaa !22
  %token_type317.i = getelementptr inbounds %struct.token, ptr %call.i118, i64 %idxprom60.i, i32 1
  store i8 84, ptr %token_type317.i, align 2
  br label %while.cond40.backedge.i

sw.bb318.i:                                       ; preds = %if.then296.i
  %add.ptr319.i = getelementptr inbounds i8, ptr %p.3556.i, i64 1
  %content322.i = getelementptr inbounds %struct.token, ptr %call.i118, i64 %idxprom60.i, i32 4
  store ptr @.str.11, ptr %content322.i, align 8, !tbaa !22
  %token_type326.i = getelementptr inbounds %struct.token, ptr %call.i118, i64 %idxprom60.i, i32 1
  store i8 85, ptr %token_type326.i, align 2
  br label %while.cond40.backedge.i

sw.bb327.i:                                       ; preds = %if.then296.i
  %add.ptr328.i = getelementptr inbounds i8, ptr %p.3556.i, i64 1
  %content331.i = getelementptr inbounds %struct.token, ptr %call.i118, i64 %idxprom60.i, i32 4
  store ptr @.str.12, ptr %content331.i, align 8, !tbaa !22
  %token_type335.i = getelementptr inbounds %struct.token, ptr %call.i118, i64 %idxprom60.i, i32 1
  store i8 86, ptr %token_type335.i, align 2
  br label %while.cond40.backedge.i

sw.bb336.i:                                       ; preds = %if.then296.i
  %add.ptr337.i = getelementptr inbounds i8, ptr %p.3556.i, i64 1
  %content340.i = getelementptr inbounds %struct.token, ptr %call.i118, i64 %idxprom60.i, i32 4
  store ptr @.str.13, ptr %content340.i, align 8, !tbaa !22
  %token_type344.i = getelementptr inbounds %struct.token, ptr %call.i118, i64 %idxprom60.i, i32 1
  store i8 89, ptr %token_type344.i, align 2
  br label %while.cond40.backedge.i

if.end345.i:                                      ; preds = %if.then296.i, %if.end290.i
  %.lcssa222.sink = phi i8 [ %24, %if.end290.i ], [ %40, %if.then296.i ]
  %conv300.i.le = sext i8 %.lcssa222.sink to i32
  %41 = load ptr, ptr @stderr, align 8, !tbaa !9
  %42 = load ptr, ptr @filename, align 8, !tbaa !9
  %call347.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.14, ptr noundef %42, i32 noundef %inc.i, i32 noundef %conv300.i.le) #28
  call void @exit(i32 noundef 1) #25
  unreachable

while.end348.i:                                   ; preds = %while.cond40.backedge.i, %while.body52.i, %while.cond44.preheader.i, %while.end39.i
  %tix.1549.i = phi i32 [ %tix.0568.i, %while.end39.i ], [ %tix.1565.i, %while.body52.i ], [ %tix.1.be.i, %while.cond40.backedge.i ], [ %tix.1565.i, %while.cond44.preheader.i ]
  %cmp.i = icmp ult ptr %buffer.addr.1.i, %arrayidx67
  br i1 %cmp.i, label %while.body.i, label %while.end349.i

while.end349.i:                                   ; preds = %while.end348.i, %while.cond.preheader.i
  %tix.0.lcssa.i = phi i32 [ 0, %while.cond.preheader.i ], [ %tix.1549.i, %while.end348.i ]
  store i32 %tix.0.lcssa.i, ptr @nr_tokens, align 4, !tbaa !23
  %43 = load i8, ptr @verbose_opt, align 1, !tbaa !5, !range !24
  %tobool350.not.i = icmp eq i8 %43, 0
  br i1 %tobool350.not.i, label %tokenise.exit, label %if.then351.i

if.then351.i:                                     ; preds = %while.end349.i
  %call352.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.15, i32 noundef %tix.0.lcssa.i) #22
  %.pre = load i32, ptr @nr_tokens, align 4, !tbaa !23
  br label %tokenise.exit

tokenise.exit:                                    ; preds = %if.then351.i, %while.end349.i
  %44 = phi i32 [ %tix.0.lcssa.i, %while.end349.i ], [ %.pre, %if.then351.i ]
  %sub.i = add i32 %44, -1
  %cmp99.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp99.not.i, label %if.then11.i, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %tokenise.exit
  %45 = load ptr, ptr @token_list, align 8, !tbaa !9
  %wide.trip.count.i = zext i32 %sub.i to i64
  %xtraiter = and i64 %wide.trip.count.i, 1
  %46 = icmp eq i32 %sub.i, 1
  br i1 %46, label %for.end.i.unr-lcssa, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.1, %for.body.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i.new ], [ %48, %for.inc.i.1 ]
  %nr.0100.i = phi i32 [ 0, %for.body.lr.ph.i.new ], [ %nr.1.i.1, %for.inc.i.1 ]
  %niter = phi i64 [ 0, %for.body.lr.ph.i.new ], [ %niter.next.1, %for.inc.i.1 ]
  %token_type.i119 = getelementptr inbounds %struct.token, ptr %45, i64 %indvars.iv.i, i32 1
  %bf.load.i = load i8, ptr %token_type.i119, align 2
  %cmp1.i = icmp eq i8 %bf.load.i, 91
  %47 = or i64 %indvars.iv.i, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %token_type5.i = getelementptr inbounds %struct.token, ptr %45, i64 %47, i32 1
  %bf.load6.i = load i8, ptr %token_type5.i, align 2
  %cmp8.i = icmp eq i8 %bf.load6.i, 82
  %inc.i120 = zext i1 %cmp8.i to i32
  %spec.select.i = add i32 %nr.0100.i, %inc.i120
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i, %for.body.i
  %nr.1.i = phi i32 [ %spec.select.i, %land.lhs.true.i ], [ %nr.0100.i, %for.body.i ]
  %token_type.i119.1 = getelementptr inbounds %struct.token, ptr %45, i64 %47, i32 1
  %bf.load.i.1 = load i8, ptr %token_type.i119.1, align 2
  %cmp1.i.1 = icmp eq i8 %bf.load.i.1, 91
  %48 = add nuw nsw i64 %indvars.iv.i, 2
  br i1 %cmp1.i.1, label %land.lhs.true.i.1, label %for.inc.i.1

land.lhs.true.i.1:                                ; preds = %for.inc.i
  %token_type5.i.1 = getelementptr inbounds %struct.token, ptr %45, i64 %48, i32 1
  %bf.load6.i.1 = load i8, ptr %token_type5.i.1, align 2
  %cmp8.i.1 = icmp eq i8 %bf.load6.i.1, 82
  %inc.i120.1 = zext i1 %cmp8.i.1 to i32
  %spec.select.i.1 = add i32 %nr.1.i, %inc.i120.1
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %land.lhs.true.i.1, %for.inc.i
  %nr.1.i.1 = phi i32 [ %spec.select.i.1, %land.lhs.true.i.1 ], [ %nr.1.i, %for.inc.i ]
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.end.i.unr-lcssa, label %for.body.i

for.end.i.unr-lcssa:                              ; preds = %for.inc.i.1, %for.body.lr.ph.i
  %nr.1.i.lcssa.ph = phi i32 [ undef, %for.body.lr.ph.i ], [ %nr.1.i.1, %for.inc.i.1 ]
  %indvars.iv.i.unr = phi i64 [ 0, %for.body.lr.ph.i ], [ %48, %for.inc.i.1 ]
  %nr.0100.i.unr = phi i32 [ 0, %for.body.lr.ph.i ], [ %nr.1.i.1, %for.inc.i.1 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end.i, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %for.end.i.unr-lcssa
  %token_type.i119.epil = getelementptr inbounds %struct.token, ptr %45, i64 %indvars.iv.i.unr, i32 1
  %bf.load.i.epil = load i8, ptr %token_type.i119.epil, align 2
  %cmp1.i.epil = icmp eq i8 %bf.load.i.epil, 91
  br i1 %cmp1.i.epil, label %land.lhs.true.i.epil, label %for.end.i

land.lhs.true.i.epil:                             ; preds = %for.body.i.epil
  %49 = add nuw nsw i64 %indvars.iv.i.unr, 1
  %token_type5.i.epil = getelementptr inbounds %struct.token, ptr %45, i64 %49, i32 1
  %bf.load6.i.epil = load i8, ptr %token_type5.i.epil, align 2
  %cmp8.i.epil = icmp eq i8 %bf.load6.i.epil, 82
  %inc.i120.epil = zext i1 %cmp8.i.epil to i32
  %spec.select.i.epil = add i32 %nr.0100.i.unr, %inc.i120.epil
  br label %for.end.i

for.end.i:                                        ; preds = %land.lhs.true.i.epil, %for.body.i.epil, %for.end.i.unr-lcssa
  %nr.1.i.lcssa = phi i32 [ %nr.1.i.lcssa.ph, %for.end.i.unr-lcssa ], [ %spec.select.i.epil, %land.lhs.true.i.epil ], [ %nr.0100.i.unr, %for.body.i.epil ]
  %cmp10.i = icmp eq i32 %nr.1.i.lcssa, 0
  br i1 %cmp10.i, label %if.then11.i, label %if.end12.i

if.then11.i:                                      ; preds = %for.end.i, %tokenise.exit
  %50 = load ptr, ptr @stderr, align 8, !tbaa !9
  %51 = load ptr, ptr @filename, align 8, !tbaa !9
  %call.i122 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.98, ptr noundef %51) #28
  call void @exit(i32 noundef 1) #25
  unreachable

if.end12.i:                                       ; preds = %for.end.i
  store i32 %nr.1.i.lcssa, ptr @nr_types, align 4, !tbaa !23
  %add13.i = add i32 %nr.1.i.lcssa, 1
  %conv.i123 = zext i32 %add13.i to i64
  %call14.i = call noalias ptr @calloc(i64 noundef %conv.i123, i64 noundef 32) #27
  store ptr %call14.i, ptr @type_list, align 8, !tbaa !9
  %tobool.not.i124 = icmp eq ptr %call14.i, null
  br i1 %tobool.not.i124, label %if.then15.i, label %if.end16.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @perror(ptr noundef null) #28
  call void @exit(i32 noundef 1) #25
  unreachable

if.end16.i:                                       ; preds = %if.end12.i
  %conv17.i = zext i32 %nr.1.i.lcssa to i64
  %call18.i = call noalias ptr @calloc(i64 noundef %conv17.i, i64 noundef 8) #27
  store ptr %call18.i, ptr @type_index, align 8, !tbaa !9
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %if.then20.i, label %for.body28.lr.ph.i

if.then20.i:                                      ; preds = %if.end16.i
  call void @perror(ptr noundef null) #28
  call void @exit(i32 noundef 1) #25
  unreachable

for.body28.lr.ph.i:                               ; preds = %if.end16.i
  %flags.i = getelementptr inbounds %struct.type, ptr %call14.i, i64 0, i32 4
  store i32 2, ptr %flags.i, align 4, !tbaa !25
  br label %for.body28.i

for.body28.i:                                     ; preds = %for.inc57.i, %for.body28.lr.ph.i
  %indvars.iv112.i = phi i64 [ 0, %for.body28.lr.ph.i ], [ %52, %for.inc57.i ]
  %t.0105.i = phi i32 [ 0, %for.body28.lr.ph.i ], [ %t.1.i, %for.inc57.i ]
  %arrayidx31.i = getelementptr inbounds %struct.token, ptr %45, i64 %indvars.iv112.i
  %token_type32.i = getelementptr inbounds %struct.token, ptr %45, i64 %indvars.iv112.i, i32 1
  %bf.load33.i = load i8, ptr %token_type32.i, align 2
  %cmp35.i = icmp eq i8 %bf.load33.i, 91
  %52 = add nuw nsw i64 %indvars.iv112.i, 1
  br i1 %cmp35.i, label %land.lhs.true37.i, label %for.inc57.i

land.lhs.true37.i:                                ; preds = %for.body28.i
  %token_type41.i = getelementptr inbounds %struct.token, ptr %45, i64 %52, i32 1
  %bf.load42.i = load i8, ptr %token_type41.i, align 2
  %cmp44.i = icmp eq i8 %bf.load42.i, 82
  br i1 %cmp44.i, label %if.then46.i, label %for.inc57.i

if.then46.i:                                      ; preds = %land.lhs.true37.i
  %idxprom49.i = zext i32 %t.0105.i to i64
  %arrayidx50.i = getelementptr inbounds %struct.type, ptr %call14.i, i64 %idxprom49.i
  store ptr %arrayidx31.i, ptr %arrayidx50.i, align 8, !tbaa !27
  %arrayidx54.i = getelementptr inbounds ptr, ptr %call18.i, i64 %idxprom49.i
  store ptr %arrayidx50.i, ptr %arrayidx54.i, align 8, !tbaa !9
  %inc55.i = add i32 %t.0105.i, 1
  br label %for.inc57.i

for.inc57.i:                                      ; preds = %if.then46.i, %land.lhs.true37.i, %for.body28.i
  %t.1.i = phi i32 [ %t.0105.i, %land.lhs.true37.i ], [ %inc55.i, %if.then46.i ], [ %t.0105.i, %for.body28.i ]
  %exitcond117.not.i = icmp eq i64 %52, %wide.trip.count.i
  br i1 %exitcond117.not.i, label %for.end59.i, label %for.body28.i

for.end59.i:                                      ; preds = %for.inc57.i
  %idxprom63.phi.trans.insert.i = zext i32 %t.1.i to i64
  %flags68.phi.trans.insert.i = getelementptr inbounds %struct.type, ptr %call14.i, i64 %idxprom63.phi.trans.insert.i, i32 4
  %.pre118.i = load i32, ptr %flags68.phi.trans.insert.i, align 4, !tbaa !25
  %phi.cast.i = zext i32 %44 to i64
  %phi.bo.i = or i32 %.pre118.i, 1
  %arrayidx62.i = getelementptr inbounds %struct.token, ptr %45, i64 %phi.cast.i
  %arrayidx64.i = getelementptr inbounds %struct.type, ptr %call14.i, i64 %idxprom63.phi.trans.insert.i
  store ptr %arrayidx62.i, ptr %arrayidx64.i, align 8, !tbaa !27
  store i32 %phi.bo.i, ptr %flags68.phi.trans.insert.i, align 4, !tbaa !25
  call void @qsort(ptr noundef nonnull %call18.i, i64 noundef %conv17.i, i64 noundef 8, ptr noundef nonnull @type_index_compare) #22
  %53 = load i8, ptr @verbose_opt, align 1, !tbaa !5, !range !24
  %tobool71.not.i = icmp eq i8 %53, 0
  br i1 %tobool71.not.i, label %build_type_list.exit, label %if.then72.i

if.then72.i:                                      ; preds = %for.end59.i
  %54 = load i32, ptr @nr_types, align 4, !tbaa !23
  %call73.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.99, i32 noundef %54) #22
  br label %build_type_list.exit

build_type_list.exit:                             ; preds = %if.then72.i, %for.end59.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cursor.i) #22
  %55 = load ptr, ptr @type_list, align 8, !tbaa !9
  %.pre.i126 = load ptr, ptr %55, align 8, !tbaa !27
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i, %build_type_list.exit
  %56 = phi ptr [ %.pre.i126, %build_type_list.exit ], [ %58, %do.cond.i ]
  %type.0.i = phi ptr [ %55, %build_type_list.exit ], [ %arrayidx6.i, %do.cond.i ]
  %token_type.i127 = getelementptr inbounds %struct.token, ptr %56, i64 0, i32 1
  %bf.load.i128 = load i8, ptr %token_type.i127, align 2
  %cmp.not.i = icmp eq i8 %bf.load.i128, 91
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then.i129

lor.lhs.false.i:                                  ; preds = %do.body.i
  %token_type2.i = getelementptr inbounds %struct.token, ptr %56, i64 1, i32 1
  %bf.load3.i = load i8, ptr %token_type2.i, align 2
  %cmp5.not.i = icmp eq i8 %bf.load3.i, 82
  br i1 %cmp5.not.i, label %if.end.i, label %if.then.i129

if.then.i129:                                     ; preds = %lor.lhs.false.i, %do.body.i
  call void @abort() #25
  unreachable

if.end.i:                                         ; preds = %lor.lhs.false.i
  %add.ptr.i130 = getelementptr inbounds %struct.token, ptr %56, i64 2
  store ptr %add.ptr.i130, ptr %cursor.i, align 8, !tbaa !9
  %arrayidx6.i = getelementptr inbounds %struct.type, ptr %type.0.i, i64 1
  %57 = load ptr, ptr %arrayidx6.i, align 8, !tbaa !27
  %call.i131 = call fastcc ptr @parse_type(ptr noundef nonnull %cursor.i, ptr noundef %57, ptr noundef null) #22
  %element.i = getelementptr inbounds %struct.type, ptr %type.0.i, i64 0, i32 2
  store ptr %call.i131, ptr %element.i, align 8, !tbaa !28
  store ptr %type.0.i, ptr %call.i131, align 8, !tbaa !29
  %58 = load ptr, ptr %cursor.i, align 8, !tbaa !9
  %59 = load ptr, ptr %arrayidx6.i, align 8, !tbaa !27
  %cmp11.not.i = icmp eq ptr %58, %59
  br i1 %cmp11.not.i, label %do.cond.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end.i
  %60 = load ptr, ptr @stderr, align 8, !tbaa !9
  %61 = load ptr, ptr @filename, align 8, !tbaa !9
  %62 = load i16, ptr %58, align 8, !tbaa !19
  %conv.i132 = zext i16 %62 to i32
  %content.i133 = getelementptr inbounds %struct.token, ptr %58, i64 0, i32 4
  %63 = load ptr, ptr %content.i133, align 8, !tbaa !22
  %call13.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.100, ptr noundef %61, i32 noundef %conv.i132, ptr noundef %63) #28
  call void @exit(i32 noundef 1) #25
  unreachable

do.cond.i:                                        ; preds = %if.end.i
  %flags.i134 = getelementptr inbounds %struct.type, ptr %type.0.i, i64 1, i32 4
  %64 = load i32, ptr %flags.i134, align 4, !tbaa !25
  %and.i = and i32 %64, 1
  %tobool.not.i135 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i135, label %do.body.i, label %do.body15.i

do.body15.i:                                      ; preds = %do.cond.i
  %65 = load i8, ptr @verbose_opt, align 1, !tbaa !5, !range !24
  %tobool16.not.i = icmp eq i8 %65, 0
  br i1 %tobool16.not.i, label %parse.exit, label %if.then17.i137

if.then17.i137:                                   ; preds = %do.body15.i
  %66 = load i32, ptr @nr_actions, align 4, !tbaa !23
  %call18.i136 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.101, i32 noundef %66) #22
  br label %parse.exit

parse.exit:                                       ; preds = %if.then17.i137, %do.body15.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cursor.i) #22
  %.b1.i = load i1, ptr @debug_opt, align 1
  br i1 %.b1.i, label %if.then.i139, label %dump_elements.exit

if.then.i139:                                     ; preds = %parse.exit
  %67 = load ptr, ptr @type_list, align 8, !tbaa !9
  %element.i138 = getelementptr inbounds %struct.type, ptr %67, i64 0, i32 2
  %68 = load ptr, ptr %element.i138, align 8, !tbaa !28
  call fastcc void @dump_element(ptr noundef %68, i32 noundef 0) #22
  br label %dump_elements.exit

dump_elements.exit:                               ; preds = %if.then.i139, %parse.exit
  %69 = load ptr, ptr @outputname, align 8, !tbaa !9
  %call69 = call ptr @fopen(ptr noundef %69, ptr noundef nonnull @.str.5)
  %tobool70.not = icmp eq ptr %call69, null
  br i1 %tobool70.not, label %if.then71, label %if.end72

if.then71:                                        ; preds = %dump_elements.exit
  %70 = load ptr, ptr @outputname, align 8, !tbaa !9
  call void @perror(ptr noundef %70) #24
  call void @exit(i32 noundef 1) #25
  unreachable

if.end72:                                         ; preds = %dump_elements.exit
  %71 = load ptr, ptr @headername, align 8, !tbaa !9
  %call73 = call ptr @fopen(ptr noundef %71, ptr noundef nonnull @.str.5)
  %tobool74.not = icmp eq ptr %call73, null
  br i1 %tobool74.not, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end72
  %72 = load ptr, ptr @headername, align 8, !tbaa !9
  call void @perror(ptr noundef %72) #24
  call void @exit(i32 noundef 1) #25
  unreachable

if.end76:                                         ; preds = %if.end72
  %73 = call i64 @fwrite(ptr nonnull @.str.148, i64 3, i64 1, ptr nonnull %call73) #22
  %74 = call i64 @fwrite(ptr nonnull @.str.149, i64 58, i64 1, ptr nonnull %call73) #22
  %75 = call i64 @fwrite(ptr nonnull @.str.150, i64 3, i64 1, ptr nonnull %call73) #22
  %76 = load ptr, ptr @grammar_name, align 8, !tbaa !9
  %call3.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call73, ptr noundef nonnull @.str.151, ptr noundef %76) #22
  %77 = call i64 @fwrite(ptr nonnull @.str.152, i64 4, i64 1, ptr nonnull %call73) #22
  %78 = call i64 @fwrite(ptr nonnull @.str.153, i64 32, i64 1, ptr nonnull %call73) #22
  %fputc.i = call i32 @fputc(i32 10, ptr nonnull %call73) #22
  %79 = load ptr, ptr @grammar_name, align 8, !tbaa !9
  %call7.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call73, ptr noundef nonnull @.str.155, ptr noundef %79) #22
  %call8.i = call i32 @ferror(ptr noundef nonnull %call73) #22
  %tobool.not.i141 = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i141, label %if.end.i144, label %if.then.i142

if.then.i142:                                     ; preds = %if.end76
  %80 = load ptr, ptr @headername, align 8, !tbaa !9
  call void @perror(ptr noundef %80) #28
  call void @exit(i32 noundef 1) #25
  unreachable

if.end.i144:                                      ; preds = %if.end76
  %81 = call i64 @fwrite(ptr nonnull @.str.148, i64 3, i64 1, ptr nonnull %call69) #22
  %82 = call i64 @fwrite(ptr nonnull @.str.149, i64 58, i64 1, ptr nonnull %call69) #22
  %83 = call i64 @fwrite(ptr nonnull @.str.150, i64 3, i64 1, ptr nonnull %call69) #22
  %84 = load ptr, ptr @grammar_name, align 8, !tbaa !9
  %call12.i143 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call69, ptr noundef nonnull @.str.151, ptr noundef %84) #22
  %85 = call i64 @fwrite(ptr nonnull @.str.152, i64 4, i64 1, ptr nonnull %call69) #22
  %86 = call i64 @fwrite(ptr nonnull @.str.156, i64 37, i64 1, ptr nonnull %call69) #22
  %87 = load ptr, ptr @grammar_name, align 8, !tbaa !9
  %call15.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call69, ptr noundef nonnull @.str.157, ptr noundef %87) #22
  %fputc137.i = call i32 @fputc(i32 10, ptr nonnull %call69) #22
  %call17.i = call i32 @ferror(ptr noundef nonnull %call69) #22
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.end.i144
  %88 = load ptr, ptr @outputname, align 8, !tbaa !9
  call void @perror(ptr noundef %88) #28
  call void @exit(i32 noundef 1) #25
  unreachable

if.end20.i:                                       ; preds = %if.end.i144
  %fputc138.i = call i32 @fputc(i32 10, ptr nonnull %call73) #22
  %action.0144.i = load ptr, ptr @action_list, align 8, !tbaa !9
  %tobool22.not145.i = icmp eq ptr %action.0144.i, null
  br i1 %tobool22.not145.i, label %for.end.i148, label %for.body.i147

for.body.i147:                                    ; preds = %for.body.i147, %if.end20.i
  %action.0147.i = phi ptr [ %action.0.i, %for.body.i147 ], [ %action.0144.i, %if.end20.i ]
  %index.0146.i = phi i32 [ %inc.i145, %for.body.i147 ], [ 0, %if.end20.i ]
  %inc.i145 = add nuw nsw i32 %index.0146.i, 1
  %conv.i146 = trunc i32 %index.0146.i to i8
  %index23.i = getelementptr inbounds %struct.action, ptr %action.0147.i, i64 0, i32 2
  store i8 %conv.i146, ptr %index23.i, align 8, !tbaa !31
  %name.i = getelementptr inbounds %struct.action, ptr %action.0147.i, i64 0, i32 1
  %89 = load ptr, ptr %name.i, align 8, !tbaa !33
  %call24.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call73, ptr noundef nonnull @.str.158, ptr noundef %89) #22
  %action.0.i = load ptr, ptr %action.0147.i, align 8, !tbaa !9
  %tobool22.not.i = icmp eq ptr %action.0.i, null
  br i1 %tobool22.not.i, label %for.end.i148, label %for.body.i147

for.end.i148:                                     ; preds = %for.body.i147, %if.end20.i
  %fputc139.i = call i32 @fputc(i32 10, ptr nonnull %call73) #22
  %90 = load ptr, ptr @grammar_name, align 8, !tbaa !9
  %call26.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call69, ptr noundef nonnull @.str.159, ptr noundef %90) #22
  %action.1148.i = load ptr, ptr @action_list, align 8, !tbaa !9
  %tobool28.not149.i = icmp eq ptr %action.1148.i, null
  br i1 %tobool28.not149.i, label %for.end36.i, label %for.body29.i

for.body29.i:                                     ; preds = %for.body29.i, %for.end.i148
  %action.1150.i = phi ptr [ %action.1.i, %for.body29.i ], [ %action.1148.i, %for.end.i148 ]
  %name30.i = getelementptr inbounds %struct.action, ptr %action.1150.i, i64 0, i32 1
  %91 = load ptr, ptr %name30.i, align 8, !tbaa !33
  %index31.i = getelementptr inbounds %struct.action, ptr %action.1150.i, i64 0, i32 2
  %92 = load i8, ptr %index31.i, align 8, !tbaa !31
  %conv32.i = zext i8 %92 to i32
  %call33.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call69, ptr noundef nonnull @.str.160, ptr noundef %91, i32 noundef %conv32.i) #22
  %action.1.i = load ptr, ptr %action.1150.i, align 8, !tbaa !9
  %tobool28.not.i = icmp eq ptr %action.1.i, null
  br i1 %tobool28.not.i, label %for.end36.i, label %for.body29.i

for.end36.i:                                      ; preds = %for.body29.i, %for.end.i148
  %93 = load ptr, ptr @grammar_name, align 8, !tbaa !9
  %94 = load i32, ptr @nr_actions, align 4, !tbaa !23
  %call37.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call69, ptr noundef nonnull @.str.161, ptr noundef %93, i32 noundef %94) #22
  %95 = call i64 @fwrite(ptr nonnull @.str.162, i64 3, i64 1, ptr %call69) #22
  %fputc140.i = call i32 @fputc(i32 10, ptr %call69) #22
  %96 = load ptr, ptr @grammar_name, align 8, !tbaa !9
  %call40.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call69, ptr noundef nonnull @.str.163, ptr noundef %96, ptr noundef %96) #22
  %action.2151.i = load ptr, ptr @action_list, align 8, !tbaa !9
  %tobool42.not152.i = icmp eq ptr %action.2151.i, null
  br i1 %tobool42.not152.i, label %for.end50.i, label %for.body43.i

for.body43.i:                                     ; preds = %for.body43.i, %for.end36.i
  %action.2153.i = phi ptr [ %action.2.i, %for.body43.i ], [ %action.2151.i, %for.end36.i ]
  %index44.i = getelementptr inbounds %struct.action, ptr %action.2153.i, i64 0, i32 2
  %97 = load i8, ptr %index44.i, align 8, !tbaa !31
  %conv45.i = zext i8 %97 to i32
  %name46.i = getelementptr inbounds %struct.action, ptr %action.2153.i, i64 0, i32 1
  %98 = load ptr, ptr %name46.i, align 8, !tbaa !33
  %call47.i149 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call69, ptr noundef nonnull @.str.164, i32 noundef %conv45.i, ptr noundef %98) #22
  %action.2.i = load ptr, ptr %action.2153.i, align 8, !tbaa !9
  %tobool42.not.i = icmp eq ptr %action.2.i, null
  br i1 %tobool42.not.i, label %for.end50.i, label %for.body43.i

for.end50.i:                                      ; preds = %for.body43.i, %for.end36.i
  %99 = call i64 @fwrite(ptr nonnull @.str.162, i64 3, i64 1, ptr %call69) #22
  %call52.i = call i32 @ferror(ptr noundef %call69) #22
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %do.body.i150, label %if.then54.i

if.then54.i:                                      ; preds = %for.end50.i
  %100 = load ptr, ptr @outputname, align 8, !tbaa !9
  call void @perror(ptr noundef %100) #28
  call void @exit(i32 noundef 1) #25
  unreachable

do.body.i150:                                     ; preds = %for.end50.i
  %101 = load i8, ptr @verbose_opt, align 1, !tbaa !5, !range !24
  %tobool56.not.i = icmp eq i8 %101, 0
  br i1 %tobool56.not.i, label %do.end.i, label %if.then57.i

if.then57.i:                                      ; preds = %do.body.i150
  %puts143.i = call i32 @puts(ptr nonnull @str.198) #22
  br label %do.end.i

do.end.i:                                         ; preds = %if.then57.i, %do.body.i150
  store i32 0, ptr @nr_entries, align 4, !tbaa !23
  %102 = load ptr, ptr @type_list, align 8, !tbaa !9
  %element.i151 = getelementptr inbounds %struct.type, ptr %102, i64 0, i32 2
  %103 = load ptr, ptr %element.i151, align 8, !tbaa !28
  call fastcc void @render_element(ptr noundef null, ptr noundef %103, ptr noundef null) #22
  %104 = load i32, ptr @nr_entries, align 4, !tbaa !23
  %inc.i.i = add nsw i32 %104, 1
  store i32 %inc.i.i, ptr @nr_entries, align 4, !tbaa !23
  call fastcc void @render_out_of_line_list(ptr noundef null) #22
  %e.0154.i = load ptr, ptr @element_list, align 8, !tbaa !9
  %tobool61.not155.i = icmp eq ptr %e.0154.i, null
  br i1 %tobool61.not155.i, label %do.body65.i, label %for.body62.i

for.body62.i:                                     ; preds = %for.body62.i, %do.end.i
  %e.0156.i = phi ptr [ %e.0.i, %for.body62.i ], [ %e.0154.i, %do.end.i ]
  %flags.i152 = getelementptr inbounds %struct.element, ptr %e.0156.i, i64 0, i32 12
  %105 = load i32, ptr %flags.i152, align 4, !tbaa !34
  %and.i153 = and i32 %105, -9
  store i32 %and.i153, ptr %flags.i152, align 4, !tbaa !34
  %list_next.i = getelementptr inbounds %struct.element, ptr %e.0156.i, i64 0, i32 7
  %e.0.i = load ptr, ptr %list_next.i, align 8, !tbaa !9
  %tobool61.not.i = icmp eq ptr %e.0.i, null
  br i1 %tobool61.not.i, label %do.body65.i, label %for.body62.i

do.body65.i:                                      ; preds = %for.body62.i, %do.end.i
  %106 = load i8, ptr @verbose_opt, align 1, !tbaa !5, !range !24
  %tobool66.not.i = icmp eq i8 %106, 0
  br i1 %tobool66.not.i, label %render.exit, label %if.then67.i

if.then67.i:                                      ; preds = %do.body65.i
  %puts.i = call i32 @puts(ptr nonnull @str) #22
  br label %render.exit

render.exit:                                      ; preds = %if.then67.i, %do.body65.i
  %fputc141.i = call i32 @fputc(i32 10, ptr %call69) #22
  %107 = load ptr, ptr @grammar_name, align 8, !tbaa !9
  %call73.i154 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call69, ptr noundef nonnull @.str.168, ptr noundef %107) #22
  store i32 0, ptr @nr_entries, align 4, !tbaa !23
  %108 = load ptr, ptr @type_list, align 8, !tbaa !9
  %element75.i = getelementptr inbounds %struct.type, ptr %108, i64 0, i32 2
  %109 = load ptr, ptr %element75.i, align 8, !tbaa !28
  call fastcc void @render_element(ptr noundef %call69, ptr noundef %109, ptr noundef null) #22
  call void (ptr, ptr, ...) @render_opcode(ptr noundef %call69, ptr noundef nonnull @.str.166) #22
  call fastcc void @render_out_of_line_list(ptr noundef %call69) #22
  %110 = call i64 @fwrite(ptr nonnull @.str.162, i64 3, i64 1, ptr %call69) #22
  %fputc142.i = call i32 @fputc(i32 10, ptr %call69) #22
  %111 = load ptr, ptr @grammar_name, align 8, !tbaa !9
  %call78.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call69, ptr noundef nonnull @.str.169, ptr noundef %111) #22
  %112 = load ptr, ptr @grammar_name, align 8, !tbaa !9
  %call79.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call69, ptr noundef nonnull @.str.170, ptr noundef %112) #22
  %113 = load ptr, ptr @grammar_name, align 8, !tbaa !9
  %call80.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call69, ptr noundef nonnull @.str.171, ptr noundef %113) #22
  %114 = load ptr, ptr @grammar_name, align 8, !tbaa !9
  %call81.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call69, ptr noundef nonnull @.str.172, ptr noundef %114) #22
  %115 = call i64 @fwrite(ptr nonnull @.str.162, i64 3, i64 1, ptr %call69) #22
  %call77 = call i32 @fclose(ptr noundef nonnull %call69)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %if.then80, label %if.end81

if.then80:                                        ; preds = %render.exit
  %116 = load ptr, ptr @outputname, align 8, !tbaa !9
  call void @perror(ptr noundef %116) #24
  call void @exit(i32 noundef 1) #25
  unreachable

if.end81:                                         ; preds = %render.exit
  %call82 = call i32 @fclose(ptr noundef nonnull %call73)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %if.then85, label %if.end86

if.then85:                                        ; preds = %if.end81
  %117 = load ptr, ptr @headername, align 8, !tbaa !9
  call void @perror(ptr noundef %117) #24
  call void @exit(i32 noundef 1) #25
  unreachable

if.end86:                                         ; preds = %if.end81
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st) #22
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind readonly
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #7

declare i32 @close(i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn
declare noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @__fxstat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #14

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind readonly willreturn uwtable
define internal i32 @type_index_compare(ptr nocapture noundef readonly %_a, ptr nocapture noundef readonly %_b) #15 {
entry:
  %0 = load ptr, ptr %_a, align 8, !tbaa !9
  %1 = load ptr, ptr %0, align 8, !tbaa !27
  %size = getelementptr inbounds %struct.token, ptr %1, i64 0, i32 2
  %2 = load i8, ptr %size, align 1, !tbaa !21
  %3 = load ptr, ptr %_b, align 8, !tbaa !9
  %4 = load ptr, ptr %3, align 8, !tbaa !27
  %size2 = getelementptr inbounds %struct.token, ptr %4, i64 0, i32 2
  %5 = load i8, ptr %size2, align 1, !tbaa !21
  %cmp.not = icmp eq i8 %2, %5
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %conv3 = zext i8 %5 to i32
  %conv = zext i8 %2 to i32
  %sub = sub nsw i32 %conv, %conv3
  br label %cleanup

if.else:                                          ; preds = %entry
  %content = getelementptr inbounds %struct.token, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %content, align 8, !tbaa !22
  %content13 = getelementptr inbounds %struct.token, ptr %4, i64 0, i32 4
  %7 = load ptr, ptr %content13, align 8, !tbaa !22
  %conv16 = zext i8 %2 to i64
  %call = tail call i32 @memcmp(ptr noundef %6, ptr noundef %7, i64 noundef %conv16) #23
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ %call, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc ptr @parse_type(ptr nocapture noundef %_cursor, ptr noundef %end, ptr noundef %name) unnamed_addr #0 {
entry:
  %cursor = alloca ptr, align 8
  %p = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cursor) #22
  %0 = load ptr, ptr %_cursor, align 8, !tbaa !9
  store ptr %0, ptr %cursor, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p) #22
  %call.i = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #27
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %alloc_elem.exit

if.then.i:                                        ; preds = %entry
  tail call void @perror(ptr noundef null) #28
  tail call void @exit(i32 noundef 1) #25
  unreachable

alloc_elem.exit:                                  ; preds = %entry
  %1 = load ptr, ptr @element_list, align 8, !tbaa !9
  %list_next.i = getelementptr inbounds %struct.element, ptr %call.i, i64 0, i32 7
  store ptr %1, ptr %list_next.i, align 8, !tbaa !35
  store ptr %call.i, ptr @element_list, align 8, !tbaa !9
  %class = getelementptr inbounds %struct.element, ptr %call.i, i64 0, i32 9
  %token_type = getelementptr inbounds %struct.token, ptr %0, i64 0, i32 1
  %bf.load4 = load i8, ptr %token_type, align 2
  %idxprom = zext i8 %bf.load4 to i64
  %arrayidx = getelementptr inbounds [93 x i8], ptr @token_to_tag, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !16
  %tag = getelementptr inbounds %struct.element, ptr %call.i, i64 0, i32 10
  store i8 %2, ptr %tag, align 4, !tbaa !36
  %name5 = getelementptr inbounds %struct.element, ptr %call.i, i64 0, i32 1
  store ptr %name, ptr %name5, align 8, !tbaa !37
  %bf.load7 = load i8, ptr %token_type, align 2
  %cmp = icmp eq i8 %bf.load7, 85
  br i1 %cmp, label %if.then, label %if.end88

if.then:                                          ; preds = %alloc_elem.exit
  %incdec.ptr = getelementptr inbounds %struct.token, ptr %0, i64 1
  store ptr %incdec.ptr, ptr %cursor, align 8, !tbaa !9
  %cmp9.not = icmp ult ptr %incdec.ptr, %end
  br i1 %cmp9.not, label %if.end, label %overrun_error

if.end:                                           ; preds = %if.then
  %token_type11 = getelementptr inbounds %struct.token, ptr %0, i64 1, i32 1
  %bf.load12501 = load i8, ptr %token_type11, align 2
  switch i8 %bf.load12501, label %sw.default [
    i8 75, label %sw.bb
    i8 3, label %sw.bb19
    i8 90, label %sw.bb25
    i8 60, label %sw.bb30
  ]

sw.bb:                                            ; preds = %if.end
  store i24 0, ptr %class, align 1
  %incdec.ptr18 = getelementptr inbounds %struct.token, ptr %0, i64 2
  store ptr %incdec.ptr18, ptr %cursor, align 8, !tbaa !9
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end
  store i24 256, ptr %class, align 1
  %incdec.ptr24 = getelementptr inbounds %struct.token, ptr %0, i64 2
  store ptr %incdec.ptr24, ptr %cursor, align 8, !tbaa !9
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end
  store i24 512, ptr %class, align 1
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end
  store i24 768, ptr %class, align 1
  %incdec.ptr35 = getelementptr inbounds %struct.token, ptr %0, i64 2
  store ptr %incdec.ptr35, ptr %cursor, align 8, !tbaa !9
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %3 = load ptr, ptr @stderr, align 8, !tbaa !9
  %4 = load ptr, ptr @filename, align 8, !tbaa !9
  %5 = load i16, ptr %incdec.ptr, align 8, !tbaa !19
  %conv = zext i16 %5 to i32
  %content = getelementptr inbounds %struct.token, ptr %0, i64 1, i32 4
  %6 = load ptr, ptr %content, align 8, !tbaa !22
  %call36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.102, ptr noundef %4, i32 noundef %conv, ptr noundef %6) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable

sw.epilog:                                        ; preds = %sw.bb30, %sw.bb25, %sw.bb19, %sw.bb
  %7 = phi ptr [ %incdec.ptr35, %sw.bb30 ], [ %incdec.ptr, %sw.bb25 ], [ %incdec.ptr24, %sw.bb19 ], [ %incdec.ptr18, %sw.bb ]
  %cmp37.not = icmp ult ptr %7, %end
  br i1 %cmp37.not, label %if.end40, label %overrun_error

if.end40:                                         ; preds = %sw.epilog
  %token_type41 = getelementptr inbounds %struct.token, ptr %7, i64 0, i32 1
  %bf.load42 = load i8, ptr %token_type41, align 2
  %cmp44.not = icmp eq i8 %bf.load42, 90
  br i1 %cmp44.not, label %if.end51, label %if.then46

if.then46:                                        ; preds = %if.end40
  %8 = load ptr, ptr @stderr, align 8, !tbaa !9
  %9 = load ptr, ptr @filename, align 8, !tbaa !9
  %10 = load i16, ptr %7, align 8, !tbaa !19
  %conv48 = zext i16 %10 to i32
  %content49 = getelementptr inbounds %struct.token, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %content49, align 8, !tbaa !22
  %call50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.103, ptr noundef %9, i32 noundef %conv48, ptr noundef %11) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable

if.end51:                                         ; preds = %if.end40
  %12 = and i8 %2, -32
  store i8 %12, ptr %tag, align 4, !tbaa !36
  %content55 = getelementptr inbounds %struct.token, ptr %7, i64 0, i32 4
  %13 = load ptr, ptr %content55, align 8, !tbaa !22
  %call56 = call i64 @strtoul(ptr noundef %13, ptr noundef nonnull %p, i32 noundef 10) #22
  %14 = load i8, ptr %tag, align 4, !tbaa !36
  %15 = trunc i64 %call56 to i8
  %conv59 = or i8 %14, %15
  store i8 %conv59, ptr %tag, align 4, !tbaa !36
  %flags = getelementptr inbounds %struct.element, ptr %call.i, i64 0, i32 12
  %16 = load i32, ptr %flags, align 4, !tbaa !34
  %or60 = or i32 %16, 4
  store i32 %or60, ptr %flags, align 4, !tbaa !34
  %17 = load ptr, ptr %p, align 8, !tbaa !9
  %18 = load ptr, ptr %cursor, align 8, !tbaa !9
  %content61 = getelementptr inbounds %struct.token, ptr %18, i64 0, i32 4
  %19 = load ptr, ptr %content61, align 8, !tbaa !22
  %sub.ptr.lhs.cast = ptrtoint ptr %17 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %size = getelementptr inbounds %struct.token, ptr %18, i64 0, i32 2
  %20 = load i8, ptr %size, align 1, !tbaa !21
  %conv62 = zext i8 %20 to i64
  %cmp63.not = icmp eq i64 %sub.ptr.sub, %conv62
  br i1 %cmp63.not, label %if.end66, label %if.then65

if.then65:                                        ; preds = %if.end51
  tail call void @abort() #25
  unreachable

if.end66:                                         ; preds = %if.end51
  %incdec.ptr67 = getelementptr inbounds %struct.token, ptr %18, i64 1
  %cmp68.not = icmp ult ptr %incdec.ptr67, %end
  br i1 %cmp68.not, label %if.end71, label %overrun_error

if.end71:                                         ; preds = %if.end66
  %token_type72 = getelementptr inbounds %struct.token, ptr %18, i64 1, i32 1
  %bf.load73 = load i8, ptr %token_type72, align 2
  %cmp75.not = icmp eq i8 %bf.load73, 86
  br i1 %cmp75.not, label %if.end82, label %if.then77

if.then77:                                        ; preds = %if.end71
  %21 = load ptr, ptr @stderr, align 8, !tbaa !9
  %22 = load ptr, ptr @filename, align 8, !tbaa !9
  %23 = load i16, ptr %incdec.ptr67, align 8, !tbaa !19
  %conv79 = zext i16 %23 to i32
  %content80 = getelementptr inbounds %struct.token, ptr %18, i64 1, i32 4
  %24 = load ptr, ptr %content80, align 8, !tbaa !22
  %call81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.104, ptr noundef %22, i32 noundef %conv79, ptr noundef %24) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable

if.end82:                                         ; preds = %if.end71
  %incdec.ptr83 = getelementptr inbounds %struct.token, ptr %18, i64 2
  store ptr %incdec.ptr83, ptr %cursor, align 8, !tbaa !9
  %cmp84.not = icmp ult ptr %incdec.ptr83, %end
  br i1 %cmp84.not, label %if.end82.if.end88_crit_edge, label %overrun_error

if.end82.if.end88_crit_edge:                      ; preds = %if.end82
  %token_type89.phi.trans.insert = getelementptr inbounds %struct.token, ptr %18, i64 2, i32 1
  %bf.load90.pre = load i8, ptr %token_type89.phi.trans.insert, align 2
  br label %if.end88

if.end88:                                         ; preds = %if.end82.if.end88_crit_edge, %alloc_elem.exit
  %25 = phi i32 [ %or60, %if.end82.if.end88_crit_edge ], [ 0, %alloc_elem.exit ]
  %bf.load90 = phi i8 [ %bf.load90.pre, %if.end82.if.end88_crit_edge ], [ %bf.load7, %alloc_elem.exit ]
  %26 = phi ptr [ %incdec.ptr83, %if.end82.if.end88_crit_edge ], [ %0, %alloc_elem.exit ]
  switch i8 %bf.load90, label %if.end116 [
    i8 37, label %if.then94
    i8 26, label %if.then107
  ]

if.then94:                                        ; preds = %if.end88
  %flags95 = getelementptr inbounds %struct.element, ptr %call.i, i64 0, i32 12
  %or96 = or i32 %25, 1
  store i32 %or96, ptr %flags95, align 4, !tbaa !34
  %incdec.ptr97 = getelementptr inbounds %struct.token, ptr %26, i64 1
  store ptr %incdec.ptr97, ptr %cursor, align 8, !tbaa !9
  %cmp98.not = icmp ult ptr %incdec.ptr97, %end
  br i1 %cmp98.not, label %if.end116.thread, label %overrun_error

if.then107:                                       ; preds = %if.end88
  %flags108 = getelementptr inbounds %struct.element, ptr %call.i, i64 0, i32 12
  %or109 = or i32 %25, 2
  store i32 %or109, ptr %flags108, align 4, !tbaa !34
  %incdec.ptr110 = getelementptr inbounds %struct.token, ptr %26, i64 1
  store ptr %incdec.ptr110, ptr %cursor, align 8, !tbaa !9
  %cmp111.not = icmp ult ptr %incdec.ptr110, %end
  br i1 %cmp111.not, label %if.end116, label %overrun_error

if.end116:                                        ; preds = %if.then107, %if.end88
  %27 = phi ptr [ %26, %if.end88 ], [ %incdec.ptr110, %if.then107 ]
  br i1 %cmp, label %if.then119.critedge, label %if.end151

if.end116.thread:                                 ; preds = %if.then94
  br i1 %cmp, label %if.end116.thread.if.end127_crit_edge, label %if.end151

if.end116.thread.if.end127_crit_edge:             ; preds = %if.end116.thread
  %bf.load129.pre = load i24, ptr %class, align 1
  br label %if.end127

if.then119.critedge:                              ; preds = %if.end116
  %bf.load121 = load i24, ptr %class, align 1
  %bf.set126 = or i24 %bf.load121, 65536
  br label %if.end127

if.end127:                                        ; preds = %if.then119.critedge, %if.end116.thread.if.end127_crit_edge
  %28 = phi ptr [ %27, %if.then119.critedge ], [ %incdec.ptr97, %if.end116.thread.if.end127_crit_edge ]
  %bf.load129 = phi i24 [ %bf.set126, %if.then119.critedge ], [ %bf.load129.pre, %if.end116.thread.if.end127_crit_edge ]
  %cond = phi i32 [ 3, %if.then119.critedge ], [ 8, %if.end116.thread.if.end127_crit_edge ]
  %29 = trunc i32 %cond to i24
  %bf.clear131 = and i24 %bf.load129, -256
  %bf.set132 = or i24 %bf.clear131, %29
  store i24 %bf.set132, ptr %class, align 1
  %call.i502 = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #27
  %tobool.not.i503 = icmp eq ptr %call.i502, null
  br i1 %tobool.not.i503, label %if.then.i504, label %alloc_elem.exit506

if.then.i504:                                     ; preds = %if.end127
  tail call void @perror(ptr noundef null) #28
  tail call void @exit(i32 noundef 1) #25
  unreachable

alloc_elem.exit506:                               ; preds = %if.end127
  %30 = load ptr, ptr @element_list, align 8, !tbaa !9
  %list_next.i505 = getelementptr inbounds %struct.element, ptr %call.i502, i64 0, i32 7
  store ptr %30, ptr %list_next.i505, align 8, !tbaa !35
  store ptr %call.i502, ptr @element_list, align 8, !tbaa !9
  %children = getelementptr inbounds %struct.element, ptr %call.i, i64 0, i32 4
  store ptr %call.i502, ptr %children, align 8, !tbaa !38
  %class136 = getelementptr inbounds %struct.element, ptr %call.i502, i64 0, i32 9
  store i24 0, ptr %class136, align 1
  %token_type144 = getelementptr inbounds %struct.token, ptr %28, i64 0, i32 1
  %bf.load145 = load i8, ptr %token_type144, align 2
  %idxprom147 = zext i8 %bf.load145 to i64
  %arrayidx148 = getelementptr inbounds [93 x i8], ptr @token_to_tag, i64 0, i64 %idxprom147
  %31 = load i8, ptr %arrayidx148, align 1, !tbaa !16
  %tag149 = getelementptr inbounds %struct.element, ptr %call.i502, i64 0, i32 10
  store i8 %31, ptr %tag149, align 4, !tbaa !36
  %name150 = getelementptr inbounds %struct.element, ptr %call.i502, i64 0, i32 1
  store ptr %name, ptr %name150, align 8, !tbaa !37
  br label %if.end151

if.end151:                                        ; preds = %alloc_elem.exit506, %if.end116.thread, %if.end116
  %32 = phi ptr [ %28, %alloc_elem.exit506 ], [ %27, %if.end116 ], [ %incdec.ptr97, %if.end116.thread ]
  %element.0 = phi ptr [ %call.i502, %alloc_elem.exit506 ], [ %call.i, %if.end116 ], [ %call.i, %if.end116.thread ]
  %type = getelementptr inbounds %struct.element, ptr %element.0, i64 0, i32 2
  store ptr %32, ptr %type, align 8, !tbaa !39
  %token_type152 = getelementptr inbounds %struct.token, ptr %32, i64 0, i32 1
  %bf.load153500 = load i8, ptr %token_type152, align 2
  switch i8 %bf.load153500, label %sw.default308 [
    i8 2, label %sw.bb155
    i8 49, label %sw.bb161
    i8 8, label %sw.bb161
    i8 24, label %sw.bb161
    i8 43, label %sw.bb161
    i8 29, label %sw.bb167
    i8 7, label %sw.bb172
    i8 32, label %sw.bb172
    i8 34, label %sw.bb172
    i8 35, label %sw.bb172
    i8 45, label %sw.bb172
    i8 50, label %sw.bb172
    i8 61, label %sw.bb172
    i8 69, label %sw.bb172
    i8 72, label %sw.bb172
    i8 78, label %sw.bb172
    i8 77, label %sw.bb172
    i8 79, label %sw.bb172
    i8 80, label %sw.bb172
    i8 55, label %sw.bb172
    i8 33, label %sw.bb172
    i8 76, label %sw.bb172
    i8 6, label %sw.bb178
    i8 52, label %sw.bb178
    i8 51, label %sw.bb196
    i8 91, label %sw.bb214
    i8 11, label %sw.bb230
    i8 64, label %sw.bb238
    i8 65, label %sw.bb273
  ]

sw.bb155:                                         ; preds = %if.end151
  %compound156 = getelementptr inbounds %struct.element, ptr %element.0, i64 0, i32 9
  %bf.load157 = load i24, ptr %compound156, align 1
  %bf.clear158 = and i24 %bf.load157, -256
  %bf.set159 = or i24 %bf.clear158, 6
  store i24 %bf.set159, ptr %compound156, align 1
  %incdec.ptr160 = getelementptr inbounds %struct.token, ptr %32, i64 1
  store ptr %incdec.ptr160, ptr %cursor, align 8, !tbaa !9
  br label %sw.epilog313

sw.bb161:                                         ; preds = %if.end151, %if.end151, %if.end151, %if.end151
  %compound162 = getelementptr inbounds %struct.element, ptr %element.0, i64 0, i32 9
  %bf.load163 = load i24, ptr %compound162, align 1
  %bf.clear164 = and i24 %bf.load163, -256
  store i24 %bf.clear164, ptr %compound162, align 1
  %incdec.ptr166 = getelementptr inbounds %struct.token, ptr %32, i64 1
  store ptr %incdec.ptr166, ptr %cursor, align 8, !tbaa !9
  br label %sw.epilog313

sw.bb167:                                         ; preds = %if.end151
  %method168 = getelementptr inbounds %struct.element, ptr %element.0, i64 0, i32 9
  %bf.load169 = load i24, ptr %method168, align 1
  %bf.clear170 = and i24 %bf.load169, 65535
  %bf.set171 = or i24 %bf.clear170, 65536
  store i24 %bf.set171, ptr %method168, align 1
  br label %sw.bb172

sw.bb172:                                         ; preds = %sw.bb167, %if.end151, %if.end151, %if.end151, %if.end151, %if.end151, %if.end151, %if.end151, %if.end151, %if.end151, %if.end151, %if.end151, %if.end151, %if.end151, %if.end151, %if.end151, %if.end151
  %compound173 = getelementptr inbounds %struct.element, ptr %element.0, i64 0, i32 9
  %bf.load174 = load i24, ptr %compound173, align 1
  %bf.clear175 = and i24 %bf.load174, -256
  store i24 %bf.clear175, ptr %compound173, align 1
  %incdec.ptr177 = getelementptr inbounds %struct.token, ptr %32, i64 1
  store ptr %incdec.ptr177, ptr %cursor, align 8, !tbaa !9
  br label %sw.epilog313

sw.bb178:                                         ; preds = %if.end151, %if.end151
  %compound179 = getelementptr inbounds %struct.element, ptr %element.0, i64 0, i32 9
  %bf.load180 = load i24, ptr %compound179, align 1
  %bf.clear181 = and i24 %bf.load180, -256
  store i24 %bf.clear181, ptr %compound179, align 1
  %incdec.ptr183 = getelementptr inbounds %struct.token, ptr %32, i64 1
  %cmp184.not = icmp ult ptr %incdec.ptr183, %end
  br i1 %cmp184.not, label %if.end187, label %overrun_error

if.end187:                                        ; preds = %sw.bb178
  %token_type188 = getelementptr inbounds %struct.token, ptr %32, i64 1, i32 1
  %bf.load189 = load i8, ptr %token_type188, align 2
  %cmp191.not = icmp eq i8 %bf.load189, 67
  br i1 %cmp191.not, label %if.end194, label %parse_error

if.end194:                                        ; preds = %if.end187
  %incdec.ptr195 = getelementptr inbounds %struct.token, ptr %32, i64 2
  store ptr %incdec.ptr195, ptr %cursor, align 8, !tbaa !9
  br label %sw.epilog313

sw.bb196:                                         ; preds = %if.end151
  %compound197 = getelementptr inbounds %struct.element, ptr %element.0, i64 0, i32 9
  %bf.load198 = load i24, ptr %compound197, align 1
  %bf.clear199 = and i24 %bf.load198, -256
  store i24 %bf.clear199, ptr %compound197, align 1
  %incdec.ptr201 = getelementptr inbounds %struct.token, ptr %32, i64 1
  %cmp202.not = icmp ult ptr %incdec.ptr201, %end
  br i1 %cmp202.not, label %if.end205, label %overrun_error

if.end205:                                        ; preds = %sw.bb196
  %token_type206 = getelementptr inbounds %struct.token, ptr %32, i64 1, i32 1
  %bf.load207 = load i8, ptr %token_type206, align 2
  %cmp209.not = icmp eq i8 %bf.load207, 36
  br i1 %cmp209.not, label %if.end212, label %parse_error

if.end212:                                        ; preds = %if.end205
  %incdec.ptr213 = getelementptr inbounds %struct.token, ptr %32, i64 2
  store ptr %incdec.ptr213, ptr %cursor, align 8, !tbaa !9
  br label %sw.epilog313

sw.bb214:                                         ; preds = %if.end151
  %compound215 = getelementptr inbounds %struct.element, ptr %element.0, i64 0, i32 9
  %bf.load216 = load i24, ptr %compound215, align 1
  %bf.clear217 = and i24 %bf.load216, -256
  %bf.set218 = or i24 %bf.clear217, 7
  store i24 %bf.set218, ptr %compound215, align 1
  %33 = load ptr, ptr @type_index, align 8, !tbaa !9
  %34 = load i32, ptr @nr_types, align 4, !tbaa !23
  %cmp18.not.i = icmp eq i32 %34, 0
  br i1 %cmp18.not.i, label %if.then222, label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %sw.bb214
  %conv219 = zext i32 %34 to i64
  %size.i = getelementptr inbounds %struct.token, ptr %32, i64 0, i32 2
  %35 = load i8, ptr %size.i, align 1, !tbaa !21
  %conv.i = zext i8 %35 to i32
  %content.i = getelementptr inbounds %struct.token, ptr %32, i64 0, i32 4
  %conv12.i = zext i8 %35 to i64
  br label %while.body.i

while.body.i:                                     ; preds = %if.end6.i, %while.body.i.preheader
  %__l.020.i = phi i64 [ %__l.1.i, %if.end6.i ], [ 0, %while.body.i.preheader ]
  %__u.019.i = phi i64 [ %__u.1.i, %if.end6.i ], [ %conv219, %while.body.i.preheader ]
  %add.i = add i64 %__u.019.i, %__l.020.i
  %div17.i = lshr i64 %add.i, 1
  %mul.i = shl i64 %div17.i, 3
  %add.ptr.i = getelementptr inbounds i8, ptr %33, i64 %mul.i
  %36 = load ptr, ptr %add.ptr.i, align 8, !tbaa !9
  %37 = load ptr, ptr %36, align 8, !tbaa !27
  %size1.i = getelementptr inbounds %struct.token, ptr %37, i64 0, i32 2
  %38 = load i8, ptr %size1.i, align 1, !tbaa !21
  %cmp.not.i = icmp eq i8 %35, %38
  br i1 %cmp.not.i, label %if.else.i510, label %if.then.i508

if.then.i508:                                     ; preds = %while.body.i
  %conv2.i = zext i8 %38 to i32
  %sub.i = sub nsw i32 %conv.i, %conv2.i
  br label %type_finder.exit

if.else.i510:                                     ; preds = %while.body.i
  %39 = load ptr, ptr %content.i, align 8, !tbaa !22
  %content10.i = getelementptr inbounds %struct.token, ptr %37, i64 0, i32 4
  %40 = load ptr, ptr %content10.i, align 8, !tbaa !22
  %call.i509 = tail call i32 @memcmp(ptr noundef %39, ptr noundef %40, i64 noundef %conv12.i) #23
  br label %type_finder.exit

type_finder.exit:                                 ; preds = %if.else.i510, %if.then.i508
  %retval.0.i511 = phi i32 [ %sub.i, %if.then.i508 ], [ %call.i509, %if.else.i510 ]
  %cmp1.i = icmp slt i32 %retval.0.i511, 0
  br i1 %cmp1.i, label %if.end6.i, label %if.else.i

if.else.i:                                        ; preds = %type_finder.exit
  %cmp2.not.i = icmp eq i32 %retval.0.i511, 0
  br i1 %cmp2.not.i, label %if.end227, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  %add4.i = add nuw i64 %div17.i, 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %type_finder.exit
  %__u.1.i = phi i64 [ %__u.019.i, %if.then3.i ], [ %div17.i, %type_finder.exit ]
  %__l.1.i = phi i64 [ %add4.i, %if.then3.i ], [ %__l.020.i, %type_finder.exit ]
  %cmp.i = icmp ult i64 %__l.1.i, %__u.1.i
  br i1 %cmp.i, label %while.body.i, label %if.then222

if.then222:                                       ; preds = %if.end6.i, %sw.bb214
  %41 = load ptr, ptr @stderr, align 8, !tbaa !9
  %42 = load ptr, ptr @filename, align 8, !tbaa !9
  %43 = load i16, ptr %32, align 8, !tbaa !19
  %conv224 = zext i16 %43 to i32
  %content225 = getelementptr inbounds %struct.token, ptr %32, i64 0, i32 4
  %44 = load ptr, ptr %content225, align 8, !tbaa !22
  %call226 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.105, ptr noundef %42, i32 noundef %conv224, ptr noundef %44) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable

if.end227:                                        ; preds = %if.else.i
  %add.ptr.i.le = getelementptr inbounds i8, ptr %33, i64 %mul.i
  %type228 = getelementptr inbounds %struct.token, ptr %32, i64 0, i32 5
  store ptr %36, ptr %type228, align 8, !tbaa !40
  %45 = load ptr, ptr %add.ptr.i.le, align 8, !tbaa !9
  %ref_count = getelementptr inbounds %struct.type, ptr %45, i64 0, i32 3
  %46 = load i32, ptr %ref_count, align 8, !tbaa !41
  %inc = add i32 %46, 1
  store i32 %inc, ptr %ref_count, align 8, !tbaa !41
  %incdec.ptr229 = getelementptr inbounds %struct.token, ptr %32, i64 1
  store ptr %incdec.ptr229, ptr %cursor, align 8, !tbaa !9
  br label %sw.epilog313

sw.bb230:                                         ; preds = %if.end151
  %compound231 = getelementptr inbounds %struct.element, ptr %element.0, i64 0, i32 9
  %bf.load232 = load i24, ptr %compound231, align 1
  %bf.clear233 = and i24 %bf.load232, -256
  %bf.set234 = or i24 %bf.clear233, 5
  store i24 %bf.set234, ptr %compound231, align 1
  %incdec.ptr235 = getelementptr inbounds %struct.token, ptr %32, i64 1
  store ptr %incdec.ptr235, ptr %cursor, align 8, !tbaa !9
  %call236 = call fastcc ptr @parse_compound(ptr noundef nonnull %cursor, ptr noundef %end, i32 noundef 1)
  %children237 = getelementptr inbounds %struct.element, ptr %element.0, i64 0, i32 4
  store ptr %call236, ptr %children237, align 8, !tbaa !38
  br label %sw.epilog313

sw.bb238:                                         ; preds = %if.end151
  %compound239 = getelementptr inbounds %struct.element, ptr %element.0, i64 0, i32 9
  %bf.load240 = load i24, ptr %compound239, align 1
  %bf.clear241 = and i24 %bf.load240, 65280
  %bf.set246 = or i24 %bf.clear241, 65539
  store i24 %bf.set246, ptr %compound239, align 1
  %incdec.ptr247 = getelementptr inbounds %struct.token, ptr %32, i64 1
  store ptr %incdec.ptr247, ptr %cursor, align 8, !tbaa !9
  %cmp248.not = icmp ult ptr %incdec.ptr247, %end
  br i1 %cmp248.not, label %if.end251, label %overrun_error

if.end251:                                        ; preds = %sw.bb238
  %token_type252 = getelementptr inbounds %struct.token, ptr %32, i64 1, i32 1
  %bf.load253 = load i8, ptr %token_type252, align 2
  %cmp255 = icmp eq i8 %bf.load253, 53
  br i1 %cmp255, label %if.then257, label %if.else269

if.then257:                                       ; preds = %if.end251
  %bf.set261 = or i24 %bf.clear241, 65540
  store i24 %bf.set261, ptr %compound239, align 1
  %incdec.ptr262 = getelementptr inbounds %struct.token, ptr %32, i64 2
  store ptr %incdec.ptr262, ptr %cursor, align 8, !tbaa !9
  %cmp263.not = icmp ult ptr %incdec.ptr262, %end
  br i1 %cmp263.not, label %if.end266, label %overrun_error

if.end266:                                        ; preds = %if.then257
  %call267 = call fastcc ptr @parse_type(ptr noundef nonnull %cursor, ptr noundef nonnull %end, ptr noundef null)
  %children268 = getelementptr inbounds %struct.element, ptr %element.0, i64 0, i32 4
  store ptr %call267, ptr %children268, align 8, !tbaa !38
  br label %sw.epilog313

if.else269:                                       ; preds = %if.end251
  %call270 = call fastcc ptr @parse_compound(ptr noundef nonnull %cursor, ptr noundef nonnull %end, i32 noundef 0)
  %children271 = getelementptr inbounds %struct.element, ptr %element.0, i64 0, i32 4
  store ptr %call270, ptr %children271, align 8, !tbaa !38
  br label %sw.epilog313

sw.bb273:                                         ; preds = %if.end151
  %compound274 = getelementptr inbounds %struct.element, ptr %element.0, i64 0, i32 9
  %bf.load275 = load i24, ptr %compound274, align 1
  %bf.clear276 = and i24 %bf.load275, 65280
  %bf.set281 = or i24 %bf.clear276, 65537
  store i24 %bf.set281, ptr %compound274, align 1
  %incdec.ptr282 = getelementptr inbounds %struct.token, ptr %32, i64 1
  store ptr %incdec.ptr282, ptr %cursor, align 8, !tbaa !9
  %cmp283.not = icmp ult ptr %incdec.ptr282, %end
  br i1 %cmp283.not, label %if.end286, label %overrun_error

if.end286:                                        ; preds = %sw.bb273
  %token_type287 = getelementptr inbounds %struct.token, ptr %32, i64 1, i32 1
  %bf.load288 = load i8, ptr %token_type287, align 2
  %cmp290 = icmp eq i8 %bf.load288, 53
  br i1 %cmp290, label %if.then292, label %if.else304

if.then292:                                       ; preds = %if.end286
  %bf.set296 = or i24 %bf.clear276, 65538
  store i24 %bf.set296, ptr %compound274, align 1
  %incdec.ptr297 = getelementptr inbounds %struct.token, ptr %32, i64 2
  store ptr %incdec.ptr297, ptr %cursor, align 8, !tbaa !9
  %cmp298.not = icmp ult ptr %incdec.ptr297, %end
  br i1 %cmp298.not, label %if.end301, label %parse_error

if.end301:                                        ; preds = %if.then292
  %call302 = call fastcc ptr @parse_type(ptr noundef nonnull %cursor, ptr noundef nonnull %end, ptr noundef null)
  %children303 = getelementptr inbounds %struct.element, ptr %element.0, i64 0, i32 4
  store ptr %call302, ptr %children303, align 8, !tbaa !38
  br label %sw.epilog313

if.else304:                                       ; preds = %if.end286
  %call305 = call fastcc ptr @parse_compound(ptr noundef nonnull %cursor, ptr noundef nonnull %end, i32 noundef 1)
  %children306 = getelementptr inbounds %struct.element, ptr %element.0, i64 0, i32 4
  store ptr %call305, ptr %children306, align 8, !tbaa !38
  br label %sw.epilog313

sw.default308:                                    ; preds = %if.end151
  %47 = load ptr, ptr @stderr, align 8, !tbaa !9
  %48 = load ptr, ptr @filename, align 8, !tbaa !9
  %49 = load i16, ptr %32, align 8, !tbaa !19
  %conv310 = zext i16 %49 to i32
  %content311 = getelementptr inbounds %struct.token, ptr %32, i64 0, i32 4
  %50 = load ptr, ptr %content311, align 8, !tbaa !22
  %call312 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str.106, ptr noundef %48, i32 noundef %conv310, ptr noundef %50) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable

sw.epilog313:                                     ; preds = %if.else304, %if.end301, %if.else269, %if.end266, %sw.bb230, %if.end227, %if.end212, %if.end194, %sw.bb172, %sw.bb161, %sw.bb155
  %51 = load ptr, ptr %cursor, align 8, !tbaa !9
  %cmp314 = icmp ult ptr %51, %end
  br i1 %cmp314, label %land.lhs.true, label %if.end330

land.lhs.true:                                    ; preds = %sw.epilog313
  %token_type316 = getelementptr inbounds %struct.token, ptr %51, i64 0, i32 1
  %bf.load317 = load i8, ptr %token_type316, align 2
  switch i8 %bf.load317, label %if.end330 [
    i8 54, label %if.then326
    i8 17, label %if.then326
  ]

if.then326:                                       ; preds = %land.lhs.true, %land.lhs.true
  %incdec.ptr327 = getelementptr inbounds %struct.token, ptr %51, i64 1
  store ptr %incdec.ptr327, ptr %cursor, align 8, !tbaa !9
  %flags328 = getelementptr inbounds %struct.element, ptr %call.i, i64 0, i32 12
  %52 = load i32, ptr %flags328, align 4, !tbaa !34
  %or329 = or i32 %52, 16
  store i32 %or329, ptr %flags328, align 4, !tbaa !34
  br label %if.end330

if.end330:                                        ; preds = %if.then326, %land.lhs.true, %sw.epilog313
  %53 = phi ptr [ %51, %land.lhs.true ], [ %incdec.ptr327, %if.then326 ], [ %51, %sw.epilog313 ]
  %cmp331 = icmp ult ptr %53, %end
  br i1 %cmp331, label %land.lhs.true333, label %cleanup404

land.lhs.true333:                                 ; preds = %if.end330
  %token_type334 = getelementptr inbounds %struct.token, ptr %53, i64 0, i32 1
  %bf.load335 = load i8, ptr %token_type334, align 2
  %cmp337 = icmp eq i8 %bf.load335, 87
  br i1 %cmp337, label %if.then339, label %cleanup404

if.then339:                                       ; preds = %land.lhs.true333
  %incdec.ptr340 = getelementptr inbounds %struct.token, ptr %53, i64 1
  store ptr %incdec.ptr340, ptr %cursor, align 8, !tbaa !9
  %cmp341.not = icmp ult ptr %incdec.ptr340, %end
  br i1 %cmp341.not, label %if.end344, label %overrun_error

if.end344:                                        ; preds = %if.then339
  %token_type345 = getelementptr inbounds %struct.token, ptr %53, i64 1, i32 1
  %bf.load346 = load i8, ptr %token_type345, align 2
  %cmp348.not = icmp eq i8 %bf.load346, 92
  br i1 %cmp348.not, label %if.end355, label %if.then350

if.then350:                                       ; preds = %if.end344
  %54 = load ptr, ptr @stderr, align 8, !tbaa !9
  %55 = load ptr, ptr @filename, align 8, !tbaa !9
  %56 = load i16, ptr %incdec.ptr340, align 8, !tbaa !19
  %conv352 = zext i16 %56 to i32
  %content353 = getelementptr inbounds %struct.token, ptr %53, i64 1, i32 4
  %57 = load ptr, ptr %content353, align 8, !tbaa !22
  %call354 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.107, ptr noundef %55, i32 noundef %conv352, ptr noundef %57) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable

if.end355:                                        ; preds = %if.end344
  %call356 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #26
  %tobool357.not = icmp eq ptr %call356, null
  br i1 %tobool357.not, label %if.then358, label %if.end359

if.then358:                                       ; preds = %if.end355
  tail call void @perror(ptr noundef null) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable

if.end359:                                        ; preds = %if.end355
  %index = getelementptr inbounds %struct.action, ptr %call356, i64 0, i32 2
  store i8 0, ptr %index, align 8, !tbaa !31
  %content360 = getelementptr inbounds %struct.token, ptr %53, i64 1, i32 4
  %58 = load ptr, ptr %content360, align 8, !tbaa !22
  %name361 = getelementptr inbounds %struct.action, ptr %call356, i64 0, i32 1
  store ptr %58, ptr %name361, align 8, !tbaa !33
  %59 = load ptr, ptr @action_list, align 8, !tbaa !9
  %tobool362.not521 = icmp eq ptr %59, null
  br i1 %tobool362.not521, label %for.end, label %for.body

for.body:                                         ; preds = %for.inc, %if.end359
  %60 = phi ptr [ %64, %for.inc ], [ %59, %if.end359 ]
  %ppaction.0522 = phi ptr [ %60, %for.inc ], [ @action_list, %if.end359 ]
  %name365 = getelementptr inbounds %struct.action, ptr %60, i64 0, i32 1
  %61 = load ptr, ptr %name365, align 8, !tbaa !33
  %call366 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %58, ptr noundef nonnull dereferenceable(1) %61) #23
  %cmp367 = icmp eq i32 %call366, 0
  br i1 %cmp367, label %if.then369, label %if.end370

if.then369:                                       ; preds = %for.body
  tail call void @free(ptr noundef nonnull %call356) #22
  %62 = load ptr, ptr %ppaction.0522, align 8, !tbaa !9
  br label %found

if.end370:                                        ; preds = %for.body
  %cmp371 = icmp slt i32 %call366, 0
  br i1 %cmp371, label %if.then373, label %for.inc

if.then373:                                       ; preds = %if.end370
  store ptr %60, ptr %call356, align 8, !tbaa !42
  store ptr %call356, ptr %ppaction.0522, align 8, !tbaa !9
  %63 = load i32, ptr @nr_actions, align 4, !tbaa !23
  %inc374 = add i32 %63, 1
  store i32 %inc374, ptr @nr_actions, align 4, !tbaa !23
  br label %found

for.inc:                                          ; preds = %if.end370
  %64 = load ptr, ptr %60, align 8, !tbaa !9
  %tobool362.not = icmp eq ptr %64, null
  br i1 %tobool362.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end359
  %ppaction.0.lcssa = phi ptr [ @action_list, %if.end359 ], [ %60, %for.inc ]
  store ptr null, ptr %call356, align 8, !tbaa !42
  store ptr %call356, ptr %ppaction.0.lcssa, align 8, !tbaa !9
  %65 = load i32, ptr @nr_actions, align 4, !tbaa !23
  %inc378 = add i32 %65, 1
  store i32 %inc378, ptr @nr_actions, align 4, !tbaa !23
  br label %found

found:                                            ; preds = %for.end, %if.then373, %if.then369
  %action.2 = phi ptr [ %call356, %for.end ], [ %call356, %if.then373 ], [ %62, %if.then369 ]
  %action379 = getelementptr inbounds %struct.element, ptr %element.0, i64 0, i32 3
  store ptr %action.2, ptr %action379, align 8, !tbaa !43
  %66 = load ptr, ptr %cursor, align 8, !tbaa !9
  %action380 = getelementptr inbounds %struct.token, ptr %66, i64 0, i32 3
  store ptr %action.2, ptr %action380, align 8, !tbaa !44
  %incdec.ptr381 = getelementptr inbounds %struct.token, ptr %66, i64 1
  %cmp382.not = icmp ult ptr %incdec.ptr381, %end
  br i1 %cmp382.not, label %if.end385, label %overrun_error

if.end385:                                        ; preds = %found
  %token_type386 = getelementptr inbounds %struct.token, ptr %66, i64 1, i32 1
  %bf.load387 = load i8, ptr %token_type386, align 2
  %cmp389.not = icmp eq i8 %bf.load387, 88
  br i1 %cmp389.not, label %if.end396, label %if.then391

if.then391:                                       ; preds = %if.end385
  %67 = load ptr, ptr @stderr, align 8, !tbaa !9
  %68 = load ptr, ptr @filename, align 8, !tbaa !9
  %69 = load i16, ptr %incdec.ptr381, align 8, !tbaa !19
  %conv393 = zext i16 %69 to i32
  %content394 = getelementptr inbounds %struct.token, ptr %66, i64 1, i32 4
  %70 = load ptr, ptr %content394, align 8, !tbaa !22
  %call395 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef nonnull @.str.108, ptr noundef %68, i32 noundef %conv393, ptr noundef %70) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable

if.end396:                                        ; preds = %if.end385
  %incdec.ptr397 = getelementptr inbounds %struct.token, ptr %66, i64 2
  br label %cleanup404

parse_error:                                      ; preds = %if.then292, %if.end205, %if.end187
  %71 = phi ptr [ %incdec.ptr297, %if.then292 ], [ %incdec.ptr201, %if.end205 ], [ %incdec.ptr183, %if.end187 ]
  %72 = load ptr, ptr @stderr, align 8, !tbaa !9
  %73 = load ptr, ptr @filename, align 8, !tbaa !9
  %74 = load i16, ptr %71, align 8, !tbaa !19
  %conv400 = zext i16 %74 to i32
  %content401 = getelementptr inbounds %struct.token, ptr %71, i64 0, i32 4
  %75 = load ptr, ptr %content401, align 8, !tbaa !22
  %call402 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.109, ptr noundef %73, i32 noundef %conv400, ptr noundef %75) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable

overrun_error:                                    ; preds = %found, %if.then339, %sw.bb273, %if.then257, %sw.bb238, %sw.bb196, %sw.bb178, %if.then107, %if.then94, %if.end82, %if.end66, %sw.epilog, %if.then
  %76 = load ptr, ptr @stderr, align 8, !tbaa !9
  %77 = load ptr, ptr @filename, align 8, !tbaa !9
  %call403 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef nonnull @.str.110, ptr noundef %77) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable

cleanup404:                                       ; preds = %if.end396, %land.lhs.true333, %if.end330
  %78 = phi ptr [ %53, %if.end330 ], [ %53, %land.lhs.true333 ], [ %incdec.ptr397, %if.end396 ]
  store ptr %78, ptr %_cursor, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cursor) #22
  ret ptr %call.i
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc ptr @parse_compound(ptr nocapture noundef %_cursor, ptr noundef %end, i32 noundef %alternates) unnamed_addr #0 {
entry:
  %children = alloca ptr, align 8
  %cursor = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %children)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cursor) #22
  %0 = load ptr, ptr %_cursor, align 8, !tbaa !9
  %token_type = getelementptr inbounds %struct.token, ptr %0, i64 0, i32 1
  %bf.load = load i8, ptr %token_type, align 2
  %cmp.not = icmp eq i8 %bf.load, 83
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !9
  %2 = load ptr, ptr @filename, align 8, !tbaa !9
  %3 = load i16, ptr %0, align 8, !tbaa !19
  %conv = zext i16 %3 to i32
  %content = getelementptr inbounds %struct.token, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %content, align 8, !tbaa !22
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.112, ptr noundef %2, i32 noundef %conv, ptr noundef %4) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable

if.end:                                           ; preds = %entry
  %incdec.ptr = getelementptr inbounds %struct.token, ptr %0, i64 1
  store ptr %incdec.ptr, ptr %cursor, align 8, !tbaa !9
  %cmp1.not = icmp ult ptr %incdec.ptr, %end
  br i1 %cmp1.not, label %if.end4, label %overrun_error

if.end4:                                          ; preds = %if.end
  %token_type5 = getelementptr inbounds %struct.token, ptr %0, i64 1, i32 1
  %bf.load6 = load i8, ptr %token_type5, align 2
  %cmp8 = icmp eq i8 %bf.load6, 83
  br i1 %cmp8, label %if.then10, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end4
  %tobool.not = icmp eq i32 %alternates, 0
  br label %for.cond

if.then10:                                        ; preds = %if.end4
  %5 = load ptr, ptr @stderr, align 8, !tbaa !9
  %6 = load ptr, ptr @filename, align 8, !tbaa !9
  %7 = load i16, ptr %incdec.ptr, align 8, !tbaa !19
  %conv12 = zext i16 %7 to i32
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.113, ptr noundef %6, i32 noundef %conv12) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable

for.cond:                                         ; preds = %if.end40, %for.cond.preheader
  %8 = phi ptr [ %incdec.ptr41, %if.end40 ], [ %incdec.ptr, %for.cond.preheader ]
  %child_p.0 = phi ptr [ %next, %if.end40 ], [ %children, %for.cond.preheader ]
  %token_type15 = getelementptr inbounds %struct.token, ptr %8, i64 0, i32 1
  %bf.load16 = load i8, ptr %token_type15, align 2
  %cmp18 = icmp eq i8 %bf.load16, 92
  br i1 %cmp18, label %if.then20, label %if.end26

if.then20:                                        ; preds = %for.cond
  %incdec.ptr21 = getelementptr inbounds %struct.token, ptr %8, i64 1
  store ptr %incdec.ptr21, ptr %cursor, align 8, !tbaa !9
  %cmp22.not = icmp ult ptr %incdec.ptr21, %end
  br i1 %cmp22.not, label %if.end26, label %overrun_error

if.end26:                                         ; preds = %if.then20, %for.cond
  %name.0 = phi ptr [ %8, %if.then20 ], [ null, %for.cond ]
  %call27 = call fastcc ptr @parse_type(ptr noundef nonnull %cursor, ptr noundef nonnull %end, ptr noundef %name.0)
  br i1 %tobool.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end26
  %flags = getelementptr inbounds %struct.element, ptr %call27, i64 0, i32 12
  %9 = load i32, ptr %flags, align 4, !tbaa !34
  %or = or i32 %9, 48
  store i32 %or, ptr %flags, align 4, !tbaa !34
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end26
  store ptr %call27, ptr %child_p.0, align 8, !tbaa !9
  %next = getelementptr inbounds %struct.element, ptr %call27, i64 0, i32 5
  %10 = load ptr, ptr %cursor, align 8, !tbaa !9
  %cmp30.not = icmp ult ptr %10, %end
  br i1 %cmp30.not, label %if.end33, label %overrun_error

if.end33:                                         ; preds = %if.end29
  %token_type34 = getelementptr inbounds %struct.token, ptr %10, i64 0, i32 1
  %bf.load35 = load i8, ptr %token_type34, align 2
  %cmp37.not = icmp eq i8 %bf.load35, 89
  br i1 %cmp37.not, label %if.end40, label %for.end

if.end40:                                         ; preds = %if.end33
  %incdec.ptr41 = getelementptr inbounds %struct.token, ptr %10, i64 1
  store ptr %incdec.ptr41, ptr %cursor, align 8, !tbaa !9
  %cmp42.not = icmp ult ptr %incdec.ptr41, %end
  br i1 %cmp42.not, label %for.cond, label %overrun_error

for.end:                                          ; preds = %if.end33
  %token_type34.le = getelementptr inbounds %struct.token, ptr %10, i64 0, i32 1
  %children.0.children.0.children.0. = load ptr, ptr %children, align 8, !tbaa !9
  %flags46 = getelementptr inbounds %struct.element, ptr %children.0.children.0.children.0., i64 0, i32 12
  %11 = load i32, ptr %flags46, align 4, !tbaa !34
  %and = and i32 %11, -33
  store i32 %and, ptr %flags46, align 4, !tbaa !34
  %bf.load48 = load i8, ptr %token_type34.le, align 2
  %cmp50.not = icmp eq i8 %bf.load48, 84
  br i1 %cmp50.not, label %if.end57, label %if.then52

if.then52:                                        ; preds = %for.end
  %12 = load ptr, ptr @stderr, align 8, !tbaa !9
  %13 = load ptr, ptr @filename, align 8, !tbaa !9
  %14 = load i16, ptr %10, align 8, !tbaa !19
  %conv54 = zext i16 %14 to i32
  %content55 = getelementptr inbounds %struct.token, ptr %10, i64 0, i32 4
  %15 = load ptr, ptr %content55, align 8, !tbaa !22
  %call56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.114, ptr noundef %13, i32 noundef %conv54, ptr noundef %15) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable

if.end57:                                         ; preds = %for.end
  %incdec.ptr58 = getelementptr inbounds %struct.token, ptr %10, i64 1
  store ptr %incdec.ptr58, ptr %_cursor, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cursor) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %children)
  ret ptr %children.0.children.0.children.0.

overrun_error:                                    ; preds = %if.end40, %if.end29, %if.then20, %if.end
  %16 = load ptr, ptr @stderr, align 8, !tbaa !9
  %17 = load ptr, ptr @filename, align 8, !tbaa !9
  %call59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.110, ptr noundef %17) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @dump_element(ptr nocapture noundef readonly %e, i32 noundef %level) unnamed_addr #17 {
entry:
  %tag = alloca [32 x i8], align 16
  %0 = load ptr, ptr %e, align 8, !tbaa !29
  %name1 = getelementptr inbounds %struct.element, ptr %e, i64 0, i32 1
  %1 = load ptr, ptr %name1, align 8, !tbaa !37
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %content = getelementptr inbounds %struct.token, ptr %1, i64 0, i32 4
  %2 = load ptr, ptr %content, align 8, !tbaa !22
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry
  %cond = phi ptr [ %2, %cond.true ], [ @.str.115, %entry ]
  %tobool3.not = icmp eq ptr %0, null
  br i1 %tobool3.not, label %cond.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end
  %3 = load ptr, ptr %0, align 8, !tbaa !27
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %cond.end10, label %cond.true6

cond.true6:                                       ; preds = %land.lhs.true
  %content8 = getelementptr inbounds %struct.token, ptr %3, i64 0, i32 4
  %4 = load ptr, ptr %content8, align 8, !tbaa !22
  br label %cond.end10

cond.end10:                                       ; preds = %cond.true6, %land.lhs.true, %cond.end
  %cond11 = phi ptr [ %4, %cond.true6 ], [ @.str.115, %land.lhs.true ], [ @.str.115, %cond.end ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tag) #22
  %class = getelementptr inbounds %struct.element, ptr %e, i64 0, i32 9
  %bf.load = load i24, ptr %class, align 1
  %5 = icmp ult i24 %bf.load, 256
  br i1 %5, label %land.lhs.true17, label %if.else

land.lhs.true17:                                  ; preds = %cond.end10
  %tag18 = getelementptr inbounds %struct.element, ptr %e, i64 0, i32 10
  %6 = load i8, ptr %tag18, align 4, !tbaa !36
  %cmp19 = icmp eq i8 %6, 0
  br i1 %cmp19, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %tag, ptr noundef nonnull align 1 dereferenceable(6) @.str.116, i64 6, i1 false) #22
  br label %if.end67

if.else:                                          ; preds = %land.lhs.true17, %cond.end10
  %bf.lshr23 = lshr i24 %bf.load, 8
  %bf.clear24 = and i24 %bf.lshr23, 255
  %cmp26 = icmp eq i24 %bf.clear24, 0
  br i1 %cmp26, label %if.then28, label %if.else47

if.then28:                                        ; preds = %if.else
  %bf.lshr38 = lshr i24 %bf.load, 16
  %idxprom40 = zext i24 %bf.lshr38 to i64
  %arrayidx41 = getelementptr inbounds [2 x [5 x i8]], ptr @asn1_methods, i64 0, i64 %idxprom40
  %tag43 = getelementptr inbounds %struct.element, ptr %e, i64 0, i32 10
  %7 = load i8, ptr %tag43, align 4, !tbaa !36
  %idxprom44 = zext i8 %7 to i64
  %arrayidx45 = getelementptr inbounds [32 x ptr], ptr @asn1_universal_tags, i64 0, i64 %idxprom44
  %8 = load ptr, ptr %arrayidx45, align 8, !tbaa !9
  %call46 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tag, ptr noundef nonnull @.str.117, ptr noundef nonnull @asn1_classes, ptr noundef nonnull %arrayidx41, ptr noundef %8) #22
  br label %if.end67

if.else47:                                        ; preds = %if.else
  %idxprom54 = zext i24 %bf.clear24 to i64
  %arrayidx55 = getelementptr inbounds [4 x [5 x i8]], ptr @asn1_classes, i64 0, i64 %idxprom54
  %bf.lshr59 = lshr i24 %bf.load, 16
  %idxprom61 = zext i24 %bf.lshr59 to i64
  %arrayidx62 = getelementptr inbounds [2 x [5 x i8]], ptr @asn1_methods, i64 0, i64 %idxprom61
  %tag64 = getelementptr inbounds %struct.element, ptr %e, i64 0, i32 10
  %9 = load i8, ptr %tag64, align 4, !tbaa !36
  %conv65 = zext i8 %9 to i32
  %call66 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tag, ptr noundef nonnull @.str.118, ptr noundef nonnull %arrayidx55, ptr noundef nonnull %arrayidx62, i32 noundef %conv65) #22
  br label %if.end67

if.end67:                                         ; preds = %if.else47, %if.then28, %if.then
  %flags = getelementptr inbounds %struct.element, ptr %e, i64 0, i32 12
  %10 = load i32, ptr %flags, align 4, !tbaa !34
  %and = and i32 %10, 1
  %tobool68.not = icmp eq i32 %and, 0
  %cond69 = select i1 %tobool68.not, i32 45, i32 73
  %11 = insertelement <4 x i32> poison, i32 %10, i64 0
  %shuffle = shufflevector <4 x i32> %11, <4 x i32> poison, <4 x i32> zeroinitializer
  %12 = and <4 x i32> %shuffle, <i32 32, i32 16, i32 4, i32 2>
  %13 = icmp eq <4 x i32> %12, zeroinitializer
  %14 = extractelement <4 x i1> %13, i64 3
  %cond73 = select i1 %14, i32 45, i32 69
  %15 = extractelement <4 x i1> %13, i64 2
  %cond77 = select i1 %15, i32 45, i32 84
  %16 = extractelement <4 x i1> %13, i64 1
  %cond81 = select i1 %16, i32 45, i32 83
  %17 = extractelement <4 x i1> %13, i64 0
  %cond85 = select i1 %17, i32 45, i32 67
  %bf.load86 = load i24, ptr %class, align 1
  %bf.clear87 = and i24 %bf.load86, 255
  %idxprom89 = zext i24 %bf.clear87 to i64
  %arrayidx90 = getelementptr inbounds [10 x i8], ptr @.str.120, i64 0, i64 %idxprom89
  %18 = load i8, ptr %arrayidx90, align 1, !tbaa !16
  %conv91 = sext i8 %18 to i32
  %action = getelementptr inbounds %struct.element, ptr %e, i64 0, i32 3
  %19 = load ptr, ptr %action, align 8, !tbaa !43
  %tobool93.not = icmp eq ptr %19, null
  br i1 %tobool93.not, label %cond.end98, label %cond.true94

cond.true94:                                      ; preds = %if.end67
  %name96 = getelementptr inbounds %struct.action, ptr %19, i64 0, i32 1
  %20 = load ptr, ptr %name96, align 8, !tbaa !33
  br label %cond.end98

cond.end98:                                       ; preds = %cond.true94, %if.end67
  %cond99 = phi ptr [ %20, %cond.true94 ], [ @.str.121, %if.end67 ]
  %call100 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.119, i32 noundef %cond69, i32 noundef %cond73, i32 noundef %cond77, i32 noundef %cond81, i32 noundef %cond85, i32 noundef %conv91, i32 noundef %level, ptr noundef nonnull @.str.121, ptr noundef nonnull %tag, ptr noundef %cond11, ptr noundef %cond, ptr noundef %cond99)
  %bf.load102 = load i24, ptr %class, align 1
  %bf.clear103 = and i24 %bf.load102, 255
  %cmp105 = icmp eq i24 %bf.clear103, 7
  br i1 %cmp105, label %if.then107, label %if.else109

if.then107:                                       ; preds = %cond.end98
  %type = getelementptr inbounds %struct.element, ptr %e, i64 0, i32 2
  %21 = load ptr, ptr %type, align 8, !tbaa !39
  %type108 = getelementptr inbounds %struct.token, ptr %21, i64 0, i32 5
  %22 = load ptr, ptr %type108, align 8, !tbaa !40
  %element = getelementptr inbounds %struct.type, ptr %22, i64 0, i32 2
  %23 = load ptr, ptr %element, align 8, !tbaa !28
  %add = add nsw i32 %level, 3
  call fastcc void @dump_element(ptr noundef %23, i32 noundef %add)
  br label %if.end112

if.else109:                                       ; preds = %cond.end98
  %children = getelementptr inbounds %struct.element, ptr %e, i64 0, i32 4
  %c.0145 = load ptr, ptr %children, align 8, !tbaa !9
  %tobool110.not146 = icmp eq ptr %c.0145, null
  br i1 %tobool110.not146, label %if.end112, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.else109
  %add111 = add nsw i32 %level, 3
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %c.0147 = phi ptr [ %c.0145, %for.body.lr.ph ], [ %c.0, %for.body ]
  call fastcc void @dump_element(ptr noundef nonnull %c.0147, i32 noundef %add111)
  %next = getelementptr inbounds %struct.element, ptr %c.0147, i64 0, i32 5
  %c.0 = load ptr, ptr %next, align 8, !tbaa !9
  %tobool110.not = icmp eq ptr %c.0, null
  br i1 %tobool110.not, label %if.end112, label %for.body

if.end112:                                        ; preds = %for.body, %if.else109, %if.then107
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tag) #22
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind readonly
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @render_element(ptr noundef %out, ptr noundef %e, ptr noundef %tag) unnamed_addr #0 {
entry:
  %tobool16 = icmp ne ptr %out, null
  br label %tailrecurse

tailrecurse:                                      ; preds = %sw.bb38, %entry
  %e.tr = phi ptr [ %e, %entry ], [ %15, %sw.bb38 ]
  %tag.tr = phi ptr [ %tag, %entry ], [ %e.tr, %sw.bb38 ]
  %flags = getelementptr inbounds %struct.element, ptr %e.tr, i64 0, i32 12
  %0 = load i32, ptr %flags, align 4, !tbaa !34
  %and = and i32 %0, 16
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.thread

lor.lhs.false:                                    ; preds = %tailrecurse
  %tobool2.not = icmp eq ptr %tag.tr, null
  br i1 %tobool2.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %flags3 = getelementptr inbounds %struct.element, ptr %tag.tr, i64 0, i32 12
  %1 = load i32, ptr %flags3, align 4, !tbaa !34
  %and4 = and i32 %1, 16
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %2 = load ptr, ptr %e.tr, align 8, !tbaa !29
  %tobool6.not = icmp eq ptr %2, null
  br i1 %tobool6.not, label %if.end19, label %land.lhs.true7

if.end.thread:                                    ; preds = %land.lhs.true, %tailrecurse
  %3 = load ptr, ptr %e.tr, align 8, !tbaa !29
  br label %if.then11

land.lhs.true7:                                   ; preds = %if.end
  %ref_count = getelementptr inbounds %struct.type, ptr %2, i64 0, i32 3
  %4 = load i32, ptr %ref_count, align 8, !tbaa !41
  %cmp = icmp ugt i32 %4, 1
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %land.lhs.true7, %if.end.thread
  %5 = phi ptr [ %2, %land.lhs.true7 ], [ %3, %if.end.thread ]
  %tobool10.old.not378 = phi i1 [ true, %land.lhs.true7 ], [ false, %if.end.thread ]
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %land.lhs.true7
  %6 = phi ptr [ %2, %land.lhs.true7 ], [ %5, %if.then11 ]
  %tobool10.old.not379 = phi i1 [ true, %land.lhs.true7 ], [ %tobool10.old.not378, %if.then11 ]
  %tobool181.not = phi i1 [ true, %land.lhs.true7 ], [ false, %if.then11 ]
  %tobool14 = icmp ne ptr %6, null
  %or.cond248 = and i1 %tobool16, %tobool14
  br i1 %or.cond248, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end12
  %7 = load ptr, ptr %6, align 8, !tbaa !27
  %content = getelementptr inbounds %struct.token, ptr %7, i64 0, i32 4
  %8 = load ptr, ptr %content, align 8, !tbaa !22
  tail call void (ptr, ptr, ...) @render_more(ptr noundef nonnull %out, ptr noundef nonnull @.str.173, ptr noundef %8)
  %.pre = load i32, ptr %flags, align 4, !tbaa !34
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end12, %if.end
  %9 = phi i32 [ %.pre, %if.then17 ], [ %0, %if.end12 ], [ %0, %if.end ]
  %tobool181.not391 = phi i1 [ %tobool181.not, %if.then17 ], [ %tobool181.not, %if.end12 ], [ true, %if.end ]
  %tobool10.old.not379390 = phi i1 [ %tobool10.old.not379, %if.then17 ], [ %tobool10.old.not379, %if.end12 ], [ true, %if.end ]
  %and21 = and i32 %9, 32
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %lor.rhs, label %lor.end.thread

lor.rhs:                                          ; preds = %if.end19
  %tobool23.not = icmp eq ptr %tag.tr, null
  br i1 %tobool23.not, label %lor.end.thread392, label %lor.end

lor.end:                                          ; preds = %lor.rhs
  %flags24 = getelementptr inbounds %struct.element, ptr %tag.tr, i64 0, i32 12
  %10 = load i32, ptr %flags24, align 4, !tbaa !34
  %and25 = and i32 %10, 32
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %lor.end.thread392, label %lor.end.thread

lor.end.thread:                                   ; preds = %lor.end, %if.end19
  br label %lor.end.thread392

lor.end.thread392:                                ; preds = %lor.end.thread, %lor.end, %lor.rhs
  %11 = phi ptr [ @.str.174, %lor.end.thread ], [ @.str.121, %lor.end ], [ @.str.121, %lor.rhs ]
  %action = getelementptr inbounds %struct.element, ptr %e.tr, i64 0, i32 3
  %12 = load ptr, ptr %action, align 8, !tbaa !43
  %compound = getelementptr inbounds %struct.element, ptr %e.tr, i64 0, i32 9
  %bf.load = load i24, ptr %compound, align 1
  %trunc = trunc i24 %bf.load to i8
  switch i8 %trunc, label %sw.default.loopexit [
    i8 6, label %sw.bb
    i8 8, label %sw.bb38
    i8 3, label %sw.bb39
    i8 4, label %sw.bb39
    i8 1, label %sw.bb39
    i8 2, label %sw.bb39
    i8 5, label %dont_render_tag.loopexit
    i8 7, label %sw.bb45
  ]

sw.bb:                                            ; preds = %lor.end.thread392
  %action.le627 = getelementptr inbounds %struct.element, ptr %e.tr, i64 0, i32 3
  %compound.le618 = getelementptr inbounds %struct.element, ptr %e.tr, i64 0, i32 9
  %tobool28.not.le480 = icmp eq ptr %12, null
  %cond29.le475 = select i1 %tobool28.not.le480, ptr @.str.121, ptr @.str.175
  %cond31 = select i1 %tobool10.old.not379390, ptr @.str.121, ptr @.str.177
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %out, ptr noundef nonnull @.str.176, ptr noundef nonnull %11, ptr noundef nonnull %cond29.le475, ptr noundef nonnull %cond31)
  %name32 = getelementptr inbounds %struct.element, ptr %e.tr, i64 0, i32 1
  %13 = load ptr, ptr %name32, align 8, !tbaa !37
  %tobool33.not = icmp eq ptr %13, null
  br i1 %tobool33.not, label %if.end37, label %if.then34

if.then34:                                        ; preds = %sw.bb
  %content36 = getelementptr inbounds %struct.token, ptr %13, i64 0, i32 4
  %14 = load ptr, ptr %content36, align 8, !tbaa !22
  tail call void (ptr, ptr, ...) @render_more(ptr noundef %out, ptr noundef nonnull @.str.178, ptr noundef %14)
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %sw.bb
  tail call void (ptr, ptr, ...) @render_more(ptr noundef %out, ptr noundef nonnull @.str.154)
  br label %dont_render_tag

sw.bb38:                                          ; preds = %lor.end.thread392
  %children = getelementptr inbounds %struct.element, ptr %e.tr, i64 0, i32 4
  %15 = load ptr, ptr %children, align 8, !tbaa !38
  br label %tailrecurse

sw.bb39:                                          ; preds = %lor.end.thread392, %lor.end.thread392, %lor.end.thread392, %lor.end.thread392
  %action.le625 = getelementptr inbounds %struct.element, ptr %e.tr, i64 0, i32 3
  %compound.le616 = getelementptr inbounds %struct.element, ptr %e.tr, i64 0, i32 9
  %tobool28.not.le482 = icmp eq ptr %12, null
  %cond29.le473 = select i1 %tobool28.not.le482, ptr @.str.121, ptr @.str.175
  %cond41 = select i1 %tobool181.not391, ptr @.str.121, ptr @.str.180
  br label %sw.epilog

sw.bb45:                                          ; preds = %lor.end.thread392
  %action.le = getelementptr inbounds %struct.element, ptr %e.tr, i64 0, i32 3
  %compound.le = getelementptr inbounds %struct.element, ptr %e.tr, i64 0, i32 9
  %tobool28.not.le486 = icmp eq ptr %12, null
  %cond29.le = select i1 %tobool28.not.le486, ptr @.str.121, ptr @.str.175
  %16 = icmp ult i24 %bf.load, 256
  br i1 %16, label %land.lhs.true55, label %sw.epilog

land.lhs.true55:                                  ; preds = %sw.bb45
  %tag56 = getelementptr inbounds %struct.element, ptr %e.tr, i64 0, i32 10
  %17 = load i8, ptr %tag56, align 4, !tbaa !36
  %cmp57 = icmp eq i8 %17, 0
  br i1 %cmp57, label %dont_render_tag, label %sw.epilog

sw.default.loopexit:                              ; preds = %lor.end.thread392
  %action.le629 = getelementptr inbounds %struct.element, ptr %e.tr, i64 0, i32 3
  %compound.le620 = getelementptr inbounds %struct.element, ptr %e.tr, i64 0, i32 9
  %tobool28.not.le = icmp eq ptr %12, null
  %cond29.le477 = select i1 %tobool28.not.le, ptr @.str.121, ptr @.str.175
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.loopexit, %land.lhs.true55, %sw.bb45, %sw.bb39
  %cond29448.sink = phi ptr [ %cond41, %sw.bb39 ], [ %cond29.le477, %sw.default.loopexit ], [ %cond29.le, %sw.bb45 ], [ %cond29.le, %land.lhs.true55 ]
  %action606 = phi ptr [ %action.le625, %sw.bb39 ], [ %action.le629, %sw.default.loopexit ], [ %action.le, %sw.bb45 ], [ %action.le, %land.lhs.true55 ]
  %compound595 = phi ptr [ %compound.le616, %sw.bb39 ], [ %compound.le620, %sw.default.loopexit ], [ %compound.le, %sw.bb45 ], [ %compound.le, %land.lhs.true55 ]
  %cond29450 = phi ptr [ %cond29.le473, %sw.bb39 ], [ %cond29.le477, %sw.default.loopexit ], [ %cond29.le, %sw.bb45 ], [ %cond29.le, %land.lhs.true55 ]
  %cond62 = select i1 %tobool10.old.not379390, ptr @.str.121, ptr @.str.177
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %out, ptr noundef nonnull @.str.179, ptr noundef nonnull %11, ptr noundef nonnull %cond29448.sink, ptr noundef nonnull %cond62)
  %tobool63.not = icmp eq ptr %tag.tr, null
  %cond64 = select i1 %tobool63.not, ptr %e.tr, ptr %tag.tr
  %name65 = getelementptr inbounds %struct.element, ptr %cond64, i64 0, i32 1
  %18 = load ptr, ptr %name65, align 8, !tbaa !37
  %tobool66.not = icmp eq ptr %18, null
  br i1 %tobool66.not, label %if.end70, label %if.then67

if.then67:                                        ; preds = %sw.epilog
  %content69 = getelementptr inbounds %struct.token, ptr %18, i64 0, i32 4
  %19 = load ptr, ptr %content69, align 8, !tbaa !22
  tail call void (ptr, ptr, ...) @render_more(ptr noundef %out, ptr noundef nonnull @.str.178, ptr noundef %19)
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %sw.epilog
  tail call void (ptr, ptr, ...) @render_more(ptr noundef %out, ptr noundef nonnull @.str.154)
  br i1 %tobool63.not, label %if.then76, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %if.end70
  %flags73 = getelementptr inbounds %struct.element, ptr %tag.tr, i64 0, i32 12
  %20 = load i32, ptr %flags73, align 4, !tbaa !34
  %and74 = and i32 %20, 4
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.then76, label %if.end77

if.then76:                                        ; preds = %lor.lhs.false72, %if.end70
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %lor.lhs.false72
  %tag.addr.0 = phi ptr [ %tag.tr, %lor.lhs.false72 ], [ %e.tr, %if.then76 ]
  %class78 = getelementptr inbounds %struct.element, ptr %tag.addr.0, i64 0, i32 9
  %bf.load79 = load i24, ptr %class78, align 1
  %21 = and i24 %bf.load79, 65280
  %cmp83 = icmp eq i24 %21, 0
  %tag86 = getelementptr inbounds %struct.element, ptr %tag.addr.0, i64 0, i32 10
  %22 = load i8, ptr %tag86, align 4, !tbaa !36
  br i1 %cmp83, label %land.lhs.true85, label %if.else

land.lhs.true85:                                  ; preds = %if.end77
  switch i8 %22, label %if.then100 [
    i8 14, label %if.else
    i8 15, label %if.else
    i8 31, label %if.else
  ]

if.then100:                                       ; preds = %land.lhs.true85
  %bf.load111 = load i24, ptr %compound595, align 1
  %bf.lshr108372 = or i24 %bf.load111, %bf.load79
  %or371 = lshr i24 %bf.lshr108372, 16
  %idxprom114 = zext i24 %or371 to i64
  %arrayidx115 = getelementptr inbounds [2 x [5 x i8]], ptr @asn1_methods, i64 0, i64 %idxprom114
  %idxprom118 = zext i8 %22 to i64
  %arrayidx119 = getelementptr inbounds [32 x ptr], ptr @asn1_universal_tags, i64 0, i64 %idxprom118
  %23 = load ptr, ptr %arrayidx119, align 8, !tbaa !9
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %out, ptr noundef nonnull @.str.181, ptr noundef nonnull @asn1_classes, ptr noundef nonnull %arrayidx115, ptr noundef %23)
  br label %dont_render_tag

if.else:                                          ; preds = %land.lhs.true85, %land.lhs.true85, %land.lhs.true85, %if.end77
  %bf.lshr122 = lshr i24 %bf.load79, 8
  %bf.clear123 = and i24 %bf.lshr122, 255
  %idxprom125 = zext i24 %bf.clear123 to i64
  %arrayidx126 = getelementptr inbounds [4 x [5 x i8]], ptr @asn1_classes, i64 0, i64 %idxprom125
  %bf.load133 = load i24, ptr %compound595, align 1
  %bf.lshr130369 = or i24 %bf.load133, %bf.load79
  %or136368 = lshr i24 %bf.lshr130369, 16
  %idxprom137 = zext i24 %or136368 to i64
  %arrayidx138 = getelementptr inbounds [2 x [5 x i8]], ptr @asn1_methods, i64 0, i64 %idxprom137
  %conv141 = zext i8 %22 to i32
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %out, ptr noundef nonnull @.str.182, ptr noundef nonnull %arrayidx126, ptr noundef nonnull %arrayidx138, i32 noundef %conv141)
  br label %dont_render_tag

dont_render_tag.loopexit:                         ; preds = %lor.end.thread392
  %action.le623 = getelementptr inbounds %struct.element, ptr %e.tr, i64 0, i32 3
  %compound.le614 = getelementptr inbounds %struct.element, ptr %e.tr, i64 0, i32 9
  %tobool28.not.le484 = icmp eq ptr %12, null
  %cond29.le471 = select i1 %tobool28.not.le484, ptr @.str.121, ptr @.str.175
  br label %dont_render_tag

dont_render_tag:                                  ; preds = %dont_render_tag.loopexit, %if.else, %if.then100, %land.lhs.true55, %if.end37
  %action605 = phi ptr [ %action.le, %land.lhs.true55 ], [ %action.le627, %if.end37 ], [ %action606, %if.else ], [ %action606, %if.then100 ], [ %action.le623, %dont_render_tag.loopexit ]
  %compound594 = phi ptr [ %compound.le, %land.lhs.true55 ], [ %compound.le618, %if.end37 ], [ %compound595, %if.else ], [ %compound595, %if.then100 ], [ %compound.le614, %dont_render_tag.loopexit ]
  %cond29449 = phi ptr [ %cond29.le, %land.lhs.true55 ], [ %cond29.le475, %if.end37 ], [ %cond29450, %if.else ], [ %cond29450, %if.then100 ], [ %cond29.le471, %dont_render_tag.loopexit ]
  %tag.addr.1 = phi ptr [ %tag.tr, %land.lhs.true55 ], [ %tag.tr, %if.end37 ], [ null, %if.else ], [ null, %if.then100 ], [ %tag.tr, %dont_render_tag.loopexit ]
  %bf.load144 = load i24, ptr %compound594, align 1
  %trunc370 = trunc i24 %bf.load144 to i8
  switch i8 %trunc370, label %sw.epilog234 [
    i8 7, label %sw.bb147
    i8 3, label %sw.bb155
    i8 4, label %sw.bb180
    i8 2, label %sw.bb180
    i8 1, label %sw.bb217
    i8 5, label %sw.bb218
  ]

sw.bb147:                                         ; preds = %dont_render_tag
  %type = getelementptr inbounds %struct.element, ptr %e.tr, i64 0, i32 2
  %24 = load ptr, ptr %type, align 8, !tbaa !39
  %type148 = getelementptr inbounds %struct.token, ptr %24, i64 0, i32 5
  %25 = load ptr, ptr %type148, align 8, !tbaa !40
  %element = getelementptr inbounds %struct.type, ptr %25, i64 0, i32 2
  %26 = load ptr, ptr %element, align 8, !tbaa !28
  tail call fastcc void @render_element(ptr noundef %out, ptr noundef %26, ptr noundef %tag.addr.1)
  %27 = load ptr, ptr %action605, align 8, !tbaa !43
  %tobool150.not = icmp eq ptr %27, null
  br i1 %tobool150.not, label %cleanup, label %if.then151

if.then151:                                       ; preds = %sw.bb147
  %cond153 = select i1 %tobool10.old.not379390, ptr @.str.121, ptr @.str.184
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %out, ptr noundef nonnull @.str.183, ptr noundef nonnull %cond153)
  br label %sw.epilog234

sw.bb155:                                         ; preds = %dont_render_tag
  br i1 %tobool181.not391, label %if.else176, label %if.then157

if.then157:                                       ; preds = %sw.bb155
  %entry_index = getelementptr inbounds %struct.element, ptr %e.tr, i64 0, i32 11
  %28 = load i32, ptr %entry_index, align 8, !tbaa !45
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %out, ptr noundef nonnull @.str.185, i32 noundef %28)
  %29 = load ptr, ptr %e.tr, align 8, !tbaa !29
  %tobool159.not = icmp eq ptr %29, null
  br i1 %tobool159.not, label %if.end168, label %land.lhs.true160

land.lhs.true160:                                 ; preds = %if.then157
  %30 = load ptr, ptr %29, align 8, !tbaa !27
  %tobool163.not = icmp eq ptr %30, null
  br i1 %tobool163.not, label %if.end168, label %if.then164

if.then164:                                       ; preds = %land.lhs.true160
  %content167 = getelementptr inbounds %struct.token, ptr %30, i64 0, i32 4
  %31 = load ptr, ptr %content167, align 8, !tbaa !22
  tail call void (ptr, ptr, ...) @render_more(ptr noundef %out, ptr noundef nonnull @.str.186, ptr noundef %31)
  br label %if.end168

if.end168:                                        ; preds = %if.then164, %land.lhs.true160, %if.then157
  tail call void (ptr, ptr, ...) @render_more(ptr noundef %out, ptr noundef nonnull @.str.154)
  %32 = load i32, ptr %flags, align 4, !tbaa !34
  %and170 = and i32 %32, 8
  %tobool171.not = icmp eq i32 %and170, 0
  br i1 %tobool171.not, label %if.then172, label %cleanup

if.then172:                                       ; preds = %if.end168
  %or174 = or i32 %32, 8
  store i32 %or174, ptr %flags, align 4, !tbaa !34
  %33 = load ptr, ptr @render_list_p, align 8, !tbaa !9
  store ptr %e.tr, ptr %33, align 8, !tbaa !9
  %render_next = getelementptr inbounds %struct.element, ptr %e.tr, i64 0, i32 6
  store ptr %render_next, ptr @render_list_p, align 8, !tbaa !9
  br label %cleanup

if.else176:                                       ; preds = %sw.bb155
  %34 = load i32, ptr @render_depth, align 4, !tbaa !23
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr @render_depth, align 4, !tbaa !23
  %children177 = getelementptr inbounds %struct.element, ptr %e.tr, i64 0, i32 4
  %ec.0500 = load ptr, ptr %children177, align 8, !tbaa !9
  %tobool178.not501 = icmp eq ptr %ec.0500, null
  br i1 %tobool178.not501, label %for.end, label %for.body

for.body:                                         ; preds = %for.body, %if.else176
  %ec.0502 = phi ptr [ %ec.0, %for.body ], [ %ec.0500, %if.else176 ]
  tail call fastcc void @render_element(ptr noundef %out, ptr noundef nonnull %ec.0502, ptr noundef null)
  %next = getelementptr inbounds %struct.element, ptr %ec.0502, i64 0, i32 5
  %ec.0 = load ptr, ptr %next, align 8, !tbaa !9
  %tobool178.not = icmp eq ptr %ec.0, null
  br i1 %tobool178.not, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %for.body
  %.pre551 = load i32, ptr @render_depth, align 4, !tbaa !23
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.else176
  %35 = phi i32 [ %.pre551, %for.end.loopexit ], [ %inc, %if.else176 ]
  %dec = add nsw i32 %35, -1
  store i32 %dec, ptr @render_depth, align 4, !tbaa !23
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %out, ptr noundef nonnull @.str.187, ptr noundef nonnull %cond29449)
  br label %sw.epilog234

sw.bb180:                                         ; preds = %dont_render_tag, %dont_render_tag
  br i1 %tobool181.not391, label %if.else203, label %if.then182

if.then182:                                       ; preds = %sw.bb180
  %entry_index183 = getelementptr inbounds %struct.element, ptr %e.tr, i64 0, i32 11
  %36 = load i32, ptr %entry_index183, align 8, !tbaa !45
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %out, ptr noundef nonnull @.str.185, i32 noundef %36)
  %37 = load ptr, ptr %e.tr, align 8, !tbaa !29
  %tobool185.not = icmp eq ptr %37, null
  br i1 %tobool185.not, label %if.end194, label %land.lhs.true186

land.lhs.true186:                                 ; preds = %if.then182
  %38 = load ptr, ptr %37, align 8, !tbaa !27
  %tobool189.not = icmp eq ptr %38, null
  br i1 %tobool189.not, label %if.end194, label %if.then190

if.then190:                                       ; preds = %land.lhs.true186
  %content193 = getelementptr inbounds %struct.token, ptr %38, i64 0, i32 4
  %39 = load ptr, ptr %content193, align 8, !tbaa !22
  tail call void (ptr, ptr, ...) @render_more(ptr noundef %out, ptr noundef nonnull @.str.186, ptr noundef %39)
  br label %if.end194

if.end194:                                        ; preds = %if.then190, %land.lhs.true186, %if.then182
  tail call void (ptr, ptr, ...) @render_more(ptr noundef %out, ptr noundef nonnull @.str.154)
  %40 = load i32, ptr %flags, align 4, !tbaa !34
  %and196 = and i32 %40, 8
  %tobool197.not = icmp eq i32 %and196, 0
  br i1 %tobool197.not, label %if.then198, label %cleanup

if.then198:                                       ; preds = %if.end194
  %or200 = or i32 %40, 8
  store i32 %or200, ptr %flags, align 4, !tbaa !34
  %41 = load ptr, ptr @render_list_p, align 8, !tbaa !9
  store ptr %e.tr, ptr %41, align 8, !tbaa !9
  %render_next201 = getelementptr inbounds %struct.element, ptr %e.tr, i64 0, i32 6
  store ptr %render_next201, ptr @render_list_p, align 8, !tbaa !9
  br label %cleanup

if.else203:                                       ; preds = %sw.bb180
  %42 = load i32, ptr @nr_entries, align 4, !tbaa !23
  %43 = load i32, ptr @render_depth, align 4, !tbaa !23
  %inc204 = add nsw i32 %43, 1
  store i32 %inc204, ptr @render_depth, align 4, !tbaa !23
  %children205 = getelementptr inbounds %struct.element, ptr %e.tr, i64 0, i32 4
  %44 = load ptr, ptr %children205, align 8, !tbaa !38
  tail call fastcc void @render_element(ptr noundef %out, ptr noundef %44, ptr noundef null)
  %45 = load i32, ptr @render_depth, align 4, !tbaa !23
  %dec206 = add nsw i32 %45, -1
  store i32 %dec206, ptr @render_depth, align 4, !tbaa !23
  %bf.load208 = load i24, ptr %compound594, align 1
  %bf.clear209 = and i24 %bf.load208, 255
  %cmp211 = icmp eq i24 %bf.clear209, 4
  %.str.188..str.189 = select i1 %cmp211, ptr @.str.188, ptr @.str.189
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %out, ptr noundef nonnull %.str.188..str.189, ptr noundef nonnull %cond29449)
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %out, ptr noundef nonnull @.str.190, i32 noundef %42)
  br label %sw.epilog234

sw.bb217:                                         ; preds = %dont_render_tag
  %46 = load ptr, ptr @stderr, align 8, !tbaa !9
  %47 = tail call i64 @fwrite(ptr nonnull @.str.191, i64 47, i64 1, ptr %46) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable

sw.bb218:                                         ; preds = %dont_render_tag
  %children219 = getelementptr inbounds %struct.element, ptr %e.tr, i64 0, i32 4
  %ec.1497 = load ptr, ptr %children219, align 8, !tbaa !9
  %tobool221.not498 = icmp eq ptr %ec.1497, null
  br i1 %tobool221.not498, label %for.end225, label %for.body222

for.body222:                                      ; preds = %for.body222, %sw.bb218
  %ec.1499 = phi ptr [ %ec.1, %for.body222 ], [ %ec.1497, %sw.bb218 ]
  tail call fastcc void @render_element(ptr noundef %out, ptr noundef nonnull %ec.1499, ptr noundef nonnull %ec.1499)
  %next224 = getelementptr inbounds %struct.element, ptr %ec.1499, i64 0, i32 5
  %ec.1 = load ptr, ptr %next224, align 8, !tbaa !9
  %tobool221.not = icmp eq ptr %ec.1, null
  br i1 %tobool221.not, label %for.end225, label %for.body222

for.end225:                                       ; preds = %for.body222, %sw.bb218
  br i1 %tobool10.old.not379390, label %if.then227, label %if.end228

if.then227:                                       ; preds = %for.end225
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %out, ptr noundef nonnull @.str.192)
  br label %if.end228

if.end228:                                        ; preds = %if.then227, %for.end225
  %48 = load ptr, ptr %action605, align 8, !tbaa !43
  %tobool230.not = icmp eq ptr %48, null
  br i1 %tobool230.not, label %cleanup, label %if.then231

if.then231:                                       ; preds = %if.end228
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %out, ptr noundef nonnull @.str.193)
  br label %sw.epilog234

sw.epilog234:                                     ; preds = %if.then231, %if.else203, %for.end, %if.then151, %dont_render_tag
  %.pr = load ptr, ptr %action605, align 8, !tbaa !43
  %tobool236.not = icmp eq ptr %.pr, null
  br i1 %tobool236.not, label %cleanup, label %if.then237

if.then237:                                       ; preds = %sw.epilog234
  %name239 = getelementptr inbounds %struct.action, ptr %.pr, i64 0, i32 1
  %49 = load ptr, ptr %name239, align 8, !tbaa !33
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %out, ptr noundef nonnull @.str.194, ptr noundef %49)
  br label %cleanup

cleanup:                                          ; preds = %if.then237, %sw.epilog234, %if.end228, %if.then198, %if.end194, %if.then172, %if.end168, %sw.bb147
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @render_opcode(ptr noundef %out, ptr nocapture noundef readonly %fmt, ...) unnamed_addr #17 {
entry:
  %va = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %va) #22
  %tobool.not = icmp eq ptr %out, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @nr_entries, align 4, !tbaa !23
  %1 = load i32, ptr @render_depth, align 4, !tbaa !23
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %out, ptr noundef nonnull @.str.195, i32 noundef %0, i32 noundef %1, ptr noundef nonnull @.str.121)
  call void @llvm.va_start(ptr nonnull %va)
  %call2 = call i32 @vfprintf(ptr noundef nonnull %out, ptr noundef %fmt, ptr noundef nonnull %va)
  call void @llvm.va_end(ptr nonnull %va)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr @nr_entries, align 4, !tbaa !23
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr @nr_entries, align 4, !tbaa !23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %va) #22
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @render_out_of_line_list(ptr noundef %out) unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @render_list, align 8, !tbaa !9
  %tobool.not38 = icmp eq ptr %0, null
  br i1 %tobool.not38, label %while.end, label %while.body

while.body:                                       ; preds = %if.end12, %entry
  %1 = phi ptr [ %9, %if.end12 ], [ %0, %entry ]
  %render_next = getelementptr inbounds %struct.element, ptr %1, i64 0, i32 6
  %2 = load ptr, ptr %render_next, align 8, !tbaa !46
  store ptr %2, ptr @render_list, align 8, !tbaa !9
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store ptr @render_list, ptr @render_list_p, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  tail call void (ptr, ptr, ...) @render_more(ptr noundef %out, ptr noundef nonnull @.str.154)
  %3 = load i32, ptr @nr_entries, align 4, !tbaa !23
  %entry_index = getelementptr inbounds %struct.element, ptr %1, i64 0, i32 11
  store i32 %3, ptr %entry_index, align 8, !tbaa !45
  %4 = load i32, ptr @render_depth, align 4, !tbaa !23
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr @render_depth, align 4, !tbaa !23
  %children = getelementptr inbounds %struct.element, ptr %1, i64 0, i32 4
  %ce.035 = load ptr, ptr %children, align 8, !tbaa !9
  %tobool3.not36 = icmp eq ptr %ce.035, null
  br i1 %tobool3.not36, label %for.end, label %for.body

for.body:                                         ; preds = %for.body, %if.end
  %ce.037 = phi ptr [ %ce.0, %for.body ], [ %ce.035, %if.end ]
  tail call fastcc void @render_element(ptr noundef %out, ptr noundef nonnull %ce.037, ptr noundef null)
  %next = getelementptr inbounds %struct.element, ptr %ce.037, i64 0, i32 5
  %ce.0 = load ptr, ptr %next, align 8, !tbaa !9
  %tobool3.not = icmp eq ptr %ce.0, null
  br i1 %tobool3.not, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %for.body
  %.pre = load i32, ptr @render_depth, align 4, !tbaa !23
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end
  %5 = phi i32 [ %.pre, %for.end.loopexit ], [ %inc, %if.end ]
  %dec = add nsw i32 %5, -1
  store i32 %dec, ptr @render_depth, align 4, !tbaa !23
  %action = getelementptr inbounds %struct.element, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %action, align 8, !tbaa !43
  %tobool4.not = icmp eq ptr %6, null
  %cond = select i1 %tobool4.not, ptr @.str.121, ptr @.str.175
  %compound = getelementptr inbounds %struct.element, ptr %1, i64 0, i32 9
  %bf.load = load i24, ptr %compound, align 1
  %trunc = trunc i24 %bf.load to i8
  switch i8 %trunc, label %sw.epilog [
    i8 3, label %sw.bb
    i8 4, label %sw.bb5
    i8 1, label %sw.bb6
    i8 2, label %sw.bb7
  ]

sw.bb:                                            ; preds = %for.end
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %out, ptr noundef nonnull @.str.187, ptr noundef nonnull %cond)
  br label %sw.epilog

sw.bb5:                                           ; preds = %for.end
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %out, ptr noundef nonnull @.str.188, ptr noundef nonnull %cond)
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %out, ptr noundef nonnull @.str.190, i32 noundef %3)
  br label %sw.epilog

sw.bb6:                                           ; preds = %for.end
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %out, ptr noundef nonnull @.str.196, ptr noundef nonnull %cond)
  br label %sw.epilog

sw.bb7:                                           ; preds = %for.end
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %out, ptr noundef nonnull @.str.189, ptr noundef nonnull %cond)
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %out, ptr noundef nonnull @.str.190, i32 noundef %3)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb, %for.end
  %7 = load ptr, ptr %action, align 8, !tbaa !43
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %sw.epilog
  %name = getelementptr inbounds %struct.action, ptr %7, i64 0, i32 1
  %8 = load ptr, ptr %name, align 8, !tbaa !33
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %out, ptr noundef nonnull @.str.194, ptr noundef %8)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %sw.epilog
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %out, ptr noundef nonnull @.str.197)
  %9 = load ptr, ptr @render_list, align 8, !tbaa !9
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end12, %entry
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @render_more(ptr noundef %out, ptr nocapture noundef readonly %fmt, ...) unnamed_addr #17 {
entry:
  %va = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %va) #22
  %tobool.not = icmp eq ptr %out, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.va_start(ptr nonnull %va)
  %call = call i32 @vfprintf(ptr noundef nonnull %out, ptr noundef %fmt, ptr noundef nonnull %va)
  call void @llvm.va_end(ptr nonnull %va)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %va) #22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #18

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #18

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #21

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind readonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0,1) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn }
attributes #19 = { argmemonly nofree nounwind readonly willreturn }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #22 = { nounwind }
attributes #23 = { nounwind readonly willreturn }
attributes #24 = { cold }
attributes #25 = { noreturn nounwind }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind allocsize(0,1) }
attributes #28 = { cold nounwind }
attributes #29 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"_Bool", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !13, i64 48}
!12 = !{!"stat", !13, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !15, i64 72, !15, i64 88, !15, i64 104, !7, i64 120}
!13 = !{!"long", !7, i64 0}
!14 = !{!"int", !7, i64 0}
!15 = !{!"timespec", !13, i64 0, !13, i64 8}
!16 = !{!7, !7, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"short", !7, i64 0}
!19 = !{!20, !18, i64 0}
!20 = !{!"token", !18, i64 0, !7, i64 2, !7, i64 3, !10, i64 8, !10, i64 16, !10, i64 24}
!21 = !{!20, !7, i64 3}
!22 = !{!20, !10, i64 16}
!23 = !{!14, !14, i64 0}
!24 = !{i8 0, i8 2}
!25 = !{!26, !14, i64 28}
!26 = !{!"type", !10, i64 0, !10, i64 8, !10, i64 16, !14, i64 24, !14, i64 28}
!27 = !{!26, !10, i64 0}
!28 = !{!26, !10, i64 16}
!29 = !{!30, !10, i64 0}
!30 = !{!"element", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !7, i64 64, !7, i64 65, !7, i64 66, !7, i64 67, !7, i64 68, !14, i64 72, !14, i64 76}
!31 = !{!32, !7, i64 16}
!32 = !{!"action", !10, i64 0, !10, i64 8, !7, i64 16}
!33 = !{!32, !10, i64 8}
!34 = !{!30, !14, i64 76}
!35 = !{!30, !10, i64 56}
!36 = !{!30, !7, i64 68}
!37 = !{!30, !10, i64 8}
!38 = !{!30, !10, i64 32}
!39 = !{!30, !10, i64 16}
!40 = !{!20, !10, i64 24}
!41 = !{!26, !14, i64 24}
!42 = !{!32, !10, i64 0}
!43 = !{!30, !10, i64 24}
!44 = !{!20, !10, i64 8}
!45 = !{!30, !14, i64 72}
!46 = !{!30, !10, i64 48}
