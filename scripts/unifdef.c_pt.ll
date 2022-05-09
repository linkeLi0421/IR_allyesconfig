; ModuleID = '/llk/IR_all_yes/scripts/unifdef.c_pt.bc'
source_filename = "../scripts/unifdef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ops = type { ptr, [5 x %struct.op] }
%struct.op = type { ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@copyright = dso_local local_unnamed_addr constant [114 x i8] c"@(#) $Version: unifdef-2.5 $\0A@(#) $Author: Tony Finch (dot@dotat.at) $\0A@(#) $URL: http://dotat.at/prog/unifdef $\0A\00", align 16
@.str = private unnamed_addr constant [24 x i8] c"i:D:U:I:o:bBcdeKklnsStV\00", align 1
@optarg = external local_unnamed_addr global ptr, align 8
@lnblank = internal unnamed_addr global i1 false, align 1
@compblank = internal unnamed_addr global i1 false, align 1
@complement = internal unnamed_addr global i1 false, align 1
@debugging = internal unnamed_addr global i1 false, align 1
@iocccok = internal unnamed_addr global i1 false, align 1
@strictlogic = internal unnamed_addr global i1 false, align 1
@killconsts = internal unnamed_addr global i1 false, align 1
@lnnum = internal unnamed_addr global i1 false, align 1
@ofilename = internal unnamed_addr global ptr null, align 8
@symlist = internal unnamed_addr global i1 false, align 1
@symdepth = internal unnamed_addr global i1 false, align 1
@text = internal unnamed_addr global i1 false, align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"-B and -b are mutually exclusive\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"can only do one file\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@filename = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@input = internal unnamed_addr global ptr null, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"can't open %s\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"[stdin]\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"[stdout]\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@output = internal unnamed_addr global ptr null, align 8
@overwriting = internal unnamed_addr global i8 0, align 1
@tempname = internal global [4096 x i8] zeroinitializer, align 16
@.str.8 = private unnamed_addr constant [20 x i8] c"%.*s/unifdef.XXXXXX\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"unifdef.XXXXXX\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"can't create temporary file\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [98 x i8] c"usage: unifdef [-bBcdeKknsStV] [-Ipath] [-Dsym[=val]] [-Usym] [-iDsym[=val]] [-iUsym] ... [file]\0A\00", align 1
@blankcount = internal unnamed_addr global i32 0, align 4
@blankmax = internal unnamed_addr global i32 0, align 4
@trans_table = internal unnamed_addr constant [10 x [23 x ptr]] [[23 x ptr] [ptr @Itrue, ptr @Ifalse, ptr @Fpass, ptr @Ftrue, ptr @Ffalse, ptr @Eelif, ptr @Eelif, ptr @Eelif, ptr @Eelse, ptr @Eendif, ptr @Oiffy, ptr @Oiffy, ptr @Fpass, ptr @Oif, ptr @Oif, ptr @Eelif, ptr @Eelif, ptr @Eelif, ptr @Eelse, ptr @Eendif, ptr @print, ptr @done, ptr @abort], [23 x ptr] [ptr @Idrop, ptr @Idrop, ptr @Fdrop, ptr @Fdrop, ptr @Fdrop, ptr @Mpass, ptr @Strue, ptr @Sfalse, ptr @Selse, ptr @Dendif, ptr @Idrop, ptr @Idrop, ptr @Fdrop, ptr @Fdrop, ptr @Fdrop, ptr @Mpass, ptr @Eioccc, ptr @Eioccc, ptr @Eioccc, ptr @Eioccc, ptr @drop, ptr @Eeof, ptr @abort], [23 x ptr] [ptr @Itrue, ptr @Ifalse, ptr @Fpass, ptr @Ftrue, ptr @Ffalse, ptr @Dfalse, ptr @Dfalse, ptr @Dfalse, ptr @Delse, ptr @Dendif, ptr @Oiffy, ptr @Oiffy, ptr @Fpass, ptr @Oif, ptr @Oif, ptr @Eioccc, ptr @Eioccc, ptr @Eioccc, ptr @Eioccc, ptr @Eioccc, ptr @print, ptr @Eeof, ptr @abort], [23 x ptr] [ptr @Itrue, ptr @Ifalse, ptr @Fpass, ptr @Ftrue, ptr @Ffalse, ptr @Pelif, ptr @Mtrue, ptr @Delif, ptr @Pelse, ptr @Pendif, ptr @Oiffy, ptr @Oiffy, ptr @Fpass, ptr @Oif, ptr @Oif, ptr @Pelif, ptr @Oelif, ptr @Oelif, ptr @Pelse, ptr @Pendif, ptr @print, ptr @Eeof, ptr @abort], [23 x ptr] [ptr @Idrop, ptr @Idrop, ptr @Fdrop, ptr @Fdrop, ptr @Fdrop, ptr @Pelif, ptr @Mtrue, ptr @Delif, ptr @Pelse, ptr @Pendif, ptr @Idrop, ptr @Idrop, ptr @Fdrop, ptr @Fdrop, ptr @Fdrop, ptr @Eioccc, ptr @Eioccc, ptr @Eioccc, ptr @Eioccc, ptr @Eioccc, ptr @drop, ptr @Eeof, ptr @abort], [23 x ptr] [ptr @Itrue, ptr @Ifalse, ptr @Fpass, ptr @Ftrue, ptr @Ffalse, ptr @Melif, ptr @Melif, ptr @Melif, ptr @Melse, ptr @Pendif, ptr @Oiffy, ptr @Oiffy, ptr @Fpass, ptr @Oif, ptr @Oif, ptr @Eioccc, ptr @Eioccc, ptr @Eioccc, ptr @Eioccc, ptr @Pendif, ptr @print, ptr @Eeof, ptr @abort], [23 x ptr] [ptr @Itrue, ptr @Ifalse, ptr @Fpass, ptr @Ftrue, ptr @Ffalse, ptr @Eelif, ptr @Eelif, ptr @Eelif, ptr @Eelse, ptr @Pendif, ptr @Oiffy, ptr @Oiffy, ptr @Fpass, ptr @Oif, ptr @Oif, ptr @Eelif, ptr @Eelif, ptr @Eelif, ptr @Eelse, ptr @Pendif, ptr @print, ptr @Eeof, ptr @abort], [23 x ptr] [ptr @Idrop, ptr @Idrop, ptr @Fdrop, ptr @Fdrop, ptr @Fdrop, ptr @Eelif, ptr @Eelif, ptr @Eelif, ptr @Eelse, ptr @Dendif, ptr @Idrop, ptr @Idrop, ptr @Fdrop, ptr @Fdrop, ptr @Fdrop, ptr @Eelif, ptr @Eelif, ptr @Eelif, ptr @Eelse, ptr @Eioccc, ptr @drop, ptr @Eeof, ptr @abort], [23 x ptr] [ptr @Itrue, ptr @Ifalse, ptr @Fpass, ptr @Ftrue, ptr @Ffalse, ptr @Eelif, ptr @Eelif, ptr @Eelif, ptr @Eelse, ptr @Dendif, ptr @Oiffy, ptr @Oiffy, ptr @Fpass, ptr @Oif, ptr @Oif, ptr @Eelif, ptr @Eelif, ptr @Eelif, ptr @Eelse, ptr @Eioccc, ptr @print, ptr @Eeof, ptr @abort], [23 x ptr] [ptr @Idrop, ptr @Idrop, ptr @Fdrop, ptr @Fdrop, ptr @Fdrop, ptr @Dfalse, ptr @Dfalse, ptr @Dfalse, ptr @Delse, ptr @Dendif, ptr @Idrop, ptr @Idrop, ptr @Fdrop, ptr @Fdrop, ptr @Fdrop, ptr @Dfalse, ptr @Dfalse, ptr @Dfalse, ptr @Delse, ptr @Eioccc, ptr @drop, ptr @Eeof, ptr @abort]], align 16
@ifstate = internal unnamed_addr global [64 x i32] zeroinitializer, align 16
@depth = internal unnamed_addr global i32 0, align 4
@.str.14 = private unnamed_addr constant [34 x i8] c"process line %d %s -> %s depth %d\00", align 1
@linenum = internal unnamed_addr global i32 0, align 4
@linetype_name = internal unnamed_addr constant [23 x ptr] [ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112], align 16
@reltable.process = internal unnamed_addr constant [10 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.113 to i64), i64 ptrtoint (ptr @reltable.process to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.114 to i64), i64 ptrtoint (ptr @reltable.process to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.115 to i64), i64 ptrtoint (ptr @reltable.process to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.116 to i64), i64 ptrtoint (ptr @reltable.process to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.117 to i64), i64 ptrtoint (ptr @reltable.process to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.118 to i64), i64 ptrtoint (ptr @reltable.process to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.119 to i64), i64 ptrtoint (ptr @reltable.process to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.120 to i64), i64 ptrtoint (ptr @reltable.process to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.121 to i64), i64 ptrtoint (ptr @reltable.process to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.122 to i64), i64 ptrtoint (ptr @reltable.process to i64)) to i32)], align 4
@tline = internal global [4106 x i8] zeroinitializer, align 16
@newline = internal unnamed_addr global ptr null, align 8
@newline_crlf = internal constant [3 x i8] c"\0D\0A\00", align 1
@incomment = internal unnamed_addr global i32 0, align 4
@linestate = internal unnamed_addr global i32 0, align 4
@firstsym = internal unnamed_addr global i1 false, align 1
@keyword = internal unnamed_addr global ptr null, align 8
@.str.15 = private unnamed_addr constant [4 x i8] c"\\\0D\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"\\\0A\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"ifdef\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"ifndef\00", align 1
@value = internal unnamed_addr global [4096 x ptr] zeroinitializer, align 16
@ignore = internal unnamed_addr global [4096 x i8] zeroinitializer, align 16
@.str.19 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"elif\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"endif\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"parser line %d state %s comment %s line\00", align 1
@reltable.process.127 = internal unnamed_addr constant [7 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.69 to i64), i64 ptrtoint (ptr @reltable.process.127 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.70 to i64), i64 ptrtoint (ptr @reltable.process.127 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.71 to i64), i64 ptrtoint (ptr @reltable.process.127 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.72 to i64), i64 ptrtoint (ptr @reltable.process.127 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.73 to i64), i64 ptrtoint (ptr @reltable.process.127 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.74 to i64), i64 ptrtoint (ptr @reltable.process.127 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.75 to i64), i64 ptrtoint (ptr @reltable.process.127 to i64)) to i32)], align 4
@reltable.process.128 = internal unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.76 to i64), i64 ptrtoint (ptr @reltable.process.128 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.77 to i64), i64 ptrtoint (ptr @reltable.process.128 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.78 to i64), i64 ptrtoint (ptr @reltable.process.128 to i64)) to i32)], align 4
@ignoring = internal unnamed_addr global [64 x i8] zeroinitializer, align 16
@.str.24 = private unnamed_addr constant [5 x i8] c"/\\\0D\0A\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"/\\\0A\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"/*\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.30 = private constant [2 x i8] c"\0A\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"unterminated char literal\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"unterminated string literal\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"*\\\0D\0A\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"*\\\0A\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"*/\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"%s: %d: %s\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"%s: %d: %s (#if line %d depth %d)\00", align 1
@stifline = internal unnamed_addr global [64 x i32] zeroinitializer, align 16
@.str.39 = private unnamed_addr constant [24 x i8] c"output may be truncated\00", align 1
@zerosyms = internal unnamed_addr global i1 false, align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"couldn't write to %s\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"%s unchanged\00", align 1
@.str.42 = private unnamed_addr constant [37 x i8] c"Obfuscated preprocessor control line\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"%s%3d\00", align 1
@.str.44 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"%s%.*s%s\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c" \00", align 1
@nsyms = internal unnamed_addr global i32 0, align 4
@symname = internal unnamed_addr global [4096 x ptr] zeroinitializer, align 16
@.str.47 = private unnamed_addr constant [14 x i8] c"findsym %s %s\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"eval %s\00", align 1
@constexpr = internal unnamed_addr global i8 0, align 1
@eval_ops = internal constant [4 x %struct.ops] [%struct.ops { ptr @eval_table, [5 x %struct.op] [%struct.op { ptr @.str.54, ptr @op_or }, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer] }, %struct.ops { ptr @eval_table, [5 x %struct.op] [%struct.op { ptr @.str.55, ptr @op_and }, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer] }, %struct.ops { ptr @eval_table, [5 x %struct.op] [%struct.op { ptr @.str.56, ptr @op_eq }, %struct.op { ptr @.str.57, ptr @op_ne }, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer] }, %struct.ops { ptr @eval_unary, [5 x %struct.op] [%struct.op { ptr @.str.58, ptr @op_le }, %struct.op { ptr @.str.59, ptr @op_ge }, %struct.op { ptr @.str.60, ptr @op_lt }, %struct.op { ptr @.str.61, ptr @op_gt }, %struct.op zeroinitializer] }], align 16
@.str.49 = private unnamed_addr constant [10 x i8] c"eval = %d\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"eval%d\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"eval%d %s\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"eval%d = %d\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"eval%d lt = %s\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"eval%d !\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"eval%d (\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"eval%d number\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"defined\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"eval%d defined\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"eval%d symbol\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"eval%d bad expr\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"CXX\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"STARTING\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"FINISHING\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"CHAR\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"START\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"HASH\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"DIRTY\00", align 1
@.str.79 = private unnamed_addr constant [27 x i8] c"Too many levels of nesting\00", align 1
@.str.80 = private unnamed_addr constant [20 x i8] c"Inappropriate #elif\00", align 1
@.str.81 = private unnamed_addr constant [20 x i8] c"Inappropriate #else\00", align 1
@.str.82 = private unnamed_addr constant [21 x i8] c"Inappropriate #endif\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c" \09\0D\0A\00", align 1
@delcount = internal unnamed_addr global i32 0, align 4
@.str.84 = private unnamed_addr constant [11 x i8] c"#line %d%s\00", align 1
@exitstat = internal unnamed_addr global i1 false, align 4
@.str.85 = private unnamed_addr constant [15 x i8] c"EOF in comment\00", align 1
@.str.86 = private unnamed_addr constant [31 x i8] c"couldn't rename temporary file\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"Premature EOF\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"TRUEI\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"FALSEI\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"IF\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"ELIF\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"ELTRUE\00", align 1
@.str.97 = private unnamed_addr constant [8 x i8] c"ELFALSE\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"ELSE\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"ENDIF\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"DODGY TRUEI\00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"DODGY FALSEI\00", align 1
@.str.102 = private unnamed_addr constant [9 x i8] c"DODGY IF\00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"DODGY TRUE\00", align 1
@.str.104 = private unnamed_addr constant [12 x i8] c"DODGY FALSE\00", align 1
@.str.105 = private unnamed_addr constant [11 x i8] c"DODGY ELIF\00", align 1
@.str.106 = private unnamed_addr constant [13 x i8] c"DODGY ELTRUE\00", align 1
@.str.107 = private unnamed_addr constant [14 x i8] c"DODGY ELFALSE\00", align 1
@.str.108 = private unnamed_addr constant [11 x i8] c"DODGY ELSE\00", align 1
@.str.109 = private unnamed_addr constant [12 x i8] c"DODGY ENDIF\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"PLAIN\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"EOF\00", align 1
@.str.112 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"OUTSIDE\00", align 1
@.str.114 = private unnamed_addr constant [13 x i8] c"FALSE_PREFIX\00", align 1
@.str.115 = private unnamed_addr constant [12 x i8] c"TRUE_PREFIX\00", align 1
@.str.116 = private unnamed_addr constant [12 x i8] c"PASS_MIDDLE\00", align 1
@.str.117 = private unnamed_addr constant [13 x i8] c"FALSE_MIDDLE\00", align 1
@.str.118 = private unnamed_addr constant [12 x i8] c"TRUE_MIDDLE\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"PASS_ELSE\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"FALSE_ELSE\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"TRUE_ELSE\00", align 1
@.str.122 = private unnamed_addr constant [14 x i8] c"FALSE_TRAILER\00", align 1
@.str.123 = private unnamed_addr constant [17 x i8] c"too many symbols\00", align 1
@.str.124 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.125 = private unnamed_addr constant [13 x i8] c"addsym %s=%s\00", align 1
@.str.126 = private unnamed_addr constant [6 x i8] c"undef\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) local_unnamed_addr #0 {
entry:
  %ist = alloca %struct.stat, align 8
  %ost = alloca %struct.stat, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %call = tail call i32 @getopt(i32 noundef %argc, ptr noundef %argv, ptr noundef nonnull @.str) #19
  switch i32 %call, label %sw.default [
    i32 -1, label %while.end
    i32 105, label %sw.bb
    i32 68, label %sw.bb8
    i32 85, label %sw.bb9
    i32 73, label %while.cond.backedge
    i32 98, label %sw.bb10
    i32 108, label %sw.bb10
    i32 66, label %sw.bb11
    i32 99, label %sw.bb12
    i32 100, label %sw.bb13
    i32 101, label %sw.bb14
    i32 75, label %sw.bb15
    i32 107, label %sw.bb16
    i32 110, label %sw.bb17
    i32 111, label %sw.bb18
    i32 115, label %sw.bb19
    i32 83, label %sw.bb20
    i32 116, label %sw.bb21
    i32 86, label %while.cond.i
  ]

while.cond.backedge:                              ; preds = %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %if.then5, %if.then, %while.cond
  br label %while.cond

sw.bb:                                            ; preds = %while.cond
  %0 = load ptr, ptr @optarg, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i64 1
  store ptr %incdec.ptr, ptr @optarg, align 8, !tbaa !5
  %1 = load i8, ptr %0, align 1, !tbaa !9
  switch i8 %1, label %if.else6 [
    i8 68, label %if.then
    i8 85, label %if.then5
  ]

if.then:                                          ; preds = %sw.bb
  tail call fastcc void @addsym(i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef nonnull %incdec.ptr)
  br label %while.cond.backedge

if.then5:                                         ; preds = %sw.bb
  tail call fastcc void @addsym(i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull %incdec.ptr)
  br label %while.cond.backedge

if.else6:                                         ; preds = %sw.bb
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %3 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 97, i64 1, ptr %2) #20
  tail call void @exit(i32 noundef 2) #21
  unreachable

sw.bb8:                                           ; preds = %while.cond
  %4 = load ptr, ptr @optarg, align 8, !tbaa !5
  tail call fastcc void @addsym(i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %4)
  br label %while.cond.backedge

sw.bb9:                                           ; preds = %while.cond
  %5 = load ptr, ptr @optarg, align 8, !tbaa !5
  tail call fastcc void @addsym(i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef %5)
  br label %while.cond.backedge

sw.bb10:                                          ; preds = %while.cond, %while.cond
  store i1 true, ptr @lnblank, align 1
  br label %while.cond.backedge

sw.bb11:                                          ; preds = %while.cond
  store i1 true, ptr @compblank, align 1
  br label %while.cond.backedge

sw.bb12:                                          ; preds = %while.cond
  store i1 true, ptr @complement, align 1
  br label %while.cond.backedge

sw.bb13:                                          ; preds = %while.cond
  store i1 true, ptr @debugging, align 1
  br label %while.cond.backedge

sw.bb14:                                          ; preds = %while.cond
  store i1 true, ptr @iocccok, align 1
  br label %while.cond.backedge

sw.bb15:                                          ; preds = %while.cond
  store i1 true, ptr @strictlogic, align 1
  br label %while.cond.backedge

sw.bb16:                                          ; preds = %while.cond
  store i1 true, ptr @killconsts, align 1
  br label %while.cond.backedge

sw.bb17:                                          ; preds = %while.cond
  store i1 true, ptr @lnnum, align 1
  br label %while.cond.backedge

sw.bb18:                                          ; preds = %while.cond
  %6 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %6, ptr @ofilename, align 8, !tbaa !5
  br label %while.cond.backedge

sw.bb19:                                          ; preds = %while.cond
  store i1 true, ptr @symlist, align 1
  br label %while.cond.backedge

sw.bb20:                                          ; preds = %while.cond
  store i1 true, ptr @symdepth, align 1
  store i1 true, ptr @symlist, align 1
  br label %while.cond.backedge

sw.bb21:                                          ; preds = %while.cond
  store i1 true, ptr @text, align 1
  br label %while.cond.backedge

while.cond.i:                                     ; preds = %while.cond.i.backedge, %while.cond
  %c.1.i = phi ptr [ %c.1.i.be, %while.cond.i.backedge ], [ @copyright, %while.cond ]
  %incdec.ptr.i = getelementptr inbounds i8, ptr %c.1.i, i64 1
  %7 = load i8, ptr %incdec.ptr.i, align 1, !tbaa !9
  switch i8 %7, label %while.cond.i.backedge [
    i8 36, label %while.cond5.preheader.i
    i8 0, label %if.then.i
  ]

while.cond.i.backedge:                            ; preds = %while.end12.i, %while.cond.i
  %c.1.i.be = phi ptr [ %incdec.ptr.i, %while.cond.i ], [ %incdec.ptr6.lcssa.i, %while.end12.i ]
  br label %while.cond.i

while.cond5.preheader.i:                          ; preds = %while.cond.i
  %incdec.ptr618.i = getelementptr inbounds i8, ptr %c.1.i, i64 2
  %8 = load i8, ptr %incdec.ptr618.i, align 1, !tbaa !9
  %cmp8.not19.i = icmp eq i8 %8, 36
  br i1 %cmp8.not19.i, label %while.end12.i, label %while.body10.i

if.then.i:                                        ; preds = %while.cond.i
  tail call void @exit(i32 noundef 0) #21
  unreachable

while.body10.i:                                   ; preds = %while.body10.i, %while.cond5.preheader.i
  %9 = phi i8 [ %11, %while.body10.i ], [ %8, %while.cond5.preheader.i ]
  %incdec.ptr620.i = phi ptr [ %incdec.ptr6.i, %while.body10.i ], [ %incdec.ptr618.i, %while.cond5.preheader.i ]
  %conv7.i = sext i8 %9 to i32
  %10 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call.i = tail call i32 @putc(i32 noundef %conv7.i, ptr noundef %10) #19
  %incdec.ptr6.i = getelementptr inbounds i8, ptr %incdec.ptr620.i, i64 1
  %11 = load i8, ptr %incdec.ptr6.i, align 1, !tbaa !9
  %cmp8.not.i = icmp eq i8 %11, 36
  br i1 %cmp8.not.i, label %while.end12.i, label %while.body10.i

while.end12.i:                                    ; preds = %while.body10.i, %while.cond5.preheader.i
  %incdec.ptr6.lcssa.i = phi ptr [ %incdec.ptr618.i, %while.cond5.preheader.i ], [ %incdec.ptr6.i, %while.body10.i ]
  %12 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call13.i = tail call i32 @putc(i32 noundef 10, ptr noundef %12) #19
  br label %while.cond.i.backedge

sw.default:                                       ; preds = %while.cond
  %13 = load ptr, ptr @stderr, align 8, !tbaa !5
  %14 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 97, i64 1, ptr %13) #20
  tail call void @exit(i32 noundef 2) #21
  unreachable

while.end:                                        ; preds = %while.cond
  %15 = load i32, ptr @optind, align 4, !tbaa !10
  %sub = sub nsw i32 %argc, %15
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %argv, i64 %idx.ext
  %.b108109 = load i1, ptr @compblank, align 1
  br i1 %.b108109, label %land.lhs.true, label %if.end27

land.lhs.true:                                    ; preds = %while.end
  %.b110 = load i1, ptr @lnblank, align 1
  br i1 %.b110, label %if.then26, label %if.end27

if.then26:                                        ; preds = %land.lhs.true
  tail call void (i32, ptr, ...) @errx(i32 noundef 2, ptr noundef nonnull @.str.1) #21
  unreachable

if.end27:                                         ; preds = %land.lhs.true, %while.end
  %cmp28 = icmp sgt i32 %sub, 1
  br i1 %cmp28, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.end27
  tail call void (i32, ptr, ...) @errx(i32 noundef 2, ptr noundef nonnull @.str.2) #21
  unreachable

if.else31:                                        ; preds = %if.end27
  %cmp32 = icmp eq i32 %sub, 1
  br i1 %cmp32, label %land.lhs.true34, label %if.else44

land.lhs.true34:                                  ; preds = %if.else31
  %16 = load ptr, ptr %add.ptr, align 8, !tbaa !5
  %call35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(2) @.str.3) #22
  %cmp36.not = icmp eq i32 %call35, 0
  br i1 %cmp36.not, label %if.else44, label %if.then38

if.then38:                                        ; preds = %land.lhs.true34
  store ptr %16, ptr @filename, align 8, !tbaa !5
  %call39 = tail call ptr @fopen(ptr noundef %16, ptr noundef nonnull @.str.4)
  store ptr %call39, ptr @input, align 8, !tbaa !5
  %cmp40 = icmp eq ptr %call39, null
  br i1 %cmp40, label %if.then42, label %if.end46

if.then42:                                        ; preds = %if.then38
  %17 = load ptr, ptr @filename, align 8, !tbaa !5
  tail call void (i32, ptr, ...) @err(i32 noundef 2, ptr noundef nonnull @.str.5, ptr noundef %17) #21
  unreachable

if.else44:                                        ; preds = %land.lhs.true34, %if.else31
  store ptr @.str.6, ptr @filename, align 8, !tbaa !5
  %18 = load ptr, ptr @stdin, align 8, !tbaa !5
  store ptr %18, ptr @input, align 8, !tbaa !5
  br label %if.end46

if.end46:                                         ; preds = %if.else44, %if.then38
  %19 = load ptr, ptr @ofilename, align 8, !tbaa !5
  %cmp47 = icmp eq ptr %19, null
  br i1 %cmp47, label %if.then49, label %if.else50

if.then49:                                        ; preds = %if.end46
  store ptr @.str.7, ptr @ofilename, align 8, !tbaa !5
  %20 = load ptr, ptr @stdout, align 8, !tbaa !5
  store ptr %20, ptr @output, align 8, !tbaa !5
  br label %if.end96

if.else50:                                        ; preds = %if.end46
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %ist) #19
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %ost) #19
  %call.i112 = call i32 @__xstat(i32 noundef 1, ptr noundef nonnull %19, ptr noundef nonnull %ost) #19
  %cmp52 = icmp eq i32 %call.i112, 0
  br i1 %cmp52, label %land.lhs.true54, label %if.end66thread-pre-split

land.lhs.true54:                                  ; preds = %if.else50
  %21 = load ptr, ptr @input, align 8, !tbaa !5
  %call55 = call i32 @fileno(ptr noundef %21) #19
  %call.i113 = call i32 @__fxstat(i32 noundef 1, i32 noundef %call55, ptr noundef nonnull %ist) #19
  %cmp57 = icmp eq i32 %call.i113, 0
  br i1 %cmp57, label %if.then59, label %if.end66thread-pre-split

if.then59:                                        ; preds = %land.lhs.true54
  %22 = load i64, ptr %ist, align 8, !tbaa !12
  %23 = load i64, ptr %ost, align 8, !tbaa !12
  %cmp61 = icmp eq i64 %22, %23
  %st_ino = getelementptr inbounds %struct.stat, ptr %ist, i64 0, i32 1
  %24 = load i64, ptr %st_ino, align 8
  %st_ino63 = getelementptr inbounds %struct.stat, ptr %ost, i64 0, i32 1
  %25 = load i64, ptr %st_ino63, align 8
  %cmp64 = icmp eq i64 %24, %25
  %26 = select i1 %cmp61, i1 %cmp64, i1 false
  %frombool = zext i1 %26 to i8
  store i8 %frombool, ptr @overwriting, align 1, !tbaa !16
  br label %if.end66

if.end66thread-pre-split:                         ; preds = %land.lhs.true54, %if.else50
  %.pr = load i8, ptr @overwriting, align 1, !tbaa !16
  br label %if.end66

if.end66:                                         ; preds = %if.end66thread-pre-split, %if.then59
  %27 = phi i8 [ %.pr, %if.end66thread-pre-split ], [ %frombool, %if.then59 ]
  %tobool67.not = icmp eq i8 %27, 0
  %28 = load ptr, ptr @ofilename, align 8, !tbaa !5
  br i1 %tobool67.not, label %if.else89, label %if.then68

if.then68:                                        ; preds = %if.end66
  %call69 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %28, i32 noundef 47) #22
  %cmp70.not = icmp eq ptr %call69, null
  br i1 %cmp70.not, label %if.else75, label %if.then72

if.then72:                                        ; preds = %if.then68
  %sub.ptr.lhs.cast = ptrtoint ptr %call69 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %28 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv73 = trunc i64 %sub.ptr.sub to i32
  %call74 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull @tempname, i64 noundef 4096, ptr noundef nonnull @.str.8, i32 noundef %conv73, ptr noundef %28) #19
  br label %if.end77

if.else75:                                        ; preds = %if.then68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15) @tempname, ptr noundef nonnull align 1 dereferenceable(15) @.str.9, i64 15, i1 false)
  br label %if.end77

if.end77:                                         ; preds = %if.else75, %if.then72
  %call78 = call i32 @mkstemp(ptr noundef nonnull @tempname) #19
  %cmp79.not = icmp eq i32 %call78, -1
  br i1 %cmp79.not, label %if.end83thread-pre-split, label %if.then81

if.then81:                                        ; preds = %if.end77
  %call82 = call ptr @fdopen(i32 noundef %call78, ptr noundef nonnull @.str.10) #19
  store ptr %call82, ptr @output, align 8, !tbaa !5
  br label %if.end83

if.end83thread-pre-split:                         ; preds = %if.end77
  %.pr114 = load ptr, ptr @output, align 8, !tbaa !5
  br label %if.end83

if.end83:                                         ; preds = %if.end83thread-pre-split, %if.then81
  %29 = phi ptr [ %.pr114, %if.end83thread-pre-split ], [ %call82, %if.then81 ]
  %cmp84 = icmp eq ptr %29, null
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end83
  call void (i32, ptr, ...) @err(i32 noundef 2, ptr noundef nonnull @.str.11) #21
  unreachable

if.end87:                                         ; preds = %if.end83
  %st_mode = getelementptr inbounds %struct.stat, ptr %ist, i64 0, i32 3
  %30 = load i32, ptr %st_mode, align 8, !tbaa !18
  %and = and i32 %30, 511
  %call88 = call i32 @fchmod(i32 noundef %call78, i32 noundef %and) #19
  br label %if.end95

if.else89:                                        ; preds = %if.end66
  %call90 = call ptr @fopen(ptr noundef %28, ptr noundef nonnull @.str.12)
  store ptr %call90, ptr @output, align 8, !tbaa !5
  %cmp91 = icmp eq ptr %call90, null
  br i1 %cmp91, label %if.then93, label %if.end95

if.then93:                                        ; preds = %if.else89
  %31 = load ptr, ptr @ofilename, align 8, !tbaa !5
  call void (i32, ptr, ...) @err(i32 noundef 2, ptr noundef nonnull @.str.5, ptr noundef %31) #21
  unreachable

if.end95:                                         ; preds = %if.else89, %if.end87
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %ost) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %ist) #19
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.then49
  call fastcc void @process()
  unreachable
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @addsym(i1 noundef zeroext %ignorethis, i1 noundef zeroext %definethis, ptr noundef %sym) unnamed_addr #3 {
entry:
  %frombool = zext i1 %ignorethis to i8
  %call = tail call fastcc i32 @findsym(ptr noundef %sym)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @nsyms, align 4, !tbaa !10
  %cmp2 = icmp sgt i32 %0, 4095
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  tail call void (i32, ptr, ...) @errx(i32 noundef 2, ptr noundef nonnull @.str.123) #21
  unreachable

if.end:                                           ; preds = %if.then
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @nsyms, align 4, !tbaa !10
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %symind.0 = phi i32 [ %0, %if.end ], [ %call, %entry ]
  %idxprom = sext i32 %symind.0 to i64
  %arrayidx = getelementptr inbounds [4096 x ptr], ptr @symname, i64 0, i64 %idxprom
  store ptr %sym, ptr %arrayidx, align 8, !tbaa !5
  %arrayidx6 = getelementptr inbounds [4096 x i8], ptr @ignore, i64 0, i64 %idxprom
  store i8 %frombool, ptr %arrayidx6, align 1, !tbaa !16
  %call.i = tail call ptr @__ctype_b_loc() #23
  %1 = load ptr, ptr %call.i, align 8, !tbaa !5
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.end4
  %cp.addr.0.i = phi ptr [ %sym, %if.end4 ], [ %incdec.ptr.i, %while.cond.i ]
  %2 = load i8, ptr %cp.addr.0.i, align 1, !tbaa !9
  %3 = zext i8 %2 to i64
  %arrayidx.i = getelementptr inbounds i16, ptr %1, i64 %3
  %4 = load i16, ptr %arrayidx.i, align 2, !tbaa !19
  %5 = and i16 %4, 8
  %tobool.not.i = icmp eq i16 %5, 0
  %cmp.i = icmp ne i8 %2, 95
  %spec.select.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  %incdec.ptr.i = getelementptr inbounds i8, ptr %cp.addr.0.i, i64 1
  br i1 %spec.select.i, label %skipsym.exit, label %while.cond.i

skipsym.exit:                                     ; preds = %while.cond.i
  %sub.ptr.lhs.cast = ptrtoint ptr %cp.addr.0.i to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %sym to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr = getelementptr inbounds i8, ptr %sym, i64 %sub.ptr.sub
  %6 = load i8, ptr %add.ptr, align 1, !tbaa !9
  br i1 %definethis, label %if.then10, label %if.else26

if.then10:                                        ; preds = %skipsym.exit
  switch i8 %6, label %if.else23 [
    i8 61, label %if.then13
    i8 0, label %if.then20
  ]

if.then13:                                        ; preds = %if.then10
  %add.ptr14 = getelementptr inbounds i8, ptr %add.ptr, i64 1
  %arrayidx16 = getelementptr inbounds [4096 x ptr], ptr @value, i64 0, i64 %idxprom
  store ptr %add.ptr14, ptr %arrayidx16, align 8, !tbaa !5
  store i8 0, ptr %add.ptr, align 1, !tbaa !9
  br label %if.end34

if.then20:                                        ; preds = %if.then10
  %arrayidx22 = getelementptr inbounds [4096 x ptr], ptr @value, i64 0, i64 %idxprom
  store ptr @.str.124, ptr %arrayidx22, align 8, !tbaa !5
  br label %if.end34

if.else23:                                        ; preds = %if.then10
  %7 = load ptr, ptr @stderr, align 8, !tbaa !5
  %8 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 97, i64 1, ptr %7) #20
  tail call void @exit(i32 noundef 2) #21
  unreachable

if.else26:                                        ; preds = %skipsym.exit
  %cmp28.not = icmp eq i8 %6, 0
  br i1 %cmp28.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.else26
  %9 = load ptr, ptr @stderr, align 8, !tbaa !5
  %10 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 97, i64 1, ptr %9) #20
  tail call void @exit(i32 noundef 2) #21
  unreachable

if.end31:                                         ; preds = %if.else26
  %arrayidx33 = getelementptr inbounds [4096 x ptr], ptr @value, i64 0, i64 %idxprom
  store ptr null, ptr %arrayidx33, align 8, !tbaa !5
  br label %if.end34

if.end34:                                         ; preds = %if.end31, %if.then20, %if.then13
  %11 = phi ptr [ %add.ptr14, %if.then13 ], [ @.str.124, %if.then20 ], [ null, %if.end31 ]
  %tobool39.not = icmp eq ptr %11, null
  %spec.select = select i1 %tobool39.not, ptr @.str.126, ptr %11
  tail call void (ptr, ...) @debug(ptr noundef nonnull @.str.125, ptr noundef nonnull %sym, ptr noundef nonnull %spec.select)
  ret void
}

; Function Attrs: noreturn
declare void @errx(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @err(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare i32 @mkstemp(ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @fchmod(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @process() unnamed_addr #0 {
entry:
  %val.i296.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %cp.i = alloca ptr, align 8
  store i32 1000, ptr @blankcount, align 4, !tbaa !10
  store i32 1000, ptr @blankmax, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %parseline.exit, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cp.i) #19
  %0 = load i32, ptr @linenum, align 4, !tbaa !10
  %inc.i = add nsw i32 %0, 1
  store i32 %inc.i, ptr @linenum, align 4, !tbaa !10
  %1 = load ptr, ptr @input, align 8, !tbaa !5
  %call.i = call ptr @fgets(ptr noundef nonnull @tline, i32 noundef 4096, ptr noundef %1) #19
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %parseline.exit, label %if.end.i

if.end.i:                                         ; preds = %for.cond
  %2 = load ptr, ptr @newline, align 8, !tbaa !5
  %cmp2.i = icmp eq ptr %2, null
  br i1 %cmp2.i, label %if.then3.i, label %if.end9.i

if.then3.i:                                       ; preds = %if.end.i
  %call4.i = call ptr @strrchr(ptr noundef nonnull @tline, i32 noundef 10) #22
  %call5.i = call ptr @strrchr(ptr noundef nonnull @tline, i32 noundef 13) #22
  %add.ptr.i = getelementptr inbounds i8, ptr %call5.i, i64 1
  %cmp6.i = icmp eq ptr %call4.i, %add.ptr.i
  %newline_crlf.newline_unix.i = select i1 %cmp6.i, ptr @newline_crlf, ptr @.str.30
  store ptr %newline_crlf.newline_unix.i, ptr @newline, align 8, !tbaa !5
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then3.i, %if.end.i
  %3 = load i32, ptr @incomment, align 4, !tbaa !9
  %call10.i = call fastcc ptr @skipcomment(ptr noundef nonnull @tline) #19
  store ptr %call10.i, ptr %cp.i, align 8, !tbaa !5
  %4 = load i32, ptr @linestate, align 4, !tbaa !9
  %cmp11.i = icmp eq i32 %4, 0
  br i1 %cmp11.i, label %if.then12.i, label %if.end25.i

if.then12.i:                                      ; preds = %if.end9.i
  %5 = load i8, ptr %call10.i, align 1, !tbaa !9
  switch i8 %5, label %while.cond.preheader.thread.i [
    i8 35, label %if.then15.i
    i8 0, label %if.end177.i
  ]

if.then15.i:                                      ; preds = %if.then12.i
  store i32 1, ptr @linestate, align 4, !tbaa !9
  store i1 true, ptr @firstsym, align 1
  %add.ptr16.i = getelementptr inbounds i8, ptr %call10.i, i64 1
  %call17.i = call fastcc ptr @skipcomment(ptr noundef nonnull %add.ptr16.i) #19
  store ptr %call17.i, ptr %cp.i, align 8, !tbaa !5
  %.pre.i = load i32, ptr @linestate, align 4
  br label %if.end25.i

while.cond.preheader.thread.i:                    ; preds = %if.then12.i
  store i32 2, ptr @linestate, align 4, !tbaa !9
  br label %while.body.preheader.i

if.end25.i:                                       ; preds = %if.then15.i, %if.end9.i
  %.pre402405.i = phi i32 [ %.pre.i, %if.then15.i ], [ %4, %if.end9.i ]
  %6 = phi ptr [ %call17.i, %if.then15.i ], [ %call10.i, %if.end9.i ]
  %7 = load i32, ptr @incomment, align 4, !tbaa !9
  %tobool.i = icmp eq i32 %7, 0
  %cmp26.i = icmp eq i32 %.pre402405.i, 1
  %or.cond.i = select i1 %tobool.i, i1 %cmp26.i, i1 false
  br i1 %or.cond.i, label %if.then28.i, label %if.end168.i

if.then28.i:                                      ; preds = %if.end25.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %6 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, ptrtoint (ptr @tline to i64)
  %add.ptr29.i = getelementptr inbounds i8, ptr @tline, i64 %sub.ptr.sub.i
  store ptr %add.ptr29.i, ptr @keyword, align 8, !tbaa !5
  %call.i.i = tail call ptr @__ctype_b_loc() #23
  %8 = load ptr, ptr %call.i.i, align 8, !tbaa !5
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i, %if.then28.i
  %cp.addr.0.i.i = phi ptr [ %6, %if.then28.i ], [ %incdec.ptr.i.i, %while.cond.i.i ]
  %9 = load i8, ptr %cp.addr.0.i.i, align 1, !tbaa !9
  %10 = zext i8 %9 to i64
  %arrayidx.i.i = getelementptr inbounds i16, ptr %8, i64 %10
  %11 = load i16, ptr %arrayidx.i.i, align 2, !tbaa !19
  %12 = and i16 %11, 8
  %tobool.not.i.i = icmp eq i16 %12, 0
  %cmp.i.i = icmp ne i8 %9, 95
  %spec.select.i.i = select i1 %tobool.not.i.i, i1 %cmp.i.i, i1 false
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %cp.addr.0.i.i, i64 1
  br i1 %spec.select.i.i, label %skipsym.exit.i, label %while.cond.i.i

skipsym.exit.i:                                   ; preds = %while.cond.i.i
  store ptr %cp.addr.0.i.i, ptr %cp.i, align 8, !tbaa !5
  %sub.ptr.lhs.cast31.i = ptrtoint ptr %cp.addr.0.i.i to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr29.i to i64
  %sub.ptr.sub32.i = sub i64 %sub.ptr.lhs.cast31.i, %sub.ptr.rhs.cast.i
  %call34.i = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %cp.addr.0.i.i, ptr noundef nonnull dereferenceable(4) @.str.15, i64 noundef 3) #22
  %cmp35.i = icmp eq i32 %call34.i, 0
  br i1 %cmp35.i, label %if.then40.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %skipsym.exit.i
  %call37.i = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %cp.addr.0.i.i, ptr noundef nonnull dereferenceable(3) @.str.16, i64 noundef 2) #22
  %cmp38.i = icmp eq i32 %call37.i, 0
  br i1 %cmp38.i, label %if.then40.i, label %if.end41.i

if.then40.i:                                      ; preds = %lor.lhs.false.i, %skipsym.exit.i
  %13 = load i32, ptr @depth, align 4, !tbaa !10
  %cmp.i.i.i = icmp eq i32 %13, 0
  %14 = load ptr, ptr @filename, align 8, !tbaa !5
  %15 = load i32, ptr @linenum, align 4, !tbaa !10
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then40.i
  call void (ptr, ...) @warnx(ptr noundef nonnull @.str.37, ptr noundef %14, i32 noundef %15, ptr noundef nonnull @.str.42) #19
  br label %if.end.i.i.i

if.else.i.i.i:                                    ; preds = %if.then40.i
  %idxprom.i.i.i = sext i32 %13 to i64
  %arrayidx.i.i.i = getelementptr inbounds [64 x i32], ptr @stifline, i64 0, i64 %idxprom.i.i.i
  %16 = load i32, ptr %arrayidx.i.i.i, align 4, !tbaa !10
  call void (ptr, ...) @warnx(ptr noundef nonnull @.str.38, ptr noundef %14, i32 noundef %15, ptr noundef nonnull @.str.42, i32 noundef %16, i32 noundef %13) #19
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i.i, %if.then.i.i.i
  call fastcc void @closeout() #19
  call void (i32, ptr, ...) @errx(i32 noundef 2, ptr noundef nonnull @.str.39) #21
  unreachable

if.end41.i:                                       ; preds = %lor.lhs.false.i
  %sext.i = shl i64 %sub.ptr.sub32.i, 32
  %conv42.i = ashr exact i64 %sext.i, 32
  %tobool.not19.i.i = icmp eq i64 %sext.i, 0
  br i1 %tobool.not19.i.i, label %while.end.i.i, label %land.rhs.preheader.i.i

land.rhs.preheader.i.i:                           ; preds = %if.end41.i
  %uglygep.i.i = getelementptr i8, ptr @.str.17, i64 %conv42.i
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.else.i.i, %land.rhs.preheader.i.i
  %dec22.in.i.i = phi i64 [ %dec22.i.i, %if.else.i.i ], [ %conv42.i, %land.rhs.preheader.i.i ]
  %t.addr.021.i.i = phi ptr [ %incdec.ptr8.i.i, %if.else.i.i ], [ %add.ptr29.i, %land.rhs.preheader.i.i ]
  %s.addr.020.i.i = phi ptr [ %incdec.ptr.i210.i, %if.else.i.i ], [ @.str.17, %land.rhs.preheader.i.i ]
  %dec22.i.i = add i64 %dec22.in.i.i, -1
  %17 = load i8, ptr %t.addr.021.i.i, align 1, !tbaa !9
  %cmp.not.i.i = icmp eq i8 %17, 0
  br i1 %cmp.not.i.i, label %while.end.i.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %18 = load i8, ptr %s.addr.020.i.i, align 1, !tbaa !9
  %cmp4.not.i.i = icmp eq i8 %18, %17
  br i1 %cmp4.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  %conv6.i.i = zext i8 %18 to i32
  %conv7.i.i = zext i8 %17 to i32
  %sub.i.i = sub nsw i32 %conv6.i.i, %conv7.i.i
  br label %strlcmp.exit.i

if.else.i.i:                                      ; preds = %while.body.i.i
  %incdec.ptr.i210.i = getelementptr inbounds i8, ptr %s.addr.020.i.i, i64 1
  %incdec.ptr8.i.i = getelementptr inbounds i8, ptr %t.addr.021.i.i, i64 1
  %tobool.not.i211.i = icmp eq i64 %dec22.i.i, 0
  br i1 %tobool.not.i211.i, label %while.end.i.i, label %land.rhs.i.i

while.end.i.i:                                    ; preds = %if.else.i.i, %land.rhs.i.i, %if.end41.i
  %s.addr.0.lcssa.i.i = phi ptr [ @.str.17, %if.end41.i ], [ %uglygep.i.i, %if.else.i.i ], [ %s.addr.020.i.i, %land.rhs.i.i ]
  %19 = load i8, ptr %s.addr.0.lcssa.i.i, align 1, !tbaa !9
  %conv9.i.i = zext i8 %19 to i32
  br label %strlcmp.exit.i

strlcmp.exit.i:                                   ; preds = %while.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %conv9.i.i, %while.end.i.i ]
  %cmp44.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %cmp44.i, label %if.then51.i, label %lor.lhs.false46.i

lor.lhs.false46.i:                                ; preds = %strlcmp.exit.i
  br i1 %tobool.not19.i.i, label %while.end.i233.i, label %land.rhs.preheader.i214.i

land.rhs.preheader.i214.i:                        ; preds = %lor.lhs.false46.i
  %uglygep.i213.i = getelementptr i8, ptr @.str.18, i64 %conv42.i
  br label %land.rhs.i220.i

land.rhs.i220.i:                                  ; preds = %if.else.i230.i, %land.rhs.preheader.i214.i
  %dec22.in.i215.i = phi i64 [ %dec22.i218.i, %if.else.i230.i ], [ %conv42.i, %land.rhs.preheader.i214.i ]
  %t.addr.021.i216.i = phi ptr [ %incdec.ptr8.i228.i, %if.else.i230.i ], [ %add.ptr29.i, %land.rhs.preheader.i214.i ]
  %s.addr.020.i217.i = phi ptr [ %incdec.ptr.i227.i, %if.else.i230.i ], [ @.str.18, %land.rhs.preheader.i214.i ]
  %dec22.i218.i = add i64 %dec22.in.i215.i, -1
  %20 = load i8, ptr %t.addr.021.i216.i, align 1, !tbaa !9
  %cmp.not.i219.i = icmp eq i8 %20, 0
  br i1 %cmp.not.i219.i, label %while.end.i233.i, label %while.body.i222.i

while.body.i222.i:                                ; preds = %land.rhs.i220.i
  %21 = load i8, ptr %s.addr.020.i217.i, align 1, !tbaa !9
  %cmp4.not.i221.i = icmp eq i8 %21, %20
  br i1 %cmp4.not.i221.i, label %if.else.i230.i, label %if.then.i226.i

if.then.i226.i:                                   ; preds = %while.body.i222.i
  %conv6.i223.i = zext i8 %21 to i32
  %conv7.i224.i = zext i8 %20 to i32
  %sub.i225.i = sub nsw i32 %conv6.i223.i, %conv7.i224.i
  br label %strlcmp.exit235.i

if.else.i230.i:                                   ; preds = %while.body.i222.i
  %incdec.ptr.i227.i = getelementptr inbounds i8, ptr %s.addr.020.i217.i, i64 1
  %incdec.ptr8.i228.i = getelementptr inbounds i8, ptr %t.addr.021.i216.i, i64 1
  %tobool.not.i229.i = icmp eq i64 %dec22.i218.i, 0
  br i1 %tobool.not.i229.i, label %while.end.i233.i, label %land.rhs.i220.i

while.end.i233.i:                                 ; preds = %if.else.i230.i, %land.rhs.i220.i, %lor.lhs.false46.i
  %s.addr.0.lcssa.i231.i = phi ptr [ @.str.18, %lor.lhs.false46.i ], [ %uglygep.i213.i, %if.else.i230.i ], [ %s.addr.020.i217.i, %land.rhs.i220.i ]
  %22 = load i8, ptr %s.addr.0.lcssa.i231.i, align 1, !tbaa !9
  %conv9.i232.i = zext i8 %22 to i32
  br label %strlcmp.exit235.i

strlcmp.exit235.i:                                ; preds = %while.end.i233.i, %if.then.i226.i
  %retval.0.i234.i = phi i32 [ %sub.i225.i, %if.then.i226.i ], [ %conv9.i232.i, %while.end.i233.i ]
  %cmp49.i = icmp eq i32 %retval.0.i234.i, 0
  br i1 %cmp49.i, label %if.then51.i, label %if.else79.i

if.then51.i:                                      ; preds = %strlcmp.exit235.i, %strlcmp.exit.i
  %call52.i = call fastcc ptr @skipcomment(ptr noundef nonnull %cp.addr.0.i.i) #19
  %call53.i = call fastcc i32 @findsym(ptr noundef %call52.i) #19
  %cmp54.i = icmp slt i32 %call53.i, 0
  br i1 %cmp54.i, label %if.end77.i, label %if.else57.i

if.else57.i:                                      ; preds = %if.then51.i
  %23 = load ptr, ptr @keyword, align 8, !tbaa !5
  %arrayidx.i = getelementptr inbounds i8, ptr %23, i64 2
  %24 = load i8, ptr %arrayidx.i, align 1, !tbaa !9
  %cmp59.i = icmp eq i8 %24, 110
  %cond.i = select i1 %cmp59.i, i32 4, i32 3
  %idxprom362.i = zext i32 %call53.i to i64
  %arrayidx61.i = getelementptr inbounds [4096 x ptr], ptr @value, i64 0, i64 %idxprom362.i
  %25 = load ptr, ptr %arrayidx61.i, align 8, !tbaa !5
  %cmp62.i = icmp eq ptr %25, null
  %cond67.i = select i1 %cmp59.i, i32 3, i32 4
  %spec.select.i = select i1 %cmp62.i, i32 %cond67.i, i32 %cond.i
  %arrayidx70.i = getelementptr inbounds [4096 x i8], ptr @ignore, i64 0, i64 %idxprom362.i
  %26 = load i8, ptr %arrayidx70.i, align 1, !tbaa !16, !range !21
  %tobool71.not.i = icmp eq i8 %26, 0
  br i1 %tobool71.not.i, label %if.end77.i, label %if.then72.i

if.then72.i:                                      ; preds = %if.else57.i
  %cmp73.i = icmp ne i32 %spec.select.i, 3
  %cond75.i = zext i1 %cmp73.i to i32
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then72.i, %if.else57.i, %if.then51.i
  %retval1.1.i = phi i32 [ %cond75.i, %if.then72.i ], [ %spec.select.i, %if.else57.i ], [ 2, %if.then51.i ]
  %27 = load ptr, ptr %call.i.i, align 8, !tbaa !5
  br label %while.cond.i243.i

while.cond.i243.i:                                ; preds = %while.cond.i243.i, %if.end77.i
  %cp.addr.0.i237.i = phi ptr [ %call52.i, %if.end77.i ], [ %incdec.ptr.i242.i, %while.cond.i243.i ]
  %28 = load i8, ptr %cp.addr.0.i237.i, align 1, !tbaa !9
  %29 = zext i8 %28 to i64
  %arrayidx.i238.i = getelementptr inbounds i16, ptr %27, i64 %29
  %30 = load i16, ptr %arrayidx.i238.i, align 2, !tbaa !19
  %31 = and i16 %30, 8
  %tobool.not.i239.i = icmp eq i16 %31, 0
  %cmp.i240.i = icmp ne i8 %28, 95
  %spec.select.i241.i = select i1 %tobool.not.i239.i, i1 %cmp.i240.i, i1 false
  %incdec.ptr.i242.i = getelementptr inbounds i8, ptr %cp.addr.0.i237.i, i64 1
  br i1 %spec.select.i241.i, label %skipsym.exit245.i, label %while.cond.i243.i

skipsym.exit245.i:                                ; preds = %while.cond.i243.i
  store ptr %cp.addr.0.i237.i, ptr %cp.i, align 8, !tbaa !5
  br label %if.end110.i

if.else79.i:                                      ; preds = %strlcmp.exit235.i
  br i1 %tobool.not19.i.i, label %while.end.i267.i, label %land.rhs.preheader.i248.i

land.rhs.preheader.i248.i:                        ; preds = %if.else79.i
  %uglygep.i247.i = getelementptr i8, ptr @.str.19, i64 %conv42.i
  br label %land.rhs.i254.i

land.rhs.i254.i:                                  ; preds = %if.else.i264.i, %land.rhs.preheader.i248.i
  %dec22.in.i249.i = phi i64 [ %dec22.i252.i, %if.else.i264.i ], [ %conv42.i, %land.rhs.preheader.i248.i ]
  %t.addr.021.i250.i = phi ptr [ %incdec.ptr8.i262.i, %if.else.i264.i ], [ %add.ptr29.i, %land.rhs.preheader.i248.i ]
  %s.addr.020.i251.i = phi ptr [ %incdec.ptr.i261.i, %if.else.i264.i ], [ @.str.19, %land.rhs.preheader.i248.i ]
  %dec22.i252.i = add i64 %dec22.in.i249.i, -1
  %32 = load i8, ptr %t.addr.021.i250.i, align 1, !tbaa !9
  %cmp.not.i253.i = icmp eq i8 %32, 0
  br i1 %cmp.not.i253.i, label %while.end.i267.i, label %while.body.i256.i

while.body.i256.i:                                ; preds = %land.rhs.i254.i
  %33 = load i8, ptr %s.addr.020.i251.i, align 1, !tbaa !9
  %cmp4.not.i255.i = icmp eq i8 %33, %32
  br i1 %cmp4.not.i255.i, label %if.else.i264.i, label %if.then.i260.i

if.then.i260.i:                                   ; preds = %while.body.i256.i
  %conv6.i257.i = zext i8 %33 to i32
  %conv7.i258.i = zext i8 %32 to i32
  %sub.i259.i = sub nsw i32 %conv6.i257.i, %conv7.i258.i
  br label %strlcmp.exit269.i

if.else.i264.i:                                   ; preds = %while.body.i256.i
  %incdec.ptr.i261.i = getelementptr inbounds i8, ptr %s.addr.020.i251.i, i64 1
  %incdec.ptr8.i262.i = getelementptr inbounds i8, ptr %t.addr.021.i250.i, i64 1
  %tobool.not.i263.i = icmp eq i64 %dec22.i252.i, 0
  br i1 %tobool.not.i263.i, label %while.end.i267.i, label %land.rhs.i254.i

while.end.i267.i:                                 ; preds = %if.else.i264.i, %land.rhs.i254.i, %if.else79.i
  %s.addr.0.lcssa.i265.i = phi ptr [ @.str.19, %if.else79.i ], [ %uglygep.i247.i, %if.else.i264.i ], [ %s.addr.020.i251.i, %land.rhs.i254.i ]
  %34 = load i8, ptr %s.addr.0.lcssa.i265.i, align 1, !tbaa !9
  %conv9.i266.i = zext i8 %34 to i32
  br label %strlcmp.exit269.i

strlcmp.exit269.i:                                ; preds = %while.end.i267.i, %if.then.i260.i
  %retval.0.i268.i = phi i32 [ %sub.i259.i, %if.then.i260.i ], [ %conv9.i266.i, %while.end.i267.i ]
  %cmp82.i = icmp eq i32 %retval.0.i268.i, 0
  br i1 %cmp82.i, label %if.then84.i, label %if.else86.i

if.then84.i:                                      ; preds = %strlcmp.exit269.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #19
  store i32 0, ptr %val.i.i, align 4, !tbaa !10
  call void (ptr, ...) @debug(ptr noundef nonnull @.str.48, ptr noundef nonnull %cp.addr.0.i.i) #19
  %.b10.i.i = load i1, ptr @killconsts, align 1
  %not..b10.i.i = xor i1 %.b10.i.i, true
  %frombool.i.i = zext i1 %not..b10.i.i to i8
  store i8 %frombool.i.i, ptr @constexpr, align 1, !tbaa !16
  %call.i270.i = call i32 @eval_table(ptr noundef nonnull @eval_ops, ptr noundef nonnull %val.i.i, ptr noundef nonnull %cp.i) #19
  %35 = load i32, ptr %val.i.i, align 4, !tbaa !10
  call void (ptr, ...) @debug(ptr noundef nonnull @.str.49, i32 noundef %35) #19
  %36 = load i8, ptr @constexpr, align 1, !tbaa !16, !range !21
  %tobool2.not.i.i = icmp eq i8 %36, 0
  %cmp.i271.i = icmp eq i32 %call.i270.i, 22
  %cond5.i.i = select i1 %cmp.i271.i, i32 2, i32 %call.i270.i
  %cond7.i.i = select i1 %tobool2.not.i.i, i32 %cond5.i.i, i32 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #19
  br label %if.end110.i

if.else86.i:                                      ; preds = %strlcmp.exit269.i
  br i1 %tobool.not19.i.i, label %while.end.i293.i, label %land.rhs.preheader.i274.i

land.rhs.preheader.i274.i:                        ; preds = %if.else86.i
  %uglygep.i273.i = getelementptr i8, ptr @.str.20, i64 %conv42.i
  br label %land.rhs.i280.i

land.rhs.i280.i:                                  ; preds = %if.else.i290.i, %land.rhs.preheader.i274.i
  %dec22.in.i275.i = phi i64 [ %dec22.i278.i, %if.else.i290.i ], [ %conv42.i, %land.rhs.preheader.i274.i ]
  %t.addr.021.i276.i = phi ptr [ %incdec.ptr8.i288.i, %if.else.i290.i ], [ %add.ptr29.i, %land.rhs.preheader.i274.i ]
  %s.addr.020.i277.i = phi ptr [ %incdec.ptr.i287.i, %if.else.i290.i ], [ @.str.20, %land.rhs.preheader.i274.i ]
  %dec22.i278.i = add i64 %dec22.in.i275.i, -1
  %37 = load i8, ptr %t.addr.021.i276.i, align 1, !tbaa !9
  %cmp.not.i279.i = icmp eq i8 %37, 0
  br i1 %cmp.not.i279.i, label %while.end.i293.i, label %while.body.i282.i

while.body.i282.i:                                ; preds = %land.rhs.i280.i
  %38 = load i8, ptr %s.addr.020.i277.i, align 1, !tbaa !9
  %cmp4.not.i281.i = icmp eq i8 %38, %37
  br i1 %cmp4.not.i281.i, label %if.else.i290.i, label %if.then.i286.i

if.then.i286.i:                                   ; preds = %while.body.i282.i
  %conv6.i283.i = zext i8 %38 to i32
  %conv7.i284.i = zext i8 %37 to i32
  %sub.i285.i = sub nsw i32 %conv6.i283.i, %conv7.i284.i
  br label %strlcmp.exit295.i

if.else.i290.i:                                   ; preds = %while.body.i282.i
  %incdec.ptr.i287.i = getelementptr inbounds i8, ptr %s.addr.020.i277.i, i64 1
  %incdec.ptr8.i288.i = getelementptr inbounds i8, ptr %t.addr.021.i276.i, i64 1
  %tobool.not.i289.i = icmp eq i64 %dec22.i278.i, 0
  br i1 %tobool.not.i289.i, label %while.end.i293.i, label %land.rhs.i280.i

while.end.i293.i:                                 ; preds = %if.else.i290.i, %land.rhs.i280.i, %if.else86.i
  %s.addr.0.lcssa.i291.i = phi ptr [ @.str.20, %if.else86.i ], [ %uglygep.i273.i, %if.else.i290.i ], [ %s.addr.020.i277.i, %land.rhs.i280.i ]
  %39 = load i8, ptr %s.addr.0.lcssa.i291.i, align 1, !tbaa !9
  %conv9.i292.i = zext i8 %39 to i32
  br label %strlcmp.exit295.i

strlcmp.exit295.i:                                ; preds = %while.end.i293.i, %if.then.i286.i
  %retval.0.i294.i = phi i32 [ %sub.i285.i, %if.then.i286.i ], [ %conv9.i292.i, %while.end.i293.i ]
  %cmp89.i = icmp eq i32 %retval.0.i294.i, 0
  br i1 %cmp89.i, label %if.then91.i, label %if.else93.i

if.then91.i:                                      ; preds = %strlcmp.exit295.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i296.i) #19
  store i32 0, ptr %val.i296.i, align 4, !tbaa !10
  call void (ptr, ...) @debug(ptr noundef nonnull @.str.48, ptr noundef nonnull %cp.addr.0.i.i) #19
  %.b10.i297.i = load i1, ptr @killconsts, align 1
  %not..b10.i298.i = xor i1 %.b10.i297.i, true
  %frombool.i299.i = zext i1 %not..b10.i298.i to i8
  store i8 %frombool.i299.i, ptr @constexpr, align 1, !tbaa !16
  %call.i300.i = call i32 @eval_table(ptr noundef nonnull @eval_ops, ptr noundef nonnull %val.i296.i, ptr noundef nonnull %cp.i) #19
  %40 = load i32, ptr %val.i296.i, align 4, !tbaa !10
  call void (ptr, ...) @debug(ptr noundef nonnull @.str.49, i32 noundef %40) #19
  %41 = load i8, ptr @constexpr, align 1, !tbaa !16, !range !21
  %tobool2.not.i301.i = icmp eq i8 %41, 0
  %cmp.i302.i = icmp eq i32 %call.i300.i, 22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i296.i) #19
  %call.i300.op.i = add i32 %call.i300.i, 3
  %cond5.i303.op.i = select i1 %cmp.i302.i, i32 5, i32 %call.i300.op.i
  %add.i = select i1 %tobool2.not.i301.i, i32 %cond5.i303.op.i, i32 5
  br label %if.end110.i

if.else93.i:                                      ; preds = %strlcmp.exit295.i
  br i1 %tobool.not19.i.i, label %while.end.i326.i, label %land.rhs.preheader.i307.i

land.rhs.preheader.i307.i:                        ; preds = %if.else93.i
  %uglygep.i306.i = getelementptr i8, ptr @.str.21, i64 %conv42.i
  br label %land.rhs.i313.i

land.rhs.i313.i:                                  ; preds = %if.else.i323.i, %land.rhs.preheader.i307.i
  %dec22.in.i308.i = phi i64 [ %dec22.i311.i, %if.else.i323.i ], [ %conv42.i, %land.rhs.preheader.i307.i ]
  %t.addr.021.i309.i = phi ptr [ %incdec.ptr8.i321.i, %if.else.i323.i ], [ %add.ptr29.i, %land.rhs.preheader.i307.i ]
  %s.addr.020.i310.i = phi ptr [ %incdec.ptr.i320.i, %if.else.i323.i ], [ @.str.21, %land.rhs.preheader.i307.i ]
  %dec22.i311.i = add i64 %dec22.in.i308.i, -1
  %42 = load i8, ptr %t.addr.021.i309.i, align 1, !tbaa !9
  %cmp.not.i312.i = icmp eq i8 %42, 0
  br i1 %cmp.not.i312.i, label %while.end.i326.i, label %while.body.i315.i

while.body.i315.i:                                ; preds = %land.rhs.i313.i
  %43 = load i8, ptr %s.addr.020.i310.i, align 1, !tbaa !9
  %cmp4.not.i314.i = icmp eq i8 %43, %42
  br i1 %cmp4.not.i314.i, label %if.else.i323.i, label %if.then.i319.i

if.then.i319.i:                                   ; preds = %while.body.i315.i
  %conv6.i316.i = zext i8 %43 to i32
  %conv7.i317.i = zext i8 %42 to i32
  %sub.i318.i = sub nsw i32 %conv6.i316.i, %conv7.i317.i
  br label %strlcmp.exit328.i

if.else.i323.i:                                   ; preds = %while.body.i315.i
  %incdec.ptr.i320.i = getelementptr inbounds i8, ptr %s.addr.020.i310.i, i64 1
  %incdec.ptr8.i321.i = getelementptr inbounds i8, ptr %t.addr.021.i309.i, i64 1
  %tobool.not.i322.i = icmp eq i64 %dec22.i311.i, 0
  br i1 %tobool.not.i322.i, label %while.end.i326.i, label %land.rhs.i313.i

while.end.i326.i:                                 ; preds = %if.else.i323.i, %land.rhs.i313.i, %if.else93.i
  %s.addr.0.lcssa.i324.i = phi ptr [ @.str.21, %if.else93.i ], [ %uglygep.i306.i, %if.else.i323.i ], [ %s.addr.020.i310.i, %land.rhs.i313.i ]
  %44 = load i8, ptr %s.addr.0.lcssa.i324.i, align 1, !tbaa !9
  %conv9.i325.i = zext i8 %44 to i32
  br label %strlcmp.exit328.i

strlcmp.exit328.i:                                ; preds = %while.end.i326.i, %if.then.i319.i
  %retval.0.i327.i = phi i32 [ %sub.i318.i, %if.then.i319.i ], [ %conv9.i325.i, %while.end.i326.i ]
  %cmp96.i = icmp eq i32 %retval.0.i327.i, 0
  br i1 %cmp96.i, label %if.end110.i, label %if.else99.i

if.else99.i:                                      ; preds = %strlcmp.exit328.i
  br i1 %tobool.not19.i.i, label %while.end.i350.i, label %land.rhs.preheader.i331.i

land.rhs.preheader.i331.i:                        ; preds = %if.else99.i
  %uglygep.i330.i = getelementptr i8, ptr @.str.22, i64 %conv42.i
  br label %land.rhs.i337.i

land.rhs.i337.i:                                  ; preds = %if.else.i347.i, %land.rhs.preheader.i331.i
  %dec22.in.i332.i = phi i64 [ %dec22.i335.i, %if.else.i347.i ], [ %conv42.i, %land.rhs.preheader.i331.i ]
  %t.addr.021.i333.i = phi ptr [ %incdec.ptr8.i345.i, %if.else.i347.i ], [ %add.ptr29.i, %land.rhs.preheader.i331.i ]
  %s.addr.020.i334.i = phi ptr [ %incdec.ptr.i344.i, %if.else.i347.i ], [ @.str.22, %land.rhs.preheader.i331.i ]
  %dec22.i335.i = add i64 %dec22.in.i332.i, -1
  %45 = load i8, ptr %t.addr.021.i333.i, align 1, !tbaa !9
  %cmp.not.i336.i = icmp eq i8 %45, 0
  br i1 %cmp.not.i336.i, label %while.end.i350.i, label %while.body.i339.i

while.body.i339.i:                                ; preds = %land.rhs.i337.i
  %46 = load i8, ptr %s.addr.020.i334.i, align 1, !tbaa !9
  %cmp4.not.i338.i = icmp eq i8 %46, %45
  br i1 %cmp4.not.i338.i, label %if.else.i347.i, label %if.then.i343.i

if.then.i343.i:                                   ; preds = %while.body.i339.i
  %conv6.i340.i = zext i8 %46 to i32
  %conv7.i341.i = zext i8 %45 to i32
  %sub.i342.i = sub nsw i32 %conv6.i340.i, %conv7.i341.i
  br label %strlcmp.exit352.i

if.else.i347.i:                                   ; preds = %while.body.i339.i
  %incdec.ptr.i344.i = getelementptr inbounds i8, ptr %s.addr.020.i334.i, i64 1
  %incdec.ptr8.i345.i = getelementptr inbounds i8, ptr %t.addr.021.i333.i, i64 1
  %tobool.not.i346.i = icmp eq i64 %dec22.i335.i, 0
  br i1 %tobool.not.i346.i, label %while.end.i350.i, label %land.rhs.i337.i

while.end.i350.i:                                 ; preds = %if.else.i347.i, %land.rhs.i337.i, %if.else99.i
  %s.addr.0.lcssa.i348.i = phi ptr [ @.str.22, %if.else99.i ], [ %uglygep.i330.i, %if.else.i347.i ], [ %s.addr.020.i334.i, %land.rhs.i337.i ]
  %47 = load i8, ptr %s.addr.0.lcssa.i348.i, align 1, !tbaa !9
  %conv9.i349.i = zext i8 %47 to i32
  br label %strlcmp.exit352.i

strlcmp.exit352.i:                                ; preds = %while.end.i350.i, %if.then.i343.i
  %retval.0.i351.i = phi i32 [ %sub.i342.i, %if.then.i343.i ], [ %conv9.i349.i, %while.end.i350.i ]
  %cmp102.i = icmp eq i32 %retval.0.i351.i, 0
  br i1 %cmp102.i, label %if.end110.i, label %if.else105.i

if.else105.i:                                     ; preds = %strlcmp.exit352.i
  store i32 2, ptr @linestate, align 4, !tbaa !9
  br label %if.end110.i

if.end110.i:                                      ; preds = %if.else105.i, %strlcmp.exit352.i, %strlcmp.exit328.i, %if.then91.i, %if.then84.i, %skipsym.exit245.i
  %retval1.2.i = phi i32 [ %retval1.1.i, %skipsym.exit245.i ], [ %cond7.i.i, %if.then84.i ], [ %add.i, %if.then91.i ], [ 20, %if.else105.i ], [ 8, %strlcmp.exit328.i ], [ 9, %strlcmp.exit352.i ]
  %48 = load ptr, ptr %cp.i, align 8, !tbaa !5
  %call111.i = call fastcc ptr @skipcomment(ptr noundef %48) #19
  store ptr %call111.i, ptr %cp.i, align 8, !tbaa !5
  %49 = load i8, ptr %call111.i, align 1, !tbaa !9
  %cmp113.not.i = icmp eq i8 %49, 0
  br i1 %cmp113.not.i, label %if.end136.i, label %if.then115.i

if.then115.i:                                     ; preds = %if.end110.i
  store i32 2, ptr @linestate, align 4, !tbaa !9
  %50 = icmp ult i32 %retval1.2.i, 5
  br i1 %50, label %switch.hole_check, label %if.end128.i

if.end128.i:                                      ; preds = %switch.hole_check, %if.then115.i
  %51 = and i32 %retval1.2.i, -2
  %52 = icmp eq i32 %51, 6
  br i1 %52, label %land.lhs.true139.i, label %if.end136.i

if.end136.i:                                      ; preds = %if.end128.i, %if.end110.i
  %cmp137.not.i = icmp eq i32 %retval1.2.i, 20
  br i1 %cmp137.not.i, label %if.end148.i, label %land.lhs.true139.i

switch.hole_check:                                ; preds = %if.then115.i
  %switch.maskindex = trunc i32 %retval1.2.i to i8
  %switch.shifted = lshr i8 27, %switch.maskindex
  %53 = and i8 %switch.shifted, 1
  %switch.lobit.not = icmp eq i8 %53, 0
  br i1 %switch.lobit.not, label %if.end128.i, label %land.lhs.true139.i

land.lhs.true139.i:                               ; preds = %switch.hole_check, %if.end136.i, %if.end128.i
  %retval1.4355.i = phi i32 [ %retval1.2.i, %if.end136.i ], [ 5, %if.end128.i ], [ 2, %switch.hole_check ]
  %tobool140.i = icmp ne i32 %3, 0
  %54 = load i32, ptr @incomment, align 4
  %tobool142.i = icmp ne i32 %54, 0
  %or.cond190.i = select i1 %tobool140.i, i1 true, i1 %tobool142.i
  br i1 %or.cond190.i, label %if.then143.i, label %if.end148.i

if.then143.i:                                     ; preds = %land.lhs.true139.i
  %add144.i = add i32 %retval1.4355.i, 10
  br i1 %tobool142.i, label %if.end168.thread.i, label %if.end148.i

if.end168.thread.i:                               ; preds = %if.then143.i
  store i32 2, ptr @linestate, align 4, !tbaa !9
  br label %while.cond.preheader.i

if.end148.i:                                      ; preds = %if.then143.i, %land.lhs.true139.i, %if.end136.i
  %retval1.5.ph.i = phi i32 [ 20, %if.end136.i ], [ %retval1.4355.i, %land.lhs.true139.i ], [ %add144.i, %if.then143.i ]
  %.pr.i = load i32, ptr @linestate, align 4, !tbaa !9
  %cmp149.i = icmp eq i32 %.pr.i, 1
  br i1 %cmp149.i, label %if.then151.i, label %if.end168.i

if.then151.i:                                     ; preds = %if.end148.i
  %sub.ptr.lhs.cast152.i = ptrtoint ptr %call111.i to i64
  %sub.ptr.sub153.i = sub i64 %sub.ptr.lhs.cast152.i, ptrtoint (ptr @tline to i64)
  %add.ptr154.i = getelementptr inbounds i8, ptr @tline, i64 %sub.ptr.sub153.i
  %55 = trunc i64 %sub.ptr.sub153.i to i32
  %conv156.i = sub i32 4096, %55
  %56 = load ptr, ptr @input, align 8, !tbaa !5
  %call157.i = call ptr @fgets(ptr noundef nonnull %add.ptr154.i, i32 noundef %conv156.i, ptr noundef %56) #19
  %cmp158.i = icmp eq ptr %call157.i, null
  br i1 %cmp158.i, label %if.then160.i, label %if.end166.i

if.then160.i:                                     ; preds = %if.then151.i
  %57 = load ptr, ptr @newline, align 8, !tbaa !5
  %call162.i = call ptr @strcpy(ptr noundef nonnull %add.ptr154.i, ptr noundef nonnull dereferenceable(1) %57) #19
  %call163.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %57) #22
  %add.ptr164.i = getelementptr inbounds i8, ptr %call111.i, i64 %call163.i
  store ptr %add.ptr164.i, ptr %cp.i, align 8, !tbaa !5
  br label %if.end166.i

if.end166.i:                                      ; preds = %if.then160.i, %if.then151.i
  %cp.promoted401.i = phi ptr [ %add.ptr164.i, %if.then160.i ], [ %call111.i, %if.then151.i ]
  %storemerge.i = phi i32 [ 0, %if.then160.i ], [ 2, %if.then151.i ]
  store i32 %storemerge.i, ptr @linestate, align 4, !tbaa !9
  br label %if.end168.i

if.end168.i:                                      ; preds = %if.end166.i, %if.end148.i, %if.end25.i
  %.pre402404.i = phi i32 [ %.pr.i, %if.end148.i ], [ %storemerge.i, %if.end166.i ], [ %.pre402405.i, %if.end25.i ]
  %cp.promoted.i = phi ptr [ %call111.i, %if.end148.i ], [ %cp.promoted401.i, %if.end166.i ], [ %6, %if.end25.i ]
  %retval1.6.i = phi i32 [ %retval1.5.ph.i, %if.end148.i ], [ %retval1.5.ph.i, %if.end166.i ], [ 20, %if.end25.i ]
  %cmp169.i = icmp eq i32 %.pre402404.i, 2
  br i1 %cmp169.i, label %if.end168.i.while.cond.preheader.i_crit_edge, label %if.end177.i

if.end168.i.while.cond.preheader.i_crit_edge:     ; preds = %if.end168.i
  %.pr427.i.pre = load i8, ptr %cp.promoted.i, align 1, !tbaa !9
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.end168.i.while.cond.preheader.i_crit_edge, %if.end168.thread.i
  %.pr427.i = phi i8 [ %.pr427.i.pre, %if.end168.i.while.cond.preheader.i_crit_edge ], [ %49, %if.end168.thread.i ]
  %retval1.6416.ph.i = phi i32 [ %retval1.6.i, %if.end168.i.while.cond.preheader.i_crit_edge ], [ %add144.i, %if.end168.thread.i ]
  %cp.promoted414.ph.i = phi ptr [ %cp.promoted.i, %if.end168.i.while.cond.preheader.i_crit_edge ], [ %call111.i, %if.end168.thread.i ]
  %cmp173.not381.i = icmp eq i8 %.pr427.i, 0
  br i1 %cmp173.not381.i, label %if.end177.i, label %while.body.preheader.i

while.body.preheader.i:                           ; preds = %while.cond.preheader.i, %while.cond.preheader.thread.i
  %cp.promoted414433.i = phi ptr [ %call10.i, %while.cond.preheader.thread.i ], [ %cp.promoted414.ph.i, %while.cond.preheader.i ]
  %retval1.6416431.i = phi i32 [ 20, %while.cond.preheader.thread.i ], [ %retval1.6416.ph.i, %while.cond.preheader.i ]
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.preheader.i
  %call176380382.i = phi ptr [ %call176.i, %while.body.i ], [ %cp.promoted414433.i, %while.body.preheader.i ]
  %add.ptr175.i = getelementptr inbounds i8, ptr %call176380382.i, i64 1
  %call176.i = call fastcc ptr @skipcomment(ptr noundef nonnull %add.ptr175.i) #19
  %58 = load i8, ptr %call176.i, align 1, !tbaa !9
  %cmp173.not.i = icmp eq i8 %58, 0
  br i1 %cmp173.not.i, label %if.end177.loopexit.loopexit.i, label %while.body.i

if.end177.loopexit.loopexit.i:                    ; preds = %while.body.i
  %.pre402.pre.i = load i32, ptr @linestate, align 4, !tbaa !9
  br label %if.end177.i

if.end177.i:                                      ; preds = %if.end177.loopexit.loopexit.i, %while.cond.preheader.i, %if.end168.i, %if.then12.i
  %retval1.6415.i = phi i32 [ %retval1.6.i, %if.end168.i ], [ 20, %if.then12.i ], [ %retval1.6416.ph.i, %while.cond.preheader.i ], [ %retval1.6416431.i, %if.end177.loopexit.loopexit.i ]
  %59 = phi i32 [ %.pre402404.i, %if.end168.i ], [ 0, %if.then12.i ], [ 2, %while.cond.preheader.i ], [ %.pre402.pre.i, %if.end177.loopexit.loopexit.i ]
  %60 = load i32, ptr @linenum, align 4, !tbaa !10
  %61 = load i32, ptr @incomment, align 4, !tbaa !9
  %idxprom178.i = zext i32 %61 to i64
  %reltable.shift115 = shl i64 %idxprom178.i, 2
  %reltable.intrinsic116 = call ptr @llvm.load.relative.i64(ptr @reltable.process.127, i64 %reltable.shift115)
  %idxprom180.i = zext i32 %59 to i64
  %reltable.shift117 = shl i64 %idxprom180.i, 2
  %reltable.intrinsic118 = call ptr @llvm.load.relative.i64(ptr @reltable.process.128, i64 %reltable.shift117)
  call void (ptr, ...) @debug(ptr noundef nonnull @.str.23, i32 noundef %60, ptr noundef %reltable.intrinsic116, ptr noundef %reltable.intrinsic118) #19
  br label %parseline.exit

parseline.exit:                                   ; preds = %if.end177.i, %for.cond
  %retval.0.i = phi i32 [ %retval1.6415.i, %if.end177.i ], [ 21, %for.cond ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cp.i) #19
  %62 = load i32, ptr @depth, align 4, !tbaa !10
  %idxprom = sext i32 %62 to i64
  %arrayidx = getelementptr inbounds [64 x i32], ptr @ifstate, i64 0, i64 %idxprom
  %63 = load i32, ptr %arrayidx, align 4, !tbaa !9
  %idxprom1 = zext i32 %63 to i64
  %idxprom3 = zext i32 %retval.0.i to i64
  %arrayidx4 = getelementptr inbounds [10 x [23 x ptr]], ptr @trans_table, i64 0, i64 %idxprom1, i64 %idxprom3
  %64 = load ptr, ptr %arrayidx4, align 8, !tbaa !5
  call void %64() #19
  %65 = load i32, ptr @linenum, align 4, !tbaa !10
  %arrayidx6 = getelementptr inbounds [23 x ptr], ptr @linetype_name, i64 0, i64 %idxprom3
  %66 = load ptr, ptr %arrayidx6, align 8, !tbaa !5
  %67 = load i32, ptr @depth, align 4, !tbaa !10
  %idxprom7 = sext i32 %67 to i64
  %arrayidx8 = getelementptr inbounds [64 x i32], ptr @ifstate, i64 0, i64 %idxprom7
  %68 = load i32, ptr %arrayidx8, align 4, !tbaa !9
  %idxprom9 = zext i32 %68 to i64
  %reltable.shift = shl i64 %idxprom9, 2
  %reltable.intrinsic = call ptr @llvm.load.relative.i64(ptr @reltable.process, i64 %reltable.shift)
  call void (ptr, ...) @debug(ptr noundef nonnull @.str.14, i32 noundef %65, ptr noundef %66, ptr noundef %reltable.intrinsic, i32 noundef %67)
  br label %for.cond
}

; Function Attrs: noreturn nounwind
declare void @abort() #8

; Function Attrs: nounwind
declare i32 @__xstat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__fxstat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @debug(ptr noundef %msg, ...) unnamed_addr #3 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #19
  %.b3 = load i1, ptr @debugging, align 1
  br i1 %.b3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.va_start(ptr nonnull %ap)
  call void @vwarnx(ptr noundef %msg, ptr noundef nonnull %ap) #19
  call void @llvm.va_end(ptr nonnull %ap)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #19
  ret void
}

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc ptr @skipcomment(ptr noundef readonly %cp) unnamed_addr #3 {
entry:
  %.b232 = load i1, ptr @text, align 1
  br i1 %.b232, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i32, ptr @depth, align 4, !tbaa !10
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [64 x i8], ptr @ignoring, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !16, !range !21
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %while.cond.preheader, label %if.then

while.cond.preheader:                             ; preds = %lor.lhs.false
  %2 = load i8, ptr %cp, align 1, !tbaa !9
  %cmp11.not252 = icmp eq i8 %2, 0
  br i1 %cmp11.not252, label %return, label %while.body.preheader

while.body.preheader:                             ; preds = %while.cond.preheader
  %incomment.promoted = load i32, ptr @incomment, align 4, !tbaa !9
  br label %while.body

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = tail call ptr @__ctype_b_loc() #23
  %3 = load ptr, ptr %call, align 8, !tbaa !5
  %4 = load i8, ptr %cp, align 1, !tbaa !9
  %5 = zext i8 %4 to i64
  %arrayidx3258 = getelementptr inbounds i16, ptr %3, i64 %5
  %6 = load i16, ptr %arrayidx3258, align 2, !tbaa !19
  %7 = and i16 %6, 8192
  %tobool5.not259 = icmp eq i16 %7, 0
  br i1 %tobool5.not259, label %return, label %for.body

for.body:                                         ; preds = %for.inc, %if.then
  %8 = phi i8 [ %9, %for.inc ], [ %4, %if.then ]
  %cp.addr.0260 = phi ptr [ %incdec.ptr, %for.inc ], [ %cp, %if.then ]
  %cmp = icmp eq i8 %8, 10
  br i1 %cmp, label %if.then8, label %for.inc

if.then8:                                         ; preds = %for.body
  store i32 0, ptr @linestate, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %for.body
  %incdec.ptr = getelementptr inbounds i8, ptr %cp.addr.0260, i64 1
  %9 = load i8, ptr %incdec.ptr, align 1, !tbaa !9
  %10 = zext i8 %9 to i64
  %arrayidx3 = getelementptr inbounds i16, ptr %3, i64 %10
  %11 = load i16, ptr %arrayidx3, align 2, !tbaa !19
  %12 = and i16 %11, 8192
  %tobool5.not = icmp eq i16 %12, 0
  br i1 %tobool5.not, label %return, label %for.body

while.body:                                       ; preds = %while.cond.backedge, %while.body.preheader
  %13 = phi i32 [ %17, %while.cond.backedge ], [ %incomment.promoted, %while.body.preheader ]
  %14 = phi i8 [ %18, %while.cond.backedge ], [ %2, %while.body.preheader ]
  %cp.addr.1253 = phi ptr [ %cp.addr.1.be, %while.cond.backedge ], [ %cp, %while.body.preheader ]
  %conv10238256 = zext i8 %14 to i64
  %call13 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %cp.addr.1253, ptr noundef nonnull dereferenceable(4) @.str.15, i64 noundef 3) #22
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %while.body
  %add.ptr = getelementptr inbounds i8, ptr %cp.addr.1253, i64 3
  br label %while.cond.backedge

if.else:                                          ; preds = %while.body
  %call17 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %cp.addr.1253, ptr noundef nonnull dereferenceable(3) @.str.16, i64 noundef 2) #22
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.else
  %add.ptr21 = getelementptr inbounds i8, ptr %cp.addr.1253, i64 2
  br label %while.cond.backedge

if.else22:                                        ; preds = %if.else
  switch i32 %13, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb80
    i32 4, label %sw.bb172
    i32 3, label %sw.bb157
    i32 1, label %sw.bb134
    i32 5, label %land.lhs.true
    i32 6, label %land.lhs.true97
  ]

sw.bb:                                            ; preds = %if.else22
  %call23 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %cp.addr.1253, ptr noundef nonnull dereferenceable(5) @.str.24, i64 noundef 4) #22
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %if.else28

if.then26:                                        ; preds = %sw.bb
  store i32 3, ptr @incomment, align 4, !tbaa !9
  %add.ptr27 = getelementptr inbounds i8, ptr %cp.addr.1253, i64 4
  br label %while.cond.backedge

if.else28:                                        ; preds = %sw.bb
  %call29 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %cp.addr.1253, ptr noundef nonnull dereferenceable(4) @.str.25, i64 noundef 3) #22
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then32, label %if.else34

if.then32:                                        ; preds = %if.else28
  store i32 3, ptr @incomment, align 4, !tbaa !9
  %add.ptr33 = getelementptr inbounds i8, ptr %cp.addr.1253, i64 3
  br label %while.cond.backedge

if.else34:                                        ; preds = %if.else28
  %call35 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %cp.addr.1253, ptr noundef nonnull dereferenceable(3) @.str.26, i64 noundef 2) #22
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %if.then38, label %if.else40

if.then38:                                        ; preds = %if.else34
  store i32 1, ptr @incomment, align 4, !tbaa !9
  %add.ptr39 = getelementptr inbounds i8, ptr %cp.addr.1253, i64 2
  br label %while.cond.backedge

if.else40:                                        ; preds = %if.else34
  %call41 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %cp.addr.1253, ptr noundef nonnull dereferenceable(3) @.str.27, i64 noundef 2) #22
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then44, label %if.else46

if.then44:                                        ; preds = %if.else40
  store i32 2, ptr @incomment, align 4, !tbaa !9
  %add.ptr45 = getelementptr inbounds i8, ptr %cp.addr.1253, i64 2
  br label %while.cond.backedge

if.else46:                                        ; preds = %if.else40
  switch i8 %14, label %if.else64 [
    i8 39, label %if.then50
    i8 34, label %if.then56
    i8 10, label %if.then62
  ]

if.then50:                                        ; preds = %if.else46
  store i32 5, ptr @incomment, align 4, !tbaa !9
  store i32 2, ptr @linestate, align 4, !tbaa !9
  %add.ptr51 = getelementptr inbounds i8, ptr %cp.addr.1253, i64 1
  br label %while.cond.backedge

if.then56:                                        ; preds = %if.else46
  store i32 6, ptr @incomment, align 4, !tbaa !9
  store i32 2, ptr @linestate, align 4, !tbaa !9
  %add.ptr57 = getelementptr inbounds i8, ptr %cp.addr.1253, i64 1
  br label %while.cond.backedge

if.then62:                                        ; preds = %if.else46
  store i32 0, ptr @linestate, align 4, !tbaa !9
  %add.ptr63 = getelementptr inbounds i8, ptr %cp.addr.1253, i64 1
  br label %while.cond.backedge

if.else64:                                        ; preds = %if.else46
  %memchr.bounds = icmp ugt i8 %14, 63
  %15 = shl nuw i64 1, %conv10238256
  %16 = and i64 %15, 4294976001
  %memchr.bits = icmp eq i64 %16, 0
  %memchr237 = select i1 %memchr.bounds, i1 true, i1 %memchr.bits
  br i1 %memchr237, label %return, label %if.then69

if.then69:                                        ; preds = %if.else64
  %add.ptr70 = getelementptr inbounds i8, ptr %cp.addr.1253, i64 1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else178, %if.then176, %if.else169, %if.then167, %if.then161, %if.else152, %if.then150, %if.then144, %if.then138, %if.else129, %if.then109, %if.then102, %if.end85, %if.then69, %if.then62, %if.then56, %if.then50, %if.then44, %if.then38, %if.then32, %if.then26, %if.then20, %if.then16
  %17 = phi i32 [ %19, %if.end85 ], [ 3, %if.then26 ], [ 3, %if.then32 ], [ 1, %if.then38 ], [ 2, %if.then44 ], [ 5, %if.then50 ], [ 6, %if.then56 ], [ %13, %if.then62 ], [ %13, %if.then69 ], [ 0, %if.then102 ], [ %13, %if.else129 ], [ %13, %if.then109 ], [ 4, %if.then138 ], [ 4, %if.then144 ], [ 0, %if.then150 ], [ %13, %if.else152 ], [ 1, %if.then161 ], [ 2, %if.then167 ], [ 0, %if.else169 ], [ 0, %if.then176 ], [ 1, %if.else178 ], [ %13, %if.then16 ], [ %13, %if.then20 ]
  %cp.addr.1.be = phi ptr [ %add.ptr86, %if.end85 ], [ %add.ptr27, %if.then26 ], [ %add.ptr33, %if.then32 ], [ %add.ptr39, %if.then38 ], [ %add.ptr45, %if.then44 ], [ %add.ptr51, %if.then50 ], [ %add.ptr57, %if.then56 ], [ %add.ptr63, %if.then62 ], [ %add.ptr70, %if.then69 ], [ %add.ptr103, %if.then102 ], [ %add.ptr130, %if.else129 ], [ %spec.select, %if.then109 ], [ %add.ptr139, %if.then138 ], [ %add.ptr145, %if.then144 ], [ %add.ptr151, %if.then150 ], [ %add.ptr153, %if.else152 ], [ %add.ptr162, %if.then161 ], [ %add.ptr168, %if.then167 ], [ %cp.addr.1253, %if.else169 ], [ %add.ptr177, %if.then176 ], [ %cp.addr.1253, %if.else178 ], [ %add.ptr, %if.then16 ], [ %add.ptr21, %if.then20 ]
  %18 = load i8, ptr %cp.addr.1.be, align 1, !tbaa !9
  %cmp11.not = icmp eq i8 %18, 0
  br i1 %cmp11.not, label %return, label %while.body

sw.bb80:                                          ; preds = %if.else22
  %cmp82 = icmp eq i8 %14, 10
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %sw.bb80
  store i32 0, ptr @incomment, align 4, !tbaa !9
  store i32 0, ptr @linestate, align 4, !tbaa !9
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %sw.bb80
  %19 = phi i32 [ 0, %if.then84 ], [ %13, %sw.bb80 ]
  %add.ptr86 = getelementptr inbounds i8, ptr %cp.addr.1253, i64 1
  br label %while.cond.backedge

land.lhs.true:                                    ; preds = %if.else22
  switch i8 %14, label %if.else129 [
    i8 39, label %if.then102
    i8 92, label %if.then109
    i8 10, label %if.then126.critedge
  ]

land.lhs.true97:                                  ; preds = %if.else22
  switch i8 %14, label %if.else129 [
    i8 34, label %if.then102
    i8 92, label %if.then109
    i8 10, label %if.else127
  ]

if.then102:                                       ; preds = %land.lhs.true97, %land.lhs.true
  store i32 0, ptr @incomment, align 4, !tbaa !9
  %add.ptr103 = getelementptr inbounds i8, ptr %cp.addr.1253, i64 1
  br label %while.cond.backedge

if.then109:                                       ; preds = %land.lhs.true97, %land.lhs.true
  %arrayidx110 = getelementptr inbounds i8, ptr %cp.addr.1253, i64 1
  %20 = load i8, ptr %arrayidx110, align 1, !tbaa !9
  %cmp112 = icmp eq i8 %20, 0
  %add.ptr117 = getelementptr inbounds i8, ptr %cp.addr.1253, i64 2
  %spec.select = select i1 %cmp112, ptr %arrayidx110, ptr %add.ptr117
  br label %while.cond.backedge

if.then126.critedge:                              ; preds = %land.lhs.true
  %cmp.i = icmp eq i32 %0, 0
  %21 = load ptr, ptr @filename, align 8, !tbaa !5
  %22 = load i32, ptr @linenum, align 4, !tbaa !10
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then126.critedge
  tail call void (ptr, ...) @warnx(ptr noundef nonnull @.str.37, ptr noundef %21, i32 noundef %22, ptr noundef nonnull @.str.32) #19
  br label %if.end.i

if.else.i:                                        ; preds = %if.then126.critedge
  %arrayidx.i = getelementptr inbounds [64 x i32], ptr @stifline, i64 0, i64 %idxprom
  %23 = load i32, ptr %arrayidx.i, align 4, !tbaa !10
  tail call void (ptr, ...) @warnx(ptr noundef nonnull @.str.38, ptr noundef %21, i32 noundef %22, ptr noundef nonnull @.str.32, i32 noundef %23, i32 noundef %0) #19
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  tail call fastcc void @closeout() #19
  tail call void (i32, ptr, ...) @errx(i32 noundef 2, ptr noundef nonnull @.str.39) #21
  unreachable

if.else127:                                       ; preds = %land.lhs.true97
  %cmp.i239 = icmp eq i32 %0, 0
  %24 = load ptr, ptr @filename, align 8, !tbaa !5
  %25 = load i32, ptr @linenum, align 4, !tbaa !10
  br i1 %cmp.i239, label %if.then.i240, label %if.else.i243

if.then.i240:                                     ; preds = %if.else127
  tail call void (ptr, ...) @warnx(ptr noundef nonnull @.str.37, ptr noundef %24, i32 noundef %25, ptr noundef nonnull @.str.33) #19
  br label %if.end.i244

if.else.i243:                                     ; preds = %if.else127
  %arrayidx.i242 = getelementptr inbounds [64 x i32], ptr @stifline, i64 0, i64 %idxprom
  %26 = load i32, ptr %arrayidx.i242, align 4, !tbaa !10
  tail call void (ptr, ...) @warnx(ptr noundef nonnull @.str.38, ptr noundef %24, i32 noundef %25, ptr noundef nonnull @.str.33, i32 noundef %26, i32 noundef %0) #19
  br label %if.end.i244

if.end.i244:                                      ; preds = %if.else.i243, %if.then.i240
  tail call fastcc void @closeout() #19
  tail call void (i32, ptr, ...) @errx(i32 noundef 2, ptr noundef nonnull @.str.39) #21
  unreachable

if.else129:                                       ; preds = %land.lhs.true97, %land.lhs.true
  %add.ptr130 = getelementptr inbounds i8, ptr %cp.addr.1253, i64 1
  br label %while.cond.backedge

sw.bb134:                                         ; preds = %if.else22
  %call135 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %cp.addr.1253, ptr noundef nonnull dereferenceable(5) @.str.34, i64 noundef 4) #22
  %cmp136 = icmp eq i32 %call135, 0
  br i1 %cmp136, label %if.then138, label %if.else140

if.then138:                                       ; preds = %sw.bb134
  store i32 4, ptr @incomment, align 4, !tbaa !9
  %add.ptr139 = getelementptr inbounds i8, ptr %cp.addr.1253, i64 4
  br label %while.cond.backedge

if.else140:                                       ; preds = %sw.bb134
  %call141 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %cp.addr.1253, ptr noundef nonnull dereferenceable(4) @.str.35, i64 noundef 3) #22
  %cmp142 = icmp eq i32 %call141, 0
  br i1 %cmp142, label %if.then144, label %if.else146

if.then144:                                       ; preds = %if.else140
  store i32 4, ptr @incomment, align 4, !tbaa !9
  %add.ptr145 = getelementptr inbounds i8, ptr %cp.addr.1253, i64 3
  br label %while.cond.backedge

if.else146:                                       ; preds = %if.else140
  %call147 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %cp.addr.1253, ptr noundef nonnull dereferenceable(3) @.str.36, i64 noundef 2) #22
  %cmp148 = icmp eq i32 %call147, 0
  br i1 %cmp148, label %if.then150, label %if.else152

if.then150:                                       ; preds = %if.else146
  store i32 0, ptr @incomment, align 4, !tbaa !9
  %add.ptr151 = getelementptr inbounds i8, ptr %cp.addr.1253, i64 2
  br label %while.cond.backedge

if.else152:                                       ; preds = %if.else146
  %add.ptr153 = getelementptr inbounds i8, ptr %cp.addr.1253, i64 1
  br label %while.cond.backedge

sw.bb157:                                         ; preds = %if.else22
  switch i8 %14, label %if.else169 [
    i8 42, label %if.then161
    i8 47, label %if.then167
  ]

if.then161:                                       ; preds = %sw.bb157
  store i32 1, ptr @incomment, align 4, !tbaa !9
  %add.ptr162 = getelementptr inbounds i8, ptr %cp.addr.1253, i64 1
  br label %while.cond.backedge

if.then167:                                       ; preds = %sw.bb157
  store i32 2, ptr @incomment, align 4, !tbaa !9
  %add.ptr168 = getelementptr inbounds i8, ptr %cp.addr.1253, i64 1
  br label %while.cond.backedge

if.else169:                                       ; preds = %sw.bb157
  store i32 0, ptr @incomment, align 4, !tbaa !9
  store i32 2, ptr @linestate, align 4, !tbaa !9
  br label %while.cond.backedge

sw.bb172:                                         ; preds = %if.else22
  %cmp174 = icmp eq i8 %14, 47
  br i1 %cmp174, label %if.then176, label %if.else178

if.then176:                                       ; preds = %sw.bb172
  store i32 0, ptr @incomment, align 4, !tbaa !9
  %add.ptr177 = getelementptr inbounds i8, ptr %cp.addr.1253, i64 1
  br label %while.cond.backedge

if.else178:                                       ; preds = %sw.bb172
  store i32 1, ptr @incomment, align 4, !tbaa !9
  br label %while.cond.backedge

sw.default:                                       ; preds = %if.else22
  tail call void @abort() #21
  unreachable

return:                                           ; preds = %while.cond.backedge, %if.else64, %for.inc, %if.then, %while.cond.preheader
  %retval.0 = phi ptr [ %cp, %if.then ], [ %cp, %while.cond.preheader ], [ %incdec.ptr, %for.inc ], [ %cp.addr.1253, %if.else64 ], [ %cp.addr.1.be, %while.cond.backedge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind uwtable
define internal void @Eioccc() #0 {
entry:
  %0 = load i32, ptr @depth, align 4, !tbaa !10
  %cmp.i = icmp eq i32 %0, 0
  %1 = load ptr, ptr @filename, align 8, !tbaa !5
  %2 = load i32, ptr @linenum, align 4, !tbaa !10
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  tail call void (ptr, ...) @warnx(ptr noundef nonnull @.str.37, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.42) #19
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %0 to i64
  %arrayidx.i = getelementptr inbounds [64 x i32], ptr @stifline, i64 0, i64 %idxprom.i
  %3 = load i32, ptr %arrayidx.i, align 4, !tbaa !10
  tail call void (ptr, ...) @warnx(ptr noundef nonnull @.str.38, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.42, i32 noundef %3, i32 noundef %0) #19
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  tail call fastcc void @closeout() #19
  tail call void (i32, ptr, ...) @errx(i32 noundef 2, ptr noundef nonnull @.str.39) #21
  unreachable
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @findsym(ptr noundef %str) unnamed_addr #3 {
entry:
  %call.i = tail call ptr @__ctype_b_loc() #23
  %0 = load ptr, ptr %call.i, align 8, !tbaa !5
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %entry
  %cp.addr.0.i = phi ptr [ %str, %entry ], [ %incdec.ptr.i, %while.cond.i ]
  %1 = load i8, ptr %cp.addr.0.i, align 1, !tbaa !9
  %2 = zext i8 %1 to i64
  %arrayidx.i = getelementptr inbounds i16, ptr %0, i64 %2
  %3 = load i16, ptr %arrayidx.i, align 2, !tbaa !19
  %4 = and i16 %3, 8
  %tobool.not.i = icmp eq i16 %4, 0
  %cmp.i = icmp ne i8 %1, 95
  %spec.select.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  %incdec.ptr.i = getelementptr inbounds i8, ptr %cp.addr.0.i, i64 1
  br i1 %spec.select.i, label %skipsym.exit, label %while.cond.i

skipsym.exit:                                     ; preds = %while.cond.i
  %cmp = icmp eq ptr %cp.addr.0.i, %str
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %skipsym.exit
  %.b51 = load i1, ptr @symlist, align 1
  br i1 %.b51, label %if.then1, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %5 = load i32, ptr @nsyms, align 4, !tbaa !10
  %cmp1561 = icmp sgt i32 %5, 0
  br i1 %cmp1561, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sub.ptr.lhs.cast17 = ptrtoint ptr %cp.addr.0.i to i64
  %sub.ptr.rhs.cast18 = ptrtoint ptr %str to i64
  %sub.ptr.sub19 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast18
  %tobool.not19.i = icmp eq i64 %sub.ptr.sub19, 0
  %wide.trip.count = zext i32 %5 to i64
  br label %for.body

if.then1:                                         ; preds = %if.end
  %.b4852 = load i1, ptr @symdepth, align 1
  br i1 %.b4852, label %land.lhs.true, label %if.end7.thread73

if.end7.thread73:                                 ; preds = %if.then1
  store i1 true, ptr @zerosyms, align 1
  store i1 false, ptr @firstsym, align 1
  br label %.thread

land.lhs.true:                                    ; preds = %if.then1
  %.b4954 = load i1, ptr @firstsym, align 1
  br i1 %.b4954, label %if.end7, label %if.end7.thread

if.end7.thread:                                   ; preds = %land.lhs.true
  store i1 true, ptr @zerosyms, align 1
  store i1 false, ptr @firstsym, align 1
  br label %7

if.end7:                                          ; preds = %land.lhs.true
  %.b50 = load i1, ptr @zerosyms, align 1
  %cond = select i1 %.b50, ptr @.str.30, ptr @.str.44
  %6 = load i32, ptr @depth, align 4, !tbaa !10
  %call6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.43, ptr noundef nonnull %cond, i32 noundef %6)
  %.b4753.pre = load i1, ptr @symdepth, align 1
  store i1 true, ptr @zerosyms, align 1
  store i1 false, ptr @firstsym, align 1
  br i1 %.b4753.pre, label %7, label %.thread

7:                                                ; preds = %if.end7, %if.end7.thread
  br label %.thread

.thread:                                          ; preds = %7, %if.end7, %if.end7.thread73
  %8 = phi ptr [ @.str.46, %7 ], [ @.str.44, %if.end7 ], [ @.str.44, %if.end7.thread73 ]
  %9 = phi ptr [ @.str.44, %7 ], [ @.str.30, %if.end7 ], [ @.str.30, %if.end7.thread73 ]
  %sub.ptr.lhs.cast76 = ptrtoint ptr %cp.addr.0.i to i64
  %sub.ptr.rhs.cast77 = ptrtoint ptr %str to i64
  %sub.ptr.sub78 = sub i64 %sub.ptr.lhs.cast76, %sub.ptr.rhs.cast77
  %conv79 = trunc i64 %sub.ptr.sub78 to i32
  %call13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.45, ptr noundef nonnull %8, i32 noundef %conv79, ptr noundef %str, ptr noundef nonnull %9)
  br label %cleanup

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds [4096 x ptr], ptr @symname, i64 0, i64 %indvars.iv
  %10 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  br i1 %tobool.not19.i, label %while.end.i, label %land.rhs.preheader.i

land.rhs.preheader.i:                             ; preds = %for.body
  %uglygep.i = getelementptr i8, ptr %10, i64 %sub.ptr.sub19
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.else.i, %land.rhs.preheader.i
  %dec22.in.i = phi i64 [ %dec22.i, %if.else.i ], [ %sub.ptr.sub19, %land.rhs.preheader.i ]
  %t.addr.021.i = phi ptr [ %incdec.ptr8.i, %if.else.i ], [ %str, %land.rhs.preheader.i ]
  %s.addr.020.i = phi ptr [ %incdec.ptr.i55, %if.else.i ], [ %10, %land.rhs.preheader.i ]
  %dec22.i = add i64 %dec22.in.i, -1
  %11 = load i8, ptr %t.addr.021.i, align 1, !tbaa !9
  %cmp.not.i = icmp eq i8 %11, 0
  br i1 %cmp.not.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  %12 = load i8, ptr %s.addr.020.i, align 1, !tbaa !9
  %cmp4.not.i = icmp eq i8 %12, %11
  br i1 %cmp4.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.body.i
  %conv6.i = zext i8 %12 to i32
  %conv7.i = zext i8 %11 to i32
  %sub.i = sub nsw i32 %conv6.i, %conv7.i
  br label %strlcmp.exit

if.else.i:                                        ; preds = %while.body.i
  %incdec.ptr.i55 = getelementptr inbounds i8, ptr %s.addr.020.i, i64 1
  %incdec.ptr8.i = getelementptr inbounds i8, ptr %t.addr.021.i, i64 1
  %tobool.not.i56 = icmp eq i64 %dec22.i, 0
  br i1 %tobool.not.i56, label %while.end.i, label %land.rhs.i

while.end.i:                                      ; preds = %if.else.i, %land.rhs.i, %for.body
  %s.addr.0.lcssa.i = phi ptr [ %10, %for.body ], [ %s.addr.020.i, %land.rhs.i ], [ %uglygep.i, %if.else.i ]
  %13 = load i8, ptr %s.addr.0.lcssa.i, align 1, !tbaa !9
  %conv9.i = zext i8 %13 to i32
  br label %strlcmp.exit

strlcmp.exit:                                     ; preds = %while.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %conv9.i, %while.end.i ]
  %cmp21 = icmp eq i32 %retval.0.i, 0
  br i1 %cmp21, label %if.then23, label %for.inc

if.then23:                                        ; preds = %strlcmp.exit
  %14 = trunc i64 %indvars.iv to i32
  %idxprom.le = and i64 %indvars.iv, 4294967295
  %arrayidx27 = getelementptr inbounds [4096 x ptr], ptr @value, i64 0, i64 %idxprom.le
  %15 = load ptr, ptr %arrayidx27, align 8, !tbaa !5
  %tobool28.not = icmp eq ptr %15, null
  %spec.select = select i1 %tobool28.not, ptr @.str.44, ptr %15
  tail call void (ptr, ...) @debug(ptr noundef nonnull @.str.47, ptr noundef %10, ptr noundef nonnull %spec.select)
  br label %cleanup

for.inc:                                          ; preds = %strlcmp.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %if.then23, %.thread, %for.cond.preheader, %skipsym.exit
  %retval.0 = phi i32 [ 0, %.thread ], [ %14, %if.then23 ], [ -1, %skipsym.exit ], [ -1, %for.cond.preheader ], [ -1, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #10

declare void @warnx(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @closeout() unnamed_addr #3 {
entry:
  %.b9 = load i1, ptr @symdepth, align 1
  br i1 %.b9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %.b8 = load i1, ptr @zerosyms, align 1
  br i1 %.b8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %putchar = tail call i32 @putchar(i32 10)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %0 = load ptr, ptr @output, align 8, !tbaa !5
  %call2 = tail call i32 @fclose(ptr noundef %0)
  %cmp = icmp eq i32 %call2, -1
  br i1 %cmp, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  %1 = load ptr, ptr @ofilename, align 8, !tbaa !5
  tail call void (ptr, ...) @warn(ptr noundef nonnull @.str.40, ptr noundef %1) #19
  %2 = load i8, ptr @overwriting, align 1, !tbaa !16, !range !21
  %tobool4.not = icmp eq i8 %2, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then3
  %call6 = tail call i32 @unlink(ptr noundef nonnull @tempname) #19
  %3 = load ptr, ptr @filename, align 8, !tbaa !5
  tail call void (i32, ptr, ...) @errx(i32 noundef 2, ptr noundef nonnull @.str.41, ptr noundef %3) #21
  unreachable

if.else:                                          ; preds = %if.then3
  tail call void @exit(i32 noundef 2) #21
  unreachable

if.end7:                                          ; preds = %if.end
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

declare void @warn(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal i32 @eval_table(ptr noundef %ops, ptr noundef %valp, ptr nocapture noundef %cpp) #3 {
entry:
  %cp = alloca ptr, align 8
  %val = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cp) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #19
  %sub.ptr.lhs.cast = ptrtoint ptr %ops to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint (ptr @eval_ops to i64)
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 88
  tail call void (ptr, ...) @debug(ptr noundef nonnull @.str.50, i64 noundef %sub.ptr.div)
  %0 = load ptr, ptr %cpp, align 8, !tbaa !5
  store ptr %0, ptr %cp, align 8, !tbaa !5
  %1 = load ptr, ptr %ops, align 8, !tbaa !22
  %add.ptr = getelementptr inbounds %struct.ops, ptr %ops, i64 1
  %call = call i32 %1(ptr noundef nonnull %add.ptr, ptr noundef %valp, ptr noundef nonnull %cp) #19
  %cmp = icmp eq i32 %call, 22
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %2 = load ptr, ptr %cp, align 8, !tbaa !5
  %call174 = call fastcc ptr @skipcomment(ptr noundef %2)
  store ptr %call174, ptr %cp, align 8, !tbaa !5
  %op2 = getelementptr inbounds %struct.ops, ptr %ops, i64 0, i32 1
  %3 = load ptr, ptr %op2, align 8, !tbaa !24
  %cmp4.not6975 = icmp eq ptr %3, null
  br i1 %cmp4.not6975, label %for.end30, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end28, %for.cond.preheader
  %4 = phi ptr [ %12, %if.end28 ], [ %3, %for.cond.preheader ]
  %call177 = phi ptr [ %call1, %if.end28 ], [ %call174, %for.cond.preheader ]
  %lt.076 = phi i32 [ %call29, %if.end28 ], [ %call, %for.cond.preheader ]
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %5 = phi ptr [ %4, %for.body.lr.ph ], [ %6, %for.inc ]
  %op.070 = phi ptr [ %op2, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %call7 = call i64 @strlen(ptr noundef nonnull %5) #22
  %call8 = call i32 @strncmp(ptr noundef %call177, ptr noundef nonnull %5, i64 noundef %call7) #22
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.end15, label %for.inc

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr inbounds %struct.op, ptr %op.070, i64 1
  %6 = load ptr, ptr %incdec.ptr, align 8, !tbaa !24
  %cmp4.not = icmp eq ptr %6, null
  br i1 %cmp4.not, label %for.end30, label %for.body

if.end15:                                         ; preds = %for.body
  %add.ptr18 = getelementptr inbounds i8, ptr %call177, i64 %call7
  store ptr %add.ptr18, ptr %cp, align 8, !tbaa !5
  call void (ptr, ...) @debug(ptr noundef nonnull @.str.51, i64 noundef %sub.ptr.div, ptr noundef nonnull %5)
  %7 = load ptr, ptr %ops, align 8, !tbaa !22
  %call25 = call i32 %7(ptr noundef nonnull %add.ptr, ptr noundef nonnull %val, ptr noundef nonnull %cp) #19
  %cmp26 = icmp eq i32 %call25, 22
  br i1 %cmp26, label %cleanup, label %if.end28

if.end28:                                         ; preds = %if.end15
  %fn = getelementptr inbounds %struct.op, ptr %op.070, i64 0, i32 1
  %8 = load ptr, ptr %fn, align 8, !tbaa !26
  %9 = load i32, ptr %valp, align 4, !tbaa !10
  %10 = load i32, ptr %val, align 4, !tbaa !10
  %call29 = call i32 %8(ptr noundef nonnull %valp, i32 noundef %lt.076, i32 noundef %9, i32 noundef %call25, i32 noundef %10) #19
  %11 = load ptr, ptr %cp, align 8, !tbaa !5
  %call1 = call fastcc ptr @skipcomment(ptr noundef %11)
  store ptr %call1, ptr %cp, align 8, !tbaa !5
  %12 = load ptr, ptr %op2, align 8, !tbaa !24
  %cmp4.not69 = icmp eq ptr %12, null
  br i1 %cmp4.not69, label %for.end30, label %for.body.lr.ph

for.end30:                                        ; preds = %if.end28, %for.inc, %for.cond.preheader
  %lt.0.lcssa = phi i32 [ %call, %for.cond.preheader ], [ %lt.076, %for.inc ], [ %call29, %if.end28 ]
  %call1.lcssa = phi ptr [ %call174, %for.cond.preheader ], [ %call177, %for.inc ], [ %call1, %if.end28 ]
  store ptr %call1.lcssa, ptr %cpp, align 8, !tbaa !5
  %13 = load i32, ptr %valp, align 4, !tbaa !10
  call void (ptr, ...) @debug(ptr noundef nonnull @.str.52, i64 noundef %sub.ptr.div, i32 noundef %13)
  %idxprom = zext i32 %lt.0.lcssa to i64
  %arrayidx = getelementptr inbounds [23 x ptr], ptr @linetype_name, i64 0, i64 %idxprom
  %14 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  call void (ptr, ...) @debug(ptr noundef nonnull @.str.53, i64 noundef %sub.ptr.div, ptr noundef %14)
  br label %cleanup

cleanup:                                          ; preds = %for.end30, %if.end15, %entry
  %retval.0 = phi i32 [ %lt.0.lcssa, %for.end30 ], [ 22, %entry ], [ 22, %if.end15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cp) #19
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define internal i32 @op_or(ptr nocapture noundef writeonly %p, i32 noundef %at, i32 noundef %a, i32 noundef %bt, i32 noundef %b) #11 {
entry:
  %.b7 = load i1, ptr @strictlogic, align 1
  br i1 %.b7, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %cmp = icmp eq i32 %at, 3
  %cmp1 = icmp eq i32 %bt, 3
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %p, align 4, !tbaa !10
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %cmp.i = icmp eq i32 %at, 2
  %cmp1.i = icmp eq i32 %bt, 2
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %return, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %0 = or i32 %b, %a
  %1 = icmp ne i32 %0, 0
  %lor.ext = zext i1 %1 to i32
  store i32 %lor.ext, ptr %p, align 4, !tbaa !10
  %cond.i = select i1 %1, i32 3, i32 4
  br label %return

return:                                           ; preds = %if.end.i, %if.end, %if.then
  %retval.0 = phi i32 [ 3, %if.then ], [ %cond.i, %if.end.i ], [ 2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define internal i32 @op_and(ptr nocapture noundef writeonly %p, i32 noundef %at, i32 noundef %a, i32 noundef %bt, i32 noundef %b) #11 {
entry:
  %.b7 = load i1, ptr @strictlogic, align 1
  br i1 %.b7, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %cmp = icmp eq i32 %at, 4
  %cmp1 = icmp eq i32 %bt, 4
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %p, align 4, !tbaa !10
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %cmp.i = icmp eq i32 %at, 2
  %cmp1.i = icmp eq i32 %bt, 2
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %return, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %tobool2 = icmp ne i32 %a, 0
  %tobool3 = icmp ne i32 %b, 0
  %0 = and i1 %tobool2, %tobool3
  %land.ext = zext i1 %0 to i32
  store i32 %land.ext, ptr %p, align 4, !tbaa !10
  %cond.i = select i1 %0, i32 3, i32 4
  br label %return

return:                                           ; preds = %if.end.i, %if.end, %if.then
  %retval.0 = phi i32 [ 4, %if.then ], [ %cond.i, %if.end.i ], [ 2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define internal i32 @op_eq(ptr nocapture noundef writeonly %p, i32 noundef %at, i32 noundef %a, i32 noundef %bt, i32 noundef %b) #12 {
entry:
  %cmp.i = icmp eq i32 %at, 2
  %cmp1.i = icmp eq i32 %bt, 2
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %op_strict.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %cmp = icmp eq i32 %a, %b
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %p, align 4, !tbaa !10
  %cond.i = select i1 %cmp, i32 3, i32 4
  br label %op_strict.exit

op_strict.exit:                                   ; preds = %if.end.i, %entry
  %retval.0.i = phi i32 [ %cond.i, %if.end.i ], [ 2, %entry ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define internal i32 @op_ne(ptr nocapture noundef writeonly %p, i32 noundef %at, i32 noundef %a, i32 noundef %bt, i32 noundef %b) #12 {
entry:
  %cmp.i = icmp eq i32 %at, 2
  %cmp1.i = icmp eq i32 %bt, 2
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %op_strict.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %cmp = icmp ne i32 %a, %b
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %p, align 4, !tbaa !10
  %cond.i = select i1 %cmp, i32 3, i32 4
  br label %op_strict.exit

op_strict.exit:                                   ; preds = %if.end.i, %entry
  %retval.0.i = phi i32 [ %cond.i, %if.end.i ], [ 2, %entry ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind uwtable
define internal i32 @eval_unary(ptr noundef %ops, ptr noundef %valp, ptr nocapture noundef %cpp) #3 {
entry:
  %cp = alloca ptr, align 8
  %ep = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cp) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ep) #19
  %0 = load ptr, ptr %cpp, align 8, !tbaa !5
  %call = tail call fastcc ptr @skipcomment(ptr noundef %0)
  store ptr %call, ptr %cp, align 8, !tbaa !5
  %1 = load i8, ptr %call, align 1, !tbaa !9
  switch i8 %1, label %if.else31 [
    i8 33, label %if.then
    i8 40, label %if.then14
  ]

if.then:                                          ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint ptr %ops to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint (ptr @eval_ops to i64)
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 88
  tail call void (ptr, ...) @debug(ptr noundef nonnull @.str.62, i64 noundef %sub.ptr.div)
  %incdec.ptr = getelementptr inbounds i8, ptr %call, i64 1
  store ptr %incdec.ptr, ptr %cp, align 8, !tbaa !5
  %call2 = call i32 @eval_unary(ptr noundef %ops, ptr noundef %valp, ptr noundef nonnull %cp)
  switch i32 %call2, label %if.then8 [
    i32 22, label %cleanup
    i32 2, label %if.end157
  ]

if.then8:                                         ; preds = %if.then
  %2 = load i32, ptr %valp, align 4, !tbaa !10
  %tobool.not = icmp eq i32 %2, 0
  %lnot.ext = zext i1 %tobool.not to i32
  store i32 %lnot.ext, ptr %valp, align 4, !tbaa !10
  %cond = select i1 %tobool.not, i32 3, i32 4
  br label %if.end157

if.then14:                                        ; preds = %entry
  %incdec.ptr15 = getelementptr inbounds i8, ptr %call, i64 1
  store ptr %incdec.ptr15, ptr %cp, align 8, !tbaa !5
  %sub.ptr.lhs.cast16 = ptrtoint ptr %ops to i64
  %sub.ptr.sub17 = sub i64 %sub.ptr.lhs.cast16, ptrtoint (ptr @eval_ops to i64)
  %sub.ptr.div18 = sdiv exact i64 %sub.ptr.sub17, 88
  tail call void (ptr, ...) @debug(ptr noundef nonnull @.str.63, i64 noundef %sub.ptr.div18)
  %call19 = call i32 @eval_table(ptr noundef nonnull @eval_ops, ptr noundef %valp, ptr noundef nonnull %cp)
  %cmp20 = icmp eq i32 %call19, 22
  br i1 %cmp20, label %cleanup, label %if.end23

if.end23:                                         ; preds = %if.then14
  %3 = load ptr, ptr %cp, align 8, !tbaa !5
  %call24 = tail call fastcc ptr @skipcomment(ptr noundef %3)
  %incdec.ptr25 = getelementptr inbounds i8, ptr %call24, i64 1
  store ptr %incdec.ptr25, ptr %cp, align 8, !tbaa !5
  %4 = load i8, ptr %call24, align 1, !tbaa !9
  %cmp27.not = icmp eq i8 %4, 41
  br i1 %cmp27.not, label %if.end157, label %cleanup

if.else31:                                        ; preds = %entry
  %call32 = tail call ptr @__ctype_b_loc() #23
  %5 = load ptr, ptr %call32, align 8, !tbaa !5
  %6 = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds i16, ptr %5, i64 %6
  %7 = load i16, ptr %arrayidx, align 2, !tbaa !19
  %8 = and i16 %7, 2048
  %tobool35.not = icmp eq i16 %8, 0
  br i1 %tobool35.not, label %if.else49, label %if.then36

if.then36:                                        ; preds = %if.else31
  %sub.ptr.lhs.cast37 = ptrtoint ptr %ops to i64
  %sub.ptr.sub38 = sub i64 %sub.ptr.lhs.cast37, ptrtoint (ptr @eval_ops to i64)
  %sub.ptr.div39 = sdiv exact i64 %sub.ptr.sub38, 88
  tail call void (ptr, ...) @debug(ptr noundef nonnull @.str.64, i64 noundef %sub.ptr.div39)
  %call40 = call i64 @strtol(ptr noundef nonnull %call, ptr noundef nonnull %ep, i32 noundef 0) #19
  %conv41 = trunc i64 %call40 to i32
  store i32 %conv41, ptr %valp, align 4, !tbaa !10
  %9 = load ptr, ptr %ep, align 8, !tbaa !5
  %10 = load ptr, ptr %cp, align 8, !tbaa !5
  %cmp42 = icmp eq ptr %9, %10
  br i1 %cmp42, label %cleanup, label %if.end45

if.end45:                                         ; preds = %if.then36
  %tobool46.not = icmp eq i32 %conv41, 0
  %11 = load ptr, ptr %call32, align 8, !tbaa !5
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.end45
  %cp.addr.0.i = phi ptr [ %10, %if.end45 ], [ %incdec.ptr.i, %while.cond.i ]
  %12 = load i8, ptr %cp.addr.0.i, align 1, !tbaa !9
  %13 = zext i8 %12 to i64
  %arrayidx.i = getelementptr inbounds i16, ptr %11, i64 %13
  %14 = load i16, ptr %arrayidx.i, align 2, !tbaa !19
  %15 = and i16 %14, 8
  %tobool.not.i = icmp eq i16 %15, 0
  %cmp.i = icmp ne i8 %12, 95
  %spec.select.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  %incdec.ptr.i = getelementptr inbounds i8, ptr %cp.addr.0.i, i64 1
  br i1 %spec.select.i, label %skipsym.exit, label %while.cond.i

skipsym.exit:                                     ; preds = %while.cond.i
  %cond47 = select i1 %tobool46.not, i32 4, i32 3
  store ptr %cp.addr.0.i, ptr %cp, align 8, !tbaa !5
  br label %if.end157

if.else49:                                        ; preds = %if.else31
  %call50 = tail call i32 @strncmp(ptr noundef nonnull %call, ptr noundef nonnull dereferenceable(8) @.str.65, i64 noundef 7) #22
  %cmp51 = icmp eq i32 %call50, 0
  br i1 %cmp51, label %land.lhs.true, label %if.else102

land.lhs.true:                                    ; preds = %if.else49
  %arrayidx54 = getelementptr inbounds i8, ptr %call, i64 7
  %16 = load i8, ptr %arrayidx54, align 1, !tbaa !9
  %17 = zext i8 %16 to i64
  %arrayidx57 = getelementptr inbounds i16, ptr %5, i64 %17
  %18 = load i16, ptr %arrayidx57, align 2, !tbaa !19
  %19 = and i16 %18, 8
  %tobool60.not = icmp ne i16 %19, 0
  %cmp64.not = icmp eq i8 %16, 95
  %or.cond = select i1 %tobool60.not, i1 true, i1 %cmp64.not
  br i1 %or.cond, label %if.else102, label %if.then66

if.then66:                                        ; preds = %land.lhs.true
  %call67 = tail call fastcc ptr @skipcomment(ptr noundef nonnull %arrayidx54)
  store ptr %call67, ptr %cp, align 8, !tbaa !5
  %sub.ptr.lhs.cast68 = ptrtoint ptr %ops to i64
  %sub.ptr.sub69 = sub i64 %sub.ptr.lhs.cast68, ptrtoint (ptr @eval_ops to i64)
  %sub.ptr.div70 = sdiv exact i64 %sub.ptr.sub69, 88
  tail call void (ptr, ...) @debug(ptr noundef nonnull @.str.66, i64 noundef %sub.ptr.div70)
  %20 = load i8, ptr %call67, align 1, !tbaa !9
  %cmp72 = icmp eq i8 %20, 40
  br i1 %cmp72, label %if.then74, label %if.end78

if.then74:                                        ; preds = %if.then66
  %add.ptr75 = getelementptr inbounds i8, ptr %call67, i64 1
  %call76 = tail call fastcc ptr @skipcomment(ptr noundef nonnull %add.ptr75)
  store ptr %call76, ptr %cp, align 8, !tbaa !5
  br label %if.end78

if.end78:                                         ; preds = %if.then74, %if.then66
  %21 = phi ptr [ %call67, %if.then66 ], [ %call76, %if.then74 ]
  %call79 = tail call fastcc i32 @findsym(ptr noundef %21)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %if.end90, label %if.else83

if.else83:                                        ; preds = %if.end78
  %idxprom84217 = zext i32 %call79 to i64
  %arrayidx85 = getelementptr inbounds [4096 x ptr], ptr @value, i64 0, i64 %idxprom84217
  %22 = load ptr, ptr %arrayidx85, align 8, !tbaa !5
  %cmp86 = icmp ne ptr %22, null
  %conv87 = zext i1 %cmp86 to i32
  store i32 %conv87, ptr %valp, align 4, !tbaa !10
  %cond89 = select i1 %cmp86, i32 3, i32 4
  br label %if.end90

if.end90:                                         ; preds = %if.else83, %if.end78
  %lt.0 = phi i32 [ %cond89, %if.else83 ], [ 2, %if.end78 ]
  %23 = load ptr, ptr %call32, align 8, !tbaa !5
  br label %while.cond.i202

while.cond.i202:                                  ; preds = %while.cond.i202, %if.end90
  %cp.addr.0.i196 = phi ptr [ %21, %if.end90 ], [ %incdec.ptr.i201, %while.cond.i202 ]
  %24 = load i8, ptr %cp.addr.0.i196, align 1, !tbaa !9
  %25 = zext i8 %24 to i64
  %arrayidx.i197 = getelementptr inbounds i16, ptr %23, i64 %25
  %26 = load i16, ptr %arrayidx.i197, align 2, !tbaa !19
  %27 = and i16 %26, 8
  %tobool.not.i198 = icmp eq i16 %27, 0
  %cmp.i199 = icmp ne i8 %24, 95
  %spec.select.i200 = select i1 %tobool.not.i198, i1 %cmp.i199, i1 false
  %incdec.ptr.i201 = getelementptr inbounds i8, ptr %cp.addr.0.i196, i64 1
  br i1 %spec.select.i200, label %skipsym.exit203, label %while.cond.i202

skipsym.exit203:                                  ; preds = %while.cond.i202
  %call92 = tail call fastcc ptr @skipcomment(ptr noundef nonnull %cp.addr.0.i196)
  store ptr %call92, ptr %cp, align 8, !tbaa !5
  br i1 %cmp72, label %land.lhs.true95, label %if.end101

land.lhs.true95:                                  ; preds = %skipsym.exit203
  %incdec.ptr96 = getelementptr inbounds i8, ptr %call92, i64 1
  store ptr %incdec.ptr96, ptr %cp, align 8, !tbaa !5
  %28 = load i8, ptr %call92, align 1, !tbaa !9
  %cmp98.not = icmp eq i8 %28, 41
  br i1 %cmp98.not, label %if.end101, label %cleanup

if.end101:                                        ; preds = %land.lhs.true95, %skipsym.exit203
  store i8 0, ptr @constexpr, align 1, !tbaa !16
  br label %if.end157

if.else102:                                       ; preds = %land.lhs.true, %if.else49
  %29 = and i16 %7, 8
  %tobool109.not = icmp ne i16 %29, 0
  %cmp112.not = icmp eq i8 %1, 95
  %or.cond194 = select i1 %tobool109.not, i1 true, i1 %cmp112.not
  %sub.ptr.lhs.cast115 = ptrtoint ptr %ops to i64
  %sub.ptr.sub116 = sub i64 %sub.ptr.lhs.cast115, ptrtoint (ptr @eval_ops to i64)
  %sub.ptr.div117 = sdiv exact i64 %sub.ptr.sub116, 88
  br i1 %or.cond194, label %if.then114, label %if.else149

if.then114:                                       ; preds = %if.else102
  tail call void (ptr, ...) @debug(ptr noundef nonnull @.str.67, i64 noundef %sub.ptr.div117)
  %call118 = tail call fastcc i32 @findsym(ptr noundef nonnull %call)
  %30 = load ptr, ptr %call32, align 8, !tbaa !5
  br label %while.cond.i211

while.cond.i211:                                  ; preds = %while.cond.i211, %if.then114
  %cp.addr.0.i205 = phi ptr [ %call, %if.then114 ], [ %incdec.ptr.i210, %while.cond.i211 ]
  %31 = load i8, ptr %cp.addr.0.i205, align 1, !tbaa !9
  %32 = zext i8 %31 to i64
  %arrayidx.i206 = getelementptr inbounds i16, ptr %30, i64 %32
  %33 = load i16, ptr %arrayidx.i206, align 2, !tbaa !19
  %34 = and i16 %33, 8
  %tobool.not.i207 = icmp eq i16 %34, 0
  %cmp.i208 = icmp ne i8 %31, 95
  %spec.select.i209 = select i1 %tobool.not.i207, i1 %cmp.i208, i1 false
  %incdec.ptr.i210 = getelementptr inbounds i8, ptr %cp.addr.0.i205, i64 1
  br i1 %spec.select.i209, label %skipsym.exit212, label %while.cond.i211

skipsym.exit212:                                  ; preds = %while.cond.i211
  store ptr %cp.addr.0.i205, ptr %cp, align 8, !tbaa !5
  %cmp120 = icmp slt i32 %call118, 0
  br i1 %cmp120, label %if.then122, label %if.else124

if.then122:                                       ; preds = %skipsym.exit212
  %call.i213 = tail call fastcc ptr @skipcomment(ptr noundef nonnull %cp.addr.0.i205) #19
  %35 = load i8, ptr %call.i213, align 1, !tbaa !9
  %cmp.not.i = icmp eq i8 %35, 40
  br i1 %cmp.not.i, label %do.body.i, label %skipargs.exit

do.body.i:                                        ; preds = %land.rhs.i, %if.then122
  %36 = phi i8 [ %37, %land.rhs.i ], [ 40, %if.then122 ]
  %cp.addr.0.i214 = phi ptr [ %call12.i, %land.rhs.i ], [ %call.i213, %if.then122 ]
  %level.0.i = phi i32 [ %level.2.i, %land.rhs.i ], [ 0, %if.then122 ]
  %cmp3.i = icmp eq i8 %36, 40
  %inc.i = zext i1 %cmp3.i to i32
  %spec.select.i215 = add nsw i32 %level.0.i, %inc.i
  %cmp8.i = icmp eq i8 %36, 41
  %dec.i = sext i1 %cmp8.i to i32
  %level.2.i = add nsw i32 %spec.select.i215, %dec.i
  %add.ptr.i = getelementptr inbounds i8, ptr %cp.addr.0.i214, i64 1
  %call12.i = tail call fastcc ptr @skipcomment(ptr noundef nonnull %add.ptr.i) #19
  %cond.i = icmp eq i32 %level.2.i, 0
  br i1 %cond.i, label %skipargs.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %do.body.i
  %37 = load i8, ptr %call12.i, align 1, !tbaa !9
  %cmp16.not.i = icmp eq i8 %37, 0
  br i1 %cmp16.not.i, label %skipargs.exit, label %do.body.i

skipargs.exit:                                    ; preds = %land.rhs.i, %do.body.i, %if.then122
  %retval.0.i = phi ptr [ %call.i213, %if.then122 ], [ %call12.i, %do.body.i ], [ %cp.addr.0.i205, %land.rhs.i ]
  store ptr %retval.0.i, ptr %cp, align 8, !tbaa !5
  br label %if.end148

if.else124:                                       ; preds = %skipsym.exit212
  %idxprom125216 = zext i32 %call118 to i64
  %arrayidx126 = getelementptr inbounds [4096 x ptr], ptr @value, i64 0, i64 %idxprom125216
  %38 = load ptr, ptr %arrayidx126, align 8, !tbaa !5
  %cmp127 = icmp eq ptr %38, null
  br i1 %cmp127, label %if.then129, label %if.else130

if.then129:                                       ; preds = %if.else124
  store i32 0, ptr %valp, align 4, !tbaa !10
  br label %if.end148

if.else130:                                       ; preds = %if.else124
  %call133 = call i64 @strtol(ptr noundef nonnull %38, ptr noundef nonnull %ep, i32 noundef 0) #19
  %conv134 = trunc i64 %call133 to i32
  store i32 %conv134, ptr %valp, align 4, !tbaa !10
  %39 = load ptr, ptr %ep, align 8, !tbaa !5
  %40 = load i8, ptr %39, align 1, !tbaa !9
  %cmp136.not = icmp eq i8 %40, 0
  br i1 %cmp136.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.else130
  %41 = load ptr, ptr %arrayidx126, align 8, !tbaa !5
  %cmp140 = icmp eq ptr %39, %41
  br i1 %cmp140, label %cleanup, label %if.end143

if.end143:                                        ; preds = %lor.lhs.false
  %tobool144.not = icmp eq i32 %conv134, 0
  %cond145 = select i1 %tobool144.not, i32 4, i32 3
  %42 = load ptr, ptr %cp, align 8, !tbaa !5
  %call146 = tail call fastcc ptr @skipargs(ptr noundef %42)
  store ptr %call146, ptr %cp, align 8, !tbaa !5
  br label %if.end148

if.end148:                                        ; preds = %if.end143, %if.then129, %skipargs.exit
  %lt.1 = phi i32 [ 2, %skipargs.exit ], [ 4, %if.then129 ], [ %cond145, %if.end143 ]
  store i8 0, ptr @constexpr, align 1, !tbaa !16
  br label %if.end157

if.else149:                                       ; preds = %if.else102
  tail call void (ptr, ...) @debug(ptr noundef nonnull @.str.68, i64 noundef %sub.ptr.div117)
  br label %cleanup

if.end157:                                        ; preds = %if.end148, %if.end101, %skipsym.exit, %if.end23, %if.then8, %if.then
  %sub.ptr.div160.pre-phi = phi i64 [ %sub.ptr.div, %if.then ], [ %sub.ptr.div18, %if.end23 ], [ %sub.ptr.div70, %if.end101 ], [ %sub.ptr.div117, %if.end148 ], [ %sub.ptr.div39, %skipsym.exit ], [ %sub.ptr.div, %if.then8 ]
  %lt.2 = phi i32 [ %call2, %if.then ], [ %call19, %if.end23 ], [ %lt.0, %if.end101 ], [ %lt.1, %if.end148 ], [ %cond47, %skipsym.exit ], [ %cond, %if.then8 ]
  %43 = load ptr, ptr %cp, align 8, !tbaa !5
  store ptr %43, ptr %cpp, align 8, !tbaa !5
  %44 = load i32, ptr %valp, align 4, !tbaa !10
  tail call void (ptr, ...) @debug(ptr noundef nonnull @.str.52, i64 noundef %sub.ptr.div160.pre-phi, i32 noundef %44)
  br label %cleanup

cleanup:                                          ; preds = %if.end157, %if.else149, %lor.lhs.false, %if.else130, %land.lhs.true95, %if.then36, %if.end23, %if.then14, %if.then
  %retval.0 = phi i32 [ %lt.2, %if.end157 ], [ 22, %if.else149 ], [ %call2, %if.then ], [ 22, %if.then14 ], [ 22, %if.end23 ], [ 22, %if.then36 ], [ 22, %land.lhs.true95 ], [ 22, %lor.lhs.false ], [ 22, %if.else130 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ep) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cp) #19
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define internal i32 @op_le(ptr nocapture noundef writeonly %p, i32 noundef %at, i32 noundef %a, i32 noundef %bt, i32 noundef %b) #12 {
entry:
  %cmp.i = icmp eq i32 %at, 2
  %cmp1.i = icmp eq i32 %bt, 2
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %op_strict.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %cmp = icmp sle i32 %a, %b
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %p, align 4, !tbaa !10
  %cond.i = select i1 %cmp, i32 3, i32 4
  br label %op_strict.exit

op_strict.exit:                                   ; preds = %if.end.i, %entry
  %retval.0.i = phi i32 [ %cond.i, %if.end.i ], [ 2, %entry ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define internal i32 @op_ge(ptr nocapture noundef writeonly %p, i32 noundef %at, i32 noundef %a, i32 noundef %bt, i32 noundef %b) #12 {
entry:
  %cmp.i = icmp eq i32 %at, 2
  %cmp1.i = icmp eq i32 %bt, 2
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %op_strict.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %cmp = icmp sge i32 %a, %b
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %p, align 4, !tbaa !10
  %cond.i = select i1 %cmp, i32 3, i32 4
  br label %op_strict.exit

op_strict.exit:                                   ; preds = %if.end.i, %entry
  %retval.0.i = phi i32 [ %cond.i, %if.end.i ], [ 2, %entry ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define internal i32 @op_lt(ptr nocapture noundef writeonly %p, i32 noundef %at, i32 noundef %a, i32 noundef %bt, i32 noundef %b) #12 {
entry:
  %cmp.i = icmp eq i32 %at, 2
  %cmp1.i = icmp eq i32 %bt, 2
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %op_strict.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %cmp = icmp slt i32 %a, %b
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %p, align 4, !tbaa !10
  %cond.i = select i1 %cmp, i32 3, i32 4
  br label %op_strict.exit

op_strict.exit:                                   ; preds = %if.end.i, %entry
  %retval.0.i = phi i32 [ %cond.i, %if.end.i ], [ 2, %entry ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define internal i32 @op_gt(ptr nocapture noundef writeonly %p, i32 noundef %at, i32 noundef %a, i32 noundef %bt, i32 noundef %b) #12 {
entry:
  %cmp.i = icmp eq i32 %at, 2
  %cmp1.i = icmp eq i32 %bt, 2
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %op_strict.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %cmp = icmp sgt i32 %a, %b
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %p, align 4, !tbaa !10
  %cond.i = select i1 %cmp, i32 3, i32 4
  br label %op_strict.exit

op_strict.exit:                                   ; preds = %if.end.i, %entry
  %retval.0.i = phi i32 [ %cond.i, %if.end.i ], [ 2, %entry ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define internal fastcc ptr @skipargs(ptr noundef %cp) unnamed_addr #3 {
entry:
  %call = tail call fastcc ptr @skipcomment(ptr noundef %cp)
  %0 = load i8, ptr %call, align 1, !tbaa !9
  %cmp.not = icmp eq i8 %0, 40
  br i1 %cmp.not, label %do.body, label %cleanup

do.body:                                          ; preds = %land.rhs, %entry
  %1 = phi i8 [ %2, %land.rhs ], [ 40, %entry ]
  %cp.addr.0 = phi ptr [ %call12, %land.rhs ], [ %call, %entry ]
  %level.0 = phi i32 [ %level.2, %land.rhs ], [ 0, %entry ]
  %cmp3 = icmp eq i8 %1, 40
  %inc = zext i1 %cmp3 to i32
  %spec.select = add nsw i32 %level.0, %inc
  %cmp8 = icmp eq i8 %1, 41
  %dec = sext i1 %cmp8 to i32
  %level.2 = add nsw i32 %spec.select, %dec
  %add.ptr = getelementptr inbounds i8, ptr %cp.addr.0, i64 1
  %call12 = tail call fastcc ptr @skipcomment(ptr noundef nonnull %add.ptr)
  %cond = icmp eq i32 %level.2, 0
  br i1 %cond, label %cleanup, label %land.rhs

land.rhs:                                         ; preds = %do.body
  %2 = load i8, ptr %call12, align 1, !tbaa !9
  %cmp16.not = icmp eq i8 %2, 0
  br i1 %cmp16.not, label %cleanup, label %do.body

cleanup:                                          ; preds = %land.rhs, %do.body, %entry
  %retval.0 = phi ptr [ %call, %entry ], [ %cp, %land.rhs ], [ %call12, %do.body ]
  ret ptr %retval.0
}

; Function Attrs: nounwind uwtable
define internal void @Itrue() #3 {
entry:
  tail call void @Ftrue()
  %0 = load i32, ptr @depth, align 4, !tbaa !10
  %idxprom.i = sext i32 %0 to i64
  %arrayidx.i = getelementptr inbounds [64 x i8], ptr @ignoring, i64 0, i64 %idxprom.i
  store i8 1, ptr %arrayidx.i, align 1, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ifalse() #3 {
entry:
  tail call void @Ffalse()
  %0 = load i32, ptr @depth, align 4, !tbaa !10
  %idxprom.i = sext i32 %0 to i64
  %arrayidx.i = getelementptr inbounds [64 x i8], ptr @ignoring, i64 0, i64 %idxprom.i
  store i8 1, ptr %arrayidx.i, align 1, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Fpass() #3 {
entry:
  %0 = load i32, ptr @depth, align 4, !tbaa !10
  %cmp.i = icmp sgt i32 %0, 63
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  tail call void @abort() #21
  unreachable

if.end.i:                                         ; preds = %entry
  %cmp1.i = icmp eq i32 %0, 63
  br i1 %cmp1.i, label %if.end.i.i, label %nest.exit

if.end.i.i:                                       ; preds = %if.end.i
  %1 = load ptr, ptr @filename, align 8, !tbaa !5
  %2 = load i32, ptr @linenum, align 4, !tbaa !10
  %3 = load i32, ptr getelementptr inbounds ([64 x i32], ptr @stifline, i64 0, i64 63), align 4, !tbaa !10
  tail call void (ptr, ...) @warnx(ptr noundef nonnull @.str.38, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.79, i32 noundef %3, i32 noundef 63) #19
  tail call fastcc void @closeout() #19
  tail call void (i32, ptr, ...) @errx(i32 noundef 2, ptr noundef nonnull @.str.39) #21
  unreachable

nest.exit:                                        ; preds = %if.end.i
  %add.i = add nsw i32 %0, 1
  store i32 %add.i, ptr @depth, align 4, !tbaa !10
  %4 = load i32, ptr @linenum, align 4, !tbaa !10
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds [64 x i32], ptr @stifline, i64 0, i64 %idxprom.i
  store i32 %4, ptr %arrayidx.i, align 4, !tbaa !10
  tail call fastcc void @flushline(i1 noundef zeroext true) #19
  %5 = load i32, ptr @depth, align 4, !tbaa !10
  %cmp.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %Pelif.exit

if.then.i.i:                                      ; preds = %nest.exit
  tail call void @abort() #21
  unreachable

Pelif.exit:                                       ; preds = %nest.exit
  %sub.i.i = add nsw i32 %5, -1
  %idxprom.i.i = sext i32 %sub.i.i to i64
  %arrayidx.i.i = getelementptr inbounds [64 x i8], ptr @ignoring, i64 0, i64 %idxprom.i.i
  %6 = load i8, ptr %arrayidx.i.i, align 1, !tbaa !16, !range !21
  %idxprom1.i.i = sext i32 %5 to i64
  %arrayidx2.i.i = getelementptr inbounds [64 x i8], ptr @ignoring, i64 0, i64 %idxprom1.i.i
  store i8 %6, ptr %arrayidx2.i.i, align 1, !tbaa !16
  %arrayidx.i2.i = getelementptr inbounds [64 x i32], ptr @ifstate, i64 0, i64 %idxprom1.i.i
  store i32 3, ptr %arrayidx.i2.i, align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ftrue() #3 {
entry:
  %0 = load i32, ptr @depth, align 4, !tbaa !10
  %cmp.i = icmp sgt i32 %0, 63
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  tail call void @abort() #21
  unreachable

if.end.i:                                         ; preds = %entry
  %cmp1.i = icmp eq i32 %0, 63
  br i1 %cmp1.i, label %if.end.i.i, label %nest.exit

if.end.i.i:                                       ; preds = %if.end.i
  %1 = load ptr, ptr @filename, align 8, !tbaa !5
  %2 = load i32, ptr @linenum, align 4, !tbaa !10
  %3 = load i32, ptr getelementptr inbounds ([64 x i32], ptr @stifline, i64 0, i64 63), align 4, !tbaa !10
  tail call void (ptr, ...) @warnx(ptr noundef nonnull @.str.38, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.79, i32 noundef %3, i32 noundef 63) #19
  tail call fastcc void @closeout() #19
  tail call void (i32, ptr, ...) @errx(i32 noundef 2, ptr noundef nonnull @.str.39) #21
  unreachable

nest.exit:                                        ; preds = %if.end.i
  %add.i = add nsw i32 %0, 1
  store i32 %add.i, ptr @depth, align 4, !tbaa !10
  %4 = load i32, ptr @linenum, align 4, !tbaa !10
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds [64 x i32], ptr @stifline, i64 0, i64 %idxprom.i
  store i32 %4, ptr %arrayidx.i, align 4, !tbaa !10
  tail call fastcc void @flushline(i1 noundef zeroext false) #19
  %5 = load i32, ptr @depth, align 4, !tbaa !10
  %cmp.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %Strue.exit

if.then.i.i:                                      ; preds = %nest.exit
  tail call void @abort() #21
  unreachable

Strue.exit:                                       ; preds = %nest.exit
  %sub.i.i = add nsw i32 %5, -1
  %idxprom.i.i = sext i32 %sub.i.i to i64
  %arrayidx.i.i = getelementptr inbounds [64 x i8], ptr @ignoring, i64 0, i64 %idxprom.i.i
  %6 = load i8, ptr %arrayidx.i.i, align 1, !tbaa !16, !range !21
  %idxprom1.i.i = sext i32 %5 to i64
  %arrayidx2.i.i = getelementptr inbounds [64 x i8], ptr @ignoring, i64 0, i64 %idxprom1.i.i
  store i8 %6, ptr %arrayidx2.i.i, align 1, !tbaa !16
  %arrayidx.i2.i = getelementptr inbounds [64 x i32], ptr @ifstate, i64 0, i64 %idxprom1.i.i
  store i32 2, ptr %arrayidx.i2.i, align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ffalse() #3 {
entry:
  %0 = load i32, ptr @depth, align 4, !tbaa !10
  %cmp.i = icmp sgt i32 %0, 63
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  tail call void @abort() #21
  unreachable

if.end.i:                                         ; preds = %entry
  %cmp1.i = icmp eq i32 %0, 63
  br i1 %cmp1.i, label %if.end.i.i, label %nest.exit

if.end.i.i:                                       ; preds = %if.end.i
  %1 = load ptr, ptr @filename, align 8, !tbaa !5
  %2 = load i32, ptr @linenum, align 4, !tbaa !10
  %3 = load i32, ptr getelementptr inbounds ([64 x i32], ptr @stifline, i64 0, i64 63), align 4, !tbaa !10
  tail call void (ptr, ...) @warnx(ptr noundef nonnull @.str.38, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.79, i32 noundef %3, i32 noundef 63) #19
  tail call fastcc void @closeout() #19
  tail call void (i32, ptr, ...) @errx(i32 noundef 2, ptr noundef nonnull @.str.39) #21
  unreachable

nest.exit:                                        ; preds = %if.end.i
  %add.i = add nsw i32 %0, 1
  store i32 %add.i, ptr @depth, align 4, !tbaa !10
  %4 = load i32, ptr @linenum, align 4, !tbaa !10
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds [64 x i32], ptr @stifline, i64 0, i64 %idxprom.i
  store i32 %4, ptr %arrayidx.i, align 4, !tbaa !10
  tail call fastcc void @flushline(i1 noundef zeroext false) #19
  %5 = load i32, ptr @depth, align 4, !tbaa !10
  %cmp.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %Sfalse.exit

if.then.i.i:                                      ; preds = %nest.exit
  tail call void @abort() #21
  unreachable

Sfalse.exit:                                      ; preds = %nest.exit
  %sub.i.i = add nsw i32 %5, -1
  %idxprom.i.i = sext i32 %sub.i.i to i64
  %arrayidx.i.i = getelementptr inbounds [64 x i8], ptr @ignoring, i64 0, i64 %idxprom.i.i
  %6 = load i8, ptr %arrayidx.i.i, align 1, !tbaa !16, !range !21
  %idxprom1.i.i = sext i32 %5 to i64
  %arrayidx2.i.i = getelementptr inbounds [64 x i8], ptr @ignoring, i64 0, i64 %idxprom1.i.i
  store i8 %6, ptr %arrayidx2.i.i, align 1, !tbaa !16
  %arrayidx.i2.i = getelementptr inbounds [64 x i32], ptr @ifstate, i64 0, i64 %idxprom1.i.i
  store i32 1, ptr %arrayidx.i2.i, align 4, !tbaa !9
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define internal void @Eelif() #0 {
entry:
  %0 = load i32, ptr @depth, align 4, !tbaa !10
  %cmp.i = icmp eq i32 %0, 0
  %1 = load ptr, ptr @filename, align 8, !tbaa !5
  %2 = load i32, ptr @linenum, align 4, !tbaa !10
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  tail call void (ptr, ...) @warnx(ptr noundef nonnull @.str.37, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.80) #19
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %0 to i64
  %arrayidx.i = getelementptr inbounds [64 x i32], ptr @stifline, i64 0, i64 %idxprom.i
  %3 = load i32, ptr %arrayidx.i, align 4, !tbaa !10
  tail call void (ptr, ...) @warnx(ptr noundef nonnull @.str.38, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.80, i32 noundef %3, i32 noundef %0) #19
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  tail call fastcc void @closeout() #19
  tail call void (i32, ptr, ...) @errx(i32 noundef 2, ptr noundef nonnull @.str.39) #21
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define internal void @Eelse() #0 {
entry:
  %0 = load i32, ptr @depth, align 4, !tbaa !10
  %cmp.i = icmp eq i32 %0, 0
  %1 = load ptr, ptr @filename, align 8, !tbaa !5
  %2 = load i32, ptr @linenum, align 4, !tbaa !10
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  tail call void (ptr, ...) @warnx(ptr noundef nonnull @.str.37, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.81) #19
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %0 to i64
  %arrayidx.i = getelementptr inbounds [64 x i32], ptr @stifline, i64 0, i64 %idxprom.i
  %3 = load i32, ptr %arrayidx.i, align 4, !tbaa !10
  tail call void (ptr, ...) @warnx(ptr noundef nonnull @.str.38, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.81, i32 noundef %3, i32 noundef %0) #19
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  tail call fastcc void @closeout() #19
  tail call void (i32, ptr, ...) @errx(i32 noundef 2, ptr noundef nonnull @.str.39) #21
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define internal void @Eendif() #0 {
entry:
  %0 = load i32, ptr @depth, align 4, !tbaa !10
  %cmp.i = icmp eq i32 %0, 0
  %1 = load ptr, ptr @filename, align 8, !tbaa !5
  %2 = load i32, ptr @linenum, align 4, !tbaa !10
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  tail call void (ptr, ...) @warnx(ptr noundef nonnull @.str.37, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.82) #19
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %0 to i64
  %arrayidx.i = getelementptr inbounds [64 x i32], ptr @stifline, i64 0, i64 %idxprom.i
  %3 = load i32, ptr %arrayidx.i, align 4, !tbaa !10
  tail call void (ptr, ...) @warnx(ptr noundef nonnull @.str.38, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.82, i32 noundef %3, i32 noundef %0) #19
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  tail call fastcc void @closeout() #19
  tail call void (i32, ptr, ...) @errx(i32 noundef 2, ptr noundef nonnull @.str.39) #21
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @Oiffy() #3 {
entry:
  %.b1 = load i1, ptr @iocccok, align 1
  br i1 %.b1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @depth, align 4, !tbaa !10
  %cmp.i.i = icmp eq i32 %0, 0
  %1 = load ptr, ptr @filename, align 8, !tbaa !5
  %2 = load i32, ptr @linenum, align 4, !tbaa !10
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then
  tail call void (ptr, ...) @warnx(ptr noundef nonnull @.str.37, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.42) #19
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then
  %idxprom.i.i = sext i32 %0 to i64
  %arrayidx.i.i = getelementptr inbounds [64 x i32], ptr @stifline, i64 0, i64 %idxprom.i.i
  %3 = load i32, ptr %arrayidx.i.i, align 4, !tbaa !10
  tail call void (ptr, ...) @warnx(ptr noundef nonnull @.str.38, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.42, i32 noundef %3, i32 noundef %0) #19
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  tail call fastcc void @closeout() #19
  tail call void (i32, ptr, ...) @errx(i32 noundef 2, ptr noundef nonnull @.str.39) #21
  unreachable

if.end:                                           ; preds = %entry
  tail call void @Fpass()
  %4 = load i32, ptr @depth, align 4, !tbaa !10
  %idxprom.i = sext i32 %4 to i64
  %arrayidx.i = getelementptr inbounds [64 x i8], ptr @ignoring, i64 0, i64 %idxprom.i
  store i8 1, ptr %arrayidx.i, align 1, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Oif() #3 {
entry:
  %.b1 = load i1, ptr @iocccok, align 1
  br i1 %.b1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @depth, align 4, !tbaa !10
  %cmp.i.i = icmp eq i32 %0, 0
  %1 = load ptr, ptr @filename, align 8, !tbaa !5
  %2 = load i32, ptr @linenum, align 4, !tbaa !10
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then
  tail call void (ptr, ...) @warnx(ptr noundef nonnull @.str.37, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.42) #19
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then
  %idxprom.i.i = sext i32 %0 to i64
  %arrayidx.i.i = getelementptr inbounds [64 x i32], ptr @stifline, i64 0, i64 %idxprom.i.i
  %3 = load i32, ptr %arrayidx.i.i, align 4, !tbaa !10
  tail call void (ptr, ...) @warnx(ptr noundef nonnull @.str.38, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.42, i32 noundef %3, i32 noundef %0) #19
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  tail call fastcc void @closeout() #19
  tail call void (i32, ptr, ...) @errx(i32 noundef 2, ptr noundef nonnull @.str.39) #21
  unreachable

if.end:                                           ; preds = %entry
  tail call void @Fpass()
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @print() #14 {
entry:
  tail call fastcc void @flushline(i1 noundef zeroext true)
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define internal void @done() #0 {
entry:
  %0 = load i32, ptr @incomment, align 4, !tbaa !9
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @depth, align 4, !tbaa !10
  %cmp.i = icmp eq i32 %1, 0
  %2 = load ptr, ptr @filename, align 8, !tbaa !5
  %3 = load i32, ptr @linenum, align 4, !tbaa !10
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  tail call void (ptr, ...) @warnx(ptr noundef nonnull @.str.37, ptr noundef %2, i32 noundef %3, ptr noundef nonnull @.str.85) #19
  br label %if.end.i

if.else.i:                                        ; preds = %if.then
  %idxprom.i = sext i32 %1 to i64
  %arrayidx.i = getelementptr inbounds [64 x i32], ptr @stifline, i64 0, i64 %idxprom.i
  %4 = load i32, ptr %arrayidx.i, align 4, !tbaa !10
  tail call void (ptr, ...) @warnx(ptr noundef nonnull @.str.38, ptr noundef %2, i32 noundef %3, ptr noundef nonnull @.str.85, i32 noundef %4, i32 noundef %1) #19
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  tail call fastcc void @closeout() #19
  tail call void (i32, ptr, ...) @errx(i32 noundef 2, ptr noundef nonnull @.str.39) #21
  unreachable

if.end:                                           ; preds = %entry
  tail call fastcc void @closeout()
  %5 = load i8, ptr @overwriting, align 1, !tbaa !16, !range !21
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr @ofilename, align 8, !tbaa !5
  %call = tail call i32 @rename(ptr noundef nonnull @tempname, ptr noundef %6) #19
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %land.lhs.true
  tail call void (ptr, ...) @warn(ptr noundef nonnull @.str.86) #19
  %call3 = tail call i32 @unlink(ptr noundef nonnull @tempname) #19
  %7 = load ptr, ptr @ofilename, align 8, !tbaa !5
  tail call void (i32, ptr, ...) @errx(i32 noundef 2, ptr noundef nonnull @.str.41, ptr noundef %7) #21
  unreachable

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %.b = load i1, ptr @exitstat, align 4
  %8 = zext i1 %.b to i32
  tail call void @exit(i32 noundef %8) #21
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @Idrop() #3 {
entry:
  tail call void @Fdrop()
  %0 = load i32, ptr @depth, align 4, !tbaa !10
  %idxprom.i = sext i32 %0 to i64
  %arrayidx.i = getelementptr inbounds [64 x i8], ptr @ignoring, i64 0, i64 %idxprom.i
  store i8 1, ptr %arrayidx.i, align 1, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Fdrop() #3 {
entry:
  %0 = load i32, ptr @depth, align 4, !tbaa !10
  %cmp.i = icmp sgt i32 %0, 63
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  tail call void @abort() #21
  unreachable

if.end.i:                                         ; preds = %entry
  %cmp1.i = icmp eq i32 %0, 63
  br i1 %cmp1.i, label %if.end.i.i, label %nest.exit

if.end.i.i:                                       ; preds = %if.end.i
  %1 = load ptr, ptr @filename, align 8, !tbaa !5
  %2 = load i32, ptr @linenum, align 4, !tbaa !10
  %3 = load i32, ptr getelementptr inbounds ([64 x i32], ptr @stifline, i64 0, i64 63), align 4, !tbaa !10
  tail call void (ptr, ...) @warnx(ptr noundef nonnull @.str.38, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.79, i32 noundef %3, i32 noundef 63) #19
  tail call fastcc void @closeout() #19
  tail call void (i32, ptr, ...) @errx(i32 noundef 2, ptr noundef nonnull @.str.39) #21
  unreachable

nest.exit:                                        ; preds = %if.end.i
  %add.i = add nsw i32 %0, 1
  store i32 %add.i, ptr @depth, align 4, !tbaa !10
  %4 = load i32, ptr @linenum, align 4, !tbaa !10
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds [64 x i32], ptr @stifline, i64 0, i64 %idxprom.i
  store i32 %4, ptr %arrayidx.i, align 4, !tbaa !10
  tail call fastcc void @flushline(i1 noundef zeroext false) #19
  %5 = load i32, ptr @depth, align 4, !tbaa !10
  %cmp.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %Dfalse.exit

if.then.i.i:                                      ; preds = %nest.exit
  tail call void @abort() #21
  unreachable

Dfalse.exit:                                      ; preds = %nest.exit
  %sub.i.i = add nsw i32 %5, -1
  %idxprom.i.i = sext i32 %sub.i.i to i64
  %arrayidx.i.i = getelementptr inbounds [64 x i8], ptr @ignoring, i64 0, i64 %idxprom.i.i
  %6 = load i8, ptr %arrayidx.i.i, align 1, !tbaa !16, !range !21
  %idxprom1.i.i = sext i32 %5 to i64
  %arrayidx2.i.i = getelementptr inbounds [64 x i8], ptr @ignoring, i64 0, i64 %idxprom1.i.i
  store i8 %6, ptr %arrayidx2.i.i, align 1, !tbaa !16
  %arrayidx.i2.i = getelementptr inbounds [64 x i32], ptr @ifstate, i64 0, i64 %idxprom1.i.i
  store i32 9, ptr %arrayidx.i2.i, align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Mpass() #3 {
entry:
  %0 = load ptr, ptr @keyword, align 8, !tbaa !5
  store i32 538994281, ptr %0, align 1
  tail call fastcc void @flushline(i1 noundef zeroext true) #19
  %1 = load i32, ptr @depth, align 4, !tbaa !10
  %cmp.i.i = icmp eq i32 %1, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %Pelif.exit

if.then.i.i:                                      ; preds = %entry
  tail call void @abort() #21
  unreachable

Pelif.exit:                                       ; preds = %entry
  %sub.i.i = add nsw i32 %1, -1
  %idxprom.i.i = sext i32 %sub.i.i to i64
  %arrayidx.i.i = getelementptr inbounds [64 x i8], ptr @ignoring, i64 0, i64 %idxprom.i.i
  %2 = load i8, ptr %arrayidx.i.i, align 1, !tbaa !16, !range !21
  %idxprom1.i.i = sext i32 %1 to i64
  %arrayidx2.i.i = getelementptr inbounds [64 x i8], ptr @ignoring, i64 0, i64 %idxprom1.i.i
  store i8 %2, ptr %arrayidx2.i.i, align 1, !tbaa !16
  %arrayidx.i2.i = getelementptr inbounds [64 x i32], ptr @ifstate, i64 0, i64 %idxprom1.i.i
  store i32 3, ptr %arrayidx.i2.i, align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Strue() #3 {
entry:
  tail call fastcc void @flushline(i1 noundef zeroext false) #19
  %0 = load i32, ptr @depth, align 4, !tbaa !10
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %if.then.i, label %ignoreoff.exit

if.then.i:                                        ; preds = %entry
  tail call void @abort() #21
  unreachable

ignoreoff.exit:                                   ; preds = %entry
  %sub.i = add nsw i32 %0, -1
  %idxprom.i = sext i32 %sub.i to i64
  %arrayidx.i = getelementptr inbounds [64 x i8], ptr @ignoring, i64 0, i64 %idxprom.i
  %1 = load i8, ptr %arrayidx.i, align 1, !tbaa !16, !range !21
  %idxprom1.i = sext i32 %0 to i64
  %arrayidx2.i = getelementptr inbounds [64 x i8], ptr @ignoring, i64 0, i64 %idxprom1.i
  store i8 %1, ptr %arrayidx2.i, align 1, !tbaa !16
  %arrayidx.i2 = getelementptr inbounds [64 x i32], ptr @ifstate, i64 0, i64 %idxprom1.i
  store i32 2, ptr %arrayidx.i2, align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Sfalse() #3 {
entry:
  tail call fastcc void @flushline(i1 noundef zeroext false) #19
  %0 = load i32, ptr @depth, align 4, !tbaa !10
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %if.then.i, label %ignoreoff.exit

if.then.i:                                        ; preds = %entry
  tail call void @abort() #21
  unreachable

ignoreoff.exit:                                   ; preds = %entry
  %sub.i = add nsw i32 %0, -1
  %idxprom.i = sext i32 %sub.i to i64
  %arrayidx.i = getelementptr inbounds [64 x i8], ptr @ignoring, i64 0, i64 %idxprom.i
  %1 = load i8, ptr %arrayidx.i, align 1, !tbaa !16, !range !21
  %idxprom1.i = sext i32 %0 to i64
  %arrayidx2.i = getelementptr inbounds [64 x i8], ptr @ignoring, i64 0, i64 %idxprom1.i
  store i8 %1, ptr %arrayidx2.i, align 1, !tbaa !16
  %arrayidx.i2 = getelementptr inbounds [64 x i32], ptr @ifstate, i64 0, i64 %idxprom1.i
  store i32 1, ptr %arrayidx.i2, align 4, !tbaa !9
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @Selse() #14 {
entry:
  tail call fastcc void @flushline(i1 noundef zeroext false) #19
  %0 = load i32, ptr @depth, align 4, !tbaa !10
  %idxprom.i = sext i32 %0 to i64
  %arrayidx.i = getelementptr inbounds [64 x i32], ptr @ifstate, i64 0, i64 %idxprom.i
  store i32 8, ptr %arrayidx.i, align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Dendif() #3 {
entry:
  tail call fastcc void @flushline(i1 noundef zeroext false) #19
  %0 = load i32, ptr @depth, align 4, !tbaa !10
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %if.then.i, label %unnest.exit

if.then.i:                                        ; preds = %entry
  tail call void @abort() #21
  unreachable

unnest.exit:                                      ; preds = %entry
  %sub.i = add nsw i32 %0, -1
  store i32 %sub.i, ptr @depth, align 4, !tbaa !10
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @drop() #14 {
entry:
  tail call fastcc void @flushline(i1 noundef zeroext false)
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define internal void @Eeof() #0 {
entry:
  %0 = load i32, ptr @depth, align 4, !tbaa !10
  %cmp.i = icmp eq i32 %0, 0
  %1 = load ptr, ptr @filename, align 8, !tbaa !5
  %2 = load i32, ptr @linenum, align 4, !tbaa !10
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  tail call void (ptr, ...) @warnx(ptr noundef nonnull @.str.37, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.88) #19
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %0 to i64
  %arrayidx.i = getelementptr inbounds [64 x i32], ptr @stifline, i64 0, i64 %idxprom.i
  %3 = load i32, ptr %arrayidx.i, align 4, !tbaa !10
  tail call void (ptr, ...) @warnx(ptr noundef nonnull @.str.38, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.88, i32 noundef %3, i32 noundef %0) #19
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  tail call fastcc void @closeout() #19
  tail call void (i32, ptr, ...) @errx(i32 noundef 2, ptr noundef nonnull @.str.39) #21
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @Dfalse() #3 {
entry:
  tail call fastcc void @flushline(i1 noundef zeroext false) #19
  %0 = load i32, ptr @depth, align 4, !tbaa !10
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %if.then.i, label %ignoreoff.exit

if.then.i:                                        ; preds = %entry
  tail call void @abort() #21
  unreachable

ignoreoff.exit:                                   ; preds = %entry
  %sub.i = add nsw i32 %0, -1
  %idxprom.i = sext i32 %sub.i to i64
  %arrayidx.i = getelementptr inbounds [64 x i8], ptr @ignoring, i64 0, i64 %idxprom.i
  %1 = load i8, ptr %arrayidx.i, align 1, !tbaa !16, !range !21
  %idxprom1.i = sext i32 %0 to i64
  %arrayidx2.i = getelementptr inbounds [64 x i8], ptr @ignoring, i64 0, i64 %idxprom1.i
  store i8 %1, ptr %arrayidx2.i, align 1, !tbaa !16
  %arrayidx.i2 = getelementptr inbounds [64 x i32], ptr @ifstate, i64 0, i64 %idxprom1.i
  store i32 9, ptr %arrayidx.i2, align 4, !tbaa !9
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @Delse() #14 {
entry:
  tail call fastcc void @flushline(i1 noundef zeroext false) #19
  %0 = load i32, ptr @depth, align 4, !tbaa !10
  %idxprom.i = sext i32 %0 to i64
  %arrayidx.i = getelementptr inbounds [64 x i32], ptr @ifstate, i64 0, i64 %idxprom.i
  store i32 7, ptr %arrayidx.i, align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Pelif() #3 {
entry:
  tail call fastcc void @flushline(i1 noundef zeroext true) #19
  %0 = load i32, ptr @depth, align 4, !tbaa !10
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %if.then.i, label %ignoreoff.exit

if.then.i:                                        ; preds = %entry
  tail call void @abort() #21
  unreachable

ignoreoff.exit:                                   ; preds = %entry
  %sub.i = add nsw i32 %0, -1
  %idxprom.i = sext i32 %sub.i to i64
  %arrayidx.i = getelementptr inbounds [64 x i8], ptr @ignoring, i64 0, i64 %idxprom.i
  %1 = load i8, ptr %arrayidx.i, align 1, !tbaa !16, !range !21
  %idxprom1.i = sext i32 %0 to i64
  %arrayidx2.i = getelementptr inbounds [64 x i8], ptr @ignoring, i64 0, i64 %idxprom1.i
  store i8 %1, ptr %arrayidx2.i, align 1, !tbaa !16
  %arrayidx.i2 = getelementptr inbounds [64 x i32], ptr @ifstate, i64 0, i64 %idxprom1.i
  store i32 3, ptr %arrayidx.i2, align 4, !tbaa !9
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @Mtrue() #14 {
entry:
  %0 = load ptr, ptr @keyword, align 8, !tbaa !5
  %sub.ptr.rhs.cast.i = ptrtoint ptr %0 to i64
  %sub.ptr.sub.i = sub i64 ptrtoint (ptr getelementptr inbounds ([4106 x i8], ptr @tline, i64 1, i64 0) to i64), %sub.ptr.rhs.cast.i
  %1 = load ptr, ptr @newline, align 8, !tbaa !5
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %sub.ptr.sub.i, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.21, ptr noundef %1) #19
  tail call fastcc void @flushline(i1 noundef zeroext true) #19
  %2 = load i32, ptr @depth, align 4, !tbaa !10
  %idxprom.i = sext i32 %2 to i64
  %arrayidx.i = getelementptr inbounds [64 x i32], ptr @ifstate, i64 0, i64 %idxprom.i
  store i32 5, ptr %arrayidx.i, align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Delif() #3 {
entry:
  tail call fastcc void @flushline(i1 noundef zeroext false) #19
  %0 = load i32, ptr @depth, align 4, !tbaa !10
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %if.then.i, label %ignoreoff.exit

if.then.i:                                        ; preds = %entry
  tail call void @abort() #21
  unreachable

ignoreoff.exit:                                   ; preds = %entry
  %sub.i = add nsw i32 %0, -1
  %idxprom.i = sext i32 %sub.i to i64
  %arrayidx.i = getelementptr inbounds [64 x i8], ptr @ignoring, i64 0, i64 %idxprom.i
  %1 = load i8, ptr %arrayidx.i, align 1, !tbaa !16, !range !21
  %idxprom1.i = sext i32 %0 to i64
  %arrayidx2.i = getelementptr inbounds [64 x i8], ptr @ignoring, i64 0, i64 %idxprom1.i
  store i8 %1, ptr %arrayidx2.i, align 1, !tbaa !16
  %arrayidx.i2 = getelementptr inbounds [64 x i32], ptr @ifstate, i64 0, i64 %idxprom1.i
  store i32 4, ptr %arrayidx.i2, align 4, !tbaa !9
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @Pelse() #14 {
entry:
  tail call fastcc void @flushline(i1 noundef zeroext true) #19
  %0 = load i32, ptr @depth, align 4, !tbaa !10
  %idxprom.i = sext i32 %0 to i64
  %arrayidx.i = getelementptr inbounds [64 x i32], ptr @ifstate, i64 0, i64 %idxprom.i
  store i32 6, ptr %arrayidx.i, align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Pendif() #3 {
entry:
  tail call fastcc void @flushline(i1 noundef zeroext true) #19
  %0 = load i32, ptr @depth, align 4, !tbaa !10
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %if.then.i, label %unnest.exit

if.then.i:                                        ; preds = %entry
  tail call void @abort() #21
  unreachable

unnest.exit:                                      ; preds = %entry
  %sub.i = add nsw i32 %0, -1
  store i32 %sub.i, ptr @depth, align 4, !tbaa !10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Oelif() #3 {
entry:
  %.b1 = load i1, ptr @iocccok, align 1
  br i1 %.b1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @depth, align 4, !tbaa !10
  %cmp.i.i = icmp eq i32 %0, 0
  %1 = load ptr, ptr @filename, align 8, !tbaa !5
  %2 = load i32, ptr @linenum, align 4, !tbaa !10
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then
  tail call void (ptr, ...) @warnx(ptr noundef nonnull @.str.37, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.42) #19
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then
  %idxprom.i.i = sext i32 %0 to i64
  %arrayidx.i.i = getelementptr inbounds [64 x i32], ptr @stifline, i64 0, i64 %idxprom.i.i
  %3 = load i32, ptr %arrayidx.i.i, align 4, !tbaa !10
  tail call void (ptr, ...) @warnx(ptr noundef nonnull @.str.38, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.42, i32 noundef %3, i32 noundef %0) #19
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  tail call fastcc void @closeout() #19
  tail call void (i32, ptr, ...) @errx(i32 noundef 2, ptr noundef nonnull @.str.39) #21
  unreachable

if.end:                                           ; preds = %entry
  tail call fastcc void @flushline(i1 noundef zeroext true) #19
  %4 = load i32, ptr @depth, align 4, !tbaa !10
  %cmp.i.i2 = icmp eq i32 %4, 0
  br i1 %cmp.i.i2, label %if.then.i.i3, label %Pelif.exit

if.then.i.i3:                                     ; preds = %if.end
  tail call void @abort() #21
  unreachable

Pelif.exit:                                       ; preds = %if.end
  %sub.i.i = add nsw i32 %4, -1
  %idxprom.i.i4 = sext i32 %sub.i.i to i64
  %arrayidx.i.i5 = getelementptr inbounds [64 x i8], ptr @ignoring, i64 0, i64 %idxprom.i.i4
  %5 = load i8, ptr %arrayidx.i.i5, align 1, !tbaa !16, !range !21
  %idxprom1.i.i = sext i32 %4 to i64
  %arrayidx2.i.i = getelementptr inbounds [64 x i8], ptr @ignoring, i64 0, i64 %idxprom1.i.i
  store i8 %5, ptr %arrayidx2.i.i, align 1, !tbaa !16
  %arrayidx.i2.i = getelementptr inbounds [64 x i32], ptr @ifstate, i64 0, i64 %idxprom1.i.i
  store i32 3, ptr %arrayidx.i2.i, align 4, !tbaa !9
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @Melif() #14 {
entry:
  %0 = load ptr, ptr @keyword, align 8, !tbaa !5
  %sub.ptr.rhs.cast.i = ptrtoint ptr %0 to i64
  %sub.ptr.sub.i = sub i64 ptrtoint (ptr getelementptr inbounds ([4106 x i8], ptr @tline, i64 1, i64 0) to i64), %sub.ptr.rhs.cast.i
  %1 = load ptr, ptr @newline, align 8, !tbaa !5
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %sub.ptr.sub.i, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.22, ptr noundef %1) #19
  tail call fastcc void @flushline(i1 noundef zeroext true) #19
  %2 = load i32, ptr @depth, align 4, !tbaa !10
  %idxprom.i = sext i32 %2 to i64
  %arrayidx.i = getelementptr inbounds [64 x i32], ptr @ifstate, i64 0, i64 %idxprom.i
  store i32 9, ptr %arrayidx.i, align 4, !tbaa !9
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @Melse() #14 {
entry:
  %0 = load ptr, ptr @keyword, align 8, !tbaa !5
  %sub.ptr.rhs.cast.i = ptrtoint ptr %0 to i64
  %sub.ptr.sub.i = sub i64 ptrtoint (ptr getelementptr inbounds ([4106 x i8], ptr @tline, i64 1, i64 0) to i64), %sub.ptr.rhs.cast.i
  %1 = load ptr, ptr @newline, align 8, !tbaa !5
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %sub.ptr.sub.i, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.22, ptr noundef %1) #19
  tail call fastcc void @flushline(i1 noundef zeroext true) #19
  %2 = load i32, ptr @depth, align 4, !tbaa !10
  %idxprom.i = sext i32 %2 to i64
  %arrayidx.i = getelementptr inbounds [64 x i32], ptr @ifstate, i64 0, i64 %idxprom.i
  store i32 7, ptr %arrayidx.i, align 4, !tbaa !9
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @flushline(i1 noundef zeroext %keep) unnamed_addr #14 {
entry:
  %.b4748 = load i1, ptr @symlist, align 1
  br i1 %.b4748, label %if.end41, label %if.end

if.end:                                           ; preds = %entry
  %.b4449 = load i1, ptr @complement, align 1
  %xor50 = xor i1 %.b4449, %keep
  br i1 %xor50, label %if.then5, label %if.else31

if.then5:                                         ; preds = %if.end
  %call = tail call i64 @strspn(ptr noundef nonnull @tline, ptr noundef nonnull @.str.83) #22
  %arrayidx = getelementptr inbounds [4106 x i8], ptr @tline, i64 0, i64 %call
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %cmp = icmp eq i8 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then5
  %.b4354 = load i1, ptr @compblank, align 1
  br i1 %.b4354, label %land.lhs.true13, label %if.else

land.lhs.true13:                                  ; preds = %land.lhs.true
  %1 = load i32, ptr @blankcount, align 4, !tbaa !10
  %2 = load i32, ptr @blankmax, align 4, !tbaa !10
  %cmp14.not = icmp eq i32 %1, %2
  br i1 %cmp14.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %land.lhs.true13
  %3 = load i32, ptr @delcount, align 4, !tbaa !10
  %add = add nsw i32 %3, 1
  store i32 %add, ptr @delcount, align 4, !tbaa !10
  %add17 = add i32 %1, 1
  store i32 %add17, ptr @blankcount, align 4, !tbaa !10
  br label %if.end37

if.else:                                          ; preds = %land.lhs.true13, %land.lhs.true, %if.then5
  %.b4653 = load i1, ptr @lnnum, align 1
  %4 = load i32, ptr @delcount, align 4
  %cmp21 = icmp sgt i32 %4, 0
  %or.cond = select i1 %.b4653, i1 %cmp21, i1 false
  br i1 %or.cond, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.else
  %5 = load i32, ptr @linenum, align 4, !tbaa !10
  %6 = load ptr, ptr @newline, align 8, !tbaa !5
  %call24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.84, i32 noundef %5, ptr noundef %6)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.else
  %7 = load ptr, ptr @output, align 8, !tbaa !5
  %call26 = tail call i32 @fputs(ptr noundef nonnull @tline, ptr noundef %7)
  store i32 0, ptr @delcount, align 4, !tbaa !10
  %8 = load i32, ptr @blankcount, align 4
  %add29 = add i32 %8, 1
  %cond = select i1 %cmp, i32 %add29, i32 0
  store i32 %cond, ptr @blankcount, align 4, !tbaa !10
  store i32 %cond, ptr @blankmax, align 4, !tbaa !10
  br label %if.end37

if.else31:                                        ; preds = %if.end
  %.b51 = load i1, ptr @lnblank, align 1
  br i1 %.b51, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.else31
  %9 = load ptr, ptr @newline, align 8, !tbaa !5
  %10 = load ptr, ptr @output, align 8, !tbaa !5
  %call34 = tail call i32 @fputs(ptr noundef %9, ptr noundef %10)
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.else31
  store i1 true, ptr @exitstat, align 4
  %11 = load i32, ptr @delcount, align 4, !tbaa !10
  %add36 = add nsw i32 %11, 1
  store i32 %add36, ptr @delcount, align 4, !tbaa !10
  store i32 0, ptr @blankcount, align 4, !tbaa !10
  br label %if.end37

if.end37:                                         ; preds = %if.end35, %if.end25, %if.then16
  %.b4552 = load i1, ptr @debugging, align 1
  br i1 %.b4552, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end37
  %12 = load ptr, ptr @output, align 8, !tbaa !5
  %call40 = tail call i32 @fflush(ptr noundef %12)
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end37, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @rename(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

declare void @vwarnx(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #17

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare ptr @llvm.load.relative.i64(ptr, i64) #18

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { argmemonly nofree nounwind willreturn }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { nofree nounwind }
attributes #18 = { argmemonly nocallback nofree nosync nounwind readonly willreturn }
attributes #19 = { nounwind }
attributes #20 = { cold nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind readonly willreturn }
attributes #23 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !7, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"stat", !14, i64 0, !14, i64 8, !14, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !15, i64 72, !15, i64 88, !15, i64 104, !7, i64 120}
!14 = !{!"long", !7, i64 0}
!15 = !{!"timespec", !14, i64 0, !14, i64 8}
!16 = !{!17, !17, i64 0}
!17 = !{!"_Bool", !7, i64 0}
!18 = !{!13, !11, i64 24}
!19 = !{!20, !20, i64 0}
!20 = !{!"short", !7, i64 0}
!21 = !{i8 0, i8 2}
!22 = !{!23, !6, i64 0}
!23 = !{!"ops", !6, i64 0, !7, i64 8}
!24 = !{!25, !6, i64 0}
!25 = !{!"op", !6, i64 0, !6, i64 8}
!26 = !{!25, !6, i64 8}
