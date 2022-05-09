; ModuleID = '/llk/IR_all_yes/scripts/mod/modpost.c_pt.bc'
source_filename = "../scripts/mod/modpost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { ptr, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.buffer = type { ptr, i32, i32 }
%struct.dump_list = type { ptr, ptr }
%struct.module = type { ptr, i32, ptr, i32, i32, i32, i32, i32, %struct.buffer, [25 x i8], ptr, ptr, [0 x i8] }
%struct.symbol = type { ptr, ptr, i32, i32, ptr, i8, i32, [0 x i8] }
%struct.namespace_list = type { ptr, [0 x i8] }
%struct.Elf32_Rela = type { i32, i32, i32 }
%struct.elf_info = type { i64, ptr, ptr, ptr, ptr, i16, i16, ptr, ptr, i32, i32, i32, ptr, ptr }
%struct.Elf32_Ehdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.Elf32_Shdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Elf32_Sym = type { i32, i32, i32, i8, i8, i16 }
%struct.Elf32_Rel = type { i32, i32 }
%struct.sectioncheck = type { [20 x ptr], [20 x ptr], [20 x ptr], i32, [20 x ptr], ptr }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"WARNING: \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ERROR: \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"FATAL: \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"modpost: \00", align 1
@error_occurred = internal unnamed_addr global i1 false, align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Memory allocation failure: %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"malloc(st.st_size + 1)\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"realloc(buf->p, buf->size)\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"ei:mnT:o:awENd:\00", align 1
@external_module = internal unnamed_addr global i1 false, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"calloc(1, sizeof(**dump_read_iter))\00", align 1
@optarg = external local_unnamed_addr global ptr, align 8
@modversions = internal unnamed_addr global i1 false, align 4
@ignore_missing_files = internal unnamed_addr global i1 false, align 4
@all_versions = internal unnamed_addr global i1 false, align 4
@warn_unresolved = internal unnamed_addr global i1 false, align 4
@sec_mismatch_warn_only = internal unnamed_addr global i1 false, align 4
@allow_missing_ns_imports = internal unnamed_addr global i1 false, align 4
@optind = external local_unnamed_addr global i32, align 4
@modules = internal unnamed_addr global ptr null, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"%s.mod.c\00", align 1
@sec_mismatch_count = internal unnamed_addr global i32 0, align 4
@.str.10 = private unnamed_addr constant [85 x i8] c"Section mismatches detected.\0ASet CONFIG_SECTION_MISMATCH_WARN_ONLY=y to allow them.\0A\00", align 1
@symbolhash = internal unnamed_addr global [1024 x ptr] zeroinitializer, align 16
@.str.11 = private unnamed_addr constant [26 x i8] c"\22%s\22 [%s] is a static %s\0A\00", align 1
@nr_unresolved = internal unnamed_addr global i32 0, align 4
@.str.12 = private unnamed_addr constant [71 x i8] c"suppressed %u unresolved symbol warnings because there were too many)\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"parse error in symbol dump file\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"malloc(sizeof(*mod) + strlen(modname) + 1)\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"vmlinux\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"%s: '%s' exported twice. Previous export was in %s%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [4 x i8] c".ko\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"malloc(sizeof(*s) + strlen(name) + 1)\00", align 1
@export_list = internal unnamed_addr constant [3 x %struct.anon] [%struct.anon { ptr @.str.20, i32 0 }, %struct.anon { ptr @.str.21, i32 1 }, %struct.anon { ptr @.str.22, i32 2 }], align 16
@.str.20 = private unnamed_addr constant [14 x i8] c"EXPORT_SYMBOL\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"EXPORT_SYMBOL_GPL\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str.23 = private unnamed_addr constant [46 x i8] c"Could not update namespace(%s) for symbol %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"strdup(namespace)\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"strdup(modname)\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c".lto\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"license\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"missing MODULE_LICENSE() in %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"import_ns\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"__kstrtabns_\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"__crc_\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"module_layout\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"%s: %s (ignored)\0A\00", align 1
@.str.35 = private unnamed_addr constant [68 x i8] c"section header offset=%lu in file '%s' is bigger than filesize=%zu\0A\00", align 1
@.str.36 = private unnamed_addr constant [62 x i8] c"%s is truncated. sechdrs[i].sh_offset=%lu > sizeof(*hrd)=%zu\0A\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c".modinfo\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"%s has NOBITS .modinfo\0A\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"__ksymtab\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"__ksymtab_gpl\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"%s has no symtab?\0A\00", align 1
@.str.42 = private unnamed_addr constant [42 x i8] c"%s: SYMTAB_SHNDX has bad sh_link: %u!=%u\0A\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"GPL\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"GPL v2\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"GPL and additional rights\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"Dual BSD/GPL\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"Dual MIT/GPL\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"Dual MPL/GPL\00", align 1
@.str.49 = private unnamed_addr constant [62 x i8] c"malloc(sizeof(struct namespace_list) + strlen(namespace) + 1)\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"__gnu_lto_\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"\22%s\22 [%s] is COMMON symbol\0A\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"strdup(symname)\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"__ksymtab_\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"init_module\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"cleanup_module\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"___ksymtab+\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"___ksymtab_gpl+\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"__this_module\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"_GLOBAL_OFFSET_TABLE_\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"_restgpr_\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"_savegpr_\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"_rest32gpr_\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"_save32gpr_\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"_restvr_\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"_savevr_\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"_restgpr0_\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"_savegpr0_\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c".TOC.\00", align 1
@.str.71 = private unnamed_addr constant [85 x i8] c"EXPORT symbol \22%s\22 [%s%s] version ...\0AIs \22%s\22 prototyped in <asm/asm-prototypes.h>?\0A\00", align 1
@section_white_list = internal constant [20 x ptr] [ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr null], align 16
@.str.72 = private unnamed_addr constant [180 x i8] c"%s (%s): unexpected non-allocatable section.\0ADid you forget to use \22ax\22/\22aw\22 in a .S file?\0ANote that for example <linux/init.h> contains\0Asection definitions for use in .S files.\0A\0A\00", align 1
@.str.73 = private unnamed_addr constant [30 x i8] c"strndup(p + 1, strlen(p) - 2)\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c".comment*\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c".debug*\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c".cranges\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c".zdebug*\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c".GCC.command.line\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c".mdebug*\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c".pdr\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c".stab*\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c".note*\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c".got*\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c".toc*\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c".xt.prop\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c".xt.lit\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c".arcextmap*\00", align 1
@.str.88 = private unnamed_addr constant [22 x i8] c".gnu.linkonce.arcext*\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c".cmem*\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c".fmt_slot*\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c".gnu.lto*\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c".discard.*\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"__ex_table\00", align 1
@extable_entry_size = internal unnamed_addr global i32 0, align 4
@.str.94 = private unnamed_addr constant [6 x i8] c".text\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c".text.unlikely\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c".sched.text\00", align 1
@.str.97 = private unnamed_addr constant [14 x i8] c".kprobes.text\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c".cpuidle.text\00", align 1
@.str.99 = private unnamed_addr constant [14 x i8] c".noinstr.text\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c".init.*\00", align 1
@.str.101 = private unnamed_addr constant [11 x i8] c".meminit.*\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"*driver\00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"*_template\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c"*_timer\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"*_sht\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"*_ops\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c"*_probe\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"*_probe_one\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"*_console\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c".data\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c".data.rel\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c".exit.*\00", align 1
@.str.113 = private unnamed_addr constant [11 x i8] c".memexit.*\00", align 1
@.str.114 = private unnamed_addr constant [17 x i8] c".pci_fixup_early\00", align 1
@.str.115 = private unnamed_addr constant [18 x i8] c".pci_fixup_header\00", align 1
@.str.116 = private unnamed_addr constant [17 x i8] c".pci_fixup_final\00", align 1
@.str.117 = private unnamed_addr constant [18 x i8] c".pci_fixup_enable\00", align 1
@.str.118 = private unnamed_addr constant [18 x i8] c".pci_fixup_resume\00", align 1
@.str.119 = private unnamed_addr constant [24 x i8] c".pci_fixup_resume_early\00", align 1
@.str.120 = private unnamed_addr constant [19 x i8] c".pci_fixup_suspend\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"__ksymtab*\00", align 1
@.str.122 = private unnamed_addr constant [22 x i8] c".altinstr_replacement\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c".init.text\00", align 1
@.str.124 = private unnamed_addr constant [14 x i8] c".meminit.text\00", align 1
@.str.125 = private unnamed_addr constant [11 x i8] c".exit.text\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c".memexit.text\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c".ref.text\00", align 1
@.str.128 = private unnamed_addr constant [11 x i8] c".head.text\00", align 1
@.str.129 = private unnamed_addr constant [15 x i8] c".spinlock.text\00", align 1
@.str.130 = private unnamed_addr constant [7 x i8] c".fixup\00", align 1
@.str.131 = private unnamed_addr constant [12 x i8] c".entry.text\00", align 1
@.str.132 = private unnamed_addr constant [16 x i8] c".exception.text\00", align 1
@.str.133 = private unnamed_addr constant [8 x i8] c".text.*\00", align 1
@.str.134 = private unnamed_addr constant [10 x i8] c".coldtext\00", align 1
@.str.135 = private unnamed_addr constant [19 x i8] c".softirqentry.text\00", align 1
@sectioncheck = internal constant <{ { <{ ptr, ptr, ptr, ptr, ptr, ptr, [14 x ptr] }>, <{ ptr, ptr, [18 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr }, { <{ ptr, ptr, [18 x ptr] }>, <{ ptr, [19 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr }, { <{ ptr, ptr, [18 x ptr] }>, <{ ptr, [19 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [13 x ptr] }>, ptr }, { <{ ptr, ptr, ptr, ptr, ptr, ptr, [14 x ptr] }>, <{ ptr, ptr, [18 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr }, { <{ ptr, ptr, [18 x ptr] }>, <{ ptr, ptr, [18 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr }, { <{ ptr, [19 x ptr] }>, <{ ptr, [19 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr }, { <{ ptr, [19 x ptr] }>, <{ ptr, [19 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr }, { <{ ptr, ptr, [18 x ptr] }>, <{ ptr, ptr, [18 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr }, { <{ ptr, ptr, [18 x ptr] }>, <{ ptr, ptr, [18 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr }, { <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [13 x ptr] }>, <{ ptr, [19 x ptr] }>, [20 x ptr], i32, [20 x ptr], ptr }, { <{ ptr, [19 x ptr] }>, <{ ptr, ptr, [18 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr }, { <{ ptr, [19 x ptr] }>, <{ ptr, [19 x ptr] }>, [20 x ptr], i32, [20 x ptr], ptr } }> <{ { <{ ptr, ptr, ptr, ptr, ptr, ptr, [14 x ptr] }>, <{ ptr, ptr, [18 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr } { <{ ptr, ptr, ptr, ptr, ptr, ptr, [14 x ptr] }> <{ ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, [14 x ptr] zeroinitializer }>, <{ ptr, ptr, [18 x ptr] }> <{ ptr @.str.100, ptr @.str.101, [18 x ptr] zeroinitializer }>, [20 x ptr] zeroinitializer, i32 0, [4 x i8] undef, <{ [8 x ptr], [12 x ptr] }> <{ [8 x ptr] [ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109], [12 x ptr] zeroinitializer }>, ptr null }, { <{ ptr, ptr, [18 x ptr] }>, <{ ptr, [19 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr } { <{ ptr, ptr, [18 x ptr] }> <{ ptr @.str.110, ptr @.str.111, [18 x ptr] zeroinitializer }>, <{ ptr, [19 x ptr] }> <{ ptr @.str.101, [19 x ptr] zeroinitializer }>, [20 x ptr] zeroinitializer, i32 1, [4 x i8] undef, <{ [8 x ptr], [12 x ptr] }> <{ [8 x ptr] [ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109], [12 x ptr] zeroinitializer }>, ptr null }, { <{ ptr, ptr, [18 x ptr] }>, <{ ptr, [19 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [13 x ptr] }>, ptr } { <{ ptr, ptr, [18 x ptr] }> <{ ptr @.str.110, ptr @.str.111, [18 x ptr] zeroinitializer }>, <{ ptr, [19 x ptr] }> <{ ptr @.str.100, [19 x ptr] zeroinitializer }>, [20 x ptr] zeroinitializer, i32 1, [4 x i8] undef, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [13 x ptr] }> <{ ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, [13 x ptr] zeroinitializer }>, ptr null }, { <{ ptr, ptr, ptr, ptr, ptr, ptr, [14 x ptr] }>, <{ ptr, ptr, [18 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr } { <{ ptr, ptr, ptr, ptr, ptr, ptr, [14 x ptr] }> <{ ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, [14 x ptr] zeroinitializer }>, <{ ptr, ptr, [18 x ptr] }> <{ ptr @.str.112, ptr @.str.113, [18 x ptr] zeroinitializer }>, [20 x ptr] zeroinitializer, i32 2, [4 x i8] undef, <{ [8 x ptr], [12 x ptr] }> <{ [8 x ptr] [ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109], [12 x ptr] zeroinitializer }>, ptr null }, { <{ ptr, ptr, [18 x ptr] }>, <{ ptr, ptr, [18 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr } { <{ ptr, ptr, [18 x ptr] }> <{ ptr @.str.110, ptr @.str.111, [18 x ptr] zeroinitializer }>, <{ ptr, ptr, [18 x ptr] }> <{ ptr @.str.112, ptr @.str.113, [18 x ptr] zeroinitializer }>, [20 x ptr] zeroinitializer, i32 3, [4 x i8] undef, <{ [8 x ptr], [12 x ptr] }> <{ [8 x ptr] [ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109], [12 x ptr] zeroinitializer }>, ptr null }, { <{ ptr, [19 x ptr] }>, <{ ptr, [19 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr } { <{ ptr, [19 x ptr] }> <{ ptr @.str.101, [19 x ptr] zeroinitializer }>, <{ ptr, [19 x ptr] }> <{ ptr @.str.100, [19 x ptr] zeroinitializer }>, [20 x ptr] zeroinitializer, i32 4, [4 x i8] undef, <{ [8 x ptr], [12 x ptr] }> <{ [8 x ptr] [ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109], [12 x ptr] zeroinitializer }>, ptr null }, { <{ ptr, [19 x ptr] }>, <{ ptr, [19 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr } { <{ ptr, [19 x ptr] }> <{ ptr @.str.113, [19 x ptr] zeroinitializer }>, <{ ptr, [19 x ptr] }> <{ ptr @.str.112, [19 x ptr] zeroinitializer }>, [20 x ptr] zeroinitializer, i32 5, [4 x i8] undef, <{ [8 x ptr], [12 x ptr] }> <{ [8 x ptr] [ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109], [12 x ptr] zeroinitializer }>, ptr null }, { <{ ptr, ptr, [18 x ptr] }>, <{ ptr, ptr, [18 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr } { <{ ptr, ptr, [18 x ptr] }> <{ ptr @.str.100, ptr @.str.101, [18 x ptr] zeroinitializer }>, <{ ptr, ptr, [18 x ptr] }> <{ ptr @.str.112, ptr @.str.113, [18 x ptr] zeroinitializer }>, [20 x ptr] zeroinitializer, i32 6, [4 x i8] undef, <{ [8 x ptr], [12 x ptr] }> <{ [8 x ptr] [ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109], [12 x ptr] zeroinitializer }>, ptr null }, { <{ ptr, ptr, [18 x ptr] }>, <{ ptr, ptr, [18 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr } { <{ ptr, ptr, [18 x ptr] }> <{ ptr @.str.112, ptr @.str.113, [18 x ptr] zeroinitializer }>, <{ ptr, ptr, [18 x ptr] }> <{ ptr @.str.100, ptr @.str.101, [18 x ptr] zeroinitializer }>, [20 x ptr] zeroinitializer, i32 7, [4 x i8] undef, <{ [8 x ptr], [12 x ptr] }> <{ [8 x ptr] [ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109], [12 x ptr] zeroinitializer }>, ptr null }, { <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [13 x ptr] }>, <{ ptr, [19 x ptr] }>, [20 x ptr], i32, [20 x ptr], ptr } { <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [13 x ptr] }> <{ ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, [13 x ptr] zeroinitializer }>, <{ ptr, [19 x ptr] }> <{ ptr @.str.100, [19 x ptr] zeroinitializer }>, [20 x ptr] zeroinitializer, i32 6, [20 x ptr] zeroinitializer, ptr null }, { <{ ptr, [19 x ptr] }>, <{ ptr, ptr, [18 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr } { <{ ptr, [19 x ptr] }> <{ ptr @.str.121, [19 x ptr] zeroinitializer }>, <{ ptr, ptr, [18 x ptr] }> <{ ptr @.str.100, ptr @.str.112, [18 x ptr] zeroinitializer }>, [20 x ptr] zeroinitializer, i32 8, [4 x i8] undef, <{ [8 x ptr], [12 x ptr] }> <{ [8 x ptr] [ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109], [12 x ptr] zeroinitializer }>, ptr null }, { <{ ptr, [19 x ptr] }>, <{ ptr, [19 x ptr] }>, [20 x ptr], i32, [20 x ptr], ptr } { <{ ptr, [19 x ptr] }> <{ ptr @.str.93, [19 x ptr] zeroinitializer }>, <{ ptr, [19 x ptr] }> <{ ptr @.str.122, [19 x ptr] zeroinitializer }>, [20 x ptr] [ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr null], i32 9, [20 x ptr] zeroinitializer, ptr @extable_mismatch_handler } }>, align 16
@.str.137 = private unnamed_addr constant [225 x i8] c"The relocation at %s+0x%lx references\0Asection \22%s\22 which is black-listed.\0ASomething is seriously wrong and should be fixed.\0AYou might get more information about where this is\0Acoming from by using scripts/check_extable.sh %s\0A\00", align 1
@.str.138 = private unnamed_addr constant [192 x i8] c"The relocation at %s+0x%lx references\0Asection \22%s\22 which is not executable, IOW\0Ait is not possible for the kernel to fault\0Aat that address.  Something is seriously wrong\0Aand should be fixed.\0A\00", align 1
@.str.139 = private unnamed_addr constant [186 x i8] c"The relocation at %s+0x%lx references\0Asection \22%s\22 which is not executable, IOW\0Athe kernel will fault if it ever tries to\0Ajump to it.  Something is seriously wrong\0Aand should be fixed.\0A\00", align 1
@.str.140 = private unnamed_addr constant [80 x i8] c"%s(%s+0x%lx): Section mismatch in reference from the %s %s%s to the %s %s:%s%s\0A\00", align 1
@.str.141 = private unnamed_addr constant [319 x i8] c"The relocation at %s+0x%lx references\0Asection \22%s\22 which is not in the list of\0Aauthorized sections.  If you're adding a new section\0Aand/or if this reference is valid, add \22%s\22 to the\0Alist of authorized sections to jump to on fault.\0AThis can be achieved by adding \22%s\22 to \0AOTHER_TEXT_SECTIONS in scripts/mod/modpost.c.\0A\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c"axtd\00", align 1
@.str.143 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.144 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.145 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.146 = private unnamed_addr constant [20 x i8] c"(unknown reference)\00", align 1
@.str.147 = private unnamed_addr constant [45 x i8] c"section_index is outside elf->num_sections!\0A\00", align 1
@.str.148 = private unnamed_addr constant [44 x i8] c"extable_entry size hasn't been discovered!\0A\00", align 1
@.str.149 = private unnamed_addr constant [21 x i8] c"reference___initcall\00", align 1
@init_data_sections = internal constant [6 x ptr] [ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr null], align 16
@data_sections = internal constant [3 x ptr] [ptr @.str.110, ptr @.str.111, ptr null], align 16
@.str.150 = private unnamed_addr constant [8 x i8] c"__param\00", align 1
@.str.151 = private unnamed_addr constant [13 x i8] c"__param_ops_\00", align 1
@init_exit_sections = internal constant [5 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.112, ptr @.str.113, ptr null], align 16
@head_sections = internal constant [2 x ptr] [ptr @.str.158, ptr null], align 16
@init_sections = internal constant [3 x ptr] [ptr @.str.100, ptr @.str.101, ptr null], align 16
@linker_symbols = internal constant [4 x ptr] [ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr null], align 16
@text_sections = internal constant [20 x ptr] [ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr null], align 16
@optim_symbols = internal constant [2 x ptr] [ptr @.str.162, ptr null], align 16
@.str.152 = private unnamed_addr constant [3 x i8] c".L\00", align 1
@.str.153 = private unnamed_addr constant [12 x i8] c".init.setup\00", align 1
@.str.154 = private unnamed_addr constant [13 x i8] c".init.rodata\00", align 1
@.str.155 = private unnamed_addr constant [16 x i8] c".meminit.rodata\00", align 1
@.str.156 = private unnamed_addr constant [11 x i8] c".init.data\00", align 1
@.str.157 = private unnamed_addr constant [14 x i8] c".meminit.data\00", align 1
@.str.158 = private unnamed_addr constant [12 x i8] c".head.text*\00", align 1
@.str.159 = private unnamed_addr constant [13 x i8] c"__init_begin\00", align 1
@.str.160 = private unnamed_addr constant [11 x i8] c"_sinittext\00", align 1
@.str.161 = private unnamed_addr constant [11 x i8] c"_einittext\00", align 1
@.str.162 = private unnamed_addr constant [14 x i8] c"*.constprop.*\00", align 1
@.str.163 = private unnamed_addr constant [81 x i8] c"%s(%s+0x%llx): Section mismatch in reference from the %s %s%s to the %s %s:%s%s\0A\00", align 1
@.str.164 = private unnamed_addr constant [128 x i8] c"The function %s%s() references\0Athe %s %s%s%s.\0AThis is often because %s lacks a %s\0Aannotation or the annotation of %s is wrong.\0A\00", align 1
@.str.165 = private unnamed_addr constant [162 x i8] c"The variable %s references\0Athe %s %s%s%s\0AIf the reference is valid then annotate the\0Avariable with __init* or __refdata (see linux/init.h) or name the variable:\0A\00", align 1
@.str.166 = private unnamed_addr constant [163 x i8] c"The function %s() references a %s in an exit section.\0AOften the %s %s%s has valid usage outside the exit section\0Aand the fix is to remove the %sannotation of %s.\0A\00", align 1
@.str.167 = private unnamed_addr constant [149 x i8] c"The variable %s references\0Athe %s %s%s%s\0AIf the reference is valid then annotate the\0Avariable with __exit* (see linux/init.h) or name the variable:\0A\00", align 1
@.str.168 = private unnamed_addr constant [109 x i8] c"The %s %s%s%s references\0Aa %s %s%s%s.\0AIf %s is only used by %s then\0Aannotate %s with a matching annotation.\0A\00", align 1
@.str.169 = private unnamed_addr constant [231 x i8] c"The %s %s%s%s references\0Aa %s %s%s%s.\0AThis is often seen when error handling in the init function\0Auses functionality in the exit path.\0AThe fix is often to remove the %sannotation of\0A%s%s so it may be used outside an exit section.\0A\00", align 1
@.str.170 = private unnamed_addr constant [231 x i8] c"The %s %s%s%s references\0Aa %s %s%s%s.\0AThis is often seen when error handling in the exit function\0Auses functionality in the init path.\0AThe fix is often to remove the %sannotation of\0A%s%s so it may be used outside an init section.\0A\00", align 1
@.str.171 = private unnamed_addr constant [108 x i8] c"The symbol %s is exported and annotated %s\0AFix this by removing the %sannotation of %s or drop the export.\0A\00", align 1
@.str.172 = private unnamed_addr constant [76 x i8] c"There's a special handler for this mismatch type, we should never get here.\00", align 1
@.str.173 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.174 = private unnamed_addr constant [11 x i8] c"malloc(20)\00", align 1
@.str.175 = private unnamed_addr constant [7 x i8] c"rodata\00", align 1
@.str.176 = private unnamed_addr constant [7 x i8] c"const \00", align 1
@.str.177 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.178 = private unnamed_addr constant [6 x i8] c"data \00", align 1
@.str.180 = private unnamed_addr constant [11 x i8] c"strdup(\22\22)\00", align 1
@.str.182 = private unnamed_addr constant [3 x i8] c", \00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.183 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.184 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.185 = private unnamed_addr constant [33 x i8] c"Can't open filenames file %s: %m\00", align 1
@.str.186 = private unnamed_addr constant [33 x i8] c"module name is too long [%s.ko]\0A\00", align 1
@.str.187 = private unnamed_addr constant [25 x i8] c"\22%s\22 [%s.ko] undefined!\0A\00", align 1
@.str.188 = private unnamed_addr constant [69 x i8] c"module %s uses symbol %s from namespace %s, but does not import it.\0A\00", align 1
@.str.189 = private unnamed_addr constant [57 x i8] c"GPL-incompatible module %s.ko uses GPL-only symbol '%s'\0A\00", align 1
@.str.190 = private unnamed_addr constant [27 x i8] c"#include <linux/module.h>\0A\00", align 1
@.str.191 = private unnamed_addr constant [26 x i8] c"#define INCLUDE_VERMAGIC\0A\00", align 1
@.str.192 = private unnamed_addr constant [31 x i8] c"#include <linux/build-salt.h>\0A\00", align 1
@.str.193 = private unnamed_addr constant [32 x i8] c"#include <linux/elfnote-lto.h>\0A\00", align 1
@.str.194 = private unnamed_addr constant [29 x i8] c"#include <linux/vermagic.h>\0A\00", align 1
@.str.195 = private unnamed_addr constant [29 x i8] c"#include <linux/compiler.h>\0A\00", align 1
@.str.196 = private unnamed_addr constant [13 x i8] c"BUILD_SALT;\0A\00", align 1
@.str.197 = private unnamed_addr constant [17 x i8] c"BUILD_LTO_INFO;\0A\00", align 1
@.str.198 = private unnamed_addr constant [41 x i8] c"MODULE_INFO(vermagic, VERMAGIC_STRING);\0A\00", align 1
@.str.199 = private unnamed_addr constant [36 x i8] c"MODULE_INFO(name, KBUILD_MODNAME);\0A\00", align 1
@.str.200 = private unnamed_addr constant [39 x i8] c"__visible struct module __this_module\0A\00", align 1
@.str.201 = private unnamed_addr constant [44 x i8] c"__section(\22.gnu.linkonce.this_module\22) = {\0A\00", align 1
@.str.202 = private unnamed_addr constant [26 x i8] c"\09.name = KBUILD_MODNAME,\0A\00", align 1
@.str.203 = private unnamed_addr constant [23 x i8] c"\09.init = init_module,\0A\00", align 1
@.str.204 = private unnamed_addr constant [61 x i8] c"#ifdef CONFIG_MODULE_UNLOAD\0A\09.exit = cleanup_module,\0A#endif\0A\00", align 1
@.str.205 = private unnamed_addr constant [28 x i8] c"\09.arch = MODULE_ARCH_INIT,\0A\00", align 1
@.str.206 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.207 = private unnamed_addr constant [28 x i8] c"\0AMODULE_INFO(intree, \22Y\22);\0A\00", align 1
@.str.208 = private unnamed_addr constant [26 x i8] c"\0A#ifdef CONFIG_RETPOLINE\0A\00", align 1
@.str.209 = private unnamed_addr constant [30 x i8] c"MODULE_INFO(retpoline, \22Y\22);\0A\00", align 1
@.str.210 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@.str.211 = private unnamed_addr constant [16 x i8] c"drivers/staging\00", align 1
@.str.212 = private unnamed_addr constant [29 x i8] c"\0AMODULE_INFO(staging, \22Y\22);\0A\00", align 1
@.str.213 = private unnamed_addr constant [52 x i8] c"static const struct modversion_info ____versions[]\0A\00", align 1
@.str.214 = private unnamed_addr constant [36 x i8] c"__used __section(\22__versions\22) = {\0A\00", align 1
@.str.215 = private unnamed_addr constant [26 x i8] c"\22%s\22 [%s.ko] has no CRC!\0A\00", align 1
@.str.216 = private unnamed_addr constant [30 x i8] c"too long symbol \22%s\22 [%s.ko]\0A\00", align 1
@.str.217 = private unnamed_addr constant [18 x i8] c"\09{ %#8x, \22%s\22 },\0A\00", align 1
@.str.218 = private unnamed_addr constant [23 x i8] c"MODULE_INFO(depends, \22\00", align 1
@.str.219 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.220 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.221 = private unnamed_addr constant [5 x i8] c"\22);\0A\00", align 1
@.str.222 = private unnamed_addr constant [32 x i8] c"MODULE_INFO(srcversion, \22%s\22);\0A\00", align 1
@.str.223 = private unnamed_addr constant [15 x i8] c"malloc(b->pos)\00", align 1
@.str.224 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.225 = private unnamed_addr constant [7 x i8] c"%s.ko:\00", align 1
@.str.226 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.227 = private unnamed_addr constant [20 x i8] c"0x%08x\09%s\09%s\09%s\09%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @modpost_log(i32 noundef %loglevel, ptr nocapture noundef readonly %fmt, ...) local_unnamed_addr #0 {
entry:
  %arglist = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arglist) #25
  switch i32 %loglevel, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str, i64 9, i64 1, ptr %0) #26
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %3 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 7, i64 1, ptr %2) #26
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %5 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 7, i64 1, ptr %4) #26
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb1, %sw.bb, %entry
  %6 = load ptr, ptr @stderr, align 8, !tbaa !5
  %7 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 9, i64 1, ptr %6) #26
  call void @llvm.va_start(ptr nonnull %arglist)
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call7 = call i32 @vfprintf(ptr noundef %8, ptr noundef %fmt, ptr noundef nonnull %arglist) #26
  call void @llvm.va_end(ptr nonnull %arglist)
  switch i32 %loglevel, label %if.end11 [
    i32 2, label %if.then
    i32 1, label %if.then10
  ]

if.then:                                          ; preds = %sw.epilog
  call void @exit(i32 noundef 1) #27
  unreachable

if.then10:                                        ; preds = %sw.epilog
  store i1 true, ptr @error_occurred, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %sw.epilog
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arglist) #25
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @do_nofail(ptr noundef readnone returned %ptr, ptr noundef %expr) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %ptr, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef %expr)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret ptr %ptr
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @read_text_file(ptr nocapture noundef readonly %filename) local_unnamed_addr #0 {
entry:
  %st = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %st) #25
  %call = tail call i32 (ptr, i32, ...) @open(ptr noundef %filename, i32 noundef 0) #25
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @perror(ptr noundef %filename) #26
  tail call void @exit(i32 noundef 1) #27
  unreachable

if.end:                                           ; preds = %entry
  %call.i = call i32 @__fxstat(i32 noundef 1, i32 noundef %call, ptr noundef nonnull %st) #25
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @perror(ptr noundef %filename) #26
  call void @exit(i32 noundef 1) #27
  unreachable

if.end4:                                          ; preds = %if.end
  %st_size = getelementptr inbounds %struct.stat, ptr %st, i64 0, i32 8
  %0 = load i64, ptr %st_size, align 8, !tbaa !9
  %add = add nsw i64 %0, 1
  %call5 = call noalias ptr @malloc(i64 noundef %add) #28
  %tobool.not.i = icmp eq ptr %call5, null
  br i1 %tobool.not.i, label %if.then.i, label %do_nofail.exit

if.then.i:                                        ; preds = %if.end4
  call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #25
  %.pre = load i64, ptr %st_size, align 8, !tbaa !9
  br label %do_nofail.exit

do_nofail.exit:                                   ; preds = %if.then.i, %if.end4
  %1 = phi i64 [ %0, %if.end4 ], [ %.pre, %if.then.i ]
  %tobool.not25 = icmp eq i64 %1, 0
  br i1 %tobool.not25, label %while.end, label %while.body

while.cond:                                       ; preds = %while.body
  %sub = sub i64 %nbytes.026, %call8
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %while.end.loopexit, label %while.body

while.body:                                       ; preds = %while.cond, %do_nofail.exit
  %nbytes.026 = phi i64 [ %sub, %while.cond ], [ %1, %do_nofail.exit ]
  %call8 = call i64 @read(i32 noundef %call, ptr noundef %call5, i64 noundef %nbytes.026) #25
  %cmp9 = icmp slt i64 %call8, 0
  br i1 %cmp9, label %if.then10, label %while.cond

if.then10:                                        ; preds = %while.body
  call void @perror(ptr noundef %filename) #26
  call void @exit(i32 noundef 1) #27
  unreachable

while.end.loopexit:                               ; preds = %while.cond
  %.pre27 = load i64, ptr %st_size, align 8, !tbaa !9
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %do_nofail.exit
  %2 = phi i64 [ %.pre27, %while.end.loopexit ], [ 0, %do_nofail.exit ]
  %arrayidx = getelementptr inbounds i8, ptr %call5, i64 %2
  store i8 0, ptr %arrayidx, align 1, !tbaa !14
  %call13 = call i32 @close(i32 noundef %call) #25
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st) #25
  ret ptr %call5
}

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

declare i32 @close(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define dso_local ptr @get_line(ptr nocapture noundef %stringp) local_unnamed_addr #8 {
entry:
  %0 = load ptr, ptr %stringp, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, ptr %0, align 1, !tbaa !14
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call ptr @strchr(ptr noundef nonnull %0, i32 noundef 10) #29
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %incdec.ptr = getelementptr inbounds i8, ptr %call, i64 1
  store i8 0, ptr %call, align 1, !tbaa !14
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %next.0 = phi ptr [ %incdec.ptr, %if.then3 ], [ null, %if.end ]
  store ptr %next.0, ptr %stringp, align 8, !tbaa !5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %lor.lhs.false, %entry
  %retval.0 = phi ptr [ %0, %if.end4 ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @buf_printf(ptr nocapture noundef %buf, ptr nocapture noundef readonly %fmt, ...) local_unnamed_addr #0 {
entry:
  %tmp = alloca [500 x i8], align 16
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %tmp) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #25
  call void @llvm.va_start(ptr nonnull %ap)
  %call = call i32 @vsnprintf(ptr noundef nonnull %tmp, i64 noundef 500, ptr noundef %fmt, ptr noundef nonnull %ap) #25
  %size.i = getelementptr inbounds %struct.buffer, ptr %buf, i64 0, i32 2
  %0 = load i32, ptr %size.i, align 4, !tbaa !15
  %pos.i = getelementptr inbounds %struct.buffer, ptr %buf, i64 0, i32 1
  %1 = load i32, ptr %pos.i, align 8, !tbaa !17
  %sub.i = sub nsw i32 %0, %1
  %cmp.i = icmp slt i32 %sub.i, %call
  br i1 %cmp.i, label %if.then.i, label %entry.if.end_crit_edge.i

entry.if.end_crit_edge.i:                         ; preds = %entry
  %.pre.i = load ptr, ptr %buf, align 8, !tbaa !18
  br label %buf_write.exit

if.then.i:                                        ; preds = %entry
  %add.i = add nsw i32 %call, 500
  %add2.i = add nsw i32 %add.i, %0
  store i32 %add2.i, ptr %size.i, align 4, !tbaa !15
  %2 = load ptr, ptr %buf, align 8, !tbaa !18
  %conv.i = sext i32 %add2.i to i64
  %call.i = call ptr @realloc(ptr noundef %2, i64 noundef %conv.i) #30
  %tobool.not.i.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do_nofail.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6) #25
  br label %do_nofail.exit.i

do_nofail.exit.i:                                 ; preds = %if.then.i.i, %if.then.i
  store ptr %call.i, ptr %buf, align 8, !tbaa !18
  %.pre23.i = load i32, ptr %pos.i, align 8, !tbaa !17
  br label %buf_write.exit

buf_write.exit:                                   ; preds = %do_nofail.exit.i, %entry.if.end_crit_edge.i
  %3 = phi i32 [ %1, %entry.if.end_crit_edge.i ], [ %.pre23.i, %do_nofail.exit.i ]
  %4 = phi ptr [ %.pre.i, %entry.if.end_crit_edge.i ], [ %call.i, %do_nofail.exit.i ]
  %idx.ext.i = sext i32 %3 to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %4, i64 %idx.ext.i
  %conv8.i = sext i32 %call to i64
  %call9.i = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %add.ptr.i, ptr noundef nonnull %tmp, i64 noundef %conv8.i) #25
  %5 = load i32, ptr %pos.i, align 8, !tbaa !17
  %add11.i = add nsw i32 %5, %call
  store i32 %add11.i, ptr %pos.i, align 8, !tbaa !17
  call void @llvm.va_end(ptr nonnull %ap)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #25
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %tmp) #25
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @buf_write(ptr nocapture noundef %buf, ptr nocapture noundef readonly %s, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %size = getelementptr inbounds %struct.buffer, ptr %buf, i64 0, i32 2
  %0 = load i32, ptr %size, align 4, !tbaa !15
  %pos = getelementptr inbounds %struct.buffer, ptr %buf, i64 0, i32 1
  %1 = load i32, ptr %pos, align 8, !tbaa !17
  %sub = sub nsw i32 %0, %1
  %cmp = icmp slt i32 %sub, %len
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre = load ptr, ptr %buf, align 8, !tbaa !18
  br label %if.end

if.then:                                          ; preds = %entry
  %add = add nsw i32 %len, 500
  %add2 = add nsw i32 %add, %0
  store i32 %add2, ptr %size, align 4, !tbaa !15
  %2 = load ptr, ptr %buf, align 8, !tbaa !18
  %conv = sext i32 %add2 to i64
  %call = tail call ptr @realloc(ptr noundef %2, i64 noundef %conv) #30
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %if.then.i, label %do_nofail.exit

if.then.i:                                        ; preds = %if.then
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6) #25
  br label %do_nofail.exit

do_nofail.exit:                                   ; preds = %if.then.i, %if.then
  store ptr %call, ptr %buf, align 8, !tbaa !18
  %.pre23 = load i32, ptr %pos, align 8, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %do_nofail.exit, %entry.if.end_crit_edge
  %3 = phi i32 [ %1, %entry.if.end_crit_edge ], [ %.pre23, %do_nofail.exit ]
  %4 = phi ptr [ %.pre, %entry.if.end_crit_edge ], [ %call, %do_nofail.exit ]
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %idx.ext
  %conv8 = sext i32 %len to i64
  %call9 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %add.ptr, ptr noundef %s, i64 noundef %conv8) #25
  %5 = load i32, ptr %pos, align 8, !tbaa !17
  %add11 = add nsw i32 %5, %len
  store i32 %add11, ptr %pos, align 8, !tbaa !17
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) local_unnamed_addr #0 {
entry:
  %buf.i = alloca %struct.buffer, align 8
  %ns_deps_buf.i = alloca %struct.buffer, align 8
  %fname.i = alloca [4096 x i8], align 16
  %d.i = alloca ptr, align 8
  %buf = alloca %struct.buffer, align 8
  %dump_read_start = alloca ptr, align 8
  %fname = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %buf, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dump_read_start)
  store ptr null, ptr %dump_read_start, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %missing_namespace_deps.0 = phi ptr [ null, %entry ], [ %missing_namespace_deps.0.be, %while.cond.backedge ]
  %dump_write.0 = phi ptr [ null, %entry ], [ %dump_write.0.be, %while.cond.backedge ]
  %files_source.0 = phi ptr [ null, %entry ], [ %files_source.0.be, %while.cond.backedge ]
  %dump_read_iter.0 = phi ptr [ %dump_read_start, %entry ], [ %dump_read_iter.0.be, %while.cond.backedge ]
  %call = tail call i32 @getopt(i32 noundef %argc, ptr noundef %argv, ptr noundef nonnull @.str.7) #25
  switch i32 %call, label %sw.default [
    i32 -1, label %while.cond13thread-pre-split
    i32 101, label %sw.bb
    i32 105, label %sw.bb1
    i32 109, label %sw.bb4
    i32 110, label %sw.bb5
    i32 111, label %sw.bb6
    i32 97, label %sw.bb7
    i32 84, label %sw.bb8
    i32 119, label %sw.bb9
    i32 69, label %sw.bb10
    i32 78, label %sw.bb11
    i32 100, label %sw.bb12
  ]

sw.bb:                                            ; preds = %while.cond
  store i1 true, ptr @external_module, align 4
  br label %while.cond.backedge

sw.bb1:                                           ; preds = %while.cond
  %call2 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #31
  %tobool.not.i = icmp eq ptr %call2, null
  br i1 %tobool.not.i, label %if.then.i, label %do_nofail.exit

if.then.i:                                        ; preds = %sw.bb1
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8) #25
  br label %do_nofail.exit

do_nofail.exit:                                   ; preds = %if.then.i, %sw.bb1
  store ptr %call2, ptr %dump_read_iter.0, align 8, !tbaa !5
  %0 = load ptr, ptr @optarg, align 8, !tbaa !5
  %file = getelementptr inbounds %struct.dump_list, ptr %call2, i64 0, i32 1
  store ptr %0, ptr %file, align 8, !tbaa !19
  %1 = load ptr, ptr %dump_read_iter.0, align 8, !tbaa !5
  br label %while.cond.backedge

sw.bb4:                                           ; preds = %while.cond
  store i1 true, ptr @modversions, align 4
  br label %while.cond.backedge

sw.bb5:                                           ; preds = %while.cond
  store i1 true, ptr @ignore_missing_files, align 4
  br label %while.cond.backedge

sw.bb6:                                           ; preds = %while.cond
  %2 = load ptr, ptr @optarg, align 8, !tbaa !5
  br label %while.cond.backedge

sw.bb7:                                           ; preds = %while.cond
  store i1 true, ptr @all_versions, align 4
  br label %while.cond.backedge

sw.bb8:                                           ; preds = %while.cond
  %3 = load ptr, ptr @optarg, align 8, !tbaa !5
  br label %while.cond.backedge

sw.bb9:                                           ; preds = %while.cond
  store i1 true, ptr @warn_unresolved, align 4
  br label %while.cond.backedge

sw.bb10:                                          ; preds = %while.cond
  store i1 true, ptr @sec_mismatch_warn_only, align 4
  br label %while.cond.backedge

sw.bb11:                                          ; preds = %while.cond
  store i1 true, ptr @allow_missing_ns_imports, align 4
  br label %while.cond.backedge

sw.bb12:                                          ; preds = %while.cond
  %4 = load ptr, ptr @optarg, align 8, !tbaa !5
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %do_nofail.exit, %sw.bb
  %missing_namespace_deps.0.be = phi ptr [ %4, %sw.bb12 ], [ %missing_namespace_deps.0, %sw.bb11 ], [ %missing_namespace_deps.0, %sw.bb10 ], [ %missing_namespace_deps.0, %sw.bb9 ], [ %missing_namespace_deps.0, %sw.bb8 ], [ %missing_namespace_deps.0, %sw.bb7 ], [ %missing_namespace_deps.0, %sw.bb6 ], [ %missing_namespace_deps.0, %sw.bb5 ], [ %missing_namespace_deps.0, %sw.bb4 ], [ %missing_namespace_deps.0, %do_nofail.exit ], [ %missing_namespace_deps.0, %sw.bb ]
  %dump_write.0.be = phi ptr [ %dump_write.0, %sw.bb12 ], [ %dump_write.0, %sw.bb11 ], [ %dump_write.0, %sw.bb10 ], [ %dump_write.0, %sw.bb9 ], [ %dump_write.0, %sw.bb8 ], [ %dump_write.0, %sw.bb7 ], [ %2, %sw.bb6 ], [ %dump_write.0, %sw.bb5 ], [ %dump_write.0, %sw.bb4 ], [ %dump_write.0, %do_nofail.exit ], [ %dump_write.0, %sw.bb ]
  %files_source.0.be = phi ptr [ %files_source.0, %sw.bb12 ], [ %files_source.0, %sw.bb11 ], [ %files_source.0, %sw.bb10 ], [ %files_source.0, %sw.bb9 ], [ %3, %sw.bb8 ], [ %files_source.0, %sw.bb7 ], [ %files_source.0, %sw.bb6 ], [ %files_source.0, %sw.bb5 ], [ %files_source.0, %sw.bb4 ], [ %files_source.0, %do_nofail.exit ], [ %files_source.0, %sw.bb ]
  %dump_read_iter.0.be = phi ptr [ %dump_read_iter.0, %sw.bb12 ], [ %dump_read_iter.0, %sw.bb11 ], [ %dump_read_iter.0, %sw.bb10 ], [ %dump_read_iter.0, %sw.bb9 ], [ %dump_read_iter.0, %sw.bb8 ], [ %dump_read_iter.0, %sw.bb7 ], [ %dump_read_iter.0, %sw.bb6 ], [ %dump_read_iter.0, %sw.bb5 ], [ %dump_read_iter.0, %sw.bb4 ], [ %1, %do_nofail.exit ], [ %dump_read_iter.0, %sw.bb ]
  br label %while.cond

sw.default:                                       ; preds = %while.cond
  tail call void @exit(i32 noundef 1) #27
  unreachable

while.cond13thread-pre-split:                     ; preds = %while.cond
  %dump_read_start.0.dump_read_start.0.dump_read_start.0..pr = load ptr, ptr %dump_read_start, align 8, !tbaa !5
  %tobool.not259 = icmp eq ptr %dump_read_start.0.dump_read_start.0.dump_read_start.0..pr, null
  br i1 %tobool.not259, label %while.cond18.preheader, label %while.body14

while.cond18.preheader:                           ; preds = %read_dump.exit, %while.cond13thread-pre-split
  %5 = load i32, ptr @optind, align 4, !tbaa !21
  %cmp19261 = icmp slt i32 %5, %argc
  br i1 %cmp19261, label %while.body20, label %while.end21

while.body14:                                     ; preds = %read_dump.exit, %while.cond13thread-pre-split
  %dump_read_start.0.dump_read_start.0.260 = phi ptr [ %20, %read_dump.exit ], [ %dump_read_start.0.dump_read_start.0.dump_read_start.0..pr, %while.cond13thread-pre-split ]
  %file15 = getelementptr inbounds %struct.dump_list, ptr %dump_read_start.0.dump_read_start.0.260, i64 0, i32 1
  %6 = load ptr, ptr %file15, align 8, !tbaa !19
  %call.i = tail call ptr @read_text_file(ptr noundef %6) #25
  %tobool.not.i113 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i113, label %read_dump.exit, label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %cleanup.i, %while.body14
  %pos.090.i = phi ptr [ %pos.1.i, %cleanup.i ], [ %call.i, %while.body14 ]
  %7 = load i8, ptr %pos.090.i, align 1, !tbaa !14
  %cmp.i.i = icmp eq i8 %7, 0
  br i1 %cmp.i.i, label %while.end.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %call.i.i = tail call ptr @strchr(ptr noundef nonnull %pos.090.i, i32 noundef 10) #29
  %tobool2.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i.i, label %while.body.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %call.i.i, i64 1
  store i8 0, ptr %call.i.i, align 1, !tbaa !14
  br label %while.body.i

while.body.i:                                     ; preds = %if.then3.i.i, %if.end.i.i
  %pos.1.i = phi ptr [ %incdec.ptr.i.i, %if.then3.i.i ], [ null, %if.end.i.i ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %d.i) #25
  %call3.i = tail call ptr @strchr(ptr noundef nonnull %pos.090.i, i32 noundef 9) #29
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %fail.i, label %if.end6.i

if.end6.i:                                        ; preds = %while.body.i
  %incdec.ptr.i = getelementptr inbounds i8, ptr %call3.i, i64 1
  store i8 0, ptr %call3.i, align 1, !tbaa !14
  %call7.i = tail call ptr @strchr(ptr noundef nonnull %incdec.ptr.i, i32 noundef 9) #29
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %fail.i, label %if.end10.i

if.end10.i:                                       ; preds = %if.end6.i
  %incdec.ptr11.i = getelementptr inbounds i8, ptr %call7.i, i64 1
  store i8 0, ptr %call7.i, align 1, !tbaa !14
  %call12.i = tail call ptr @strchr(ptr noundef nonnull %incdec.ptr11.i, i32 noundef 9) #29
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %fail.i, label %if.end15.i

if.end15.i:                                       ; preds = %if.end10.i
  %incdec.ptr16.i = getelementptr inbounds i8, ptr %call12.i, i64 1
  store i8 0, ptr %call12.i, align 1, !tbaa !14
  %call17.i = tail call ptr @strchr(ptr noundef nonnull %incdec.ptr16.i, i32 noundef 9) #29
  %tobool18.not.i = icmp eq ptr %call17.i, null
  br i1 %tobool18.not.i, label %fail.i, label %if.end20.i

if.end20.i:                                       ; preds = %if.end15.i
  %incdec.ptr21.i = getelementptr inbounds i8, ptr %call17.i, i64 1
  store i8 0, ptr %call17.i, align 1, !tbaa !14
  %call22.i = call i64 @strtoul(ptr noundef nonnull %pos.090.i, ptr noundef nonnull %d.i, i32 noundef 16) #25
  %conv.i = trunc i64 %call22.i to i32
  %8 = load i8, ptr %incdec.ptr.i, align 1, !tbaa !14
  %cmp.i = icmp eq i8 %8, 0
  br i1 %cmp.i, label %fail.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end20.i
  %9 = load i8, ptr %incdec.ptr11.i, align 1, !tbaa !14
  %cmp26.i = icmp eq i8 %9, 0
  br i1 %cmp26.i, label %fail.i, label %lor.lhs.false28.i

lor.lhs.false28.i:                                ; preds = %lor.lhs.false.i
  %10 = load ptr, ptr %d.i, align 8, !tbaa !5
  %11 = load i8, ptr %10, align 1, !tbaa !14
  %cmp30.not.i = icmp eq i8 %11, 0
  br i1 %cmp30.not.i, label %for.cond.i.i, label %fail.i

for.cond.i.i:                                     ; preds = %for.body.i.i, %lor.lhs.false28.i
  %mod.0.in.i.i = phi ptr [ %mod.0.i.i, %for.body.i.i ], [ @modules, %lor.lhs.false28.i ]
  %mod.0.i.i = load ptr, ptr %mod.0.in.i.i, align 8, !tbaa !5
  %tobool.not.i72.i = icmp eq ptr %mod.0.i.i, null
  br i1 %tobool.not.i72.i, label %if.then36.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %name.i.i = getelementptr inbounds %struct.module, ptr %mod.0.i.i, i64 0, i32 12
  %call.i73.i = tail call i32 @strcmp(ptr noundef nonnull %name.i.i, ptr noundef nonnull dereferenceable(1) %incdec.ptr11.i) #29
  %cmp.i74.i = icmp eq i32 %call.i73.i, 0
  br i1 %cmp.i74.i, label %if.end38.i, label %for.cond.i.i

if.then36.i:                                      ; preds = %for.cond.i.i
  %call.i75.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %incdec.ptr11.i) #29
  %add1.i.i = add i64 %call.i75.i, 113
  %call2.i.i = tail call noalias ptr @malloc(i64 noundef %add1.i.i) #28
  %tobool.not.i.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %new_module.exit.i

if.then.i.i.i:                                    ; preds = %if.then36.i
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.14) #25
  br label %new_module.exit.i

new_module.exit.i:                                ; preds = %if.then.i.i.i, %if.then36.i
  %12 = getelementptr inbounds i8, ptr %call2.i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %12, i8 0, i64 104, i1 false) #25
  %name.i76.i = getelementptr inbounds %struct.module, ptr %call2.i.i, i64 0, i32 12
  %call4.i.i = tail call ptr @strcpy(ptr noundef nonnull %name.i76.i, ptr noundef nonnull dereferenceable(1) %incdec.ptr11.i) #25
  %call5.i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %incdec.ptr11.i, ptr noundef nonnull dereferenceable(8) @.str.15) #29
  %cmp.i77.i = icmp eq i32 %call5.i.i, 0
  %conv.i.i = zext i1 %cmp.i77.i to i32
  %is_vmlinux.i.i = getelementptr inbounds %struct.module, ptr %call2.i.i, i64 0, i32 4
  store i32 %conv.i.i, ptr %is_vmlinux.i.i, align 4, !tbaa !21
  store i32 -1, ptr %12, align 8, !tbaa !21
  %13 = load ptr, ptr @modules, align 8, !tbaa !5
  store ptr %13, ptr %call2.i.i, align 8, !tbaa !5
  store ptr %call2.i.i, ptr @modules, align 8, !tbaa !5
  %from_dump.i = getelementptr inbounds %struct.module, ptr %call2.i.i, i64 0, i32 3
  store i32 1, ptr %from_dump.i, align 8, !tbaa !21
  br label %if.end38.i

if.end38.i:                                       ; preds = %new_module.exit.i, %for.body.i.i
  %mod.0.i = phi ptr [ %call2.i.i, %new_module.exit.i ], [ %mod.0.i.i, %for.body.i.i ]
  %call.i78.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(14) @.str.20, ptr noundef nonnull %incdec.ptr16.i) #29
  %cmp3.i.i = icmp eq i32 %call.i78.i, 0
  br i1 %cmp3.i.i, label %cleanup.loopexit.split.loop.exit.i.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end38.i
  %call.1.i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(18) @.str.21, ptr noundef nonnull %incdec.ptr16.i) #29
  %cmp3.1.i.i = icmp eq i32 %call.1.i.i, 0
  br i1 %cmp3.1.i.i, label %cleanup.loopexit.split.loop.exit.i.i, label %export_no.exit.i

cleanup.loopexit.split.loop.exit.i.i:             ; preds = %for.inc.i.i, %if.end38.i
  %i.015.lcssa.wide.i.i = phi i64 [ 0, %if.end38.i ], [ 1, %for.inc.i.i ]
  %export.le.i.i = getelementptr inbounds [3 x %struct.anon], ptr @export_list, i64 0, i64 %i.015.lcssa.wide.i.i, i32 1
  %14 = load i32, ptr %export.le.i.i, align 8, !tbaa !22
  br label %export_no.exit.i

export_no.exit.i:                                 ; preds = %cleanup.loopexit.split.loop.exit.i.i, %for.inc.i.i
  %retval.0.i79.i = phi i32 [ %14, %cleanup.loopexit.split.loop.exit.i.i ], [ 2, %for.inc.i.i ]
  %call40.i = tail call fastcc ptr @sym_add_exported(ptr noundef nonnull %incdec.ptr.i, ptr noundef nonnull %mod.0.i, i32 noundef %retval.0.i79.i) #25
  %is_static.i = getelementptr inbounds %struct.symbol, ptr %call40.i, i64 0, i32 5
  %bf.load.i = load i8, ptr %is_static.i, align 8
  %bf.clear.i = and i8 %bf.load.i, -3
  store i8 %bf.clear.i, ptr %is_static.i, align 8
  %15 = load i8, ptr %incdec.ptr.i, align 1, !tbaa !14
  %cmp.i.i.i = icmp eq i8 %15, 46
  %spec.select.idx.i.i.i = zext i1 %cmp.i.i.i to i64
  %spec.select.i.i.i = getelementptr i8, ptr %incdec.ptr.i, i64 %spec.select.idx.i.i.i
  %call.i.i.i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select.i.i.i) #29
  %16 = trunc i64 %call.i.i.i.i to i32
  %conv.i.i.i.i = mul i32 %16, 596579247
  %17 = load i8, ptr %spec.select.i.i.i, align 1, !tbaa !14
  %tobool.not13.i.i.i.i = icmp eq i8 %17, 0
  br i1 %tobool.not13.i.i.i.i, label %tdb_hash.exit.i.i.i, label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i, %export_no.exit.i
  %18 = phi i8 [ %19, %for.body.i.i.i.i ], [ %17, %export_no.exit.i ]
  %i.015.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.body.i.i.i.i ], [ 0, %export_no.exit.i ]
  %value.014.i.i.i.i = phi i32 [ %add.i.i.i.i, %for.body.i.i.i.i ], [ %conv.i.i.i.i, %export_no.exit.i ]
  %conv3.i.i.i.i = zext i8 %18 to i32
  %mul4.i.i.i.i = mul i32 %i.015.i.i.i.i, 5
  %rem.i.i.i.i = urem i32 %mul4.i.i.i.i, 24
  %shl.i.i.i.i = shl nuw nsw i32 %conv3.i.i.i.i, %rem.i.i.i.i
  %add.i.i.i.i = add i32 %shl.i.i.i.i, %value.014.i.i.i.i
  %inc.i.i.i.i = add i32 %i.015.i.i.i.i, 1
  %idxprom.i.i.i.i = zext i32 %inc.i.i.i.i to i64
  %arrayidx.i.i.i.i = getelementptr inbounds i8, ptr %spec.select.i.i.i, i64 %idxprom.i.i.i.i
  %19 = load i8, ptr %arrayidx.i.i.i.i, align 1, !tbaa !14
  %tobool.not.i.i.i.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i.i.i.i, label %tdb_hash.exit.i.i.i, label %for.body.i.i.i.i

tdb_hash.exit.i.i.i:                              ; preds = %for.body.i.i.i.i, %export_no.exit.i
  %value.0.lcssa.i.i.i.i = phi i32 [ %conv.i.i.i.i, %export_no.exit.i ], [ %add.i.i.i.i, %for.body.i.i.i.i ]
  %mul5.i.i.i.i = mul i32 %value.0.lcssa.i.i.i.i, 619
  %add6.i.i.i.i = add i32 %mul5.i.i.i.i, 57
  %rem.i.i.i = and i32 %add6.i.i.i.i, 1023
  %idxprom.i.i.i = zext i32 %rem.i.i.i to i64
  %arrayidx2.i.i.i = getelementptr inbounds [1024 x ptr], ptr @symbolhash, i64 0, i64 %idxprom.i.i.i
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i, %tdb_hash.exit.i.i.i
  %s.0.in.i.i.i = phi ptr [ %arrayidx2.i.i.i, %tdb_hash.exit.i.i.i ], [ %s.0.i.i.i, %for.body.i.i.i ]
  %s.0.i.i.i = load ptr, ptr %s.0.in.i.i.i, align 8, !tbaa !5
  %tobool.not.i.i80.i = icmp eq ptr %s.0.i.i.i, null
  br i1 %tobool.not.i.i80.i, label %cleanup.i, label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %name3.i.i.i = getelementptr inbounds %struct.symbol, ptr %s.0.i.i.i, i64 0, i32 7
  %call4.i.i.i = tail call i32 @strcmp(ptr noundef nonnull %name3.i.i.i, ptr noundef nonnull %spec.select.i.i.i) #29
  %cmp5.i.i.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %cmp5.i.i.i, label %if.end.i81.i, label %for.cond.i.i.i

if.end.i81.i:                                     ; preds = %for.body.i.i.i
  %crc1.i.i = getelementptr inbounds %struct.symbol, ptr %s.0.i.i.i, i64 0, i32 2
  store i32 %conv.i, ptr %crc1.i.i, align 8, !tbaa !21
  %crc_valid.i.i = getelementptr inbounds %struct.symbol, ptr %s.0.i.i.i, i64 0, i32 3
  store i32 1, ptr %crc_valid.i.i, align 4, !tbaa !21
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i81.i, %for.cond.i.i.i
  tail call fastcc void @sym_update_namespace(ptr noundef nonnull %incdec.ptr.i, ptr noundef nonnull %incdec.ptr21.i) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %d.i) #25
  %tobool.not.i.i = icmp eq ptr %pos.1.i, null
  br i1 %tobool.not.i.i, label %while.end.i, label %lor.lhs.false.i.i

while.end.i:                                      ; preds = %cleanup.i, %lor.lhs.false.i.i
  tail call void @free(ptr noundef %call.i) #25
  br label %read_dump.exit

fail.i:                                           ; preds = %lor.lhs.false28.i, %lor.lhs.false.i, %if.end20.i, %if.end15.i, %if.end10.i, %if.end6.i, %while.body.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %d.i) #25
  tail call void @free(ptr noundef %call.i) #25
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.13) #25
  br label %read_dump.exit

read_dump.exit:                                   ; preds = %fail.i, %while.end.i, %while.body14
  %20 = load ptr, ptr %dump_read_start.0.dump_read_start.0.260, align 8, !tbaa !24
  tail call void @free(ptr noundef %dump_read_start.0.dump_read_start.0.260) #25
  store ptr %20, ptr %dump_read_start, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %while.cond18.preheader, label %while.body14

while.body20:                                     ; preds = %while.body20, %while.cond18.preheader
  %21 = phi i32 [ %23, %while.body20 ], [ %5, %while.cond18.preheader ]
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr @optind, align 4, !tbaa !21
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %argv, i64 %idxprom
  %22 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  tail call fastcc void @read_symbols(ptr noundef %22)
  %23 = load i32, ptr @optind, align 4, !tbaa !21
  %cmp19 = icmp slt i32 %23, %argc
  br i1 %cmp19, label %while.body20, label %while.end21

while.end21:                                      ; preds = %while.body20, %while.cond18.preheader
  %tobool22.not = icmp eq ptr %files_source.0, null
  br i1 %tobool22.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end21
  %24 = load ptr, ptr @stdin, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %fname.i) #25
  %call.i114 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %files_source.0, ptr noundef nonnull dereferenceable(2) @.str.183) #29
  %cmp.not.i = icmp eq i32 %call.i114, 0
  br i1 %cmp.not.i, label %if.end3.i, label %if.then.i116

if.then.i116:                                     ; preds = %if.then
  %call1.i = tail call ptr @fopen(ptr noundef nonnull %files_source.0, ptr noundef nonnull @.str.184) #25
  %tobool.not.i115 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i115, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.then.i116
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.185, ptr noundef nonnull %files_source.0) #25
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.then.i116, %if.then
  %in.0.i = phi ptr [ %call1.i, %if.then.i116 ], [ null, %if.then2.i ], [ %24, %if.then ]
  %call423.i = call ptr @fgets(ptr noundef nonnull %fname.i, i32 noundef 4096, ptr noundef %in.0.i) #25
  %cmp5.not24.i = icmp eq ptr %call423.i, null
  br i1 %cmp5.not24.i, label %while.end.i121, label %while.body.preheader.i

while.body.preheader.i:                           ; preds = %if.end3.i
  %add.ptr.i.i = getelementptr inbounds i8, ptr %fname.i, i64 -1
  br label %while.body.i119

while.body.i119:                                  ; preds = %if.end11.i, %while.body.preheader.i
  %call.i.i117 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %fname.i) #29
  %cmp.i.i118 = icmp eq i64 %call.i.i117, 0
  br i1 %cmp.i.i118, label %if.end11.i, label %strends.exit.i

strends.exit.i:                                   ; preds = %while.body.i119
  %add.ptr4.i.i = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 %call.i.i117
  %call5.i.i120 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr4.i.i, ptr noundef nonnull dereferenceable(2) @.str.173) #29
  %cmp6.i.i = icmp eq i32 %call5.i.i120, 0
  br i1 %cmp6.i.i, label %if.then8.i, label %if.end11.i

if.then8.i:                                       ; preds = %strends.exit.i
  %call10.i = call i64 @strlen(ptr noundef nonnull %fname.i) #29
  %sub.i = add i64 %call10.i, -1
  %arrayidx.i = getelementptr inbounds [4096 x i8], ptr %fname.i, i64 0, i64 %sub.i
  store i8 0, ptr %arrayidx.i, align 1, !tbaa !14
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %strends.exit.i, %while.body.i119
  call fastcc void @read_symbols(ptr noundef nonnull %fname.i) #25
  %call4.i = call ptr @fgets(ptr noundef nonnull %fname.i, i32 noundef 4096, ptr noundef %in.0.i) #25
  %cmp5.not.i = icmp eq ptr %call4.i, null
  br i1 %cmp5.not.i, label %while.end.i121, label %while.body.i119

while.end.i121:                                   ; preds = %if.end11.i, %if.end3.i
  %25 = load ptr, ptr @stdin, align 8, !tbaa !5
  %cmp13.not.i = icmp eq ptr %in.0.i, %25
  br i1 %cmp13.not.i, label %read_symbols_from_files.exit, label %if.then14.i

if.then14.i:                                      ; preds = %while.end.i121
  %call15.i = call i32 @fclose(ptr noundef %in.0.i) #25
  br label %read_symbols_from_files.exit

read_symbols_from_files.exit:                     ; preds = %if.then14.i, %while.end.i121
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %fname.i) #25
  br label %if.end

if.end:                                           ; preds = %read_symbols_from_files.exit, %while.end21
  %mod.0262 = load ptr, ptr @modules, align 8, !tbaa !5
  %tobool23.not263 = icmp eq ptr %mod.0262, null
  br i1 %tobool23.not263, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %pos = getelementptr inbounds %struct.buffer, ptr %buf, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup, %for.body.lr.ph
  %mod.0264 = phi ptr [ %mod.0262, %for.body.lr.ph ], [ %mod.0, %cleanup ]
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %fname) #25
  %is_vmlinux = getelementptr inbounds %struct.module, ptr %mod.0264, i64 0, i32 4
  %26 = load i32, ptr %is_vmlinux, align 4, !tbaa !21
  %tobool24.not = icmp eq i32 %26, 0
  br i1 %tobool24.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %from_dump = getelementptr inbounds %struct.module, ptr %mod.0264, i64 0, i32 3
  %27 = load i32, ptr %from_dump, align 8, !tbaa !21
  %tobool25.not = icmp eq i32 %27, 0
  br i1 %tobool25.not, label %if.end27, label %cleanup

if.end27:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %pos, align 8, !tbaa !17
  %name.i = getelementptr inbounds %struct.module, ptr %mod.0264, i64 0, i32 12
  %call.i122 = call ptr @strrchr(ptr noundef nonnull %name.i, i32 noundef 47) #29
  %cmp.i123 = icmp eq ptr %call.i122, null
  %incdec.ptr.i124 = getelementptr inbounds i8, ptr %call.i122, i64 1
  %mod_name.0.i = select i1 %cmp.i123, ptr %name.i, ptr %incdec.ptr.i124
  %call3.i125 = call i64 @strlen(ptr noundef nonnull %mod_name.0.i) #29
  %cmp4.i = icmp ugt i64 %call3.i125, 59
  br i1 %cmp4.i, label %if.then5.i, label %check_modname_len.exit

if.then5.i:                                       ; preds = %if.end27
  call void (i32, ptr, ...) @modpost_log(i32 noundef 1, ptr noundef nonnull @.str.186, ptr noundef nonnull %name.i) #25
  br label %check_modname_len.exit

check_modname_len.exit:                           ; preds = %if.then5.i, %if.end27
  %unres.i = getelementptr inbounds %struct.module, ptr %mod.0264, i64 0, i32 2
  %s.064.i = load ptr, ptr %unres.i, align 8, !tbaa !5
  %tobool.not65.i = icmp eq ptr %s.064.i, null
  br i1 %tobool.not65.i, label %check_exports.exit, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %check_modname_len.exit
  %imported_namespaces.i.i = getelementptr inbounds %struct.module, ptr %mod.0264, i64 0, i32 11
  %missing_namespaces.i = getelementptr inbounds %struct.module, ptr %mod.0264, i64 0, i32 10
  %gpl_compatible.i = getelementptr inbounds %struct.module, ptr %mod.0264, i64 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i144, %for.body.lr.ph.i
  %s.066.i = phi ptr [ %s.064.i, %for.body.lr.ph.i ], [ %s.0.i, %cleanup.i144 ]
  %name.i126 = getelementptr inbounds %struct.symbol, ptr %s.066.i, i64 0, i32 7
  %28 = load i8, ptr %name.i126, align 1, !tbaa !14
  %cmp.i.i127 = icmp eq i8 %28, 46
  %spec.select.idx.i.i = zext i1 %cmp.i.i127 to i64
  %spec.select.i.i = getelementptr i8, ptr %name.i126, i64 %spec.select.idx.i.i
  %call.i.i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select.i.i) #29
  %29 = trunc i64 %call.i.i.i to i32
  %conv.i.i.i = mul i32 %29, 596579247
  %30 = load i8, ptr %spec.select.i.i, align 1, !tbaa !14
  %tobool.not13.i.i.i = icmp eq i8 %30, 0
  br i1 %tobool.not13.i.i.i, label %tdb_hash.exit.i.i, label %for.body.i.i.i131

for.body.i.i.i131:                                ; preds = %for.body.i.i.i131, %for.body.i
  %31 = phi i8 [ %32, %for.body.i.i.i131 ], [ %30, %for.body.i ]
  %i.015.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i131 ], [ 0, %for.body.i ]
  %value.014.i.i.i = phi i32 [ %add.i.i.i, %for.body.i.i.i131 ], [ %conv.i.i.i, %for.body.i ]
  %conv3.i.i.i = zext i8 %31 to i32
  %mul4.i.i.i = mul i32 %i.015.i.i.i, 5
  %rem.i.i.i128 = urem i32 %mul4.i.i.i, 24
  %shl.i.i.i = shl nuw nsw i32 %conv3.i.i.i, %rem.i.i.i128
  %add.i.i.i = add i32 %shl.i.i.i, %value.014.i.i.i
  %inc.i.i.i = add i32 %i.015.i.i.i, 1
  %idxprom.i.i.i129 = zext i32 %inc.i.i.i to i64
  %arrayidx.i.i.i = getelementptr inbounds i8, ptr %spec.select.i.i, i64 %idxprom.i.i.i129
  %32 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !14
  %tobool.not.i.i.i130 = icmp eq i8 %32, 0
  br i1 %tobool.not.i.i.i130, label %tdb_hash.exit.i.i, label %for.body.i.i.i131

tdb_hash.exit.i.i:                                ; preds = %for.body.i.i.i131, %for.body.i
  %value.0.lcssa.i.i.i = phi i32 [ %conv.i.i.i, %for.body.i ], [ %add.i.i.i, %for.body.i.i.i131 ]
  %mul5.i.i.i = mul i32 %value.0.lcssa.i.i.i, 619
  %add6.i.i.i = add i32 %mul5.i.i.i, 57
  %rem.i.i = and i32 %add6.i.i.i, 1023
  %idxprom.i.i = zext i32 %rem.i.i to i64
  %arrayidx2.i.i = getelementptr inbounds [1024 x ptr], ptr @symbolhash, i64 0, i64 %idxprom.i.i
  br label %for.cond.i.i133

for.cond.i.i133:                                  ; preds = %for.body.i.i135, %tdb_hash.exit.i.i
  %s.0.in.i.i = phi ptr [ %arrayidx2.i.i, %tdb_hash.exit.i.i ], [ %s.0.i.i, %for.body.i.i135 ]
  %s.0.i.i = load ptr, ptr %s.0.in.i.i, align 8, !tbaa !5
  %tobool.not.i.i132 = icmp eq ptr %s.0.i.i, null
  br i1 %tobool.not.i.i132, label %if.then.i140, label %for.body.i.i135

for.body.i.i135:                                  ; preds = %for.cond.i.i133
  %name3.i.i = getelementptr inbounds %struct.symbol, ptr %s.0.i.i, i64 0, i32 7
  %call4.i.i134 = call i32 @strcmp(ptr noundef nonnull %name3.i.i, ptr noundef nonnull %spec.select.i.i) #29
  %cmp5.i.i = icmp eq i32 %call4.i.i134, 0
  br i1 %cmp5.i.i, label %lor.lhs.false.i137, label %for.cond.i.i133

lor.lhs.false.i137:                               ; preds = %for.body.i.i135
  %module.i = getelementptr inbounds %struct.symbol, ptr %s.0.i.i, i64 0, i32 1
  %33 = load ptr, ptr %module.i, align 8, !tbaa !5
  %cmp.i136 = icmp eq ptr %33, %mod.0264
  br i1 %cmp.i136, label %if.then.i140, label %if.end10.i142

if.then.i140:                                     ; preds = %lor.lhs.false.i137, %for.cond.i.i133
  %weak.i = getelementptr inbounds %struct.symbol, ptr %s.066.i, i64 0, i32 5
  %bf.load.i138 = load i8, ptr %weak.i, align 8
  %bf.clear.i139 = and i8 %bf.load.i138, 1
  %tobool2.not.i = icmp eq i8 %bf.clear.i139, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i, label %cleanup.i144

land.lhs.true.i:                                  ; preds = %if.then.i140
  %34 = load i32, ptr @nr_unresolved, align 4, !tbaa !21
  %inc.i = add i32 %34, 1
  store i32 %inc.i, ptr @nr_unresolved, align 4, !tbaa !21
  %cmp3.i = icmp ult i32 %34, 10
  br i1 %cmp3.i, label %if.then4.i, label %cleanup.i144

if.then4.i:                                       ; preds = %land.lhs.true.i
  %.b.i = load i1, ptr @warn_unresolved, align 4
  %not..b.i = xor i1 %.b.i, true
  %cond.i = zext i1 %not..b.i to i32
  call void (i32, ptr, ...) @modpost_log(i32 noundef %cond.i, ptr noundef nonnull @.str.187, ptr noundef nonnull %name.i126, ptr noundef nonnull %name.i) #25
  br label %cleanup.i144

if.end10.i142:                                    ; preds = %lor.lhs.false.i137
  %call13.i = call ptr @strrchr(ptr noundef nonnull %name.i, i32 noundef 47) #29
  %tobool14.not.i = icmp eq ptr %call13.i, null
  %incdec.ptr.i141 = getelementptr inbounds i8, ptr %call13.i, i64 1
  %basename.0.i = select i1 %tobool14.not.i, ptr %name.i, ptr %incdec.ptr.i141
  %namespace.i = getelementptr inbounds %struct.symbol, ptr %s.0.i.i, i64 0, i32 4
  %35 = load ptr, ptr %namespace.i, align 8, !tbaa !5
  %tobool19.not.i = icmp eq ptr %35, null
  br i1 %tobool19.not.i, label %if.end30.i, label %land.lhs.true20.i

land.lhs.true20.i:                                ; preds = %if.end10.i142
  %36 = load ptr, ptr %imported_namespaces.i.i, align 8, !tbaa !5
  %tobool.not5.i.i.i = icmp eq ptr %36, null
  br i1 %tobool.not5.i.i.i, label %if.then23.i, label %for.body.i.i60.i

for.body.i.i60.i:                                 ; preds = %for.inc.i.i.i, %land.lhs.true20.i
  %list.addr.06.i.i.i = phi ptr [ %37, %for.inc.i.i.i ], [ %36, %land.lhs.true20.i ]
  %namespace1.i.i.i = getelementptr inbounds %struct.namespace_list, ptr %list.addr.06.i.i.i, i64 0, i32 1
  %call.i.i59.i = call i32 @strcmp(ptr noundef nonnull %namespace1.i.i.i, ptr noundef nonnull dereferenceable(1) %35) #29
  %tobool2.not.i.i.i = icmp eq i32 %call.i.i59.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end30.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i60.i
  %37 = load ptr, ptr %list.addr.06.i.i.i, align 8, !tbaa !5
  %tobool.not.i.i61.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i61.i, label %if.then23.i, label %for.body.i.i60.i

if.then23.i:                                      ; preds = %for.inc.i.i.i, %land.lhs.true20.i
  %.b58.i = load i1, ptr @allow_missing_ns_imports, align 4
  %not..b58.i = xor i1 %.b58.i, true
  %cond25.i = zext i1 %not..b58.i to i32
  call void (i32, ptr, ...) @modpost_log(i32 noundef %cond25.i, ptr noundef nonnull @.str.188, ptr noundef nonnull %basename.0.i, ptr noundef nonnull %name3.i.i, ptr noundef nonnull %35) #25
  %38 = load ptr, ptr %namespace.i, align 8, !tbaa !5
  call fastcc void @add_namespace(ptr noundef nonnull %missing_namespaces.i, ptr noundef %38) #25
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then23.i, %for.body.i.i60.i, %if.end10.i142
  %39 = load i32, ptr %gpl_compatible.i, align 8, !tbaa !21
  %tobool31.not.i = icmp eq i32 %39, 0
  br i1 %tobool31.not.i, label %if.then32.i, label %cleanup.i144

if.then32.i:                                      ; preds = %if.end30.i
  %export.i = getelementptr inbounds %struct.symbol, ptr %s.0.i.i, i64 0, i32 6
  %40 = load i32, ptr %export.i, align 4, !tbaa !14
  %cond.i.i = icmp eq i32 %40, 1
  br i1 %cond.i.i, label %sw.bb.i.i, label %cleanup.i144

sw.bb.i.i:                                        ; preds = %if.then32.i
  call void (i32, ptr, ...) @modpost_log(i32 noundef 1, ptr noundef nonnull @.str.189, ptr noundef nonnull %basename.0.i, ptr noundef nonnull %name3.i.i) #25
  br label %cleanup.i144

cleanup.i144:                                     ; preds = %sw.bb.i.i, %if.then32.i, %if.end30.i, %if.then4.i, %land.lhs.true.i, %if.then.i140
  %s.0.i = load ptr, ptr %s.066.i, align 8, !tbaa !5
  %tobool.not.i143 = icmp eq ptr %s.0.i, null
  br i1 %tobool.not.i143, label %check_exports.exit, label %for.body.i

check_exports.exit:                               ; preds = %cleanup.i144, %check_modname_len.exit
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.190) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.191) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.192) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.193) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.194) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.195) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.173) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.196) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.197) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.173) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.198) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.199) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.173) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.200) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.201) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.202) #25
  %has_init.i = getelementptr inbounds %struct.module, ptr %mod.0264, i64 0, i32 6
  %41 = load i32, ptr %has_init.i, align 4, !tbaa !21
  %tobool.not.i145 = icmp eq i32 %41, 0
  br i1 %tobool.not.i145, label %if.end.i, label %if.then.i146

if.then.i146:                                     ; preds = %check_exports.exit
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.203) #25
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i146, %check_exports.exit
  %has_cleanup.i = getelementptr inbounds %struct.module, ptr %mod.0264, i64 0, i32 7
  %42 = load i32, ptr %has_cleanup.i, align 8, !tbaa !21
  %tobool1.not.i = icmp eq i32 %42, 0
  br i1 %tobool1.not.i, label %add_header.exit, label %if.then2.i147

if.then2.i147:                                    ; preds = %if.end.i
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.204) #25
  br label %add_header.exit

add_header.exit:                                  ; preds = %if.then2.i147, %if.end.i
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.205) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.206) #25
  %.b110 = load i1, ptr @external_module, align 4
  br i1 %.b110, label %add_intree_flag.exit, label %if.then.i149

if.then.i149:                                     ; preds = %add_header.exit
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.207) #25
  br label %add_intree_flag.exit

add_intree_flag.exit:                             ; preds = %if.then.i149, %add_header.exit
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.208) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.209) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.210) #25
  %call.i151 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %name.i, ptr noundef nonnull dereferenceable(16) @.str.211, i64 noundef 15) #29
  %cmp.i152 = icmp eq i32 %call.i151, 0
  br i1 %cmp.i152, label %if.then.i153, label %add_staging_flag.exit

if.then.i153:                                     ; preds = %add_intree_flag.exit
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.212) #25
  br label %add_staging_flag.exit

add_staging_flag.exit:                            ; preds = %if.then.i153, %add_intree_flag.exit
  %s.069.i = load ptr, ptr %unres.i, align 8, !tbaa !5
  %tobool.not70.i = icmp eq ptr %s.069.i, null
  br i1 %tobool.not70.i, label %for.end.i, label %for.body.i163

for.body.i163:                                    ; preds = %for.inc.i, %add_staging_flag.exit
  %s.071.i = phi ptr [ %s.0.i195, %for.inc.i ], [ %s.069.i, %add_staging_flag.exit ]
  %name.i156 = getelementptr inbounds %struct.symbol, ptr %s.071.i, i64 0, i32 7
  %43 = load i8, ptr %name.i156, align 1, !tbaa !14
  %cmp.i.i157 = icmp eq i8 %43, 46
  %spec.select.idx.i.i158 = zext i1 %cmp.i.i157 to i64
  %spec.select.i.i159 = getelementptr i8, ptr %name.i156, i64 %spec.select.idx.i.i158
  %call.i.i.i160 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select.i.i159) #29
  %44 = trunc i64 %call.i.i.i160 to i32
  %conv.i.i.i161 = mul i32 %44, 596579247
  %45 = load i8, ptr %spec.select.i.i159, align 1, !tbaa !14
  %tobool.not13.i.i.i162 = icmp eq i8 %45, 0
  br i1 %tobool.not13.i.i.i162, label %tdb_hash.exit.i.i182, label %for.body.i.i.i175

for.body.i.i.i175:                                ; preds = %for.body.i.i.i175, %for.body.i163
  %46 = phi i8 [ %47, %for.body.i.i.i175 ], [ %45, %for.body.i163 ]
  %i.015.i.i.i164 = phi i32 [ %inc.i.i.i171, %for.body.i.i.i175 ], [ 0, %for.body.i163 ]
  %value.014.i.i.i165 = phi i32 [ %add.i.i.i170, %for.body.i.i.i175 ], [ %conv.i.i.i161, %for.body.i163 ]
  %conv3.i.i.i166 = zext i8 %46 to i32
  %mul4.i.i.i167 = mul i32 %i.015.i.i.i164, 5
  %rem.i.i.i168 = urem i32 %mul4.i.i.i167, 24
  %shl.i.i.i169 = shl nuw nsw i32 %conv3.i.i.i166, %rem.i.i.i168
  %add.i.i.i170 = add i32 %shl.i.i.i169, %value.014.i.i.i165
  %inc.i.i.i171 = add i32 %i.015.i.i.i164, 1
  %idxprom.i.i.i172 = zext i32 %inc.i.i.i171 to i64
  %arrayidx.i.i.i173 = getelementptr inbounds i8, ptr %spec.select.i.i159, i64 %idxprom.i.i.i172
  %47 = load i8, ptr %arrayidx.i.i.i173, align 1, !tbaa !14
  %tobool.not.i.i.i174 = icmp eq i8 %47, 0
  br i1 %tobool.not.i.i.i174, label %tdb_hash.exit.i.i182, label %for.body.i.i.i175

tdb_hash.exit.i.i182:                             ; preds = %for.body.i.i.i175, %for.body.i163
  %value.0.lcssa.i.i.i176 = phi i32 [ %conv.i.i.i161, %for.body.i163 ], [ %add.i.i.i170, %for.body.i.i.i175 ]
  %mul5.i.i.i177 = mul i32 %value.0.lcssa.i.i.i176, 619
  %add6.i.i.i178 = add i32 %mul5.i.i.i177, 57
  %rem.i.i179 = and i32 %add6.i.i.i178, 1023
  %idxprom.i.i180 = zext i32 %rem.i.i179 to i64
  %arrayidx2.i.i181 = getelementptr inbounds [1024 x ptr], ptr @symbolhash, i64 0, i64 %idxprom.i.i180
  br label %for.cond.i.i186

for.cond.i.i186:                                  ; preds = %for.body.i.i190, %tdb_hash.exit.i.i182
  %s.0.in.i.i183 = phi ptr [ %arrayidx2.i.i181, %tdb_hash.exit.i.i182 ], [ %s.0.i.i184, %for.body.i.i190 ]
  %s.0.i.i184 = load ptr, ptr %s.0.in.i.i183, align 8, !tbaa !5
  %tobool.not.i.i185 = icmp eq ptr %s.0.i.i184, null
  br i1 %tobool.not.i.i185, label %for.inc.i, label %for.body.i.i190

for.body.i.i190:                                  ; preds = %for.cond.i.i186
  %name3.i.i187 = getelementptr inbounds %struct.symbol, ptr %s.0.i.i184, i64 0, i32 7
  %call4.i.i188 = call i32 @strcmp(ptr noundef nonnull %name3.i.i187, ptr noundef nonnull %spec.select.i.i159) #29
  %cmp5.i.i189 = icmp eq i32 %call4.i.i188, 0
  br i1 %cmp5.i.i189, label %lor.lhs.false.i193, label %for.cond.i.i186

lor.lhs.false.i193:                               ; preds = %for.body.i.i190
  %module.i191 = getelementptr inbounds %struct.symbol, ptr %s.0.i.i184, i64 0, i32 1
  %48 = load ptr, ptr %module.i191, align 8, !tbaa !5
  %cmp.i192 = icmp eq ptr %48, %mod.0264
  br i1 %cmp.i192, label %for.inc.i, label %if.end.i194

if.end.i194:                                      ; preds = %lor.lhs.false.i193
  %module3.i = getelementptr inbounds %struct.symbol, ptr %s.071.i, i64 0, i32 1
  store ptr %48, ptr %module3.i, align 8, !tbaa !5
  %crc_valid.i = getelementptr inbounds %struct.symbol, ptr %s.0.i.i184, i64 0, i32 3
  %49 = load i32, ptr %crc_valid.i, align 4, !tbaa !21
  %crc_valid4.i = getelementptr inbounds %struct.symbol, ptr %s.071.i, i64 0, i32 3
  store i32 %49, ptr %crc_valid4.i, align 4, !tbaa !21
  %crc.i = getelementptr inbounds %struct.symbol, ptr %s.0.i.i184, i64 0, i32 2
  %50 = load i32, ptr %crc.i, align 8, !tbaa !21
  %crc5.i = getelementptr inbounds %struct.symbol, ptr %s.071.i, i64 0, i32 2
  store i32 %50, ptr %crc5.i, align 8, !tbaa !21
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i194, %lor.lhs.false.i193, %for.cond.i.i186
  %s.0.i195 = load ptr, ptr %s.071.i, align 8, !tbaa !5
  %tobool.not.i196 = icmp eq ptr %s.0.i195, null
  br i1 %tobool.not.i196, label %for.end.i, label %for.body.i163

for.end.i:                                        ; preds = %for.inc.i, %add_staging_flag.exit
  %.b.i197 = load i1, ptr @modversions, align 4
  br i1 %.b.i197, label %if.end8.i, label %add_versions.exit

if.end8.i:                                        ; preds = %for.end.i
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.173) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.213) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.214) #25
  %s.172.i = load ptr, ptr %unres.i, align 8, !tbaa !5
  %tobool11.not73.i = icmp eq ptr %s.172.i, null
  br i1 %tobool11.not73.i, label %for.end40.i, label %for.body12.i

for.body12.i:                                     ; preds = %for.inc38.i, %if.end8.i
  %s.174.i = phi ptr [ %s.1.i, %for.inc38.i ], [ %s.172.i, %if.end8.i ]
  %module13.i = getelementptr inbounds %struct.symbol, ptr %s.174.i, i64 0, i32 1
  %51 = load ptr, ptr %module13.i, align 8, !tbaa !5
  %tobool14.not.i198 = icmp eq ptr %51, null
  br i1 %tobool14.not.i198, label %for.inc38.i, label %if.end16.i

if.end16.i:                                       ; preds = %for.body12.i
  %crc_valid17.i = getelementptr inbounds %struct.symbol, ptr %s.174.i, i64 0, i32 3
  %52 = load i32, ptr %crc_valid17.i, align 4, !tbaa !21
  %tobool18.not.i199 = icmp eq i32 %52, 0
  %name20.i = getelementptr inbounds %struct.symbol, ptr %s.174.i, i64 0, i32 7
  br i1 %tobool18.not.i199, label %if.then19.i, label %if.end24.i

if.then19.i:                                      ; preds = %if.end16.i
  call void (i32, ptr, ...) @modpost_log(i32 noundef 0, ptr noundef nonnull @.str.215, ptr noundef nonnull %name20.i, ptr noundef nonnull %name.i) #25
  br label %for.inc38.i

if.end24.i:                                       ; preds = %if.end16.i
  %call27.i = call i64 @strlen(ptr noundef nonnull %name20.i) #29
  %cmp28.i = icmp ugt i64 %call27.i, 59
  br i1 %cmp28.i, label %if.then29.i, label %if.end34.i

if.then29.i:                                      ; preds = %if.end24.i
  call void (i32, ptr, ...) @modpost_log(i32 noundef 1, ptr noundef nonnull @.str.216, ptr noundef nonnull %name20.i, ptr noundef nonnull %name.i) #25
  br label %for.end40.i

if.end34.i:                                       ; preds = %if.end24.i
  %crc35.i = getelementptr inbounds %struct.symbol, ptr %s.174.i, i64 0, i32 2
  %53 = load i32, ptr %crc35.i, align 8, !tbaa !21
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.217, i32 noundef %53, ptr noundef nonnull %name20.i) #25
  br label %for.inc38.i

for.inc38.i:                                      ; preds = %if.end34.i, %if.then19.i, %for.body12.i
  %s.1.i = load ptr, ptr %s.174.i, align 8, !tbaa !5
  %tobool11.not.i = icmp eq ptr %s.1.i, null
  br i1 %tobool11.not.i, label %for.end40.i, label %for.body12.i

for.end40.i:                                      ; preds = %for.inc38.i, %if.then29.i, %if.end8.i
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.206) #25
  br label %add_versions.exit

add_versions.exit:                                ; preds = %for.end40.i, %for.end.i
  %s.048.i = load ptr, ptr %unres.i, align 8, !tbaa !5
  %tobool.not49.i = icmp eq ptr %s.048.i, null
  br i1 %tobool.not49.i, label %for.end.i209, label %for.body.i204

for.body.i204:                                    ; preds = %for.inc.i208, %add_versions.exit
  %s.050.i = phi ptr [ %s.0.i206, %for.inc.i208 ], [ %s.048.i, %add_versions.exit ]
  %module.i202 = getelementptr inbounds %struct.symbol, ptr %s.050.i, i64 0, i32 1
  %54 = load ptr, ptr %module.i202, align 8, !tbaa !5
  %tobool1.not.i203 = icmp eq ptr %54, null
  br i1 %tobool1.not.i203, label %for.inc.i208, label %if.then.i205

if.then.i205:                                     ; preds = %for.body.i204
  %is_vmlinux.i = getelementptr inbounds %struct.module, ptr %54, i64 0, i32 4
  %55 = load i32, ptr %is_vmlinux.i, align 4, !tbaa !21
  %seen.i = getelementptr inbounds %struct.module, ptr %54, i64 0, i32 5
  store i32 %55, ptr %seen.i, align 8, !tbaa !21
  br label %for.inc.i208

for.inc.i208:                                     ; preds = %if.then.i205, %for.body.i204
  %s.0.i206 = load ptr, ptr %s.050.i, align 8, !tbaa !5
  %tobool.not.i207 = icmp eq ptr %s.0.i206, null
  br i1 %tobool.not.i207, label %for.end.i209, label %for.body.i204

for.end.i209:                                     ; preds = %for.inc.i208, %add_versions.exit
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.173) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.218) #25
  %s.151.i = load ptr, ptr %unres.i, align 8, !tbaa !5
  %tobool6.not52.i = icmp eq ptr %s.151.i, null
  br i1 %tobool6.not52.i, label %add_depends.exit, label %for.body7.i

for.body7.i:                                      ; preds = %cleanup.i218, %for.end.i209
  %s.154.i = phi ptr [ %s.1.i217, %cleanup.i218 ], [ %s.151.i, %for.end.i209 ]
  %first.053.i = phi i32 [ %first.1.i, %cleanup.i218 ], [ 1, %for.end.i209 ]
  %module8.i = getelementptr inbounds %struct.symbol, ptr %s.154.i, i64 0, i32 1
  %56 = load ptr, ptr %module8.i, align 8, !tbaa !5
  %tobool9.not.i = icmp eq ptr %56, null
  br i1 %tobool9.not.i, label %cleanup.i218, label %if.end11.i211

if.end11.i211:                                    ; preds = %for.body7.i
  %seen13.i = getelementptr inbounds %struct.module, ptr %56, i64 0, i32 5
  %57 = load i32, ptr %seen13.i, align 8, !tbaa !21
  %tobool14.not.i210 = icmp eq i32 %57, 0
  br i1 %tobool14.not.i210, label %if.end16.i216, label %cleanup.i218

if.end16.i216:                                    ; preds = %if.end11.i211
  store i32 1, ptr %seen13.i, align 8, !tbaa !21
  %name.i212 = getelementptr inbounds %struct.module, ptr %56, i64 0, i32 12
  %call.i213 = call ptr @strrchr(ptr noundef nonnull %name.i212, i32 noundef 47) #29
  %tobool20.not.i = icmp eq ptr %call.i213, null
  %incdec.ptr.i214 = getelementptr inbounds i8, ptr %call.i213, i64 1
  %p.0.i = select i1 %tobool20.not.i, ptr %name.i212, ptr %incdec.ptr.i214
  %tobool26.not.i = icmp eq i32 %first.053.i, 0
  %cond.i215 = select i1 %tobool26.not.i, ptr @.str.220, ptr @.str.17
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.219, ptr noundef nonnull %cond.i215, ptr noundef nonnull %p.0.i) #25
  br label %cleanup.i218

cleanup.i218:                                     ; preds = %if.end16.i216, %if.end11.i211, %for.body7.i
  %first.1.i = phi i32 [ 0, %if.end16.i216 ], [ %first.053.i, %for.body7.i ], [ %first.053.i, %if.end11.i211 ]
  %s.1.i217 = load ptr, ptr %s.154.i, align 8, !tbaa !5
  %tobool6.not.i = icmp eq ptr %s.1.i217, null
  br i1 %tobool6.not.i, label %add_depends.exit, label %for.body7.i

add_depends.exit:                                 ; preds = %cleanup.i218, %for.end.i209
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.221) #25
  call void @add_moddevtable(ptr noundef nonnull %buf, ptr noundef nonnull %mod.0264) #25
  %srcversion.i = getelementptr inbounds %struct.module, ptr %mod.0264, i64 0, i32 9
  %58 = load i8, ptr %srcversion.i, align 8, !tbaa !14
  %tobool.not.i219 = icmp eq i8 %58, 0
  br i1 %tobool.not.i219, label %add_srcversion.exit, label %if.then.i220

if.then.i220:                                     ; preds = %add_depends.exit
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.173) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.222, ptr noundef nonnull %srcversion.i) #25
  br label %add_srcversion.exit

add_srcversion.exit:                              ; preds = %if.then.i220, %add_depends.exit
  %call32 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %fname, ptr noundef nonnull @.str.9, ptr noundef nonnull %name.i) #25
  call fastcc void @write_if_changed(ptr noundef nonnull %buf, ptr noundef nonnull %fname)
  br label %cleanup

cleanup:                                          ; preds = %add_srcversion.exit, %lor.lhs.false, %for.body
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %fname) #25
  %mod.0 = load ptr, ptr %mod.0264, align 8, !tbaa !5
  %tobool23.not = icmp eq ptr %mod.0, null
  br i1 %tobool23.not, label %for.end, label %for.body

for.end:                                          ; preds = %cleanup, %if.end
  %tobool35.not = icmp eq ptr %missing_namespace_deps.0, null
  br i1 %tobool35.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ns_deps_buf.i) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %ns_deps_buf.i, i8 0, i64 16, i1 false) #25
  %mod.021.i = load ptr, ptr @modules, align 8, !tbaa !5
  %tobool.not22.i = icmp eq ptr %mod.021.i, null
  br i1 %tobool.not22.i, label %write_namespace_deps_files.exit, label %for.body.i224

for.body.i224:                                    ; preds = %for.inc8.i, %if.then36
  %mod.023.i = phi ptr [ %mod.0.i232, %for.inc8.i ], [ %mod.021.i, %if.then36 ]
  %from_dump.i222 = getelementptr inbounds %struct.module, ptr %mod.023.i, i64 0, i32 3
  %59 = load i32, ptr %from_dump.i222, align 8, !tbaa !21
  %tobool1.not.i223 = icmp eq i32 %59, 0
  br i1 %tobool1.not.i223, label %lor.lhs.false.i227, label %for.inc8.i

lor.lhs.false.i227:                               ; preds = %for.body.i224
  %missing_namespaces.i225 = getelementptr inbounds %struct.module, ptr %mod.023.i, i64 0, i32 10
  %60 = load ptr, ptr %missing_namespaces.i225, align 8, !tbaa !5
  %tobool2.not.i226 = icmp eq ptr %60, null
  br i1 %tobool2.not.i226, label %for.inc8.i, label %if.end.i229

if.end.i229:                                      ; preds = %lor.lhs.false.i227
  %name.i228 = getelementptr inbounds %struct.module, ptr %mod.023.i, i64 0, i32 12
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %ns_deps_buf.i, ptr noundef nonnull @.str.225, ptr noundef nonnull %name.i228) #25
  %ns.018.i = load ptr, ptr %missing_namespaces.i225, align 8, !tbaa !5
  %tobool5.not19.i = icmp eq ptr %ns.018.i, null
  br i1 %tobool5.not19.i, label %for.end.i231, label %for.body6.i

for.body6.i:                                      ; preds = %for.body6.i, %if.end.i229
  %ns.020.i = phi ptr [ %ns.0.i, %for.body6.i ], [ %ns.018.i, %if.end.i229 ]
  %namespace.i230 = getelementptr inbounds %struct.namespace_list, ptr %ns.020.i, i64 0, i32 1
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %ns_deps_buf.i, ptr noundef nonnull @.str.226, ptr noundef nonnull %namespace.i230) #25
  %ns.0.i = load ptr, ptr %ns.020.i, align 8, !tbaa !5
  %tobool5.not.i = icmp eq ptr %ns.0.i, null
  br i1 %tobool5.not.i, label %for.end.i231, label %for.body6.i

for.end.i231:                                     ; preds = %for.body6.i, %if.end.i229
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %ns_deps_buf.i, ptr noundef nonnull @.str.173) #25
  br label %for.inc8.i

for.inc8.i:                                       ; preds = %for.end.i231, %lor.lhs.false.i227, %for.body.i224
  %mod.0.i232 = load ptr, ptr %mod.023.i, align 8, !tbaa !5
  %tobool.not.i233 = icmp eq ptr %mod.0.i232, null
  br i1 %tobool.not.i233, label %for.end10.loopexit.i, label %for.body.i224

for.end10.loopexit.i:                             ; preds = %for.inc8.i
  %.pre.i = load ptr, ptr %ns_deps_buf.i, align 8, !tbaa !18
  br label %write_namespace_deps_files.exit

write_namespace_deps_files.exit:                  ; preds = %for.end10.loopexit.i, %if.then36
  %61 = phi ptr [ %.pre.i, %for.end10.loopexit.i ], [ null, %if.then36 ]
  call fastcc void @write_if_changed(ptr noundef nonnull %ns_deps_buf.i, ptr noundef nonnull %missing_namespace_deps.0) #25
  call void @free(ptr noundef %61) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ns_deps_buf.i) #25
  br label %if.end37

if.end37:                                         ; preds = %write_namespace_deps_files.exit, %for.end
  %tobool38.not = icmp eq ptr %dump_write.0, null
  br i1 %tobool38.not, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.end37
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %buf.i, i8 0, i64 16, i1 false) #25
  br label %for.body.i235

for.body.i235:                                    ; preds = %for.inc.i249, %if.then39
  %indvars.iv.i = phi i64 [ 0, %if.then39 ], [ %indvars.iv.next.i, %for.inc.i249 ]
  %arrayidx.i234 = getelementptr inbounds [1024 x ptr], ptr @symbolhash, i64 0, i64 %indvars.iv.i
  %symbol.017.i = load ptr, ptr %arrayidx.i234, align 8, !tbaa !5
  %tobool.not18.i = icmp eq ptr %symbol.017.i, null
  br i1 %tobool.not18.i, label %for.inc.i249, label %while.body.i239

while.body.i239:                                  ; preds = %if.end.i248, %for.body.i235
  %symbol.019.i = phi ptr [ %symbol.0.i, %if.end.i248 ], [ %symbol.017.i, %for.body.i235 ]
  %module.i236 = getelementptr inbounds %struct.symbol, ptr %symbol.019.i, i64 0, i32 1
  %62 = load ptr, ptr %module.i236, align 8, !tbaa !5
  %from_dump.i237 = getelementptr inbounds %struct.module, ptr %62, i64 0, i32 3
  %63 = load i32, ptr %from_dump.i237, align 8, !tbaa !21
  %tobool1.not.i238 = icmp eq i32 %63, 0
  br i1 %tobool1.not.i238, label %if.then.i246, label %if.end.i248

if.then.i246:                                     ; preds = %while.body.i239
  %namespace2.i = getelementptr inbounds %struct.symbol, ptr %symbol.019.i, i64 0, i32 4
  %64 = load ptr, ptr %namespace2.i, align 8, !tbaa !5
  %crc.i240 = getelementptr inbounds %struct.symbol, ptr %symbol.019.i, i64 0, i32 2
  %65 = load i32, ptr %crc.i240, align 8, !tbaa !21
  %name.i241 = getelementptr inbounds %struct.symbol, ptr %symbol.019.i, i64 0, i32 7
  %name4.i = getelementptr inbounds %struct.module, ptr %62, i64 0, i32 12
  %export.i242 = getelementptr inbounds %struct.symbol, ptr %symbol.019.i, i64 0, i32 6
  %66 = load i32, ptr %export.i242, align 4, !tbaa !14
  %idxprom.i.i243 = zext i32 %66 to i64
  %arrayidx.i.i = getelementptr inbounds [3 x %struct.anon], ptr @export_list, i64 0, i64 %idxprom.i.i243
  %67 = load ptr, ptr %arrayidx.i.i, align 16, !tbaa !25
  %tobool6.not.i244 = icmp eq ptr %64, null
  %cond.i245 = select i1 %tobool6.not.i244, ptr @.str.17, ptr %64
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %buf.i, ptr noundef nonnull @.str.227, i32 noundef %65, ptr noundef nonnull %name.i241, ptr noundef nonnull %name4.i, ptr noundef %67, ptr noundef %cond.i245) #25
  br label %if.end.i248

if.end.i248:                                      ; preds = %if.then.i246, %while.body.i239
  %symbol.0.i = load ptr, ptr %symbol.019.i, align 8, !tbaa !5
  %tobool.not.i247 = icmp eq ptr %symbol.0.i, null
  br i1 %tobool.not.i247, label %for.inc.i249, label %while.body.i239

for.inc.i249:                                     ; preds = %if.end.i248, %for.body.i235
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 1024
  br i1 %exitcond.not.i, label %write_dump.exit, label %for.body.i235

write_dump.exit:                                  ; preds = %for.inc.i249
  call fastcc void @write_buf(ptr noundef nonnull %buf.i, ptr noundef nonnull %dump_write.0) #25
  %68 = load ptr, ptr %buf.i, align 8, !tbaa !18
  call void @free(ptr noundef %68) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #25
  br label %if.end40

if.end40:                                         ; preds = %write_dump.exit, %if.end37
  %69 = load i32, ptr @sec_mismatch_count, align 4, !tbaa !21
  %tobool41 = icmp eq i32 %69, 0
  %.b111 = load i1, ptr @sec_mismatch_warn_only, align 4
  %not..b111 = xor i1 %.b111, true
  %or.cond = select i1 %tobool41, i1 true, i1 %not..b111
  br i1 %or.cond, label %for.body47.preheader, label %if.then43

if.then43:                                        ; preds = %if.end40
  call void (i32, ptr, ...) @modpost_log(i32 noundef 1, ptr noundef nonnull @.str.10)
  br label %for.body47.preheader

for.body47.preheader:                             ; preds = %if.then43, %if.end40
  br label %for.body47

for.body47:                                       ; preds = %for.end63, %for.body47.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.end63 ], [ 0, %for.body47.preheader ]
  %arrayidx49 = getelementptr inbounds [1024 x ptr], ptr @symbolhash, i64 0, i64 %indvars.iv
  %s.0265 = load ptr, ptr %arrayidx49, align 8, !tbaa !5
  %tobool51.not266 = icmp eq ptr %s.0265, null
  br i1 %tobool51.not266, label %for.end63, label %for.body52

for.body52:                                       ; preds = %for.inc61, %for.body47
  %s.0267 = phi ptr [ %s.0, %for.inc61 ], [ %s.0265, %for.body47 ]
  %is_static = getelementptr inbounds %struct.symbol, ptr %s.0267, i64 0, i32 5
  %bf.load = load i8, ptr %is_static, align 8
  %70 = and i8 %bf.load, 2
  %tobool53.not = icmp eq i8 %70, 0
  br i1 %tobool53.not, label %for.inc61, label %if.then54

if.then54:                                        ; preds = %for.body52
  %name55 = getelementptr inbounds %struct.symbol, ptr %s.0267, i64 0, i32 7
  %module = getelementptr inbounds %struct.symbol, ptr %s.0267, i64 0, i32 1
  %71 = load ptr, ptr %module, align 8, !tbaa !5
  %name57 = getelementptr inbounds %struct.module, ptr %71, i64 0, i32 12
  %export = getelementptr inbounds %struct.symbol, ptr %s.0267, i64 0, i32 6
  %72 = load i32, ptr %export, align 4, !tbaa !14
  %idxprom.i = zext i32 %72 to i64
  %arrayidx.i251 = getelementptr inbounds [3 x %struct.anon], ptr @export_list, i64 0, i64 %idxprom.i
  %73 = load ptr, ptr %arrayidx.i251, align 16, !tbaa !25
  call void (i32, ptr, ...) @modpost_log(i32 noundef 1, ptr noundef nonnull @.str.11, ptr noundef nonnull %name55, ptr noundef nonnull %name57, ptr noundef %73)
  br label %for.inc61

for.inc61:                                        ; preds = %if.then54, %for.body52
  %s.0 = load ptr, ptr %s.0267, align 8, !tbaa !5
  %tobool51.not = icmp eq ptr %s.0, null
  br i1 %tobool51.not, label %for.end63, label %for.body52

for.end63:                                        ; preds = %for.inc61, %for.body47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond.not, label %for.end66, label %for.body47

for.end66:                                        ; preds = %for.end63
  %74 = load i32, ptr @nr_unresolved, align 4, !tbaa !21
  %cmp67 = icmp ugt i32 %74, 10
  br i1 %cmp67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %for.end66
  %sub = add i32 %74, -10
  call void (i32, ptr, ...) @modpost_log(i32 noundef 0, ptr noundef nonnull @.str.12, i32 noundef %sub)
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %for.end66
  %75 = load ptr, ptr %buf, align 8, !tbaa !18
  call void @free(ptr noundef %75) #25
  %.b112 = load i1, ptr @error_occurred, align 1
  %cond = zext i1 %.b112 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dump_read_start)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #25
  ret i32 %cond
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nounwind
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define internal fastcc void @read_symbols(ptr noundef %modname) unnamed_addr #0 {
entry:
  %r.i19.i = alloca %struct.Elf32_Rela, align 4
  %r.i.i = alloca %struct.Elf32_Rela, align 4
  %st.i.i = alloca %struct.stat, align 8
  %info = alloca %struct.elf_info, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %info) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %info, i8 0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %st.i.i) #25
  %call.i.i = tail call i32 (ptr, i32, ...) @open(ptr noundef %modname, i32 noundef 0) #25
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %grab_file.exit.thread.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %entry
  %call.i.i.i = call i32 @__fxstat(i32 noundef 1, i32 noundef %call.i.i, ptr noundef nonnull %st.i.i) #25
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %failed.i.i, label %failed.i.thread.i

failed.i.thread.i:                                ; preds = %if.end.i.i
  %call5.i844.i = call i32 @close(i32 noundef %call.i.i) #25
  br label %grab_file.exit.thread.i

failed.i.i:                                       ; preds = %if.end.i.i
  %st_size.i.i = getelementptr inbounds %struct.stat, ptr %st.i.i, i64 0, i32 8
  %0 = load i64, ptr %st_size.i.i, align 8, !tbaa !9
  store i64 %0, ptr %info, align 8, !tbaa !26
  %call4.i.i = call ptr @mmap(ptr noundef null, i64 noundef %0, i32 noundef 3, i32 noundef 2, i32 noundef %call.i.i, i64 noundef 0) #25
  %call5.i.i = call i32 @close(i32 noundef %call.i.i) #25
  %cmp6.i.i = icmp eq ptr %call4.i.i, inttoptr (i64 -1 to ptr)
  br i1 %cmp6.i.i, label %grab_file.exit.thread.i, label %grab_file.exit.i

grab_file.exit.thread.i:                          ; preds = %failed.i.i, %failed.i.thread.i, %entry
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st.i.i) #25
  br label %if.then.i

grab_file.exit.i:                                 ; preds = %failed.i.i
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st.i.i) #25
  %tobool.not.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end6.i

if.then.i:                                        ; preds = %grab_file.exit.i, %grab_file.exit.thread.i
  %.b.i = load i1, ptr @ignore_missing_files, align 4
  br i1 %.b.i, label %if.then2.i, label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call3.i = tail call ptr @__errno_location() #32
  %2 = load i32, ptr %call3.i, align 4, !tbaa !21
  %call4.i = call ptr @strerror(i32 noundef %2) #25
  %call5.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.34, ptr noundef %modname, ptr noundef %call4.i) #33
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @perror(ptr noundef %modname) #33
  call void @exit(i32 noundef 1) #27
  unreachable

if.end6.i:                                        ; preds = %grab_file.exit.i
  %hdr7.i = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 1
  store ptr %call4.i.i, ptr %hdr7.i, align 8, !tbaa !27
  %3 = load i64, ptr %info, align 8, !tbaa !30
  %cmp.i = icmp ult i64 %3, 52
  br i1 %cmp.i, label %cleanup, label %if.end10.i

if.end10.i:                                       ; preds = %if.end6.i
  %4 = load i8, ptr %call4.i.i, align 4, !tbaa !14
  %cmp11.not.i = icmp eq i8 %4, 127
  br i1 %cmp11.not.i, label %lor.lhs.false.i, label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end10.i
  %arrayidx14.i = getelementptr inbounds [16 x i8], ptr %call4.i.i, i64 0, i64 1
  %5 = load i8, ptr %arrayidx14.i, align 1, !tbaa !14
  %cmp16.not.i = icmp eq i8 %5, 69
  br i1 %cmp16.not.i, label %lor.lhs.false18.i, label %cleanup

lor.lhs.false18.i:                                ; preds = %lor.lhs.false.i
  %arrayidx20.i = getelementptr inbounds [16 x i8], ptr %call4.i.i, i64 0, i64 2
  %6 = load i8, ptr %arrayidx20.i, align 2, !tbaa !14
  %cmp22.not.i = icmp eq i8 %6, 76
  br i1 %cmp22.not.i, label %lor.lhs.false24.i, label %cleanup

lor.lhs.false24.i:                                ; preds = %lor.lhs.false18.i
  %arrayidx26.i = getelementptr inbounds [16 x i8], ptr %call4.i.i, i64 0, i64 3
  %7 = load i8, ptr %arrayidx26.i, align 1, !tbaa !14
  %cmp28.not.i = icmp eq i8 %7, 70
  br i1 %cmp28.not.i, label %if.end31.i, label %cleanup

if.end31.i:                                       ; preds = %lor.lhs.false24.i
  %e_type.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %call4.i.i, i64 0, i32 1
  %arrayidx.i.i = getelementptr inbounds i8, ptr %e_type.i, i64 1
  %8 = load i8, ptr %arrayidx.i.i, align 1, !tbaa !14
  %9 = load i8, ptr %e_type.i, align 1, !tbaa !14
  %__x.sroa.4.0.insert.ext.i = zext i8 %9 to i16
  %__x.sroa.4.0.insert.shift.i = shl nuw i16 %__x.sroa.4.0.insert.ext.i, 8
  %__x.sroa.0.0.insert.ext.i = zext i8 %8 to i16
  %__x.sroa.0.0.insert.insert.i = or i16 %__x.sroa.4.0.insert.shift.i, %__x.sroa.0.0.insert.ext.i
  store i16 %__x.sroa.0.0.insert.insert.i, ptr %e_type.i, align 4, !tbaa !31
  %e_machine.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %call4.i.i, i64 0, i32 2
  %arrayidx.i543.i = getelementptr inbounds i8, ptr %e_machine.i, i64 1
  %10 = load i8, ptr %arrayidx.i543.i, align 1, !tbaa !14
  %11 = load i8, ptr %e_machine.i, align 1, !tbaa !14
  %__x33.sroa.4.0.insert.ext.i = zext i8 %11 to i16
  %__x33.sroa.4.0.insert.shift.i = shl nuw i16 %__x33.sroa.4.0.insert.ext.i, 8
  %__x33.sroa.0.0.insert.ext.i = zext i8 %10 to i16
  %__x33.sroa.0.0.insert.insert.i = or i16 %__x33.sroa.4.0.insert.shift.i, %__x33.sroa.0.0.insert.ext.i
  store i16 %__x33.sroa.0.0.insert.insert.i, ptr %e_machine.i, align 2, !tbaa !33
  %e_version.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %call4.i.i, i64 0, i32 3
  %arrayidx.i553.i = getelementptr inbounds i8, ptr %e_version.i, i64 3
  %12 = load i8, ptr %arrayidx.i553.i, align 1, !tbaa !14
  %arrayidx.i553.1.i = getelementptr inbounds i8, ptr %e_version.i, i64 2
  %13 = load i8, ptr %arrayidx.i553.1.i, align 1, !tbaa !14
  %arrayidx.i553.2.i = getelementptr inbounds i8, ptr %e_version.i, i64 1
  %14 = load i8, ptr %arrayidx.i553.2.i, align 1, !tbaa !14
  %15 = load i8, ptr %e_version.i, align 1, !tbaa !14
  %__x36.sroa.6.0.insert.ext.i = zext i8 %15 to i32
  %__x36.sroa.6.0.insert.shift.i = shl nuw i32 %__x36.sroa.6.0.insert.ext.i, 24
  %__x36.sroa.5.0.insert.ext.i = zext i8 %14 to i32
  %__x36.sroa.5.0.insert.shift.i = shl nuw nsw i32 %__x36.sroa.5.0.insert.ext.i, 16
  %__x36.sroa.4.0.insert.ext.i = zext i8 %13 to i32
  %__x36.sroa.4.0.insert.shift.i = shl nuw nsw i32 %__x36.sroa.4.0.insert.ext.i, 8
  %__x36.sroa.0.0.insert.ext.i = zext i8 %12 to i32
  %__x36.sroa.5.0.insert.insert.i = or i32 %__x36.sroa.4.0.insert.shift.i, %__x36.sroa.0.0.insert.ext.i
  %__x36.sroa.4.0.insert.insert.i = or i32 %__x36.sroa.5.0.insert.insert.i, %__x36.sroa.5.0.insert.shift.i
  %__x36.sroa.0.0.insert.insert.i = or i32 %__x36.sroa.4.0.insert.insert.i, %__x36.sroa.6.0.insert.shift.i
  store i32 %__x36.sroa.0.0.insert.insert.i, ptr %e_version.i, align 4, !tbaa !34
  %e_entry.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %call4.i.i, i64 0, i32 4
  %arrayidx.i563.i = getelementptr inbounds i8, ptr %e_entry.i, i64 3
  %16 = load i8, ptr %arrayidx.i563.i, align 1, !tbaa !14
  %arrayidx.i563.1.i = getelementptr inbounds i8, ptr %e_entry.i, i64 2
  %17 = load i8, ptr %arrayidx.i563.1.i, align 1, !tbaa !14
  %arrayidx.i563.2.i = getelementptr inbounds i8, ptr %e_entry.i, i64 1
  %18 = load i8, ptr %arrayidx.i563.2.i, align 1, !tbaa !14
  %19 = load i8, ptr %e_entry.i, align 1, !tbaa !14
  %__x39.sroa.6.0.insert.ext.i = zext i8 %19 to i32
  %__x39.sroa.6.0.insert.shift.i = shl nuw i32 %__x39.sroa.6.0.insert.ext.i, 24
  %__x39.sroa.5.0.insert.ext.i = zext i8 %18 to i32
  %__x39.sroa.5.0.insert.shift.i = shl nuw nsw i32 %__x39.sroa.5.0.insert.ext.i, 16
  %__x39.sroa.4.0.insert.ext.i = zext i8 %17 to i32
  %__x39.sroa.4.0.insert.shift.i = shl nuw nsw i32 %__x39.sroa.4.0.insert.ext.i, 8
  %__x39.sroa.0.0.insert.ext.i = zext i8 %16 to i32
  %__x39.sroa.5.0.insert.insert.i = or i32 %__x39.sroa.4.0.insert.shift.i, %__x39.sroa.0.0.insert.ext.i
  %__x39.sroa.4.0.insert.insert.i = or i32 %__x39.sroa.5.0.insert.insert.i, %__x39.sroa.5.0.insert.shift.i
  %__x39.sroa.0.0.insert.insert.i = or i32 %__x39.sroa.4.0.insert.insert.i, %__x39.sroa.6.0.insert.shift.i
  store i32 %__x39.sroa.0.0.insert.insert.i, ptr %e_entry.i, align 4, !tbaa !35
  %e_phoff.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %call4.i.i, i64 0, i32 5
  %arrayidx.i573.i = getelementptr inbounds i8, ptr %e_phoff.i, i64 3
  %20 = load i8, ptr %arrayidx.i573.i, align 1, !tbaa !14
  %arrayidx.i573.1.i = getelementptr inbounds i8, ptr %e_phoff.i, i64 2
  %21 = load i8, ptr %arrayidx.i573.1.i, align 1, !tbaa !14
  %arrayidx.i573.2.i = getelementptr inbounds i8, ptr %e_phoff.i, i64 1
  %22 = load i8, ptr %arrayidx.i573.2.i, align 1, !tbaa !14
  %23 = load i8, ptr %e_phoff.i, align 1, !tbaa !14
  %__x42.sroa.6.0.insert.ext.i = zext i8 %23 to i32
  %__x42.sroa.6.0.insert.shift.i = shl nuw i32 %__x42.sroa.6.0.insert.ext.i, 24
  %__x42.sroa.5.0.insert.ext.i = zext i8 %22 to i32
  %__x42.sroa.5.0.insert.shift.i = shl nuw nsw i32 %__x42.sroa.5.0.insert.ext.i, 16
  %__x42.sroa.4.0.insert.ext.i = zext i8 %21 to i32
  %__x42.sroa.4.0.insert.shift.i = shl nuw nsw i32 %__x42.sroa.4.0.insert.ext.i, 8
  %__x42.sroa.0.0.insert.ext.i = zext i8 %20 to i32
  %__x42.sroa.5.0.insert.insert.i = or i32 %__x42.sroa.4.0.insert.shift.i, %__x42.sroa.0.0.insert.ext.i
  %__x42.sroa.4.0.insert.insert.i = or i32 %__x42.sroa.5.0.insert.insert.i, %__x42.sroa.5.0.insert.shift.i
  %__x42.sroa.0.0.insert.insert.i = or i32 %__x42.sroa.4.0.insert.insert.i, %__x42.sroa.6.0.insert.shift.i
  store i32 %__x42.sroa.0.0.insert.insert.i, ptr %e_phoff.i, align 4, !tbaa !36
  %e_shoff.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %call4.i.i, i64 0, i32 6
  %arrayidx.i583.i = getelementptr inbounds i8, ptr %e_shoff.i, i64 3
  %24 = load i8, ptr %arrayidx.i583.i, align 1, !tbaa !14
  %arrayidx.i583.1.i = getelementptr inbounds i8, ptr %e_shoff.i, i64 2
  %25 = load i8, ptr %arrayidx.i583.1.i, align 1, !tbaa !14
  %arrayidx.i583.2.i = getelementptr inbounds i8, ptr %e_shoff.i, i64 1
  %26 = load i8, ptr %arrayidx.i583.2.i, align 1, !tbaa !14
  %27 = load i8, ptr %e_shoff.i, align 1, !tbaa !14
  %__x45.sroa.6.0.insert.ext.i = zext i8 %27 to i32
  %__x45.sroa.6.0.insert.shift.i = shl nuw i32 %__x45.sroa.6.0.insert.ext.i, 24
  %__x45.sroa.5.0.insert.ext.i = zext i8 %26 to i32
  %__x45.sroa.5.0.insert.shift.i = shl nuw nsw i32 %__x45.sroa.5.0.insert.ext.i, 16
  %__x45.sroa.4.0.insert.ext.i = zext i8 %25 to i32
  %__x45.sroa.4.0.insert.shift.i = shl nuw nsw i32 %__x45.sroa.4.0.insert.ext.i, 8
  %__x45.sroa.0.0.insert.ext.i = zext i8 %24 to i32
  %__x45.sroa.5.0.insert.insert.i = or i32 %__x45.sroa.4.0.insert.shift.i, %__x45.sroa.0.0.insert.ext.i
  %__x45.sroa.4.0.insert.insert.i = or i32 %__x45.sroa.5.0.insert.insert.i, %__x45.sroa.5.0.insert.shift.i
  %__x45.sroa.0.0.insert.insert.i = or i32 %__x45.sroa.4.0.insert.insert.i, %__x45.sroa.6.0.insert.shift.i
  store i32 %__x45.sroa.0.0.insert.insert.i, ptr %e_shoff.i, align 4, !tbaa !37
  %e_flags.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %call4.i.i, i64 0, i32 7
  %arrayidx.i593.i = getelementptr inbounds i8, ptr %e_flags.i, i64 3
  %28 = load i8, ptr %arrayidx.i593.i, align 1, !tbaa !14
  %arrayidx.i593.1.i = getelementptr inbounds i8, ptr %e_flags.i, i64 2
  %29 = load i8, ptr %arrayidx.i593.1.i, align 1, !tbaa !14
  %arrayidx.i593.2.i = getelementptr inbounds i8, ptr %e_flags.i, i64 1
  %30 = load i8, ptr %arrayidx.i593.2.i, align 1, !tbaa !14
  %31 = load i8, ptr %e_flags.i, align 1, !tbaa !14
  %__x48.sroa.6.0.insert.ext.i = zext i8 %31 to i32
  %__x48.sroa.6.0.insert.shift.i = shl nuw i32 %__x48.sroa.6.0.insert.ext.i, 24
  %__x48.sroa.5.0.insert.ext.i = zext i8 %30 to i32
  %__x48.sroa.5.0.insert.shift.i = shl nuw nsw i32 %__x48.sroa.5.0.insert.ext.i, 16
  %__x48.sroa.4.0.insert.ext.i = zext i8 %29 to i32
  %__x48.sroa.4.0.insert.shift.i = shl nuw nsw i32 %__x48.sroa.4.0.insert.ext.i, 8
  %__x48.sroa.0.0.insert.ext.i = zext i8 %28 to i32
  %__x48.sroa.5.0.insert.insert.i = or i32 %__x48.sroa.4.0.insert.shift.i, %__x48.sroa.0.0.insert.ext.i
  %__x48.sroa.4.0.insert.insert.i = or i32 %__x48.sroa.5.0.insert.insert.i, %__x48.sroa.5.0.insert.shift.i
  %__x48.sroa.0.0.insert.insert.i = or i32 %__x48.sroa.4.0.insert.insert.i, %__x48.sroa.6.0.insert.shift.i
  store i32 %__x48.sroa.0.0.insert.insert.i, ptr %e_flags.i, align 4, !tbaa !38
  %e_ehsize.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %call4.i.i, i64 0, i32 8
  %arrayidx.i603.i = getelementptr inbounds i8, ptr %e_ehsize.i, i64 1
  %32 = load i8, ptr %arrayidx.i603.i, align 1, !tbaa !14
  %33 = load i8, ptr %e_ehsize.i, align 1, !tbaa !14
  %__x51.sroa.4.0.insert.ext.i = zext i8 %33 to i16
  %__x51.sroa.4.0.insert.shift.i = shl nuw i16 %__x51.sroa.4.0.insert.ext.i, 8
  %__x51.sroa.0.0.insert.ext.i = zext i8 %32 to i16
  %__x51.sroa.0.0.insert.insert.i = or i16 %__x51.sroa.4.0.insert.shift.i, %__x51.sroa.0.0.insert.ext.i
  store i16 %__x51.sroa.0.0.insert.insert.i, ptr %e_ehsize.i, align 4, !tbaa !39
  %e_phentsize.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %call4.i.i, i64 0, i32 9
  %arrayidx.i613.i = getelementptr inbounds i8, ptr %e_phentsize.i, i64 1
  %34 = load i8, ptr %arrayidx.i613.i, align 1, !tbaa !14
  %35 = load i8, ptr %e_phentsize.i, align 1, !tbaa !14
  %__x54.sroa.4.0.insert.ext.i = zext i8 %35 to i16
  %__x54.sroa.4.0.insert.shift.i = shl nuw i16 %__x54.sroa.4.0.insert.ext.i, 8
  %__x54.sroa.0.0.insert.ext.i = zext i8 %34 to i16
  %__x54.sroa.0.0.insert.insert.i = or i16 %__x54.sroa.4.0.insert.shift.i, %__x54.sroa.0.0.insert.ext.i
  store i16 %__x54.sroa.0.0.insert.insert.i, ptr %e_phentsize.i, align 2, !tbaa !40
  %e_phnum.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %call4.i.i, i64 0, i32 10
  %arrayidx.i623.i = getelementptr inbounds i8, ptr %e_phnum.i, i64 1
  %36 = load i8, ptr %arrayidx.i623.i, align 1, !tbaa !14
  %37 = load i8, ptr %e_phnum.i, align 1, !tbaa !14
  %__x57.sroa.4.0.insert.ext.i = zext i8 %37 to i16
  %__x57.sroa.4.0.insert.shift.i = shl nuw i16 %__x57.sroa.4.0.insert.ext.i, 8
  %__x57.sroa.0.0.insert.ext.i = zext i8 %36 to i16
  %__x57.sroa.0.0.insert.insert.i = or i16 %__x57.sroa.4.0.insert.shift.i, %__x57.sroa.0.0.insert.ext.i
  store i16 %__x57.sroa.0.0.insert.insert.i, ptr %e_phnum.i, align 4, !tbaa !41
  %e_shentsize.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %call4.i.i, i64 0, i32 11
  %arrayidx.i633.i = getelementptr inbounds i8, ptr %e_shentsize.i, i64 1
  %38 = load i8, ptr %arrayidx.i633.i, align 1, !tbaa !14
  %39 = load i8, ptr %e_shentsize.i, align 1, !tbaa !14
  %__x60.sroa.4.0.insert.ext.i = zext i8 %39 to i16
  %__x60.sroa.4.0.insert.shift.i = shl nuw i16 %__x60.sroa.4.0.insert.ext.i, 8
  %__x60.sroa.0.0.insert.ext.i = zext i8 %38 to i16
  %__x60.sroa.0.0.insert.insert.i = or i16 %__x60.sroa.4.0.insert.shift.i, %__x60.sroa.0.0.insert.ext.i
  store i16 %__x60.sroa.0.0.insert.insert.i, ptr %e_shentsize.i, align 2, !tbaa !42
  %e_shnum.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %call4.i.i, i64 0, i32 12
  %arrayidx.i643.i = getelementptr inbounds i8, ptr %e_shnum.i, i64 1
  %40 = load i8, ptr %arrayidx.i643.i, align 1, !tbaa !14
  %41 = load i8, ptr %e_shnum.i, align 1, !tbaa !14
  %__x63.sroa.4.0.insert.ext.i = zext i8 %41 to i16
  %__x63.sroa.4.0.insert.shift.i = shl nuw i16 %__x63.sroa.4.0.insert.ext.i, 8
  %__x63.sroa.0.0.insert.ext.i = zext i8 %40 to i16
  %__x63.sroa.0.0.insert.insert.i = or i16 %__x63.sroa.4.0.insert.shift.i, %__x63.sroa.0.0.insert.ext.i
  store i16 %__x63.sroa.0.0.insert.insert.i, ptr %e_shnum.i, align 4, !tbaa !43
  %e_shstrndx.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %call4.i.i, i64 0, i32 13
  %arrayidx.i653.i = getelementptr inbounds i8, ptr %e_shstrndx.i, i64 1
  %42 = load i8, ptr %arrayidx.i653.i, align 1, !tbaa !14
  %43 = load i8, ptr %e_shstrndx.i, align 1, !tbaa !14
  %__x66.sroa.4.0.insert.ext.i = zext i8 %43 to i16
  %__x66.sroa.4.0.insert.shift.i = shl nuw i16 %__x66.sroa.4.0.insert.ext.i, 8
  %__x66.sroa.0.0.insert.ext.i = zext i8 %42 to i16
  %__x66.sroa.0.0.insert.insert.i = or i16 %__x66.sroa.4.0.insert.shift.i, %__x66.sroa.0.0.insert.ext.i
  store i16 %__x66.sroa.0.0.insert.insert.i, ptr %e_shstrndx.i, align 2, !tbaa !44
  %idx.ext.i = zext i32 %__x45.sroa.0.0.insert.insert.i to i64
  %add.ptr.i = getelementptr i8, ptr %call4.i.i, i64 %idx.ext.i
  %sechdrs70.i = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 2
  store ptr %add.ptr.i, ptr %sechdrs70.i, align 8, !tbaa !45
  %cmp74.i = icmp ult i64 %3, %idx.ext.i
  br i1 %cmp74.i, label %if.then76.i, label %if.end80.i

if.then76.i:                                      ; preds = %if.end31.i
  call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.35, i64 noundef %idx.ext.i, ptr noundef %modname, i64 noundef %3) #25
  br label %cleanup

if.end80.i:                                       ; preds = %if.end31.i
  %cmp83.i = icmp eq i16 %__x63.sroa.0.0.insert.insert.i, 0
  br i1 %cmp83.i, label %if.then85.i, label %if.else.i

if.then85.i:                                      ; preds = %if.end80.i
  %sh_size.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %add.ptr.i, i64 0, i32 5
  %arrayidx.i663.i = getelementptr inbounds i8, ptr %sh_size.i, i64 3
  %44 = load i8, ptr %arrayidx.i663.i, align 1, !tbaa !14
  %arrayidx.i663.1.i = getelementptr inbounds i8, ptr %sh_size.i, i64 2
  %45 = load i8, ptr %arrayidx.i663.1.i, align 1, !tbaa !14
  %arrayidx.i663.2.i = getelementptr inbounds i8, ptr %sh_size.i, i64 1
  %46 = load i8, ptr %arrayidx.i663.2.i, align 1, !tbaa !14
  %47 = load i8, ptr %sh_size.i, align 1, !tbaa !14
  %__x86.sroa.6.0.insert.ext.i = zext i8 %47 to i32
  %__x86.sroa.6.0.insert.shift.i = shl nuw i32 %__x86.sroa.6.0.insert.ext.i, 24
  %__x86.sroa.5.0.insert.ext.i = zext i8 %46 to i32
  %__x86.sroa.5.0.insert.shift.i = shl nuw nsw i32 %__x86.sroa.5.0.insert.ext.i, 16
  %__x86.sroa.4.0.insert.ext.i = zext i8 %45 to i32
  %__x86.sroa.4.0.insert.shift.i = shl nuw nsw i32 %__x86.sroa.4.0.insert.ext.i, 8
  %__x86.sroa.0.0.insert.ext.i = zext i8 %44 to i32
  %__x86.sroa.5.0.insert.insert.i = or i32 %__x86.sroa.4.0.insert.shift.i, %__x86.sroa.0.0.insert.ext.i
  %__x86.sroa.4.0.insert.insert.i = or i32 %__x86.sroa.5.0.insert.insert.i, %__x86.sroa.5.0.insert.shift.i
  %__x86.sroa.0.0.insert.insert.i = or i32 %__x86.sroa.4.0.insert.insert.i, %__x86.sroa.6.0.insert.shift.i
  br label %if.end92.i

if.else.i:                                        ; preds = %if.end80.i
  %conv82.i = zext i16 %__x63.sroa.0.0.insert.insert.i to i32
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.else.i, %if.then85.i
  %conv82.sink.i = phi i32 [ %conv82.i, %if.else.i ], [ %__x86.sroa.0.0.insert.insert.i, %if.then85.i ]
  %num_sections91.i = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 10
  store i32 %conv82.sink.i, ptr %num_sections91.i, align 4, !tbaa !46
  %cmp95.i = icmp eq i16 %__x66.sroa.0.0.insert.insert.i, -1
  br i1 %cmp95.i, label %if.then97.i, label %if.else101.i

if.then97.i:                                      ; preds = %if.end92.i
  %sh_link.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %add.ptr.i, i64 0, i32 6
  %arrayidx.i673.i = getelementptr inbounds i8, ptr %sh_link.i, i64 3
  %48 = load i8, ptr %arrayidx.i673.i, align 1, !tbaa !14
  %arrayidx.i673.1.i = getelementptr inbounds i8, ptr %sh_link.i, i64 2
  %49 = load i8, ptr %arrayidx.i673.1.i, align 1, !tbaa !14
  %arrayidx.i673.2.i = getelementptr inbounds i8, ptr %sh_link.i, i64 1
  %50 = load i8, ptr %arrayidx.i673.2.i, align 1, !tbaa !14
  %51 = load i8, ptr %sh_link.i, align 1, !tbaa !14
  %__x98.sroa.6.0.insert.ext.i = zext i8 %51 to i32
  %__x98.sroa.6.0.insert.shift.i = shl nuw i32 %__x98.sroa.6.0.insert.ext.i, 24
  %__x98.sroa.5.0.insert.ext.i = zext i8 %50 to i32
  %__x98.sroa.5.0.insert.shift.i = shl nuw nsw i32 %__x98.sroa.5.0.insert.ext.i, 16
  %__x98.sroa.4.0.insert.ext.i = zext i8 %49 to i32
  %__x98.sroa.4.0.insert.shift.i = shl nuw nsw i32 %__x98.sroa.4.0.insert.ext.i, 8
  %__x98.sroa.0.0.insert.ext.i = zext i8 %48 to i32
  %__x98.sroa.5.0.insert.insert.i = or i32 %__x98.sroa.4.0.insert.shift.i, %__x98.sroa.0.0.insert.ext.i
  %__x98.sroa.4.0.insert.insert.i = or i32 %__x98.sroa.5.0.insert.insert.i, %__x98.sroa.5.0.insert.shift.i
  %__x98.sroa.0.0.insert.insert.i = or i32 %__x98.sroa.4.0.insert.insert.i, %__x98.sroa.6.0.insert.shift.i
  br label %if.end105.i

if.else101.i:                                     ; preds = %if.end92.i
  %conv94.i = zext i16 %__x66.sroa.0.0.insert.insert.i to i32
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.else101.i, %if.then97.i
  %conv94.sink.i = phi i32 [ %conv94.i, %if.else101.i ], [ %__x98.sroa.0.0.insert.insert.i, %if.then97.i ]
  %secindex_strings104.i = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 11
  store i32 %conv94.sink.i, ptr %secindex_strings104.i, align 8, !tbaa !47
  %cmp107848.not.i = icmp eq i32 %conv82.sink.i, 0
  br i1 %cmp107848.not.i, label %for.end300.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end105.i
  %wide.trip.count.i = zext i32 %conv82.sink.i to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i ]
  %arrayidx110.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %add.ptr.i, i64 %indvars.iv.i
  %arrayidx.i683.i = getelementptr inbounds i8, ptr %arrayidx110.i, i64 3
  %52 = load i8, ptr %arrayidx.i683.i, align 1, !tbaa !14
  %arrayidx.i683.1.i = getelementptr inbounds i8, ptr %arrayidx110.i, i64 2
  %53 = load i8, ptr %arrayidx.i683.1.i, align 1, !tbaa !14
  %arrayidx.i683.2.i = getelementptr inbounds i8, ptr %arrayidx110.i, i64 1
  %54 = load i8, ptr %arrayidx.i683.2.i, align 1, !tbaa !14
  %55 = load i8, ptr %arrayidx110.i, align 1, !tbaa !14
  %__x109.sroa.6.0.insert.ext.i = zext i8 %55 to i32
  %__x109.sroa.6.0.insert.shift.i = shl nuw i32 %__x109.sroa.6.0.insert.ext.i, 24
  %__x109.sroa.5.0.insert.ext.i = zext i8 %54 to i32
  %__x109.sroa.5.0.insert.shift.i = shl nuw nsw i32 %__x109.sroa.5.0.insert.ext.i, 16
  %__x109.sroa.4.0.insert.ext.i = zext i8 %53 to i32
  %__x109.sroa.4.0.insert.shift.i = shl nuw nsw i32 %__x109.sroa.4.0.insert.ext.i, 8
  %__x109.sroa.0.0.insert.ext.i = zext i8 %52 to i32
  %__x109.sroa.5.0.insert.insert.i = or i32 %__x109.sroa.4.0.insert.shift.i, %__x109.sroa.0.0.insert.ext.i
  %__x109.sroa.4.0.insert.insert.i = or i32 %__x109.sroa.5.0.insert.insert.i, %__x109.sroa.5.0.insert.shift.i
  %__x109.sroa.0.0.insert.insert.i = or i32 %__x109.sroa.4.0.insert.insert.i, %__x109.sroa.6.0.insert.shift.i
  store i32 %__x109.sroa.0.0.insert.insert.i, ptr %arrayidx110.i, align 4, !tbaa !48
  %sh_type.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx110.i, i64 0, i32 1
  %arrayidx.i693.i = getelementptr inbounds i8, ptr %sh_type.i, i64 3
  %56 = load i8, ptr %arrayidx.i693.i, align 1, !tbaa !14
  %arrayidx.i693.1.i = getelementptr inbounds i8, ptr %sh_type.i, i64 2
  %57 = load i8, ptr %arrayidx.i693.1.i, align 1, !tbaa !14
  %arrayidx.i693.2.i = getelementptr inbounds i8, ptr %sh_type.i, i64 1
  %58 = load i8, ptr %arrayidx.i693.2.i, align 1, !tbaa !14
  %59 = load i8, ptr %sh_type.i, align 1, !tbaa !14
  %__x115.sroa.6.0.insert.ext.i = zext i8 %59 to i32
  %__x115.sroa.6.0.insert.shift.i = shl nuw i32 %__x115.sroa.6.0.insert.ext.i, 24
  %__x115.sroa.5.0.insert.ext.i = zext i8 %58 to i32
  %__x115.sroa.5.0.insert.shift.i = shl nuw nsw i32 %__x115.sroa.5.0.insert.ext.i, 16
  %__x115.sroa.4.0.insert.ext.i = zext i8 %57 to i32
  %__x115.sroa.4.0.insert.shift.i = shl nuw nsw i32 %__x115.sroa.4.0.insert.ext.i, 8
  %__x115.sroa.0.0.insert.ext.i = zext i8 %56 to i32
  %__x115.sroa.5.0.insert.insert.i = or i32 %__x115.sroa.4.0.insert.shift.i, %__x115.sroa.0.0.insert.ext.i
  %__x115.sroa.4.0.insert.insert.i = or i32 %__x115.sroa.5.0.insert.insert.i, %__x115.sroa.5.0.insert.shift.i
  %__x115.sroa.0.0.insert.insert.i = or i32 %__x115.sroa.4.0.insert.insert.i, %__x115.sroa.6.0.insert.shift.i
  store i32 %__x115.sroa.0.0.insert.insert.i, ptr %sh_type.i, align 4, !tbaa !50
  %sh_flags.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx110.i, i64 0, i32 2
  %arrayidx.i703.i = getelementptr inbounds i8, ptr %sh_flags.i, i64 3
  %60 = load i8, ptr %arrayidx.i703.i, align 1, !tbaa !14
  %arrayidx.i703.1.i = getelementptr inbounds i8, ptr %sh_flags.i, i64 2
  %61 = load i8, ptr %arrayidx.i703.1.i, align 1, !tbaa !14
  %arrayidx.i703.2.i = getelementptr inbounds i8, ptr %sh_flags.i, i64 1
  %62 = load i8, ptr %arrayidx.i703.2.i, align 1, !tbaa !14
  %63 = load i8, ptr %sh_flags.i, align 1, !tbaa !14
  %__x122.sroa.6.0.insert.ext.i = zext i8 %63 to i32
  %__x122.sroa.6.0.insert.shift.i = shl nuw i32 %__x122.sroa.6.0.insert.ext.i, 24
  %__x122.sroa.5.0.insert.ext.i = zext i8 %62 to i32
  %__x122.sroa.5.0.insert.shift.i = shl nuw nsw i32 %__x122.sroa.5.0.insert.ext.i, 16
  %__x122.sroa.4.0.insert.ext.i = zext i8 %61 to i32
  %__x122.sroa.4.0.insert.shift.i = shl nuw nsw i32 %__x122.sroa.4.0.insert.ext.i, 8
  %__x122.sroa.0.0.insert.ext.i = zext i8 %60 to i32
  %__x122.sroa.5.0.insert.insert.i = or i32 %__x122.sroa.4.0.insert.shift.i, %__x122.sroa.0.0.insert.ext.i
  %__x122.sroa.4.0.insert.insert.i = or i32 %__x122.sroa.5.0.insert.insert.i, %__x122.sroa.5.0.insert.shift.i
  %__x122.sroa.0.0.insert.insert.i = or i32 %__x122.sroa.4.0.insert.insert.i, %__x122.sroa.6.0.insert.shift.i
  store i32 %__x122.sroa.0.0.insert.insert.i, ptr %sh_flags.i, align 4, !tbaa !51
  %sh_addr.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx110.i, i64 0, i32 3
  %arrayidx.i713.i = getelementptr inbounds i8, ptr %sh_addr.i, i64 3
  %64 = load i8, ptr %arrayidx.i713.i, align 1, !tbaa !14
  %arrayidx.i713.1.i = getelementptr inbounds i8, ptr %sh_addr.i, i64 2
  %65 = load i8, ptr %arrayidx.i713.1.i, align 1, !tbaa !14
  %arrayidx.i713.2.i = getelementptr inbounds i8, ptr %sh_addr.i, i64 1
  %66 = load i8, ptr %arrayidx.i713.2.i, align 1, !tbaa !14
  %67 = load i8, ptr %sh_addr.i, align 1, !tbaa !14
  %__x129.sroa.6.0.insert.ext.i = zext i8 %67 to i32
  %__x129.sroa.6.0.insert.shift.i = shl nuw i32 %__x129.sroa.6.0.insert.ext.i, 24
  %__x129.sroa.5.0.insert.ext.i = zext i8 %66 to i32
  %__x129.sroa.5.0.insert.shift.i = shl nuw nsw i32 %__x129.sroa.5.0.insert.ext.i, 16
  %__x129.sroa.4.0.insert.ext.i = zext i8 %65 to i32
  %__x129.sroa.4.0.insert.shift.i = shl nuw nsw i32 %__x129.sroa.4.0.insert.ext.i, 8
  %__x129.sroa.0.0.insert.ext.i = zext i8 %64 to i32
  %__x129.sroa.5.0.insert.insert.i = or i32 %__x129.sroa.4.0.insert.shift.i, %__x129.sroa.0.0.insert.ext.i
  %__x129.sroa.4.0.insert.insert.i = or i32 %__x129.sroa.5.0.insert.insert.i, %__x129.sroa.5.0.insert.shift.i
  %__x129.sroa.0.0.insert.insert.i = or i32 %__x129.sroa.4.0.insert.insert.i, %__x129.sroa.6.0.insert.shift.i
  store i32 %__x129.sroa.0.0.insert.insert.i, ptr %sh_addr.i, align 4, !tbaa !52
  %sh_offset.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx110.i, i64 0, i32 4
  %arrayidx.i723.i = getelementptr inbounds i8, ptr %sh_offset.i, i64 3
  %68 = load i8, ptr %arrayidx.i723.i, align 1, !tbaa !14
  %arrayidx.i723.1.i = getelementptr inbounds i8, ptr %sh_offset.i, i64 2
  %69 = load i8, ptr %arrayidx.i723.1.i, align 1, !tbaa !14
  %arrayidx.i723.2.i = getelementptr inbounds i8, ptr %sh_offset.i, i64 1
  %70 = load i8, ptr %arrayidx.i723.2.i, align 1, !tbaa !14
  %71 = load i8, ptr %sh_offset.i, align 1, !tbaa !14
  %__x136.sroa.6.0.insert.ext.i = zext i8 %71 to i32
  %__x136.sroa.6.0.insert.shift.i = shl nuw i32 %__x136.sroa.6.0.insert.ext.i, 24
  %__x136.sroa.5.0.insert.ext.i = zext i8 %70 to i32
  %__x136.sroa.5.0.insert.shift.i = shl nuw nsw i32 %__x136.sroa.5.0.insert.ext.i, 16
  %__x136.sroa.4.0.insert.ext.i = zext i8 %69 to i32
  %__x136.sroa.4.0.insert.shift.i = shl nuw nsw i32 %__x136.sroa.4.0.insert.ext.i, 8
  %__x136.sroa.0.0.insert.ext.i = zext i8 %68 to i32
  %__x136.sroa.5.0.insert.insert.i = or i32 %__x136.sroa.4.0.insert.shift.i, %__x136.sroa.0.0.insert.ext.i
  %__x136.sroa.4.0.insert.insert.i = or i32 %__x136.sroa.5.0.insert.insert.i, %__x136.sroa.5.0.insert.shift.i
  %__x136.sroa.0.0.insert.insert.i = or i32 %__x136.sroa.4.0.insert.insert.i, %__x136.sroa.6.0.insert.shift.i
  store i32 %__x136.sroa.0.0.insert.insert.i, ptr %sh_offset.i, align 4, !tbaa !53
  %sh_size146.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx110.i, i64 0, i32 5
  %arrayidx.i733.i = getelementptr inbounds i8, ptr %sh_size146.i, i64 3
  %72 = load i8, ptr %arrayidx.i733.i, align 1, !tbaa !14
  %arrayidx.i733.1.i = getelementptr inbounds i8, ptr %sh_size146.i, i64 2
  %73 = load i8, ptr %arrayidx.i733.1.i, align 1, !tbaa !14
  %arrayidx.i733.2.i = getelementptr inbounds i8, ptr %sh_size146.i, i64 1
  %74 = load i8, ptr %arrayidx.i733.2.i, align 1, !tbaa !14
  %75 = load i8, ptr %sh_size146.i, align 1, !tbaa !14
  %__x143.sroa.6.0.insert.ext.i = zext i8 %75 to i32
  %__x143.sroa.6.0.insert.shift.i = shl nuw i32 %__x143.sroa.6.0.insert.ext.i, 24
  %__x143.sroa.5.0.insert.ext.i = zext i8 %74 to i32
  %__x143.sroa.5.0.insert.shift.i = shl nuw nsw i32 %__x143.sroa.5.0.insert.ext.i, 16
  %__x143.sroa.4.0.insert.ext.i = zext i8 %73 to i32
  %__x143.sroa.4.0.insert.shift.i = shl nuw nsw i32 %__x143.sroa.4.0.insert.ext.i, 8
  %__x143.sroa.0.0.insert.ext.i = zext i8 %72 to i32
  %__x143.sroa.5.0.insert.insert.i = or i32 %__x143.sroa.4.0.insert.shift.i, %__x143.sroa.0.0.insert.ext.i
  %__x143.sroa.4.0.insert.insert.i = or i32 %__x143.sroa.5.0.insert.insert.i, %__x143.sroa.5.0.insert.shift.i
  %__x143.sroa.0.0.insert.insert.i = or i32 %__x143.sroa.4.0.insert.insert.i, %__x143.sroa.6.0.insert.shift.i
  store i32 %__x143.sroa.0.0.insert.insert.i, ptr %sh_size146.i, align 4, !tbaa !54
  %sh_link154.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx110.i, i64 0, i32 6
  %arrayidx.i743.i = getelementptr inbounds i8, ptr %sh_link154.i, i64 3
  %76 = load i8, ptr %arrayidx.i743.i, align 1, !tbaa !14
  %arrayidx.i743.1.i = getelementptr inbounds i8, ptr %sh_link154.i, i64 2
  %77 = load i8, ptr %arrayidx.i743.1.i, align 1, !tbaa !14
  %arrayidx.i743.2.i = getelementptr inbounds i8, ptr %sh_link154.i, i64 1
  %78 = load i8, ptr %arrayidx.i743.2.i, align 1, !tbaa !14
  %79 = load i8, ptr %sh_link154.i, align 1, !tbaa !14
  %__x151.sroa.6.0.insert.ext.i = zext i8 %79 to i32
  %__x151.sroa.6.0.insert.shift.i = shl nuw i32 %__x151.sroa.6.0.insert.ext.i, 24
  %__x151.sroa.5.0.insert.ext.i = zext i8 %78 to i32
  %__x151.sroa.5.0.insert.shift.i = shl nuw nsw i32 %__x151.sroa.5.0.insert.ext.i, 16
  %__x151.sroa.4.0.insert.ext.i = zext i8 %77 to i32
  %__x151.sroa.4.0.insert.shift.i = shl nuw nsw i32 %__x151.sroa.4.0.insert.ext.i, 8
  %__x151.sroa.0.0.insert.ext.i = zext i8 %76 to i32
  %__x151.sroa.5.0.insert.insert.i = or i32 %__x151.sroa.4.0.insert.shift.i, %__x151.sroa.0.0.insert.ext.i
  %__x151.sroa.4.0.insert.insert.i = or i32 %__x151.sroa.5.0.insert.insert.i, %__x151.sroa.5.0.insert.shift.i
  %__x151.sroa.0.0.insert.insert.i = or i32 %__x151.sroa.4.0.insert.insert.i, %__x151.sroa.6.0.insert.shift.i
  store i32 %__x151.sroa.0.0.insert.insert.i, ptr %sh_link154.i, align 4, !tbaa !55
  %sh_info.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx110.i, i64 0, i32 7
  %arrayidx.i753.i = getelementptr inbounds i8, ptr %sh_info.i, i64 3
  %80 = load i8, ptr %arrayidx.i753.i, align 1, !tbaa !14
  %arrayidx.i753.1.i = getelementptr inbounds i8, ptr %sh_info.i, i64 2
  %81 = load i8, ptr %arrayidx.i753.1.i, align 1, !tbaa !14
  %arrayidx.i753.2.i = getelementptr inbounds i8, ptr %sh_info.i, i64 1
  %82 = load i8, ptr %arrayidx.i753.2.i, align 1, !tbaa !14
  %83 = load i8, ptr %sh_info.i, align 1, !tbaa !14
  %__x159.sroa.6.0.insert.ext.i = zext i8 %83 to i32
  %__x159.sroa.6.0.insert.shift.i = shl nuw i32 %__x159.sroa.6.0.insert.ext.i, 24
  %__x159.sroa.5.0.insert.ext.i = zext i8 %82 to i32
  %__x159.sroa.5.0.insert.shift.i = shl nuw nsw i32 %__x159.sroa.5.0.insert.ext.i, 16
  %__x159.sroa.4.0.insert.ext.i = zext i8 %81 to i32
  %__x159.sroa.4.0.insert.shift.i = shl nuw nsw i32 %__x159.sroa.4.0.insert.ext.i, 8
  %__x159.sroa.0.0.insert.ext.i = zext i8 %80 to i32
  %__x159.sroa.5.0.insert.insert.i = or i32 %__x159.sroa.4.0.insert.shift.i, %__x159.sroa.0.0.insert.ext.i
  %__x159.sroa.4.0.insert.insert.i = or i32 %__x159.sroa.5.0.insert.insert.i, %__x159.sroa.5.0.insert.shift.i
  %__x159.sroa.0.0.insert.insert.i = or i32 %__x159.sroa.4.0.insert.insert.i, %__x159.sroa.6.0.insert.shift.i
  store i32 %__x159.sroa.0.0.insert.insert.i, ptr %sh_info.i, align 4, !tbaa !56
  %sh_addralign.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx110.i, i64 0, i32 8
  %arrayidx.i763.i = getelementptr inbounds i8, ptr %sh_addralign.i, i64 3
  %84 = load i8, ptr %arrayidx.i763.i, align 1, !tbaa !14
  %arrayidx.i763.1.i = getelementptr inbounds i8, ptr %sh_addralign.i, i64 2
  %85 = load i8, ptr %arrayidx.i763.1.i, align 1, !tbaa !14
  %arrayidx.i763.2.i = getelementptr inbounds i8, ptr %sh_addralign.i, i64 1
  %86 = load i8, ptr %arrayidx.i763.2.i, align 1, !tbaa !14
  %87 = load i8, ptr %sh_addralign.i, align 1, !tbaa !14
  %__x166.sroa.6.0.insert.ext.i = zext i8 %87 to i32
  %__x166.sroa.6.0.insert.shift.i = shl nuw i32 %__x166.sroa.6.0.insert.ext.i, 24
  %__x166.sroa.5.0.insert.ext.i = zext i8 %86 to i32
  %__x166.sroa.5.0.insert.shift.i = shl nuw nsw i32 %__x166.sroa.5.0.insert.ext.i, 16
  %__x166.sroa.4.0.insert.ext.i = zext i8 %85 to i32
  %__x166.sroa.4.0.insert.shift.i = shl nuw nsw i32 %__x166.sroa.4.0.insert.ext.i, 8
  %__x166.sroa.0.0.insert.ext.i = zext i8 %84 to i32
  %__x166.sroa.5.0.insert.insert.i = or i32 %__x166.sroa.4.0.insert.shift.i, %__x166.sroa.0.0.insert.ext.i
  %__x166.sroa.4.0.insert.insert.i = or i32 %__x166.sroa.5.0.insert.insert.i, %__x166.sroa.5.0.insert.shift.i
  %__x166.sroa.0.0.insert.insert.i = or i32 %__x166.sroa.4.0.insert.insert.i, %__x166.sroa.6.0.insert.shift.i
  store i32 %__x166.sroa.0.0.insert.insert.i, ptr %sh_addralign.i, align 4, !tbaa !57
  %sh_entsize.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx110.i, i64 0, i32 9
  %arrayidx.i773.i = getelementptr inbounds i8, ptr %sh_entsize.i, i64 3
  %88 = load i8, ptr %arrayidx.i773.i, align 1, !tbaa !14
  %arrayidx.i773.1.i = getelementptr inbounds i8, ptr %sh_entsize.i, i64 2
  %89 = load i8, ptr %arrayidx.i773.1.i, align 1, !tbaa !14
  %arrayidx.i773.2.i = getelementptr inbounds i8, ptr %sh_entsize.i, i64 1
  %90 = load i8, ptr %arrayidx.i773.2.i, align 1, !tbaa !14
  %91 = load i8, ptr %sh_entsize.i, align 1, !tbaa !14
  %__x173.sroa.6.0.insert.ext.i = zext i8 %91 to i32
  %__x173.sroa.6.0.insert.shift.i = shl nuw i32 %__x173.sroa.6.0.insert.ext.i, 24
  %__x173.sroa.5.0.insert.ext.i = zext i8 %90 to i32
  %__x173.sroa.5.0.insert.shift.i = shl nuw nsw i32 %__x173.sroa.5.0.insert.ext.i, 16
  %__x173.sroa.4.0.insert.ext.i = zext i8 %89 to i32
  %__x173.sroa.4.0.insert.shift.i = shl nuw nsw i32 %__x173.sroa.4.0.insert.ext.i, 8
  %__x173.sroa.0.0.insert.ext.i = zext i8 %88 to i32
  %__x173.sroa.5.0.insert.insert.i = or i32 %__x173.sroa.4.0.insert.shift.i, %__x173.sroa.0.0.insert.ext.i
  %__x173.sroa.4.0.insert.insert.i = or i32 %__x173.sroa.5.0.insert.insert.i, %__x173.sroa.5.0.insert.shift.i
  %__x173.sroa.0.0.insert.insert.i = or i32 %__x173.sroa.4.0.insert.insert.i, %__x173.sroa.6.0.insert.shift.i
  store i32 %__x173.sroa.0.0.insert.insert.i, ptr %sh_entsize.i, align 4, !tbaa !58
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %phi.cmp.i = icmp ugt i32 %conv82.sink.i, 1
  %idxprom181.i = zext i32 %conv94.sink.i to i64
  %arrayidx182.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %add.ptr.i, i64 %idxprom181.i
  %sh_offset183.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx182.i, i64 0, i32 4
  %92 = load i32, ptr %sh_offset183.i, align 4, !tbaa !53
  %idx.ext184.i = zext i32 %92 to i64
  %add.ptr185.i = getelementptr i8, ptr %call4.i.i, i64 %idx.ext184.i
  br i1 %phi.cmp.i, label %for.body190.lr.ph.i, label %for.end300.i

for.body190.lr.ph.i:                              ; preds = %for.end.i
  %export_gpl_sec.i = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 6
  %export_sec.i = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 5
  %modinfo.i = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 8
  %modinfo_len.i = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 9
  %symtab_shndx_start.i = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 12
  %symtab_shndx_stop.i = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 13
  %symtab_start.i = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 3
  %symtab_stop.i = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 4
  %strtab.i = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 7
  br label %for.body190.i

for.body190.i:                                    ; preds = %for.inc298.i, %for.body190.lr.ph.i
  %indvars.iv861.i = phi i64 [ 1, %for.body190.lr.ph.i ], [ %indvars.iv.next862.i, %for.inc298.i ]
  %symtab_idx.0852.i = phi i32 [ -1, %for.body190.lr.ph.i ], [ %symtab_idx.2.ph.i, %for.inc298.i ]
  %symtab_shndx_idx.0851.i = phi i32 [ -1, %for.body190.lr.ph.i ], [ %symtab_shndx_idx.2.ph.i, %for.inc298.i ]
  %arrayidx192.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %add.ptr.i, i64 %indvars.iv861.i
  %sh_type193.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx192.i, i64 0, i32 1
  %93 = load i32, ptr %sh_type193.i, align 4, !tbaa !50
  %cmp194.i = icmp eq i32 %93, 8
  br i1 %cmp194.i, label %if.end209.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body190.i
  %sh_offset199.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx192.i, i64 0, i32 4
  %94 = load i32, ptr %sh_offset199.i, align 4, !tbaa !53
  %conv200.i = zext i32 %94 to i64
  %95 = load i64, ptr %info, align 8, !tbaa !30
  %cmp202.i = icmp ult i64 %95, %conv200.i
  br i1 %cmp202.i, label %cleanup.i, label %if.end209.thread.i

if.end209.i:                                      ; preds = %for.body190.i
  %96 = load i32, ptr %arrayidx192.i, align 4, !tbaa !48
  %idx.ext213.i = zext i32 %96 to i64
  %add.ptr214.i = getelementptr inbounds i8, ptr %add.ptr185.i, i64 %idx.ext213.i
  %call215.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr214.i, ptr noundef nonnull dereferenceable(9) @.str.37) #29
  %cmp216.i = icmp eq i32 %call215.i, 0
  br i1 %cmp216.i, label %if.then220.i, label %if.else230.i

if.end209.thread.i:                               ; preds = %land.lhs.true.i
  %97 = load i32, ptr %arrayidx192.i, align 4, !tbaa !48
  %idx.ext213831.i = zext i32 %97 to i64
  %add.ptr214832.i = getelementptr inbounds i8, ptr %add.ptr185.i, i64 %idx.ext213831.i
  %call215833.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr214832.i, ptr noundef nonnull dereferenceable(9) @.str.37) #29
  %cmp216834.i = icmp eq i32 %call215833.i, 0
  br i1 %cmp216834.i, label %if.end221.i, label %if.else230.i

if.then220.i:                                     ; preds = %if.end209.i
  call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.38, ptr noundef %modname) #25
  %sh_offset224.phi.trans.insert.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx192.i, i64 0, i32 4
  %.pre865.i = load i32, ptr %sh_offset224.phi.trans.insert.i, align 4, !tbaa !53
  %.pre866.pre.i = load i32, ptr %sh_type193.i, align 4, !tbaa !50
  %.pre869.i = zext i32 %.pre865.i to i64
  br label %if.end221.i

if.end221.i:                                      ; preds = %if.then220.i, %if.end209.thread.i
  %idx.ext225.pre-phi.i = phi i64 [ %conv200.i, %if.end209.thread.i ], [ %.pre869.i, %if.then220.i ]
  %.pre866.i = phi i32 [ %93, %if.end209.thread.i ], [ %.pre866.pre.i, %if.then220.i ]
  %add.ptr226.i = getelementptr i8, ptr %call4.i.i, i64 %idx.ext225.pre-phi.i
  store ptr %add.ptr226.i, ptr %modinfo.i, align 8, !tbaa !59
  %sh_size229.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx192.i, i64 0, i32 5
  %98 = load i32, ptr %sh_size229.i, align 4, !tbaa !54
  store i32 %98, ptr %modinfo_len.i, align 8, !tbaa !60
  br label %if.end244.i

if.else230.i:                                     ; preds = %if.end209.thread.i, %if.end209.i
  %add.ptr214835.i = phi ptr [ %add.ptr214832.i, %if.end209.thread.i ], [ %add.ptr214.i, %if.end209.i ]
  %call231.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr214835.i, ptr noundef nonnull dereferenceable(10) @.str.39) #29
  %cmp232.i = icmp eq i32 %call231.i, 0
  br i1 %cmp232.i, label %if.then234.i, label %if.else236.i

if.then234.i:                                     ; preds = %if.else230.i
  %conv235.i = trunc i64 %indvars.iv861.i to i16
  store i16 %conv235.i, ptr %export_sec.i, align 8, !tbaa !61
  br label %if.end244.i

if.else236.i:                                     ; preds = %if.else230.i
  %call237.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr214835.i, ptr noundef nonnull dereferenceable(14) @.str.40) #29
  %cmp238.i = icmp eq i32 %call237.i, 0
  br i1 %cmp238.i, label %if.then240.i, label %if.end244.i

if.then240.i:                                     ; preds = %if.else236.i
  %conv241.i = trunc i64 %indvars.iv861.i to i16
  store i16 %conv241.i, ptr %export_gpl_sec.i, align 2, !tbaa !62
  br label %if.end244.i

if.end244.i:                                      ; preds = %if.then240.i, %if.else236.i, %if.then234.i, %if.end221.i
  %99 = phi i32 [ %93, %if.then234.i ], [ %93, %if.then240.i ], [ %93, %if.else236.i ], [ %.pre866.i, %if.end221.i ]
  switch i32 %99, label %for.inc298.i [
    i32 2, label %if.end274.thread.i
    i32 18, label %if.then280.i
  ]

if.end274.thread.i:                               ; preds = %if.end244.i
  %sh_offset253.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx192.i, i64 0, i32 4
  %100 = load i32, ptr %sh_offset253.i, align 4, !tbaa !53
  %idx.ext254.i = zext i32 %100 to i64
  %add.ptr255.i = getelementptr i8, ptr %call4.i.i, i64 %idx.ext254.i
  store ptr %add.ptr255.i, ptr %symtab_start.i, align 8, !tbaa !63
  %sh_size263.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx192.i, i64 0, i32 5
  %101 = load i32, ptr %sh_size263.i, align 4, !tbaa !54
  %idx.ext264.i = zext i32 %101 to i64
  %add.ptr265.i = getelementptr i8, ptr %add.ptr255.i, i64 %idx.ext264.i
  store ptr %add.ptr265.i, ptr %symtab_stop.i, align 8, !tbaa !64
  %sh_link268.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx192.i, i64 0, i32 6
  %102 = load i32, ptr %sh_link268.i, align 4, !tbaa !55
  %idxprom269.i = zext i32 %102 to i64
  %arrayidx270.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %add.ptr.i, i64 %idxprom269.i
  %sh_offset271.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx270.i, i64 0, i32 4
  %103 = load i32, ptr %sh_offset271.i, align 4, !tbaa !53
  %idx.ext272.i = zext i32 %103 to i64
  %add.ptr273.i = getelementptr i8, ptr %call4.i.i, i64 %idx.ext272.i
  store ptr %add.ptr273.i, ptr %strtab.i, align 8, !tbaa !65
  %104 = trunc i64 %indvars.iv861.i to i32
  br label %for.inc298.i

if.then280.i:                                     ; preds = %if.end244.i
  %sh_offset283.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx192.i, i64 0, i32 4
  %105 = load i32, ptr %sh_offset283.i, align 4, !tbaa !53
  %idx.ext284.i = zext i32 %105 to i64
  %add.ptr285.i = getelementptr i8, ptr %call4.i.i, i64 %idx.ext284.i
  store ptr %add.ptr285.i, ptr %symtab_shndx_start.i, align 8, !tbaa !66
  %sh_size293.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx192.i, i64 0, i32 5
  %106 = load i32, ptr %sh_size293.i, align 4, !tbaa !54
  %idx.ext294.i = zext i32 %106 to i64
  %add.ptr295.i = getelementptr i8, ptr %add.ptr285.i, i64 %idx.ext294.i
  store ptr %add.ptr295.i, ptr %symtab_shndx_stop.i, align 8, !tbaa !67
  %107 = trunc i64 %indvars.iv861.i to i32
  br label %for.inc298.i

cleanup.i:                                        ; preds = %land.lhs.true.i
  %conv200.i.le = zext i32 %94 to i64
  call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.36, ptr noundef %modname, i64 noundef %conv200.i.le, i64 noundef 52) #25
  br label %cleanup

for.inc298.i:                                     ; preds = %if.then280.i, %if.end274.thread.i, %if.end244.i
  %symtab_shndx_idx.2.ph.i = phi i32 [ %symtab_shndx_idx.0851.i, %if.end274.thread.i ], [ %107, %if.then280.i ], [ %symtab_shndx_idx.0851.i, %if.end244.i ]
  %symtab_idx.2.ph.i = phi i32 [ %104, %if.end274.thread.i ], [ %symtab_idx.0852.i, %if.then280.i ], [ %symtab_idx.0852.i, %if.end244.i ]
  %indvars.iv.next862.i = add nuw nsw i64 %indvars.iv861.i, 1
  %108 = load i32, ptr %num_sections91.i, align 4, !tbaa !46
  %109 = zext i32 %108 to i64
  %cmp188.i = icmp ult i64 %indvars.iv.next862.i, %109
  br i1 %cmp188.i, label %for.body190.i, label %for.end300.i

for.end300.i:                                     ; preds = %for.inc298.i, %for.end.i, %if.end105.i
  %symtab_shndx_idx.0.lcssa.i = phi i32 [ -1, %for.end.i ], [ -1, %if.end105.i ], [ %symtab_shndx_idx.2.ph.i, %for.inc298.i ]
  %symtab_idx.0.lcssa.i = phi i32 [ -1, %for.end.i ], [ -1, %if.end105.i ], [ %symtab_idx.2.ph.i, %for.inc298.i ]
  %symtab_start301.i = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 3
  %110 = load ptr, ptr %symtab_start301.i, align 8, !tbaa !63
  %tobool302.not.i = icmp eq ptr %110, null
  br i1 %tobool302.not.i, label %if.then303.i, label %if.end304.i

if.then303.i:                                     ; preds = %for.end300.i
  call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.41, ptr noundef %modname) #25
  %.pre867.i = load ptr, ptr %symtab_start301.i, align 8, !tbaa !63
  br label %if.end304.i

if.end304.i:                                      ; preds = %if.then303.i, %for.end300.i
  %111 = phi ptr [ %.pre867.i, %if.then303.i ], [ %110, %for.end300.i ]
  %symtab_stop307.i = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 4
  %112 = load ptr, ptr %symtab_stop307.i, align 8, !tbaa !64
  %cmp308856.i = icmp ult ptr %111, %112
  br i1 %cmp308856.i, label %for.body310.i, label %for.end324.i

for.body310.i:                                    ; preds = %for.body310.i, %if.end304.i
  %sym.0857.i = phi ptr [ %incdec.ptr.i, %for.body310.i ], [ %111, %if.end304.i ]
  %st_shndx.i = getelementptr inbounds %struct.Elf32_Sym, ptr %sym.0857.i, i64 0, i32 5
  %arrayidx.i783.i = getelementptr inbounds i8, ptr %st_shndx.i, i64 1
  %113 = load i8, ptr %arrayidx.i783.i, align 1, !tbaa !14
  %114 = load i8, ptr %st_shndx.i, align 1, !tbaa !14
  %__x311.sroa.4.0.insert.ext.i = zext i8 %114 to i16
  %__x311.sroa.4.0.insert.shift.i = shl nuw i16 %__x311.sroa.4.0.insert.ext.i, 8
  %__x311.sroa.0.0.insert.ext.i = zext i8 %113 to i16
  %__x311.sroa.0.0.insert.insert.i = or i16 %__x311.sroa.4.0.insert.shift.i, %__x311.sroa.0.0.insert.ext.i
  store i16 %__x311.sroa.0.0.insert.insert.i, ptr %st_shndx.i, align 2, !tbaa !68
  %arrayidx.i793.i = getelementptr inbounds i8, ptr %sym.0857.i, i64 3
  %115 = load i8, ptr %arrayidx.i793.i, align 1, !tbaa !14
  %arrayidx.i793.1.i = getelementptr inbounds i8, ptr %sym.0857.i, i64 2
  %116 = load i8, ptr %arrayidx.i793.1.i, align 1, !tbaa !14
  %arrayidx.i793.2.i = getelementptr inbounds i8, ptr %sym.0857.i, i64 1
  %117 = load i8, ptr %arrayidx.i793.2.i, align 1, !tbaa !14
  %118 = load i8, ptr %sym.0857.i, align 1, !tbaa !14
  %__x314.sroa.6.0.insert.ext.i = zext i8 %118 to i32
  %__x314.sroa.6.0.insert.shift.i = shl nuw i32 %__x314.sroa.6.0.insert.ext.i, 24
  %__x314.sroa.5.0.insert.ext.i = zext i8 %117 to i32
  %__x314.sroa.5.0.insert.shift.i = shl nuw nsw i32 %__x314.sroa.5.0.insert.ext.i, 16
  %__x314.sroa.4.0.insert.ext.i = zext i8 %116 to i32
  %__x314.sroa.4.0.insert.shift.i = shl nuw nsw i32 %__x314.sroa.4.0.insert.ext.i, 8
  %__x314.sroa.0.0.insert.ext.i = zext i8 %115 to i32
  %__x314.sroa.5.0.insert.insert.i = or i32 %__x314.sroa.4.0.insert.shift.i, %__x314.sroa.0.0.insert.ext.i
  %__x314.sroa.4.0.insert.insert.i = or i32 %__x314.sroa.5.0.insert.insert.i, %__x314.sroa.5.0.insert.shift.i
  %__x314.sroa.0.0.insert.insert.i = or i32 %__x314.sroa.4.0.insert.insert.i, %__x314.sroa.6.0.insert.shift.i
  store i32 %__x314.sroa.0.0.insert.insert.i, ptr %sym.0857.i, align 4, !tbaa !70
  %st_value.i = getelementptr inbounds %struct.Elf32_Sym, ptr %sym.0857.i, i64 0, i32 1
  %arrayidx.i803.i = getelementptr inbounds i8, ptr %st_value.i, i64 3
  %119 = load i8, ptr %arrayidx.i803.i, align 1, !tbaa !14
  %arrayidx.i803.1.i = getelementptr inbounds i8, ptr %st_value.i, i64 2
  %120 = load i8, ptr %arrayidx.i803.1.i, align 1, !tbaa !14
  %arrayidx.i803.2.i = getelementptr inbounds i8, ptr %st_value.i, i64 1
  %121 = load i8, ptr %arrayidx.i803.2.i, align 1, !tbaa !14
  %122 = load i8, ptr %st_value.i, align 1, !tbaa !14
  %__x317.sroa.6.0.insert.ext.i = zext i8 %122 to i32
  %__x317.sroa.6.0.insert.shift.i = shl nuw i32 %__x317.sroa.6.0.insert.ext.i, 24
  %__x317.sroa.5.0.insert.ext.i = zext i8 %121 to i32
  %__x317.sroa.5.0.insert.shift.i = shl nuw nsw i32 %__x317.sroa.5.0.insert.ext.i, 16
  %__x317.sroa.4.0.insert.ext.i = zext i8 %120 to i32
  %__x317.sroa.4.0.insert.shift.i = shl nuw nsw i32 %__x317.sroa.4.0.insert.ext.i, 8
  %__x317.sroa.0.0.insert.ext.i = zext i8 %119 to i32
  %__x317.sroa.5.0.insert.insert.i = or i32 %__x317.sroa.4.0.insert.shift.i, %__x317.sroa.0.0.insert.ext.i
  %__x317.sroa.4.0.insert.insert.i = or i32 %__x317.sroa.5.0.insert.insert.i, %__x317.sroa.5.0.insert.shift.i
  %__x317.sroa.0.0.insert.insert.i = or i32 %__x317.sroa.4.0.insert.insert.i, %__x317.sroa.6.0.insert.shift.i
  store i32 %__x317.sroa.0.0.insert.insert.i, ptr %st_value.i, align 4, !tbaa !71
  %st_size.i = getelementptr inbounds %struct.Elf32_Sym, ptr %sym.0857.i, i64 0, i32 2
  %arrayidx.i813.i = getelementptr inbounds i8, ptr %st_size.i, i64 3
  %123 = load i8, ptr %arrayidx.i813.i, align 1, !tbaa !14
  %arrayidx.i813.1.i = getelementptr inbounds i8, ptr %st_size.i, i64 2
  %124 = load i8, ptr %arrayidx.i813.1.i, align 1, !tbaa !14
  %arrayidx.i813.2.i = getelementptr inbounds i8, ptr %st_size.i, i64 1
  %125 = load i8, ptr %arrayidx.i813.2.i, align 1, !tbaa !14
  %126 = load i8, ptr %st_size.i, align 1, !tbaa !14
  %__x320.sroa.6.0.insert.ext.i = zext i8 %126 to i32
  %__x320.sroa.6.0.insert.shift.i = shl nuw i32 %__x320.sroa.6.0.insert.ext.i, 24
  %__x320.sroa.5.0.insert.ext.i = zext i8 %125 to i32
  %__x320.sroa.5.0.insert.shift.i = shl nuw nsw i32 %__x320.sroa.5.0.insert.ext.i, 16
  %__x320.sroa.4.0.insert.ext.i = zext i8 %124 to i32
  %__x320.sroa.4.0.insert.shift.i = shl nuw nsw i32 %__x320.sroa.4.0.insert.ext.i, 8
  %__x320.sroa.0.0.insert.ext.i = zext i8 %123 to i32
  %__x320.sroa.5.0.insert.insert.i = or i32 %__x320.sroa.4.0.insert.shift.i, %__x320.sroa.0.0.insert.ext.i
  %__x320.sroa.4.0.insert.insert.i = or i32 %__x320.sroa.5.0.insert.insert.i, %__x320.sroa.5.0.insert.shift.i
  %__x320.sroa.0.0.insert.insert.i = or i32 %__x320.sroa.4.0.insert.insert.i, %__x320.sroa.6.0.insert.shift.i
  store i32 %__x320.sroa.0.0.insert.insert.i, ptr %st_size.i, align 4, !tbaa !72
  %incdec.ptr.i = getelementptr inbounds %struct.Elf32_Sym, ptr %sym.0857.i, i64 1
  %cmp308.i = icmp ult ptr %incdec.ptr.i, %112
  br i1 %cmp308.i, label %for.body310.i, label %for.end324.i

for.end324.i:                                     ; preds = %for.body310.i, %if.end304.i
  %cmp325.not.i = icmp eq i32 %symtab_shndx_idx.0.lcssa.i, -1
  br i1 %cmp325.not.i, label %if.end, label %if.then327.i

if.then327.i:                                     ; preds = %for.end324.i
  %idxprom328.i = zext i32 %symtab_shndx_idx.0.lcssa.i to i64
  %arrayidx329.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %add.ptr.i, i64 %idxprom328.i
  %sh_link330.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx329.i, i64 0, i32 6
  %127 = load i32, ptr %sh_link330.i, align 4, !tbaa !55
  %cmp331.not.i = icmp eq i32 %symtab_idx.0.lcssa.i, %127
  br i1 %cmp331.not.i, label %if.end337.i, label %if.then333.i

if.then333.i:                                     ; preds = %if.then327.i
  call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.42, ptr noundef %modname, i32 noundef %127, i32 noundef %symtab_idx.0.lcssa.i) #25
  br label %if.end337.i

if.end337.i:                                      ; preds = %if.then333.i, %if.then327.i
  %symtab_shndx_start338.i = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 12
  %128 = load ptr, ptr %symtab_shndx_start338.i, align 8, !tbaa !66
  %symtab_shndx_stop340.i = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 13
  %129 = load ptr, ptr %symtab_shndx_stop340.i, align 8, !tbaa !67
  %cmp341858.i = icmp ult ptr %128, %129
  br i1 %cmp341858.i, label %for.body343.i, label %if.end

for.body343.i:                                    ; preds = %for.body343.i, %if.end337.i
  %p.0859.i = phi ptr [ %incdec.ptr347.i, %for.body343.i ], [ %128, %if.end337.i ]
  %arrayidx.i823.i = getelementptr inbounds i8, ptr %p.0859.i, i64 3
  %130 = load i8, ptr %arrayidx.i823.i, align 1, !tbaa !14
  %arrayidx.i823.1.i = getelementptr inbounds i8, ptr %p.0859.i, i64 2
  %131 = load i8, ptr %arrayidx.i823.1.i, align 1, !tbaa !14
  %arrayidx.i823.2.i = getelementptr inbounds i8, ptr %p.0859.i, i64 1
  %132 = load i8, ptr %arrayidx.i823.2.i, align 1, !tbaa !14
  %133 = load i8, ptr %p.0859.i, align 1, !tbaa !14
  %__x344.sroa.6.0.insert.ext.i = zext i8 %133 to i32
  %__x344.sroa.6.0.insert.shift.i = shl nuw i32 %__x344.sroa.6.0.insert.ext.i, 24
  %__x344.sroa.5.0.insert.ext.i = zext i8 %132 to i32
  %__x344.sroa.5.0.insert.shift.i = shl nuw nsw i32 %__x344.sroa.5.0.insert.ext.i, 16
  %__x344.sroa.4.0.insert.ext.i = zext i8 %131 to i32
  %__x344.sroa.4.0.insert.shift.i = shl nuw nsw i32 %__x344.sroa.4.0.insert.ext.i, 8
  %__x344.sroa.0.0.insert.ext.i = zext i8 %130 to i32
  %__x344.sroa.5.0.insert.insert.i = or i32 %__x344.sroa.4.0.insert.shift.i, %__x344.sroa.0.0.insert.ext.i
  %__x344.sroa.4.0.insert.insert.i = or i32 %__x344.sroa.5.0.insert.insert.i, %__x344.sroa.5.0.insert.shift.i
  %__x344.sroa.0.0.insert.insert.i = or i32 %__x344.sroa.4.0.insert.insert.i, %__x344.sroa.6.0.insert.shift.i
  store i32 %__x344.sroa.0.0.insert.insert.i, ptr %p.0859.i, align 4, !tbaa !21
  %incdec.ptr347.i = getelementptr inbounds i32, ptr %p.0859.i, i64 1
  %cmp341.i = icmp ult ptr %incdec.ptr347.i, %129
  br i1 %cmp341.i, label %for.body343.i, label %if.end

if.end:                                           ; preds = %for.body343.i, %if.end337.i, %for.end324.i
  %call1 = call noalias ptr @strdup(ptr noundef %modname) #25
  %tobool.not.i152 = icmp eq ptr %call1, null
  br i1 %tobool.not.i152, label %if.then.i153, label %do_nofail.exit

if.then.i153:                                     ; preds = %if.end
  call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.25) #25
  br label %do_nofail.exit

do_nofail.exit:                                   ; preds = %if.then.i153, %if.end
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call1) #29
  %sub = add i64 %call3, -2
  %arrayidx = getelementptr inbounds i8, ptr %call1, i64 %sub
  store i8 0, ptr %arrayidx, align 1, !tbaa !14
  %call.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call1) #29
  %cmp.i155 = icmp ult i64 %call.i, 4
  br i1 %cmp.i155, label %if.end9, label %strends.exit

strends.exit:                                     ; preds = %do_nofail.exit
  %add.ptr.i156 = getelementptr inbounds i8, ptr %call1, i64 %call.i
  %add.ptr4.i = getelementptr inbounds i8, ptr %add.ptr.i156, i64 -4
  %call5.i157 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr4.i, ptr noundef nonnull dereferenceable(5) @.str.26) #29
  %cmp6.i = icmp eq i32 %call5.i157, 0
  br i1 %cmp6.i, label %if.then5, label %if.end9

if.then5:                                         ; preds = %strends.exit
  %sub7 = add i64 %call.i, -4
  %arrayidx8 = getelementptr inbounds i8, ptr %call1, i64 %sub7
  store i8 0, ptr %arrayidx8, align 1, !tbaa !14
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %strends.exit, %do_nofail.exit
  %call.i159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call1) #29
  %add1.i = add i64 %call.i159, 113
  %call2.i = call noalias ptr @malloc(i64 noundef %add1.i) #28
  %tobool.not.i.i160 = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i.i160, label %if.then.i.i, label %new_module.exit

if.then.i.i:                                      ; preds = %if.end9
  call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.14) #25
  br label %new_module.exit

new_module.exit:                                  ; preds = %if.then.i.i, %if.end9
  %134 = getelementptr inbounds i8, ptr %call2.i, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %134, i8 0, i64 104, i1 false) #25
  %name.i = getelementptr inbounds %struct.module, ptr %call2.i, i64 0, i32 12
  %call4.i161 = call ptr @strcpy(ptr noundef nonnull %name.i, ptr noundef nonnull dereferenceable(1) %call1) #25
  %call5.i162 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call1, ptr noundef nonnull dereferenceable(8) @.str.15) #29
  %cmp.i163 = icmp eq i32 %call5.i162, 0
  %conv.i = zext i1 %cmp.i163 to i32
  %is_vmlinux.i = getelementptr inbounds %struct.module, ptr %call2.i, i64 0, i32 4
  store i32 %conv.i, ptr %is_vmlinux.i, align 4, !tbaa !21
  store i32 -1, ptr %134, align 8, !tbaa !21
  %135 = load ptr, ptr @modules, align 8, !tbaa !5
  store ptr %135, ptr %call2.i, align 8, !tbaa !5
  store ptr %call2.i, ptr @modules, align 8, !tbaa !5
  call void @free(ptr noundef nonnull %call1) #25
  br i1 %cmp.i163, label %if.end30, label %if.then12

if.then12:                                        ; preds = %new_module.exit
  %modinfo1.i.i = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 8
  %136 = load ptr, ptr %modinfo1.i.i, align 8, !tbaa !59
  %tobool4.not57.i.i = icmp eq ptr %136, null
  br i1 %tobool4.not57.i.i, label %if.end16.while.end_crit_edge, label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %if.then12
  %modinfo_len.i.i = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 9
  %137 = load i32, ptr %modinfo_len.i.i, align 8, !tbaa !60
  %conv2.i.i = zext i32 %137 to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %while.cond1thread-pre-split.i41.i.i, %for.body.lr.ph.i.i
  %p.059.i.i = phi ptr [ %136, %for.body.lr.ph.i.i ], [ %incdec.ptr5.i38.i.i, %while.cond1thread-pre-split.i41.i.i ]
  %size.358.i.i = phi i64 [ %conv2.i.i, %for.body.lr.ph.i.i ], [ %dec6.i43.i.i, %while.cond1thread-pre-split.i41.i.i ]
  %call6.i.i = call i32 @strncmp(ptr noundef nonnull %p.059.i.i, ptr noundef nonnull dereferenceable(8) @.str.27, i64 noundef 7) #29
  %cmp.i.i165 = icmp eq i32 %call6.i.i, 0
  br i1 %cmp.i.i165, label %land.lhs.true.i.i, label %while.cond.i31.i.i.preheader

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %arrayidx.i.i166 = getelementptr inbounds i8, ptr %p.059.i.i, i64 7
  %138 = load i8, ptr %arrayidx.i.i166, align 1, !tbaa !14
  %cmp9.i.i = icmp eq i8 %138, 61
  br i1 %cmp9.i.i, label %while.body.lr.ph, label %while.cond.i31.i.i.preheader

while.cond.i31.i.i.preheader:                     ; preds = %land.lhs.true.i.i, %for.body.i.i
  br label %while.cond.i31.i.i

while.cond.i31.i.i:                               ; preds = %while.body.i37.i.i, %while.cond.i31.i.i.preheader
  %size.4.i.i = phi i64 [ %dec.i35.i.i, %while.body.i37.i.i ], [ %size.358.i.i, %while.cond.i31.i.i.preheader ]
  %string.addr.0.i29.i.i = phi ptr [ %incdec.ptr.i34.i.i, %while.body.i37.i.i ], [ %p.059.i.i, %while.cond.i31.i.i.preheader ]
  %139 = load i8, ptr %string.addr.0.i29.i.i, align 1, !tbaa !14
  %tobool.not.i30.i.i = icmp eq i8 %139, 0
  br i1 %tobool.not.i30.i.i, label %while.body4.i45.i.i, label %while.body.i37.i.i

while.body.i37.i.i:                               ; preds = %while.cond.i31.i.i
  %incdec.ptr.i34.i.i = getelementptr inbounds i8, ptr %string.addr.0.i29.i.i, i64 1
  %dec.i35.i.i = add i64 %size.4.i.i, -1
  %cmp.i36.i.i = icmp ult i64 %size.4.i.i, 2
  br i1 %cmp.i36.i.i, label %if.end16.while.end_crit_edge, label %while.cond.i31.i.i

while.cond1thread-pre-split.i41.i.i:              ; preds = %while.body4.i45.i.i
  %dec6.i43.i.i = add i64 %140, -1
  %incdec.ptr5.i38.i.i = getelementptr inbounds i8, ptr %string.addr.118.i42.i.i, i64 1
  %.pr.i39.i.i = load i8, ptr %incdec.ptr5.i38.i.i, align 1, !tbaa !14
  %tobool3.not.i40.i.i = icmp eq i8 %.pr.i39.i.i, 0
  br i1 %tobool3.not.i40.i.i, label %while.body4.i45.i.i, label %for.body.i.i

while.body4.i45.i.i:                              ; preds = %while.cond1thread-pre-split.i41.i.i, %while.cond.i31.i.i
  %140 = phi i64 [ %dec6.i43.i.i, %while.cond1thread-pre-split.i41.i.i ], [ %size.4.i.i, %while.cond.i31.i.i ]
  %string.addr.118.i42.i.i = phi ptr [ %incdec.ptr5.i38.i.i, %while.cond1thread-pre-split.i41.i.i ], [ %string.addr.0.i29.i.i, %while.cond.i31.i.i ]
  %cmp7.i44.i.i = icmp ult i64 %140, 2
  br i1 %cmp7.i44.i.i, label %if.end16.while.end_crit_edge, label %while.cond1thread-pre-split.i41.i.i

if.end16.while.end_crit_edge:                     ; preds = %while.body4.i45.i.i, %while.body.i37.i.i, %if.then12
  call void (i32, ptr, ...) @modpost_log(i32 noundef 1, ptr noundef nonnull @.str.28, ptr noundef %modname)
  %.pre560 = load ptr, ptr %modinfo1.i.i, align 8, !tbaa !59
  br label %while.end

while.body.lr.ph:                                 ; preds = %land.lhs.true.i.i
  %141 = load ptr, ptr %modinfo1.i.i, align 8
  %modinfo_len.i173 = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 9
  %142 = load i32, ptr %modinfo_len.i173, align 8
  %conv2.i = zext i32 %142 to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %141 to i64
  br label %while.body

while.body:                                       ; preds = %land.lhs.true.i181, %while.body.lr.ph
  %p.059.i.i.pn = phi ptr [ %p.059.i.i, %while.body.lr.ph ], [ %p.059.i, %land.lhs.true.i181 ]
  %license.0509 = getelementptr inbounds i8, ptr %p.059.i.i.pn, i64 8
  %call.i167 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %license.0509, ptr noundef nonnull dereferenceable(4) @.str.43) #29
  %cmp.i168 = icmp eq i32 %call.i167, 0
  br i1 %cmp.i168, label %if.then.i175, label %lor.lhs.false.i170

lor.lhs.false.i170:                               ; preds = %while.body
  %call1.i169 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %license.0509, ptr noundef nonnull dereferenceable(7) @.str.44) #29
  %cmp2.i = icmp eq i32 %call1.i169, 0
  br i1 %cmp2.i, label %if.then.i175, label %lor.lhs.false3.i

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i170
  %call4.i171 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %license.0509, ptr noundef nonnull dereferenceable(26) @.str.45) #29
  %cmp5.i = icmp eq i32 %call4.i171, 0
  br i1 %cmp5.i, label %if.then.i175, label %lor.lhs.false6.i

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false3.i
  %call7.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %license.0509, ptr noundef nonnull dereferenceable(13) @.str.46) #29
  %cmp8.i = icmp eq i32 %call7.i, 0
  br i1 %cmp8.i, label %if.then.i175, label %lor.lhs.false9.i

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false6.i
  %call10.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %license.0509, ptr noundef nonnull dereferenceable(13) @.str.47) #29
  %cmp11.i = icmp eq i32 %call10.i, 0
  br i1 %cmp11.i, label %if.then.i175, label %license_is_gpl_compatible.exit

license_is_gpl_compatible.exit:                   ; preds = %lor.lhs.false9.i
  %call12.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %license.0509, ptr noundef nonnull dereferenceable(13) @.str.48) #29
  %cmp13.i.not = icmp eq i32 %call12.i, 0
  br i1 %cmp13.i.not, label %if.then.i175, label %if.else

if.then.i175:                                     ; preds = %license_is_gpl_compatible.exit, %lor.lhs.false9.i, %lor.lhs.false6.i, %lor.lhs.false3.i, %lor.lhs.false.i170, %while.body
  store i32 1, ptr %134, align 8, !tbaa !21
  %sub.ptr.lhs.cast.i = ptrtoint ptr %license.0509 to i64
  %sub.ptr.sub.neg.i = sub i64 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i
  %sub.i = add i64 %sub.ptr.sub.neg.i, %conv2.i
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i, %if.then.i175
  %size.0.i = phi i64 [ %sub.i, %if.then.i175 ], [ %dec.i.i, %while.body.i.i ]
  %string.addr.0.i.i = phi ptr [ %license.0509, %if.then.i175 ], [ %incdec.ptr.i.i, %while.body.i.i ]
  %143 = load i8, ptr %string.addr.0.i.i, align 1, !tbaa !14
  %tobool.not.i.i176 = icmp eq i8 %143, 0
  br i1 %tobool.not.i.i176, label %while.body4.i.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %string.addr.0.i.i, i64 1
  %dec.i.i = add i64 %size.0.i, -1
  %cmp.i.i177 = icmp ult i64 %size.0.i, 2
  br i1 %cmp.i.i177, label %while.end, label %while.cond.i.i

while.cond1thread-pre-split.i.i:                  ; preds = %while.body4.i.i
  %dec6.i.i = add i64 %144, -1
  %incdec.ptr5.i.i = getelementptr inbounds i8, ptr %string.addr.118.i.i, i64 1
  %.pr.i.i = load i8, ptr %incdec.ptr5.i.i, align 1, !tbaa !14
  %tobool3.not.i.i = icmp eq i8 %.pr.i.i, 0
  br i1 %tobool3.not.i.i, label %while.body4.i.i, label %for.body.i180

while.body4.i.i:                                  ; preds = %while.cond1thread-pre-split.i.i, %while.cond.i.i
  %144 = phi i64 [ %dec6.i.i, %while.cond1thread-pre-split.i.i ], [ %size.0.i, %while.cond.i.i ]
  %string.addr.118.i.i = phi ptr [ %incdec.ptr5.i.i, %while.cond1thread-pre-split.i.i ], [ %string.addr.0.i.i, %while.cond.i.i ]
  %cmp7.i.i = icmp ult i64 %144, 2
  br i1 %cmp7.i.i, label %while.end, label %while.cond1thread-pre-split.i.i

for.body.i180:                                    ; preds = %while.cond1thread-pre-split.i41.i, %while.cond1thread-pre-split.i.i
  %p.059.i = phi ptr [ %incdec.ptr5.i.i, %while.cond1thread-pre-split.i.i ], [ %incdec.ptr5.i38.i, %while.cond1thread-pre-split.i41.i ]
  %size.358.i = phi i64 [ %dec6.i.i, %while.cond1thread-pre-split.i.i ], [ %dec6.i43.i, %while.cond1thread-pre-split.i41.i ]
  %call6.i = call i32 @strncmp(ptr noundef nonnull %p.059.i, ptr noundef nonnull dereferenceable(8) @.str.27, i64 noundef 7) #29
  %cmp.i179 = icmp eq i32 %call6.i, 0
  br i1 %cmp.i179, label %land.lhs.true.i181, label %while.body.i37.i.preheader

land.lhs.true.i181:                               ; preds = %for.body.i180
  %arrayidx.i = getelementptr inbounds i8, ptr %p.059.i, i64 7
  %145 = load i8, ptr %arrayidx.i, align 1, !tbaa !14
  %cmp9.i = icmp eq i8 %145, 61
  br i1 %cmp9.i, label %while.body, label %while.body.i37.i.preheader

while.body.i37.i.preheader:                       ; preds = %land.lhs.true.i181, %for.body.i180
  br label %while.body.i37.i

while.body.i37.i:                                 ; preds = %while.body.i37.i.while.cond.i31.i_crit_edge, %while.body.i37.i.preheader
  %string.addr.0.i29.i645 = phi ptr [ %incdec.ptr.i34.i, %while.body.i37.i.while.cond.i31.i_crit_edge ], [ %p.059.i, %while.body.i37.i.preheader ]
  %size.4.i644 = phi i64 [ %dec.i35.i, %while.body.i37.i.while.cond.i31.i_crit_edge ], [ %size.358.i, %while.body.i37.i.preheader ]
  %cmp.i36.i = icmp ult i64 %size.4.i644, 2
  br i1 %cmp.i36.i, label %while.end, label %while.body.i37.i.while.cond.i31.i_crit_edge

while.body.i37.i.while.cond.i31.i_crit_edge:      ; preds = %while.body.i37.i
  %dec.i35.i = add i64 %size.4.i644, -1
  %incdec.ptr.i34.i = getelementptr inbounds i8, ptr %string.addr.0.i29.i645, i64 1
  %.pre = load i8, ptr %incdec.ptr.i34.i, align 1, !tbaa !14
  %tobool.not.i30.i = icmp eq i8 %.pre, 0
  br i1 %tobool.not.i30.i, label %while.body4.i45.i, label %while.body.i37.i

while.cond1thread-pre-split.i41.i:                ; preds = %while.body4.i45.i
  %dec6.i43.i = add i64 %146, -1
  %incdec.ptr5.i38.i = getelementptr inbounds i8, ptr %string.addr.118.i42.i, i64 1
  %.pr.i39.i = load i8, ptr %incdec.ptr5.i38.i, align 1, !tbaa !14
  %tobool3.not.i40.i = icmp eq i8 %.pr.i39.i, 0
  br i1 %tobool3.not.i40.i, label %while.body4.i45.i, label %for.body.i180

while.body4.i45.i:                                ; preds = %while.cond1thread-pre-split.i41.i, %while.body.i37.i.while.cond.i31.i_crit_edge
  %146 = phi i64 [ %dec6.i43.i, %while.cond1thread-pre-split.i41.i ], [ %dec.i35.i, %while.body.i37.i.while.cond.i31.i_crit_edge ]
  %string.addr.118.i42.i = phi ptr [ %incdec.ptr5.i38.i, %while.cond1thread-pre-split.i41.i ], [ %incdec.ptr.i34.i, %while.body.i37.i.while.cond.i31.i_crit_edge ]
  %cmp7.i44.i = icmp ult i64 %146, 2
  br i1 %cmp7.i44.i, label %while.end, label %while.cond1thread-pre-split.i41.i

if.else:                                          ; preds = %license_is_gpl_compatible.exit
  store i32 0, ptr %134, align 8, !tbaa !21
  br label %while.end

while.end:                                        ; preds = %if.else, %while.body4.i45.i, %while.body.i37.i, %while.body4.i.i, %while.body.i.i, %if.end16.while.end_crit_edge
  %147 = phi ptr [ %.pre560, %if.end16.while.end_crit_edge ], [ %141, %if.else ], [ %141, %while.body4.i45.i ], [ %141, %while.body.i37.i ], [ %141, %while.body4.i.i ], [ %141, %while.body.i.i ]
  %tobool4.not57.i.i185 = icmp eq ptr %147, null
  br i1 %tobool4.not57.i.i185, label %if.end30, label %for.body.lr.ph.i.i190

for.body.lr.ph.i.i190:                            ; preds = %while.end
  %modinfo_len.i.i186 = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 9
  %148 = load i32, ptr %modinfo_len.i.i186, align 8, !tbaa !60
  %conv2.i.i187 = zext i32 %148 to i64
  br label %for.body.i.i195

for.body.i.i195:                                  ; preds = %while.cond1thread-pre-split.i41.i.i215, %for.body.lr.ph.i.i190
  %p.059.i.i191 = phi ptr [ %147, %for.body.lr.ph.i.i190 ], [ %incdec.ptr5.i38.i.i212, %while.cond1thread-pre-split.i41.i.i215 ]
  %size.358.i.i192 = phi i64 [ %conv2.i.i187, %for.body.lr.ph.i.i190 ], [ %dec6.i43.i.i211, %while.cond1thread-pre-split.i41.i.i215 ]
  %call6.i.i193 = call i32 @strncmp(ptr noundef nonnull %p.059.i.i191, ptr noundef nonnull dereferenceable(10) @.str.29, i64 noundef 9) #29
  %cmp.i.i194 = icmp eq i32 %call6.i.i193, 0
  br i1 %cmp.i.i194, label %land.lhs.true.i.i198, label %while.cond.i31.i.i206.preheader

land.lhs.true.i.i198:                             ; preds = %for.body.i.i195
  %arrayidx.i.i196 = getelementptr inbounds i8, ptr %p.059.i.i191, i64 9
  %149 = load i8, ptr %arrayidx.i.i196, align 1, !tbaa !14
  %cmp9.i.i197 = icmp eq i8 %149, 61
  br i1 %cmp9.i.i197, label %if.then.i230.lr.ph, label %while.cond.i31.i.i206.preheader

while.cond.i31.i.i206.preheader:                  ; preds = %land.lhs.true.i.i198, %for.body.i.i195
  br label %while.cond.i31.i.i206

while.cond.i31.i.i206:                            ; preds = %while.body.i37.i.i210, %while.cond.i31.i.i206.preheader
  %size.4.i.i203 = phi i64 [ %dec.i35.i.i208, %while.body.i37.i.i210 ], [ %size.358.i.i192, %while.cond.i31.i.i206.preheader ]
  %string.addr.0.i29.i.i204 = phi ptr [ %incdec.ptr.i34.i.i207, %while.body.i37.i.i210 ], [ %p.059.i.i191, %while.cond.i31.i.i206.preheader ]
  %150 = load i8, ptr %string.addr.0.i29.i.i204, align 1, !tbaa !14
  %tobool.not.i30.i.i205 = icmp eq i8 %150, 0
  br i1 %tobool.not.i30.i.i205, label %while.body4.i45.i.i218, label %while.body.i37.i.i210

while.body.i37.i.i210:                            ; preds = %while.cond.i31.i.i206
  %incdec.ptr.i34.i.i207 = getelementptr inbounds i8, ptr %string.addr.0.i29.i.i204, i64 1
  %dec.i35.i.i208 = add i64 %size.4.i.i203, -1
  %cmp.i36.i.i209 = icmp ult i64 %size.4.i.i203, 2
  br i1 %cmp.i36.i.i209, label %if.end30, label %while.cond.i31.i.i206

while.cond1thread-pre-split.i41.i.i215:           ; preds = %while.body4.i45.i.i218
  %dec6.i43.i.i211 = add i64 %151, -1
  %incdec.ptr5.i38.i.i212 = getelementptr inbounds i8, ptr %string.addr.118.i42.i.i216, i64 1
  %.pr.i39.i.i213 = load i8, ptr %incdec.ptr5.i38.i.i212, align 1, !tbaa !14
  %tobool3.not.i40.i.i214 = icmp eq i8 %.pr.i39.i.i213, 0
  br i1 %tobool3.not.i40.i.i214, label %while.body4.i45.i.i218, label %for.body.i.i195

while.body4.i45.i.i218:                           ; preds = %while.cond1thread-pre-split.i41.i.i215, %while.cond.i31.i.i206
  %151 = phi i64 [ %dec6.i43.i.i211, %while.cond1thread-pre-split.i41.i.i215 ], [ %size.4.i.i203, %while.cond.i31.i.i206 ]
  %string.addr.118.i42.i.i216 = phi ptr [ %incdec.ptr5.i38.i.i212, %while.cond1thread-pre-split.i41.i.i215 ], [ %string.addr.0.i29.i.i204, %while.cond.i31.i.i206 ]
  %cmp7.i44.i.i217 = icmp ult i64 %151, 2
  br i1 %cmp7.i44.i.i217, label %if.end30, label %while.cond1thread-pre-split.i41.i.i215

if.then.i230.lr.ph:                               ; preds = %land.lhs.true.i.i198
  %imported_namespaces = getelementptr inbounds %struct.module, ptr %call2.i, i64 0, i32 11
  %modinfo_len.i223 = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 9
  br label %if.then.i230

if.then.i230:                                     ; preds = %land.lhs.true.i260, %if.then.i230.lr.ph
  %p.059.i.i191.pn = phi ptr [ %p.059.i.i191, %if.then.i230.lr.ph ], [ %p.059.i253, %land.lhs.true.i260 ]
  %namespace.0511 = getelementptr inbounds i8, ptr %p.059.i.i191.pn, i64 10
  call fastcc void @add_namespace(ptr noundef nonnull %imported_namespaces, ptr noundef nonnull %namespace.0511)
  %152 = load ptr, ptr %modinfo1.i.i, align 8, !tbaa !59
  %153 = load i32, ptr %modinfo_len.i223, align 8, !tbaa !60
  %conv2.i224 = zext i32 %153 to i64
  %sub.ptr.lhs.cast.i226 = ptrtoint ptr %namespace.0511 to i64
  %sub.ptr.rhs.cast.i227 = ptrtoint ptr %152 to i64
  %sub.ptr.sub.neg.i228 = sub i64 %sub.ptr.rhs.cast.i227, %sub.ptr.lhs.cast.i226
  %sub.i229 = add i64 %sub.ptr.sub.neg.i228, %conv2.i224
  br label %while.cond.i.i234

while.cond.i.i234:                                ; preds = %while.body.i.i238, %if.then.i230
  %size.0.i231 = phi i64 [ %sub.i229, %if.then.i230 ], [ %dec.i.i236, %while.body.i.i238 ]
  %string.addr.0.i.i232 = phi ptr [ %namespace.0511, %if.then.i230 ], [ %incdec.ptr.i.i235, %while.body.i.i238 ]
  %154 = load i8, ptr %string.addr.0.i.i232, align 1, !tbaa !14
  %tobool.not.i.i233 = icmp eq i8 %154, 0
  br i1 %tobool.not.i.i233, label %while.body4.i.i246, label %while.body.i.i238

while.body.i.i238:                                ; preds = %while.cond.i.i234
  %incdec.ptr.i.i235 = getelementptr inbounds i8, ptr %string.addr.0.i.i232, i64 1
  %dec.i.i236 = add i64 %size.0.i231, -1
  %cmp.i.i237 = icmp ult i64 %size.0.i231, 2
  br i1 %cmp.i.i237, label %if.end30, label %while.cond.i.i234

while.cond1thread-pre-split.i.i243:               ; preds = %while.body4.i.i246
  %dec6.i.i239 = add i64 %155, -1
  %incdec.ptr5.i.i240 = getelementptr inbounds i8, ptr %string.addr.118.i.i244, i64 1
  %.pr.i.i241 = load i8, ptr %incdec.ptr5.i.i240, align 1, !tbaa !14
  %tobool3.not.i.i242 = icmp eq i8 %.pr.i.i241, 0
  br i1 %tobool3.not.i.i242, label %while.body4.i.i246, label %for.body.i257

while.body4.i.i246:                               ; preds = %while.cond1thread-pre-split.i.i243, %while.cond.i.i234
  %155 = phi i64 [ %dec6.i.i239, %while.cond1thread-pre-split.i.i243 ], [ %size.0.i231, %while.cond.i.i234 ]
  %string.addr.118.i.i244 = phi ptr [ %incdec.ptr5.i.i240, %while.cond1thread-pre-split.i.i243 ], [ %string.addr.0.i.i232, %while.cond.i.i234 ]
  %cmp7.i.i245 = icmp ult i64 %155, 2
  br i1 %cmp7.i.i245, label %if.end30, label %while.cond1thread-pre-split.i.i243

for.body.i257:                                    ; preds = %while.cond1thread-pre-split.i41.i277, %while.cond1thread-pre-split.i.i243
  %p.059.i253 = phi ptr [ %incdec.ptr5.i.i240, %while.cond1thread-pre-split.i.i243 ], [ %incdec.ptr5.i38.i274, %while.cond1thread-pre-split.i41.i277 ]
  %size.358.i254 = phi i64 [ %dec6.i.i239, %while.cond1thread-pre-split.i.i243 ], [ %dec6.i43.i273, %while.cond1thread-pre-split.i41.i277 ]
  %call6.i255 = call i32 @strncmp(ptr noundef nonnull %p.059.i253, ptr noundef nonnull dereferenceable(10) @.str.29, i64 noundef 9) #29
  %cmp.i256 = icmp eq i32 %call6.i255, 0
  br i1 %cmp.i256, label %land.lhs.true.i260, label %while.body.i37.i272.preheader

land.lhs.true.i260:                               ; preds = %for.body.i257
  %arrayidx.i258 = getelementptr inbounds i8, ptr %p.059.i253, i64 9
  %156 = load i8, ptr %arrayidx.i258, align 1, !tbaa !14
  %cmp9.i259 = icmp eq i8 %156, 61
  br i1 %cmp9.i259, label %if.then.i230, label %while.body.i37.i272.preheader

while.body.i37.i272.preheader:                    ; preds = %land.lhs.true.i260, %for.body.i257
  br label %while.body.i37.i272

while.body.i37.i272:                              ; preds = %while.body.i37.i272.while.cond.i31.i268_crit_edge, %while.body.i37.i272.preheader
  %string.addr.0.i29.i266647 = phi ptr [ %incdec.ptr.i34.i269, %while.body.i37.i272.while.cond.i31.i268_crit_edge ], [ %p.059.i253, %while.body.i37.i272.preheader ]
  %size.4.i265646 = phi i64 [ %dec.i35.i270, %while.body.i37.i272.while.cond.i31.i268_crit_edge ], [ %size.358.i254, %while.body.i37.i272.preheader ]
  %cmp.i36.i271 = icmp ult i64 %size.4.i265646, 2
  br i1 %cmp.i36.i271, label %if.end30, label %while.body.i37.i272.while.cond.i31.i268_crit_edge

while.body.i37.i272.while.cond.i31.i268_crit_edge: ; preds = %while.body.i37.i272
  %dec.i35.i270 = add i64 %size.4.i265646, -1
  %incdec.ptr.i34.i269 = getelementptr inbounds i8, ptr %string.addr.0.i29.i266647, i64 1
  %.pre561 = load i8, ptr %incdec.ptr.i34.i269, align 1, !tbaa !14
  %tobool.not.i30.i267 = icmp eq i8 %.pre561, 0
  br i1 %tobool.not.i30.i267, label %while.body4.i45.i280, label %while.body.i37.i272

while.cond1thread-pre-split.i41.i277:             ; preds = %while.body4.i45.i280
  %dec6.i43.i273 = add i64 %157, -1
  %incdec.ptr5.i38.i274 = getelementptr inbounds i8, ptr %string.addr.118.i42.i278, i64 1
  %.pr.i39.i275 = load i8, ptr %incdec.ptr5.i38.i274, align 1, !tbaa !14
  %tobool3.not.i40.i276 = icmp eq i8 %.pr.i39.i275, 0
  br i1 %tobool3.not.i40.i276, label %while.body4.i45.i280, label %for.body.i257

while.body4.i45.i280:                             ; preds = %while.cond1thread-pre-split.i41.i277, %while.body.i37.i272.while.cond.i31.i268_crit_edge
  %157 = phi i64 [ %dec6.i43.i273, %while.cond1thread-pre-split.i41.i277 ], [ %dec.i35.i270, %while.body.i37.i272.while.cond.i31.i268_crit_edge ]
  %string.addr.118.i42.i278 = phi ptr [ %incdec.ptr5.i38.i274, %while.cond1thread-pre-split.i41.i277 ], [ %incdec.ptr.i34.i269, %while.body.i37.i272.while.cond.i31.i268_crit_edge ]
  %cmp7.i44.i279 = icmp ult i64 %157, 2
  br i1 %cmp7.i44.i279, label %if.end30, label %while.cond1thread-pre-split.i41.i277

if.end30:                                         ; preds = %while.body4.i45.i280, %while.body.i37.i272, %while.body4.i.i246, %while.body.i.i238, %while.body4.i45.i.i218, %while.body.i37.i.i210, %while.end, %new_module.exit
  %158 = load ptr, ptr %symtab_start301.i, align 8, !tbaa !63
  %159 = load ptr, ptr %symtab_stop307.i, align 8, !tbaa !64
  %cmp512 = icmp ult ptr %158, %159
  br i1 %cmp512, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end30
  %strtab = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 7
  %symtab_shndx_start.i116.i = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 12
  %export_sec.i.i = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 5
  %export_gpl_sec.i.i = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 6
  %unres.i = getelementptr inbounds %struct.module, ptr %call2.i, i64 0, i32 2
  %has_init.i = getelementptr inbounds %struct.module, ptr %call2.i, i64 0, i32 6
  %has_cleanup.i = getelementptr inbounds %struct.module, ptr %call2.i, i64 0, i32 7
  br label %for.body

for.body:                                         ; preds = %handle_symbol.exit, %for.body.lr.ph
  %sym.0513 = phi ptr [ %158, %for.body.lr.ph ], [ %incdec.ptr, %handle_symbol.exit ]
  %160 = load ptr, ptr %strtab, align 8, !tbaa !65
  %161 = load i32, ptr %sym.0513, align 4, !tbaa !70
  %idx.ext = zext i32 %161 to i64
  %add.ptr = getelementptr inbounds i8, ptr %160, i64 %idx.ext
  %call31 = call fastcc ptr @remove_dot(ptr noundef %add.ptr)
  %call.i284 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %add.ptr, ptr noundef nonnull dereferenceable(10) @.str.39, i64 noundef 9) #29
  %cmp.i285 = icmp eq i32 %call.i284, 0
  %st_shndx.i.i = getelementptr inbounds %struct.Elf32_Sym, ptr %sym.0513, i64 0, i32 5
  %162 = load i16, ptr %st_shndx.i.i, align 2, !tbaa !68
  %conv.i.i = zext i16 %162 to i32
  %163 = add i16 %162, 1
  %164 = icmp ult i16 %163, -255
  br i1 %cmp.i285, label %if.then.i286, label %if.else.i292

if.then.i286:                                     ; preds = %for.body
  br i1 %164, label %if.end.i.i288, label %if.then.i.i287

if.then.i.i287:                                   ; preds = %if.then.i286
  %sub.i.i = or i32 %conv.i.i, -65536
  br label %get_secindex.exit.i

if.end.i.i288:                                    ; preds = %if.then.i286
  %cmp.not.i.i = icmp eq i16 %162, -1
  br i1 %cmp.not.i.i, label %if.end9.i.i, label %get_secindex.exit.i

if.end9.i.i:                                      ; preds = %if.end.i.i288
  %165 = load ptr, ptr %symtab_shndx_start.i116.i, align 8, !tbaa !66
  %166 = load ptr, ptr %symtab_start301.i, align 8, !tbaa !63
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %sym.0513 to i64
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %166 to i64
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = ashr exact i64 %sub.ptr.sub.i.i, 4
  %arrayidx.i.i289 = getelementptr inbounds i32, ptr %165, i64 %sub.ptr.div.i.i
  %167 = load i32, ptr %arrayidx.i.i289, align 4, !tbaa !21
  br label %get_secindex.exit.i

get_secindex.exit.i:                              ; preds = %if.end9.i.i, %if.end.i.i288, %if.then.i.i287
  %retval.0.i.i290 = phi i32 [ %sub.i.i, %if.then.i.i287 ], [ %167, %if.end9.i.i ], [ %conv.i.i, %if.end.i.i288 ]
  %168 = load ptr, ptr %sechdrs70.i, align 8, !tbaa !45
  %idxprom.i.i.i = sext i32 %retval.0.i.i290 to i64
  %arrayidx.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %168, i64 %idxprom.i.i.i
  %169 = load i32, ptr %secindex_strings104.i, align 8, !tbaa !47
  %170 = load i32, ptr %arrayidx.i.i.i, align 4, !tbaa !48
  %conv.i.i.i.i = zext i32 %170 to i64
  %idxprom.i.i.i.i.i = zext i32 %169 to i64
  %171 = load ptr, ptr %hdr7.i, align 8, !tbaa !27
  %e_type.i.i.i.i.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %171, i64 0, i32 1
  %172 = load i16, ptr %e_type.i.i.i.i.i, align 4, !tbaa !31
  %cmp.not.i.i.i.i.i = icmp eq i16 %172, 1
  br i1 %cmp.not.i.i.i.i.i, label %sec_name.exit.i.i, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %get_secindex.exit.i
  %sh_addr.i.i.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %168, i64 %idxprom.i.i.i.i.i, i32 3
  %173 = load i32, ptr %sh_addr.i.i.i.i.i, align 4, !tbaa !52
  %conv2.i.i.i.i.i = zext i32 %173 to i64
  %sub.i.i.i.i.i = sub nsw i64 %conv.i.i.i.i, %conv2.i.i.i.i.i
  br label %sec_name.exit.i.i

sec_name.exit.i.i:                                ; preds = %if.then.i.i.i.i.i, %get_secindex.exit.i
  %offset.addr.0.i.i.i.i.i = phi i64 [ %sub.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %conv.i.i.i.i, %get_secindex.exit.i ]
  %sh_offset.i.i.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %168, i64 %idxprom.i.i.i.i.i, i32 4
  %174 = load i32, ptr %sh_offset.i.i.i.i.i, align 4, !tbaa !53
  %idx.ext.i.i.i.i.i = zext i32 %174 to i64
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %171, i64 %idx.ext.i.i.i.i.i
  %add.ptr4.i.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i64 %offset.addr.0.i.i.i.i.i
  %call1.i.i = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %add.ptr4.i.i.i.i.i, ptr noundef nonnull dereferenceable(12) @.str.58, i64 noundef 11) #29
  %cmp.i.i291 = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i.i291, label %if.end.i294, label %if.else.i.i

if.else.i.i:                                      ; preds = %sec_name.exit.i.i
  %call2.i.i = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %add.ptr4.i.i.i.i.i, ptr noundef nonnull dereferenceable(16) @.str.59, i64 noundef 15) #29
  %cmp3.i.i = icmp eq i32 %call2.i.i, 0
  %..i.i = select i1 %cmp3.i.i, i32 1, i32 2
  br label %if.end.i294

if.else.i292:                                     ; preds = %for.body
  br i1 %164, label %if.end.i115.i, label %get_secindex.exit125.thread.i

get_secindex.exit125.thread.i:                    ; preds = %if.else.i292
  %sub.i112.i = or i32 %conv.i.i, -65536
  br label %if.else.i130.i

if.end.i115.i:                                    ; preds = %if.else.i292
  %cmp.not.i114.i = icmp eq i16 %162, -1
  br i1 %cmp.not.i114.i, label %if.end9.i123.i, label %get_secindex.exit125.i

if.end9.i123.i:                                   ; preds = %if.end.i115.i
  %175 = load ptr, ptr %symtab_shndx_start.i116.i, align 8, !tbaa !66
  %176 = load ptr, ptr %symtab_start301.i, align 8, !tbaa !63
  %sub.ptr.lhs.cast.i118.i = ptrtoint ptr %sym.0513 to i64
  %sub.ptr.rhs.cast.i119.i = ptrtoint ptr %176 to i64
  %sub.ptr.sub.i120.i = sub i64 %sub.ptr.lhs.cast.i118.i, %sub.ptr.rhs.cast.i119.i
  %sub.ptr.div.i121.i = ashr exact i64 %sub.ptr.sub.i120.i, 4
  %arrayidx.i122.i = getelementptr inbounds i32, ptr %175, i64 %sub.ptr.div.i121.i
  %177 = load i32, ptr %arrayidx.i122.i, align 4, !tbaa !21
  br label %get_secindex.exit125.i

get_secindex.exit125.i:                           ; preds = %if.end9.i123.i, %if.end.i115.i
  %retval.0.i124.i = phi i32 [ %177, %if.end9.i123.i ], [ %conv.i.i, %if.end.i115.i ]
  %178 = load i16, ptr %export_sec.i.i, align 8, !tbaa !61
  %conv.i126.i = zext i16 %178 to i32
  %cmp.i127.i = icmp eq i32 %retval.0.i124.i, %conv.i126.i
  br i1 %cmp.i127.i, label %if.end.i294, label %if.else.i130.i

if.else.i130.i:                                   ; preds = %get_secindex.exit125.i, %get_secindex.exit125.thread.i
  %retval.0.i124144.i = phi i32 [ %sub.i112.i, %get_secindex.exit125.thread.i ], [ %retval.0.i124.i, %get_secindex.exit125.i ]
  %179 = load i16, ptr %export_gpl_sec.i.i, align 2, !tbaa !62
  %conv2.i.i293 = zext i16 %179 to i32
  %cmp3.i128.i = icmp eq i32 %retval.0.i124144.i, %conv2.i.i293
  %..i129.i = select i1 %cmp3.i128.i, i32 1, i32 2
  br label %if.end.i294

if.end.i294:                                      ; preds = %if.else.i130.i, %get_secindex.exit125.i, %if.else.i.i, %sec_name.exit.i.i
  %export.0.i = phi i32 [ 0, %sec_name.exit.i.i ], [ %..i.i, %if.else.i.i ], [ 0, %get_secindex.exit125.i ], [ %..i129.i, %if.else.i130.i ]
  switch i16 %162, label %sw.default.i [
    i16 -14, label %sw.bb.i
    i16 0, label %sw.bb12.i
  ]

sw.bb.i:                                          ; preds = %if.end.i294
  %call5.i295 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %add.ptr, ptr noundef nonnull dereferenceable(11) @.str.52, i64 noundef 10) #29
  %cmp6.i296 = icmp eq i32 %call5.i295, 0
  br i1 %cmp6.i296, label %handle_symbol.exit, label %if.else9.i

if.else9.i:                                       ; preds = %sw.bb.i
  call void (i32, ptr, ...) @modpost_log(i32 noundef 0, ptr noundef nonnull @.str.53, ptr noundef %add.ptr, ptr noundef nonnull %name.i) #25
  br label %handle_symbol.exit

sw.bb12.i:                                        ; preds = %if.end.i294
  %st_info.i = getelementptr inbounds %struct.Elf32_Sym, ptr %sym.0513, i64 0, i32 3
  %180 = load i8, ptr %st_info.i, align 4, !tbaa !73
  %181 = lshr i8 %180, 4
  %.off.i = add nsw i8 %181, -1
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %if.end22.i, label %handle_symbol.exit

if.end22.i:                                       ; preds = %sw.bb12.i
  %call.i.i297 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr, ptr noundef nonnull dereferenceable(14) @.str.60) #29
  %cmp.i132.i = icmp eq i32 %call.i.i297, 0
  br i1 %cmp.i132.i, label %handle_symbol.exit, label %if.end.i134.i

if.end.i134.i:                                    ; preds = %if.end22.i
  %call1.i133.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr, ptr noundef nonnull dereferenceable(22) @.str.61) #29
  %cmp2.i.i = icmp eq i32 %call1.i133.i, 0
  br i1 %cmp2.i.i, label %handle_symbol.exit, label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.end.i134.i
  %182 = load ptr, ptr %hdr7.i, align 8, !tbaa !27
  %e_machine.i.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %182, i64 0, i32 2
  %183 = load i16, ptr %e_machine.i.i, align 2, !tbaa !33
  switch i16 %183, label %if.end55.i [
    i16 20, label %if.then7.i.i
    i16 21, label %if.then38.i.i
    i16 2, label %if.then34.i
    i16 43, label %if.then34.i
  ]

if.then7.i.i:                                     ; preds = %if.end4.i.i
  %call8.i.i = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %add.ptr, ptr noundef nonnull dereferenceable(10) @.str.62, i64 noundef 9) #29
  %cmp9.i.i298 = icmp eq i32 %call8.i.i, 0
  br i1 %cmp9.i.i298, label %handle_symbol.exit, label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %if.then7.i.i
  %call11.i.i = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %add.ptr, ptr noundef nonnull dereferenceable(10) @.str.63, i64 noundef 9) #29
  %cmp12.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %cmp12.i.i, label %handle_symbol.exit, label %lor.lhs.false14.i.i

lor.lhs.false14.i.i:                              ; preds = %lor.lhs.false.i.i
  %call15.i.i = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %add.ptr, ptr noundef nonnull dereferenceable(12) @.str.64, i64 noundef 11) #29
  %cmp16.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %cmp16.i.i, label %handle_symbol.exit, label %lor.lhs.false18.i.i

lor.lhs.false18.i.i:                              ; preds = %lor.lhs.false14.i.i
  %call19.i.i = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %add.ptr, ptr noundef nonnull dereferenceable(12) @.str.65, i64 noundef 11) #29
  %cmp20.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %cmp20.i.i, label %handle_symbol.exit, label %lor.lhs.false22.i.i

lor.lhs.false22.i.i:                              ; preds = %lor.lhs.false18.i.i
  %call23.i.i = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %add.ptr, ptr noundef nonnull dereferenceable(9) @.str.66, i64 noundef 8) #29
  %cmp24.i.i = icmp eq i32 %call23.i.i, 0
  br i1 %cmp24.i.i, label %handle_symbol.exit, label %lor.lhs.false26.i.i

lor.lhs.false26.i.i:                              ; preds = %lor.lhs.false22.i.i
  %call27.i.i = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %add.ptr, ptr noundef nonnull dereferenceable(9) @.str.67, i64 noundef 8) #29
  %cmp28.i.i = icmp eq i32 %call27.i.i, 0
  br i1 %cmp28.i.i, label %handle_symbol.exit, label %if.end55.i

if.then38.i.i:                                    ; preds = %if.end4.i.i
  %call39.i.i = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %add.ptr, ptr noundef nonnull dereferenceable(11) @.str.68, i64 noundef 10) #29
  %cmp40.i.i = icmp eq i32 %call39.i.i, 0
  br i1 %cmp40.i.i, label %handle_symbol.exit, label %lor.lhs.false42.i.i

lor.lhs.false42.i.i:                              ; preds = %if.then38.i.i
  %call43.i.i = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %add.ptr, ptr noundef nonnull dereferenceable(11) @.str.69, i64 noundef 10) #29
  %cmp44.i.i = icmp eq i32 %call43.i.i, 0
  br i1 %cmp44.i.i, label %handle_symbol.exit, label %lor.lhs.false46.i.i

lor.lhs.false46.i.i:                              ; preds = %lor.lhs.false42.i.i
  %call47.i.i = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %add.ptr, ptr noundef nonnull dereferenceable(9) @.str.66, i64 noundef 8) #29
  %cmp48.i.i = icmp eq i32 %call47.i.i, 0
  br i1 %cmp48.i.i, label %handle_symbol.exit, label %lor.lhs.false50.i.i

lor.lhs.false50.i.i:                              ; preds = %lor.lhs.false46.i.i
  %call51.i.i = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %add.ptr, ptr noundef nonnull dereferenceable(9) @.str.67, i64 noundef 8) #29
  %cmp52.i.i = icmp eq i32 %call51.i.i, 0
  br i1 %cmp52.i.i, label %handle_symbol.exit, label %lor.lhs.false54.i.i

lor.lhs.false54.i.i:                              ; preds = %lor.lhs.false50.i.i
  %call55.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr, ptr noundef nonnull dereferenceable(6) @.str.70) #29
  %cmp56.i.i = icmp eq i32 %call55.i.i, 0
  br i1 %cmp56.i.i, label %handle_symbol.exit, label %if.end55.i

if.then34.i:                                      ; preds = %if.end4.i.i, %if.end4.i.i
  %184 = and i8 %180, 15
  %cmp37.i = icmp eq i8 %184, 13
  br i1 %cmp37.i, label %handle_symbol.exit, label %if.end40.i

if.end40.i:                                       ; preds = %if.then34.i
  %185 = load i8, ptr %add.ptr, align 1, !tbaa !14
  %cmp42.i = icmp eq i8 %185, 46
  br i1 %cmp42.i, label %if.then44.i, label %if.end55.i

if.then44.i:                                      ; preds = %if.end40.i
  %call45.i = call noalias ptr @strdup(ptr noundef nonnull %add.ptr) #25
  %tobool.not.i.i299 = icmp eq ptr %call45.i, null
  br i1 %tobool.not.i.i299, label %if.then.i136.i, label %do_nofail.exit.i

if.then.i136.i:                                   ; preds = %if.then44.i
  call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.54) #25
  %.pre.pre.i = load i8, ptr %st_info.i, align 4, !tbaa !73
  br label %do_nofail.exit.i

do_nofail.exit.i:                                 ; preds = %if.then.i136.i, %if.then44.i
  %.pre.i300 = phi i8 [ %180, %if.then44.i ], [ %.pre.pre.i, %if.then.i136.i ]
  store i8 95, ptr %call45.i, align 1, !tbaa !14
  %call48.i = tail call ptr @__ctype_toupper_loc() #32
  %186 = load ptr, ptr %call48.i, align 8, !tbaa !5
  %arrayidx49.i = getelementptr inbounds i8, ptr %call45.i, i64 1
  %187 = load i8, ptr %arrayidx49.i, align 1, !tbaa !14
  %idxprom.i = sext i8 %187 to i64
  %arrayidx51.i = getelementptr inbounds i32, ptr %186, i64 %idxprom.i
  %188 = load i32, ptr %arrayidx51.i, align 4, !tbaa !21
  %conv52.i = trunc i32 %188 to i8
  store i8 %conv52.i, ptr %arrayidx49.i, align 1, !tbaa !14
  br label %if.end55.i

if.end55.i:                                       ; preds = %do_nofail.exit.i, %if.end40.i, %lor.lhs.false54.i.i, %lor.lhs.false26.i.i, %if.end4.i.i
  %189 = phi i8 [ %.pre.i300, %do_nofail.exit.i ], [ %180, %if.end40.i ], [ %180, %lor.lhs.false54.i.i ], [ %180, %lor.lhs.false26.i.i ], [ %180, %if.end4.i.i ]
  %symname.addr.0.i = phi ptr [ %call45.i, %do_nofail.exit.i ], [ %add.ptr, %if.end40.i ], [ %add.ptr, %lor.lhs.false54.i.i ], [ %add.ptr, %lor.lhs.false26.i.i ], [ %add.ptr, %if.end4.i.i ]
  %.mask.i = and i8 %189, -16
  %cmp59.i = icmp eq i8 %.mask.i, 32
  %190 = load ptr, ptr %unres.i, align 8, !tbaa !5
  %call.i138.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %symname.addr.0.i) #29
  %add1.i.i = add i64 %call.i138.i, 41
  %call2.i139.i = call noalias ptr @malloc(i64 noundef %add1.i.i) #28
  %tobool.not.i.i.i = icmp eq ptr %call2.i139.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %alloc_symbol.exit.i

if.then.i.i.i:                                    ; preds = %if.end55.i
  call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.19) #25
  br label %alloc_symbol.exit.i

alloc_symbol.exit.i:                              ; preds = %if.then.i.i.i, %if.end55.i
  %191 = getelementptr inbounds i8, ptr %call2.i139.i, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %191, i8 0, i64 32, i1 false) #25
  %name4.i.i = getelementptr inbounds %struct.symbol, ptr %call2.i139.i, i64 0, i32 7
  %call5.i.i301 = call ptr @strcpy(ptr noundef nonnull %name4.i.i, ptr noundef nonnull dereferenceable(1) %symname.addr.0.i) #25
  %weak6.i.i = getelementptr inbounds %struct.symbol, ptr %call2.i139.i, i64 0, i32 5
  %192 = zext i1 %cmp59.i to i8
  store ptr %190, ptr %call2.i139.i, align 8, !tbaa !5
  %bf.set10.i.i = or i8 %192, 2
  store i8 %bf.set10.i.i, ptr %weak6.i.i, align 8
  store ptr %call2.i139.i, ptr %unres.i, align 8, !tbaa !5
  br label %handle_symbol.exit

sw.default.i:                                     ; preds = %if.end.i294
  %call63.i = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %add.ptr, ptr noundef nonnull dereferenceable(11) @.str.55, i64 noundef 10) #29
  %cmp64.i = icmp eq i32 %call63.i, 0
  br i1 %cmp64.i, label %if.then66.i, label %if.end68.i

if.then66.i:                                      ; preds = %sw.default.i
  %add.ptr.i302 = getelementptr inbounds i8, ptr %add.ptr, i64 10
  %call67.i = call fastcc ptr @sym_add_exported(ptr noundef nonnull %add.ptr.i302, ptr noundef nonnull %call2.i, i32 noundef %export.0.i) #25
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then66.i, %sw.default.i
  %call69.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr, ptr noundef nonnull dereferenceable(12) @.str.56) #29
  %cmp70.i = icmp eq i32 %call69.i, 0
  br i1 %cmp70.i, label %if.then72.i, label %if.end73.i

if.then72.i:                                      ; preds = %if.end68.i
  store i32 1, ptr %has_init.i, align 4, !tbaa !21
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then72.i, %if.end68.i
  %call74.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr, ptr noundef nonnull dereferenceable(15) @.str.57) #29
  %cmp75.i = icmp eq i32 %call74.i, 0
  br i1 %cmp75.i, label %if.then77.i, label %handle_symbol.exit

if.then77.i:                                      ; preds = %if.end73.i
  store i32 1, ptr %has_cleanup.i, align 8, !tbaa !21
  br label %handle_symbol.exit

handle_symbol.exit:                               ; preds = %if.then77.i, %if.end73.i, %alloc_symbol.exit.i, %if.then34.i, %lor.lhs.false54.i.i, %lor.lhs.false50.i.i, %lor.lhs.false46.i.i, %lor.lhs.false42.i.i, %if.then38.i.i, %lor.lhs.false26.i.i, %lor.lhs.false22.i.i, %lor.lhs.false18.i.i, %lor.lhs.false14.i.i, %lor.lhs.false.i.i, %if.then7.i.i, %if.end.i134.i, %if.end22.i, %sw.bb12.i, %if.else9.i, %sw.bb.i
  call void @handle_moddevtable(ptr noundef nonnull %call2.i, ptr noundef nonnull %info, ptr noundef nonnull %sym.0513, ptr noundef %add.ptr) #25
  %incdec.ptr = getelementptr inbounds %struct.Elf32_Sym, ptr %sym.0513, i64 1
  %193 = load ptr, ptr %symtab_stop307.i, align 8, !tbaa !64
  %cmp = icmp ult ptr %incdec.ptr, %193
  br i1 %cmp, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %handle_symbol.exit
  %.pre562 = load ptr, ptr %symtab_start301.i, align 8, !tbaa !63
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end30
  %194 = phi ptr [ %193, %for.end.loopexit ], [ %159, %if.end30 ]
  %195 = phi ptr [ %.pre562, %for.end.loopexit ], [ %158, %if.end30 ]
  %cmp35519 = icmp ult ptr %195, %194
  br i1 %cmp35519, label %for.body36.lr.ph, label %for.end55

for.body36.lr.ph:                                 ; preds = %for.end
  %strtab37 = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 7
  %symtab_shndx_start.i.i.i = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 12
  br label %for.body36

for.body36:                                       ; preds = %for.inc53, %for.body36.lr.ph
  %sym.1520 = phi ptr [ %195, %for.body36.lr.ph ], [ %incdec.ptr54, %for.inc53 ]
  %196 = load ptr, ptr %strtab37, align 8, !tbaa !65
  %197 = load i32, ptr %sym.1520, align 4, !tbaa !70
  %idx.ext39 = zext i32 %197 to i64
  %add.ptr40 = getelementptr inbounds i8, ptr %196, i64 %idx.ext39
  %call41 = call fastcc ptr @remove_dot(ptr noundef %add.ptr40)
  %call42 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %add.ptr40, ptr noundef nonnull dereferenceable(13) @.str.30, i64 noundef 12) #29
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.then44, label %if.end47

if.then44:                                        ; preds = %for.body36
  %add.ptr45 = getelementptr inbounds i8, ptr %add.ptr40, i64 12
  %st_shndx.i.i.i = getelementptr inbounds %struct.Elf32_Sym, ptr %sym.1520, i64 0, i32 5
  %198 = load i16, ptr %st_shndx.i.i.i, align 2, !tbaa !68
  %conv.i.i.i = zext i16 %198 to i32
  %199 = add i16 %198, 1
  %200 = icmp ult i16 %199, -255
  br i1 %200, label %if.end.i.i.i, label %if.then.i.i.i303

if.then.i.i.i303:                                 ; preds = %if.then44
  %sub.i.i.i = or i32 %conv.i.i.i, -65536
  br label %get_secindex.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then44
  %cmp.not.i.i.i = icmp eq i16 %198, -1
  br i1 %cmp.not.i.i.i, label %if.end9.i.i.i, label %get_secindex.exit.i.i

if.end9.i.i.i:                                    ; preds = %if.end.i.i.i
  %201 = load ptr, ptr %symtab_shndx_start.i.i.i, align 8, !tbaa !66
  %202 = load ptr, ptr %symtab_start301.i, align 8, !tbaa !63
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %sym.1520 to i64
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %202 to i64
  %sub.ptr.sub.i.i.i = sub i64 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = ashr exact i64 %sub.ptr.sub.i.i.i, 4
  %arrayidx.i.i.i304 = getelementptr inbounds i32, ptr %201, i64 %sub.ptr.div.i.i.i
  %203 = load i32, ptr %arrayidx.i.i.i304, align 4, !tbaa !21
  br label %get_secindex.exit.i.i

get_secindex.exit.i.i:                            ; preds = %if.end9.i.i.i, %if.end.i.i.i, %if.then.i.i.i303
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i303 ], [ %203, %if.end9.i.i.i ], [ %conv.i.i.i, %if.end.i.i.i ]
  %st_value.i.i = getelementptr inbounds %struct.Elf32_Sym, ptr %sym.1520, i64 0, i32 1
  %204 = load i32, ptr %st_value.i.i, align 4, !tbaa !71
  %conv.i.i305 = zext i32 %204 to i64
  %205 = load ptr, ptr %sechdrs70.i, align 8, !tbaa !45
  %idxprom.i.i.i307 = zext i32 %retval.0.i.i.i to i64
  %206 = load ptr, ptr %hdr7.i, align 8, !tbaa !27
  %e_type.i.i.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %206, i64 0, i32 1
  %207 = load i16, ptr %e_type.i.i.i, align 4, !tbaa !31
  %cmp.not.i4.i.i = icmp eq i16 %207, 1
  br i1 %cmp.not.i4.i.i, label %namespace_from_kstrtabns.exit, label %if.then.i6.i.i

if.then.i6.i.i:                                   ; preds = %get_secindex.exit.i.i
  %sh_addr.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %205, i64 %idxprom.i.i.i307, i32 3
  %208 = load i32, ptr %sh_addr.i.i.i, align 4, !tbaa !52
  %conv2.i.i.i = zext i32 %208 to i64
  %sub.i5.i.i = sub nsw i64 %conv.i.i305, %conv2.i.i.i
  br label %namespace_from_kstrtabns.exit

namespace_from_kstrtabns.exit:                    ; preds = %if.then.i6.i.i, %get_secindex.exit.i.i
  %offset.addr.0.i.i.i = phi i64 [ %sub.i5.i.i, %if.then.i6.i.i ], [ %conv.i.i305, %get_secindex.exit.i.i ]
  %sh_offset.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %205, i64 %idxprom.i.i.i307, i32 4
  %209 = load i32, ptr %sh_offset.i.i.i, align 4, !tbaa !53
  %idx.ext.i.i.i = zext i32 %209 to i64
  %add.ptr.i.i.i = getelementptr i8, ptr %206, i64 %idx.ext.i.i.i
  %add.ptr4.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i64 %offset.addr.0.i.i.i
  %210 = load i8, ptr %add.ptr4.i.i.i, align 1, !tbaa !14
  %tobool.not.i308 = icmp eq i8 %210, 0
  %cond.i = select i1 %tobool.not.i308, ptr null, ptr %add.ptr4.i.i.i
  call fastcc void @sym_update_namespace(ptr noundef nonnull %add.ptr45, ptr noundef %cond.i)
  br label %if.end47

if.end47:                                         ; preds = %namespace_from_kstrtabns.exit, %for.body36
  %call48 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %add.ptr40, ptr noundef nonnull dereferenceable(7) @.str.31, i64 noundef 6) #29
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.then50, label %for.inc53

if.then50:                                        ; preds = %if.end47
  %add.ptr51 = getelementptr inbounds i8, ptr %add.ptr40, i64 6
  %st_shndx.i309 = getelementptr inbounds %struct.Elf32_Sym, ptr %sym.1520, i64 0, i32 5
  %211 = load i16, ptr %st_shndx.i309, align 2, !tbaa !68
  switch i16 %211, label %if.else.i317 [
    i16 0, label %if.then.i314
    i16 -15, label %if.then6.i
  ]

if.then.i314:                                     ; preds = %if.then50
  %212 = load i32, ptr %is_vmlinux.i, align 4, !tbaa !21
  %tobool.not.i312 = icmp eq i32 %212, 0
  %cond.i313 = select i1 %tobool.not.i312, ptr @.str.18, ptr @.str.17
  call void (i32, ptr, ...) @modpost_log(i32 noundef 0, ptr noundef nonnull @.str.71, ptr noundef nonnull %add.ptr51, ptr noundef nonnull %name.i, ptr noundef nonnull %cond.i313, ptr noundef nonnull %add.ptr51) #25
  br label %for.inc53

if.then6.i:                                       ; preds = %if.then50
  %st_value.i315 = getelementptr inbounds %struct.Elf32_Sym, ptr %sym.1520, i64 0, i32 1
  %213 = load i32, ptr %st_value.i315, align 4, !tbaa !71
  br label %if.end7.i

if.else.i317:                                     ; preds = %if.then50
  %conv.i.i.i316 = zext i16 %211 to i32
  %214 = add i16 %211, 1
  %215 = icmp ult i16 %214, -255
  br i1 %215, label %if.end.i.i.i321, label %if.then.i.i.i319

if.then.i.i.i319:                                 ; preds = %if.else.i317
  %sub.i.i.i318 = or i32 %conv.i.i.i316, -65536
  br label %get_secindex.exit.i.i338

if.end.i.i.i321:                                  ; preds = %if.else.i317
  %cmp.not.i.i.i320 = icmp eq i16 %211, -1
  br i1 %cmp.not.i.i.i320, label %if.end9.i.i.i329, label %get_secindex.exit.i.i338

if.end9.i.i.i329:                                 ; preds = %if.end.i.i.i321
  %216 = load ptr, ptr %symtab_shndx_start.i.i.i, align 8, !tbaa !66
  %217 = load ptr, ptr %symtab_start301.i, align 8, !tbaa !63
  %sub.ptr.lhs.cast.i.i.i324 = ptrtoint ptr %sym.1520 to i64
  %sub.ptr.rhs.cast.i.i.i325 = ptrtoint ptr %217 to i64
  %sub.ptr.sub.i.i.i326 = sub i64 %sub.ptr.lhs.cast.i.i.i324, %sub.ptr.rhs.cast.i.i.i325
  %sub.ptr.div.i.i.i327 = ashr exact i64 %sub.ptr.sub.i.i.i326, 4
  %arrayidx.i.i.i328 = getelementptr inbounds i32, ptr %216, i64 %sub.ptr.div.i.i.i327
  %218 = load i32, ptr %arrayidx.i.i.i328, align 4, !tbaa !21
  br label %get_secindex.exit.i.i338

get_secindex.exit.i.i338:                         ; preds = %if.end9.i.i.i329, %if.end.i.i.i321, %if.then.i.i.i319
  %retval.0.i.i.i330 = phi i32 [ %sub.i.i.i318, %if.then.i.i.i319 ], [ %218, %if.end9.i.i.i329 ], [ %conv.i.i.i316, %if.end.i.i.i321 ]
  %st_value.i.i331 = getelementptr inbounds %struct.Elf32_Sym, ptr %sym.1520, i64 0, i32 1
  %219 = load i32, ptr %st_value.i.i331, align 4, !tbaa !71
  %conv.i.i332 = zext i32 %219 to i64
  %220 = load ptr, ptr %sechdrs70.i, align 8, !tbaa !45
  %idxprom.i.i.i334 = zext i32 %retval.0.i.i.i330 to i64
  %221 = load ptr, ptr %hdr7.i, align 8, !tbaa !27
  %e_type.i.i.i336 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %221, i64 0, i32 1
  %222 = load i16, ptr %e_type.i.i.i336, align 4, !tbaa !31
  %cmp.not.i4.i.i337 = icmp eq i16 %222, 1
  br i1 %cmp.not.i4.i.i337, label %sym_get_data.exit.i, label %if.then.i6.i.i342

if.then.i6.i.i342:                                ; preds = %get_secindex.exit.i.i338
  %sh_addr.i.i.i339 = getelementptr inbounds %struct.Elf32_Shdr, ptr %220, i64 %idxprom.i.i.i334, i32 3
  %223 = load i32, ptr %sh_addr.i.i.i339, align 4, !tbaa !52
  %conv2.i.i.i340 = zext i32 %223 to i64
  %sub.i5.i.i341 = sub nsw i64 %conv.i.i332, %conv2.i.i.i340
  br label %sym_get_data.exit.i

sym_get_data.exit.i:                              ; preds = %if.then.i6.i.i342, %get_secindex.exit.i.i338
  %offset.addr.0.i.i.i343 = phi i64 [ %sub.i5.i.i341, %if.then.i6.i.i342 ], [ %conv.i.i332, %get_secindex.exit.i.i338 ]
  %sh_offset.i.i.i344 = getelementptr inbounds %struct.Elf32_Shdr, ptr %220, i64 %idxprom.i.i.i334, i32 4
  %224 = load i32, ptr %sh_offset.i.i.i344, align 4, !tbaa !53
  %idx.ext.i.i.i345 = zext i32 %224 to i64
  %add.ptr.i.i.i346 = getelementptr i8, ptr %221, i64 %idx.ext.i.i.i345
  %add.ptr4.i.i.i347 = getelementptr i8, ptr %add.ptr.i.i.i346, i64 %offset.addr.0.i.i.i343
  %arrayidx.i.i348 = getelementptr inbounds i8, ptr %add.ptr4.i.i.i347, i64 3
  %225 = load i8, ptr %arrayidx.i.i348, align 1, !tbaa !14
  %arrayidx.i.1.i = getelementptr inbounds i8, ptr %add.ptr4.i.i.i347, i64 2
  %226 = load i8, ptr %arrayidx.i.1.i, align 1, !tbaa !14
  %arrayidx.i.2.i = getelementptr inbounds i8, ptr %add.ptr4.i.i.i347, i64 1
  %227 = load i8, ptr %arrayidx.i.2.i, align 1, !tbaa !14
  %228 = load i8, ptr %add.ptr4.i.i.i347, align 1, !tbaa !14
  %__x.sroa.6.0.insert.ext.i = zext i8 %228 to i32
  %__x.sroa.6.0.insert.shift.i = shl nuw i32 %__x.sroa.6.0.insert.ext.i, 24
  %__x.sroa.5.0.insert.ext.i = zext i8 %227 to i32
  %__x.sroa.5.0.insert.shift.i = shl nuw nsw i32 %__x.sroa.5.0.insert.ext.i, 16
  %__x.sroa.4.0.insert.ext.i349 = zext i8 %226 to i32
  %__x.sroa.4.0.insert.shift.i350 = shl nuw nsw i32 %__x.sroa.4.0.insert.ext.i349, 8
  %__x.sroa.0.0.insert.ext.i351 = zext i8 %225 to i32
  %__x.sroa.5.0.insert.insert.i = or i32 %__x.sroa.4.0.insert.shift.i350, %__x.sroa.0.0.insert.ext.i351
  %__x.sroa.4.0.insert.insert.i = or i32 %__x.sroa.5.0.insert.insert.i, %__x.sroa.5.0.insert.shift.i
  %__x.sroa.0.0.insert.insert.i352 = or i32 %__x.sroa.4.0.insert.insert.i, %__x.sroa.6.0.insert.shift.i
  br label %if.end7.i

if.end7.i:                                        ; preds = %sym_get_data.exit.i, %if.then6.i
  %crc.0.i = phi i32 [ %213, %if.then6.i ], [ %__x.sroa.0.0.insert.insert.i352, %sym_get_data.exit.i ]
  %229 = load i8, ptr %add.ptr51, align 1, !tbaa !14
  %cmp.i.i.i = icmp eq i8 %229, 46
  %spec.select.idx.i.i.i = zext i1 %cmp.i.i.i to i64
  %spec.select.i.i.i = getelementptr i8, ptr %add.ptr51, i64 %spec.select.idx.i.i.i
  %call.i.i.i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select.i.i.i) #29
  %230 = trunc i64 %call.i.i.i.i to i32
  %conv.i.i.i.i353 = mul i32 %230, 596579247
  %231 = load i8, ptr %spec.select.i.i.i, align 1, !tbaa !14
  %tobool.not13.i.i.i.i = icmp eq i8 %231, 0
  br i1 %tobool.not13.i.i.i.i, label %tdb_hash.exit.i.i.i, label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i, %if.end7.i
  %232 = phi i8 [ %233, %for.body.i.i.i.i ], [ %231, %if.end7.i ]
  %i.015.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.body.i.i.i.i ], [ 0, %if.end7.i ]
  %value.014.i.i.i.i = phi i32 [ %add.i.i.i.i, %for.body.i.i.i.i ], [ %conv.i.i.i.i353, %if.end7.i ]
  %conv3.i.i.i.i = zext i8 %232 to i32
  %mul4.i.i.i.i = mul i32 %i.015.i.i.i.i, 5
  %rem.i.i.i.i = urem i32 %mul4.i.i.i.i, 24
  %shl.i.i.i.i = shl nuw nsw i32 %conv3.i.i.i.i, %rem.i.i.i.i
  %add.i.i.i.i = add i32 %shl.i.i.i.i, %value.014.i.i.i.i
  %inc.i.i.i.i = add i32 %i.015.i.i.i.i, 1
  %idxprom.i.i.i.i = zext i32 %inc.i.i.i.i to i64
  %arrayidx.i.i.i.i = getelementptr inbounds i8, ptr %spec.select.i.i.i, i64 %idxprom.i.i.i.i
  %233 = load i8, ptr %arrayidx.i.i.i.i, align 1, !tbaa !14
  %tobool.not.i.i.i.i = icmp eq i8 %233, 0
  br i1 %tobool.not.i.i.i.i, label %tdb_hash.exit.i.i.i, label %for.body.i.i.i.i

tdb_hash.exit.i.i.i:                              ; preds = %for.body.i.i.i.i, %if.end7.i
  %value.0.lcssa.i.i.i.i = phi i32 [ %conv.i.i.i.i353, %if.end7.i ], [ %add.i.i.i.i, %for.body.i.i.i.i ]
  %mul5.i.i.i.i = mul i32 %value.0.lcssa.i.i.i.i, 619
  %add6.i.i.i.i = add i32 %mul5.i.i.i.i, 57
  %rem.i.i.i = and i32 %add6.i.i.i.i, 1023
  %idxprom.i.i14.i = zext i32 %rem.i.i.i to i64
  %arrayidx2.i.i.i = getelementptr inbounds [1024 x ptr], ptr @symbolhash, i64 0, i64 %idxprom.i.i14.i
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i, %tdb_hash.exit.i.i.i
  %s.0.in.i.i.i = phi ptr [ %arrayidx2.i.i.i, %tdb_hash.exit.i.i.i ], [ %s.0.i.i.i, %for.body.i.i.i ]
  %s.0.i.i.i = load ptr, ptr %s.0.in.i.i.i, align 8, !tbaa !5
  %tobool.not.i.i.i354 = icmp eq ptr %s.0.i.i.i, null
  br i1 %tobool.not.i.i.i354, label %for.inc53, label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %name3.i.i.i = getelementptr inbounds %struct.symbol, ptr %s.0.i.i.i, i64 0, i32 7
  %call4.i.i.i = call i32 @strcmp(ptr noundef nonnull %name3.i.i.i, ptr noundef nonnull %spec.select.i.i.i) #29
  %cmp5.i.i.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %cmp5.i.i.i, label %if.end.i.i355, label %for.cond.i.i.i

if.end.i.i355:                                    ; preds = %for.body.i.i.i
  %crc1.i.i = getelementptr inbounds %struct.symbol, ptr %s.0.i.i.i, i64 0, i32 2
  store i32 %crc.0.i, ptr %crc1.i.i, align 8, !tbaa !21
  %crc_valid.i.i = getelementptr inbounds %struct.symbol, ptr %s.0.i.i.i, i64 0, i32 3
  store i32 1, ptr %crc_valid.i.i, align 4, !tbaa !21
  br label %for.inc53

for.inc53:                                        ; preds = %if.end.i.i355, %for.cond.i.i.i, %if.then.i314, %if.end47
  %incdec.ptr54 = getelementptr inbounds %struct.Elf32_Sym, ptr %sym.1520, i64 1
  %234 = load ptr, ptr %symtab_stop307.i, align 8, !tbaa !64
  %cmp35 = icmp ult ptr %incdec.ptr54, %234
  br i1 %cmp35, label %for.body36, label %for.end55.loopexit

for.end55.loopexit:                               ; preds = %for.inc53
  %.pre563 = load ptr, ptr %symtab_start301.i, align 8, !tbaa !63
  br label %for.end55

for.end55:                                        ; preds = %for.end55.loopexit, %for.end
  %235 = phi ptr [ %234, %for.end55.loopexit ], [ %194, %for.end ]
  %236 = phi ptr [ %.pre563, %for.end55.loopexit ], [ %195, %for.end ]
  %cmp59524 = icmp ult ptr %236, %235
  br i1 %cmp59524, label %for.body60.lr.ph, label %for.end81

for.body60.lr.ph:                                 ; preds = %for.end55
  %strtab69 = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 7
  br label %for.body60

for.body60:                                       ; preds = %if.end78, %for.body60.lr.ph
  %sym.2525 = phi ptr [ %236, %for.body60.lr.ph ], [ %incdec.ptr80, %if.end78 ]
  %st_info = getelementptr inbounds %struct.Elf32_Sym, ptr %sym.2525, i64 0, i32 3
  %237 = load i8, ptr %st_info, align 4, !tbaa !73
  %238 = lshr i8 %237, 4
  %239 = add nsw i8 %238, -1
  %240 = icmp ult i8 %239, 2
  br i1 %240, label %if.then68, label %if.end78

if.then68:                                        ; preds = %for.body60
  %241 = load ptr, ptr %strtab69, align 8, !tbaa !65
  %242 = load i32, ptr %sym.2525, align 4, !tbaa !70
  %idx.ext71 = zext i32 %242 to i64
  %add.ptr72 = getelementptr inbounds i8, ptr %241, i64 %idx.ext71
  %call73 = call fastcc ptr @remove_dot(ptr noundef %add.ptr72)
  %243 = load i8, ptr %add.ptr72, align 1, !tbaa !14
  %cmp.i357 = icmp eq i8 %243, 46
  %spec.select.idx.i = zext i1 %cmp.i357 to i64
  %spec.select.i = getelementptr i8, ptr %add.ptr72, i64 %spec.select.idx.i
  %call.i.i358 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select.i) #29
  %244 = trunc i64 %call.i.i358 to i32
  %conv.i.i359 = mul i32 %244, 596579247
  %245 = load i8, ptr %spec.select.i, align 1, !tbaa !14
  %tobool.not13.i.i = icmp eq i8 %245, 0
  br i1 %tobool.not13.i.i, label %tdb_hash.exit.i, label %for.body.i.i362

for.body.i.i362:                                  ; preds = %for.body.i.i362, %if.then68
  %246 = phi i8 [ %247, %for.body.i.i362 ], [ %245, %if.then68 ]
  %i.015.i.i = phi i32 [ %inc.i.i, %for.body.i.i362 ], [ 0, %if.then68 ]
  %value.014.i.i = phi i32 [ %add.i.i, %for.body.i.i362 ], [ %conv.i.i359, %if.then68 ]
  %conv3.i.i = zext i8 %246 to i32
  %mul4.i.i = mul i32 %i.015.i.i, 5
  %rem.i.i = urem i32 %mul4.i.i, 24
  %shl.i.i = shl nuw nsw i32 %conv3.i.i, %rem.i.i
  %add.i.i = add i32 %shl.i.i, %value.014.i.i
  %inc.i.i = add i32 %i.015.i.i, 1
  %idxprom.i.i = zext i32 %inc.i.i to i64
  %arrayidx.i.i360 = getelementptr inbounds i8, ptr %spec.select.i, i64 %idxprom.i.i
  %247 = load i8, ptr %arrayidx.i.i360, align 1, !tbaa !14
  %tobool.not.i.i361 = icmp eq i8 %247, 0
  br i1 %tobool.not.i.i361, label %tdb_hash.exit.i, label %for.body.i.i362

tdb_hash.exit.i:                                  ; preds = %for.body.i.i362, %if.then68
  %value.0.lcssa.i.i = phi i32 [ %conv.i.i359, %if.then68 ], [ %add.i.i, %for.body.i.i362 ]
  %mul5.i.i = mul i32 %value.0.lcssa.i.i, 619
  %add6.i.i = add i32 %mul5.i.i, 57
  %rem.i = and i32 %add6.i.i, 1023
  %idxprom.i363 = zext i32 %rem.i to i64
  %arrayidx2.i = getelementptr inbounds [1024 x ptr], ptr @symbolhash, i64 0, i64 %idxprom.i363
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i367, %tdb_hash.exit.i
  %s.0.in.i = phi ptr [ %arrayidx2.i, %tdb_hash.exit.i ], [ %s.0.i, %for.body.i367 ]
  %s.0.i = load ptr, ptr %s.0.in.i, align 8, !tbaa !5
  %tobool.not.i364 = icmp eq ptr %s.0.i, null
  br i1 %tobool.not.i364, label %if.end78, label %for.body.i367

for.body.i367:                                    ; preds = %for.cond.i
  %name3.i = getelementptr inbounds %struct.symbol, ptr %s.0.i, i64 0, i32 7
  %call4.i365 = call i32 @strcmp(ptr noundef nonnull %name3.i, ptr noundef nonnull %spec.select.i) #29
  %cmp5.i366 = icmp eq i32 %call4.i365, 0
  br i1 %cmp5.i366, label %if.then76, label %for.cond.i

if.then76:                                        ; preds = %for.body.i367
  %is_static = getelementptr inbounds %struct.symbol, ptr %s.0.i, i64 0, i32 5
  %bf.load = load i8, ptr %is_static, align 8
  %bf.clear = and i8 %bf.load, -3
  store i8 %bf.clear, ptr %is_static, align 8
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %for.cond.i, %for.body60
  %incdec.ptr80 = getelementptr inbounds %struct.Elf32_Sym, ptr %sym.2525, i64 1
  %248 = load ptr, ptr %symtab_stop307.i, align 8, !tbaa !64
  %cmp59 = icmp ult ptr %incdec.ptr80, %248
  br i1 %cmp59, label %for.body60, label %for.end81

for.end81:                                        ; preds = %if.end78, %for.end55
  %249 = load ptr, ptr %sechdrs70.i, align 8, !tbaa !45
  %250 = load i32, ptr %num_sections91.i, align 4, !tbaa !46
  %cmp87.not.i = icmp eq i32 %250, 0
  br i1 %cmp87.not.i, label %check_sec_ref.exit, label %for.body.lr.ph.i370

for.body.lr.ph.i370:                              ; preds = %for.end81
  %r_info8.i46.i = getelementptr inbounds %struct.Elf32_Rela, ptr %r.i19.i, i64 0, i32 1
  %r_addend.i47.i = getelementptr inbounds %struct.Elf32_Rela, ptr %r.i19.i, i64 0, i32 2
  %r_info8.i.i = getelementptr inbounds %struct.Elf32_Rela, ptr %r.i.i, i64 0, i32 1
  %r_addend12.i.i = getelementptr inbounds %struct.Elf32_Rela, ptr %r.i.i, i64 0, i32 2
  br label %for.body.i375

for.body.i375:                                    ; preds = %for.inc.for.body_crit_edge.i, %for.body.lr.ph.i370
  %251 = phi ptr [ %249, %for.body.lr.ph.i370 ], [ %.pre.i416, %for.inc.for.body_crit_edge.i ]
  %indvars.iv.i371 = phi i64 [ 0, %for.body.lr.ph.i370 ], [ %indvars.iv.next.i413, %for.inc.for.body_crit_edge.i ]
  %arrayidx.i372 = getelementptr inbounds %struct.Elf32_Shdr, ptr %251, i64 %indvars.iv.i371
  %252 = load i32, ptr %secindex_strings104.i, align 8, !tbaa !47
  %253 = load i32, ptr %arrayidx.i372, align 4, !tbaa !48
  %conv.i.i.i373 = zext i32 %253 to i64
  %idxprom.i.i.i.i374 = zext i32 %252 to i64
  %254 = load ptr, ptr %hdr7.i, align 8, !tbaa !27
  %e_type.i.i.i.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %254, i64 0, i32 1
  %255 = load i16, ptr %e_type.i.i.i.i, align 4, !tbaa !31
  %cmp.not.i.i.i.i = icmp eq i16 %255, 1
  br i1 %cmp.not.i.i.i.i, label %sech_name.exit.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i375
  %sh_addr.i.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %251, i64 %idxprom.i.i.i.i374, i32 3
  %256 = load i32, ptr %sh_addr.i.i.i.i, align 4, !tbaa !52
  %conv2.i.i.i.i = zext i32 %256 to i64
  %sub.i.i.i.i = sub nsw i64 %conv.i.i.i373, %conv2.i.i.i.i
  br label %sech_name.exit.i.i

sech_name.exit.i.i:                               ; preds = %if.then.i.i.i.i, %for.body.i375
  %offset.addr.0.i.i.i.i = phi i64 [ %sub.i.i.i.i, %if.then.i.i.i.i ], [ %conv.i.i.i373, %for.body.i375 ]
  %sh_offset.i.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %251, i64 %idxprom.i.i.i.i374, i32 4
  %257 = load i32, ptr %sh_offset.i.i.i.i, align 4, !tbaa !53
  %idx.ext.i.i.i.i = zext i32 %257 to i64
  %add.ptr.i.i.i.i = getelementptr i8, ptr %254, i64 %idx.ext.i.i.i.i
  %add.ptr4.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i64 %offset.addr.0.i.i.i.i
  %sh_type.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %251, i64 %indvars.iv.i371, i32 1
  %258 = load i32, ptr %sh_type.i.i, align 4, !tbaa !50
  %cmp.i.i376 = icmp eq i32 %258, 1
  br i1 %cmp.i.i376, label %land.lhs.true.i.i378, label %check_section.exit.i

land.lhs.true.i.i378:                             ; preds = %sech_name.exit.i.i
  %sh_flags.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %251, i64 %indvars.iv.i371, i32 2
  %259 = load i32, ptr %sh_flags.i.i, align 4, !tbaa !51
  %and.i.i = and i32 %259, 2
  %tobool.not.i.i377 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i377, label %land.lhs.true1.i.i, label %check_section.exit.i

land.lhs.true1.i.i:                               ; preds = %land.lhs.true.i.i378
  %call2.i.i379 = call fastcc i32 @match(ptr noundef %add.ptr4.i.i.i.i, ptr noundef nonnull @section_white_list) #25
  %tobool3.not.i.i380 = icmp eq i32 %call2.i.i379, 0
  br i1 %tobool3.not.i.i380, label %if.then.i.i381, label %check_section.exit.i

if.then.i.i381:                                   ; preds = %land.lhs.true1.i.i
  call void (i32, ptr, ...) @modpost_log(i32 noundef 0, ptr noundef nonnull @.str.72, ptr noundef %modname, ptr noundef %add.ptr4.i.i.i.i) #25
  br label %check_section.exit.i

check_section.exit.i:                             ; preds = %if.then.i.i381, %land.lhs.true1.i.i, %land.lhs.true.i.i378, %sech_name.exit.i.i
  %sh_type.i382 = getelementptr inbounds %struct.Elf32_Shdr, ptr %249, i64 %indvars.iv.i371, i32 1
  %260 = load i32, ptr %sh_type.i382, align 4, !tbaa !50
  switch i32 %260, label %for.inc.i415 [
    i32 4, label %if.then.i383
    i32 9, label %if.then13.i
  ]

if.then.i383:                                     ; preds = %check_section.exit.i
  %261 = load ptr, ptr %sechdrs70.i, align 8, !tbaa !45
  %arrayidx8.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %261, i64 %indvars.iv.i371
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %r.i.i) #25
  %262 = load ptr, ptr %hdr7.i, align 8, !tbaa !27
  %sh_offset.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %261, i64 %indvars.iv.i371, i32 4
  %263 = load i32, ptr %sh_offset.i.i, align 4, !tbaa !53
  %idx.ext.i.i = zext i32 %263 to i64
  %add.ptr.i.i = getelementptr i8, ptr %262, i64 %idx.ext.i.i
  %sh_size.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %261, i64 %indvars.iv.i371, i32 5
  %264 = load i32, ptr %sh_size.i.i, align 4, !tbaa !54
  %idx.ext1.i.i = zext i32 %264 to i64
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i64 %idx.ext1.i.i
  %265 = load i32, ptr %secindex_strings104.i, align 8, !tbaa !47
  %266 = load i32, ptr %arrayidx8.i, align 4, !tbaa !48
  %conv.i.i2.i = zext i32 %266 to i64
  %idxprom.i.i.i4.i = zext i32 %265 to i64
  %e_type.i.i.i5.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %262, i64 0, i32 1
  %267 = load i16, ptr %e_type.i.i.i5.i, align 4, !tbaa !31
  %cmp.not.i.i.i6.i = icmp eq i16 %267, 1
  br i1 %cmp.not.i.i.i6.i, label %sech_name.exit.i17.i, label %if.then.i.i.i10.i

if.then.i.i.i10.i:                                ; preds = %if.then.i383
  %sh_addr.i.i.i7.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %261, i64 %idxprom.i.i.i4.i, i32 3
  %268 = load i32, ptr %sh_addr.i.i.i7.i, align 4, !tbaa !52
  %conv2.i.i.i8.i = zext i32 %268 to i64
  %sub.i.i.i9.i = sub nsw i64 %conv.i.i2.i, %conv2.i.i.i8.i
  br label %sech_name.exit.i17.i

sech_name.exit.i17.i:                             ; preds = %if.then.i.i.i10.i, %if.then.i383
  %offset.addr.0.i.i.i11.i = phi i64 [ %sub.i.i.i9.i, %if.then.i.i.i10.i ], [ %conv.i.i2.i, %if.then.i383 ]
  %sh_offset.i.i.i12.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %261, i64 %idxprom.i.i.i4.i, i32 4
  %269 = load i32, ptr %sh_offset.i.i.i12.i, align 4, !tbaa !53
  %idx.ext.i.i.i13.i = zext i32 %269 to i64
  %add.ptr.i.i.i14.i = getelementptr i8, ptr %262, i64 5
  %add.ptr4.i.i.i15.i = getelementptr i8, ptr %add.ptr.i.i.i14.i, i64 %idx.ext.i.i.i13.i
  %add.ptr3.i.i = getelementptr inbounds i8, ptr %add.ptr4.i.i.i15.i, i64 %offset.addr.0.i.i.i11.i
  %call4.i.i384 = call fastcc i32 @match(ptr noundef nonnull %add.ptr3.i.i, ptr noundef nonnull @section_white_list) #25
  %tobool.not.i16.i = icmp eq i32 %call4.i.i384, 0
  %cmp83.i.i = icmp ult ptr %add.ptr.i.i, %add.ptr2.i.i
  %or.cond87.i.i = select i1 %tobool.not.i16.i, i1 %cmp83.i.i, i1 false
  br i1 %or.cond87.i.i, label %for.body.i.i387, label %section_rela.exit.i

for.body.i.i387:                                  ; preds = %for.inc.i.i391, %sech_name.exit.i17.i
  %rela.0.ptr86.i.i = phi ptr [ %rela.0.ptr.i.i, %for.inc.i.i391 ], [ %add.ptr.i.i, %sech_name.exit.i17.i ]
  %rela.0.idx84.i.i = phi i64 [ %rela.0.add.i.i, %for.inc.i.i391 ], [ 0, %sech_name.exit.i17.i ]
  %arrayidx.i.i.i385 = getelementptr inbounds i8, ptr %rela.0.ptr86.i.i, i64 3
  %270 = load i8, ptr %arrayidx.i.i.i385, align 1, !tbaa !14
  %arrayidx.i.1.i.i = getelementptr inbounds i8, ptr %rela.0.ptr86.i.i, i64 2
  %271 = load i8, ptr %arrayidx.i.1.i.i, align 1, !tbaa !14
  %arrayidx.i.2.i.i = getelementptr inbounds i8, ptr %rela.0.ptr86.i.i, i64 1
  %272 = load i8, ptr %arrayidx.i.2.i.i, align 1, !tbaa !14
  %273 = load i8, ptr %rela.0.ptr86.i.i, align 1, !tbaa !14
  %__x.sroa.6.0.insert.ext.i.i = zext i8 %273 to i32
  %__x.sroa.6.0.insert.shift.i.i = shl nuw i32 %__x.sroa.6.0.insert.ext.i.i, 24
  %__x.sroa.5.0.insert.ext.i.i = zext i8 %272 to i32
  %__x.sroa.5.0.insert.shift.i.i = shl nuw nsw i32 %__x.sroa.5.0.insert.ext.i.i, 16
  %__x.sroa.4.0.insert.ext.i.i = zext i8 %271 to i32
  %__x.sroa.4.0.insert.shift.i.i = shl nuw nsw i32 %__x.sroa.4.0.insert.ext.i.i, 8
  %__x.sroa.0.0.insert.ext.i.i = zext i8 %270 to i32
  %__x.sroa.5.0.insert.insert.i.i = or i32 %__x.sroa.4.0.insert.shift.i.i, %__x.sroa.0.0.insert.ext.i.i
  %__x.sroa.4.0.insert.insert.i.i = or i32 %__x.sroa.5.0.insert.insert.i.i, %__x.sroa.5.0.insert.shift.i.i
  %__x.sroa.0.0.insert.insert.i.i = or i32 %__x.sroa.4.0.insert.insert.i.i, %__x.sroa.6.0.insert.shift.i.i
  store i32 %__x.sroa.0.0.insert.insert.i.i, ptr %r.i.i, align 4, !tbaa !74
  %r_info.i.i = getelementptr inbounds %struct.Elf32_Rela, ptr %rela.0.ptr86.i.i, i64 0, i32 1
  %arrayidx.i66.i.i = getelementptr inbounds i8, ptr %r_info.i.i, i64 3
  %274 = load i8, ptr %arrayidx.i66.i.i, align 1, !tbaa !14
  %arrayidx.i66.1.i.i = getelementptr inbounds i8, ptr %r_info.i.i, i64 2
  %275 = load i8, ptr %arrayidx.i66.1.i.i, align 1, !tbaa !14
  %arrayidx.i66.2.i.i = getelementptr inbounds i8, ptr %r_info.i.i, i64 1
  %276 = load i8, ptr %arrayidx.i66.2.i.i, align 1, !tbaa !14
  %277 = load i8, ptr %r_info.i.i, align 1, !tbaa !14
  %__x6.sroa.6.0.insert.ext.i.i = zext i8 %277 to i32
  %__x6.sroa.6.0.insert.shift.i.i = shl nuw i32 %__x6.sroa.6.0.insert.ext.i.i, 24
  %__x6.sroa.5.0.insert.ext.i.i = zext i8 %276 to i32
  %__x6.sroa.5.0.insert.shift.i.i = shl nuw nsw i32 %__x6.sroa.5.0.insert.ext.i.i, 16
  %__x6.sroa.4.0.insert.ext.i.i = zext i8 %275 to i32
  %__x6.sroa.4.0.insert.shift.i.i = shl nuw nsw i32 %__x6.sroa.4.0.insert.ext.i.i, 8
  %__x6.sroa.5.0.insert.insert.i.i = or i32 %__x6.sroa.5.0.insert.shift.i.i, %__x6.sroa.4.0.insert.shift.i.i
  %__x6.sroa.4.0.insert.insert.i.i = or i32 %__x6.sroa.5.0.insert.insert.i.i, %__x6.sroa.6.0.insert.shift.i.i
  %__x6.sroa.0.0.insert.ext.i.i = zext i8 %274 to i32
  %__x6.sroa.0.0.insert.insert.i.i = or i32 %__x6.sroa.4.0.insert.insert.i.i, %__x6.sroa.0.0.insert.ext.i.i
  store i32 %__x6.sroa.0.0.insert.insert.i.i, ptr %r_info8.i.i, align 4, !tbaa !76
  %r_addend.i.i = getelementptr inbounds %struct.Elf32_Rela, ptr %rela.0.ptr86.i.i, i64 0, i32 2
  %arrayidx.i76.i.i = getelementptr inbounds i8, ptr %r_addend.i.i, i64 3
  %278 = load i8, ptr %arrayidx.i76.i.i, align 1, !tbaa !14
  %arrayidx.i76.1.i.i = getelementptr inbounds i8, ptr %r_addend.i.i, i64 2
  %279 = load i8, ptr %arrayidx.i76.1.i.i, align 1, !tbaa !14
  %arrayidx.i76.2.i.i = getelementptr inbounds i8, ptr %r_addend.i.i, i64 1
  %280 = load i8, ptr %arrayidx.i76.2.i.i, align 1, !tbaa !14
  %281 = load i8, ptr %r_addend.i.i, align 1, !tbaa !14
  %shr.i.i = lshr exact i32 %__x6.sroa.4.0.insert.insert.i.i, 8
  %__x10.sroa.6.0.insert.ext.i.i = zext i8 %281 to i32
  %__x10.sroa.6.0.insert.shift.i.i = shl nuw i32 %__x10.sroa.6.0.insert.ext.i.i, 24
  %__x10.sroa.5.0.insert.ext.i.i = zext i8 %280 to i32
  %__x10.sroa.5.0.insert.shift.i.i = shl nuw nsw i32 %__x10.sroa.5.0.insert.ext.i.i, 16
  %__x10.sroa.4.0.insert.ext.i.i = zext i8 %279 to i32
  %__x10.sroa.4.0.insert.shift.i.i = shl nuw nsw i32 %__x10.sroa.4.0.insert.ext.i.i, 8
  %__x10.sroa.0.0.insert.ext.i.i = zext i8 %278 to i32
  %__x10.sroa.5.0.insert.insert.i.i = or i32 %__x10.sroa.4.0.insert.shift.i.i, %__x10.sroa.0.0.insert.ext.i.i
  %__x10.sroa.4.0.insert.insert.i.i = or i32 %__x10.sroa.5.0.insert.insert.i.i, %__x10.sroa.5.0.insert.shift.i.i
  %__x10.sroa.0.0.insert.insert.i.i = or i32 %__x10.sroa.4.0.insert.insert.i.i, %__x10.sroa.6.0.insert.shift.i.i
  store i32 %__x10.sroa.0.0.insert.insert.i.i, ptr %r_addend12.i.i, align 4, !tbaa !77
  %282 = load ptr, ptr %hdr7.i, align 8, !tbaa !27
  %e_machine.i.i386 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %282, i64 0, i32 2
  %283 = load i16, ptr %e_machine.i.i386, align 2, !tbaa !33
  %cond.i.i = icmp eq i16 %283, 243
  br i1 %cond.i.i, label %sw.bb.i.i, label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %for.body.i.i387
  %call14.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.93, ptr noundef nonnull %add.ptr3.i.i) #29
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  %cmp17.i.i = icmp eq i8 %274, 39
  %or.cond.i.i = select i1 %tobool15.not.i.i, i1 %cmp17.i.i, i1 false
  br i1 %or.cond.i.i, label %for.inc.i.i391, label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb.i.i, %for.body.i.i387
  %284 = load ptr, ptr %symtab_start301.i, align 8, !tbaa !63
  %idx.ext21.i.i = zext i32 %shr.i.i to i64
  %add.ptr22.i.i = getelementptr inbounds %struct.Elf32_Sym, ptr %284, i64 %idx.ext21.i.i
  %st_shndx.i.i388 = getelementptr inbounds %struct.Elf32_Sym, ptr %284, i64 %idx.ext21.i.i, i32 5
  %285 = load i16, ptr %st_shndx.i.i388, align 2, !tbaa !68
  %286 = add i16 %285, 1
  %287 = icmp ult i16 %286, -255
  br i1 %287, label %if.end27.i.i, label %for.inc.i.i391

if.end27.i.i:                                     ; preds = %sw.epilog.i.i
  %cmp29.i.i = icmp eq i64 %rela.0.idx84.i.i, 1
  br i1 %cmp29.i.i, label %land.lhs.true31.i.i, label %if.end36.i.i

land.lhs.true31.i.i:                              ; preds = %if.end27.i.i
  %call32.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.93, ptr noundef nonnull %add.ptr3.i.i) #29
  %cmp33.i.i = icmp eq i32 %call32.i.i, 0
  %288 = load i32, ptr @extable_entry_size, align 4
  %tobool.not.i.i.i389 = icmp eq i32 %288, 0
  %or.cond82.i.i = select i1 %cmp33.i.i, i1 %tobool.not.i.i.i389, i1 false
  br i1 %or.cond82.i.i, label %if.then.i.i.i390, label %if.end36.i.i

if.then.i.i.i390:                                 ; preds = %land.lhs.true31.i.i
  %mul.i.i.i = shl i32 %__x.sroa.0.0.insert.insert.i.i, 1
  store i32 %mul.i.i.i, ptr @extable_entry_size, align 4, !tbaa !21
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %if.then.i.i.i390, %land.lhs.true31.i.i, %if.end27.i.i
  call fastcc void @check_section_mismatch(ptr noundef %modname, ptr noundef nonnull %info, ptr noundef nonnull %r.i.i, ptr noundef nonnull %add.ptr22.i.i, ptr noundef nonnull %add.ptr3.i.i) #25
  br label %for.inc.i.i391

for.inc.i.i391:                                   ; preds = %if.end36.i.i, %sw.epilog.i.i, %sw.bb.i.i
  %rela.0.add.i.i = add nuw nsw i64 %rela.0.idx84.i.i, 1
  %rela.0.ptr.i.i = getelementptr inbounds %struct.Elf32_Rela, ptr %add.ptr.i.i, i64 %rela.0.add.i.i
  %cmp.i18.i = icmp ult ptr %rela.0.ptr.i.i, %add.ptr2.i.i
  br i1 %cmp.i18.i, label %for.body.i.i387, label %section_rela.exit.i

section_rela.exit.i:                              ; preds = %for.inc.i.i391, %sech_name.exit.i17.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %r.i.i) #25
  br label %for.inc.i415

if.then13.i:                                      ; preds = %check_section.exit.i
  %289 = load ptr, ptr %sechdrs70.i, align 8, !tbaa !45
  %arrayidx16.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %289, i64 %indvars.iv.i371
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %r.i19.i) #25
  %290 = load ptr, ptr %hdr7.i, align 8, !tbaa !27
  %sh_offset.i21.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %289, i64 %indvars.iv.i371, i32 4
  %291 = load i32, ptr %sh_offset.i21.i, align 4, !tbaa !53
  %idx.ext.i22.i = zext i32 %291 to i64
  %add.ptr.i23.i = getelementptr i8, ptr %290, i64 %idx.ext.i22.i
  %sh_size.i24.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %289, i64 %indvars.iv.i371, i32 5
  %292 = load i32, ptr %sh_size.i24.i, align 4, !tbaa !54
  %idx.ext1.i25.i = zext i32 %292 to i64
  %add.ptr2.i26.i = getelementptr i8, ptr %add.ptr.i23.i, i64 %idx.ext1.i25.i
  %293 = load i32, ptr %secindex_strings104.i, align 8, !tbaa !47
  %294 = load i32, ptr %arrayidx16.i, align 4, !tbaa !48
  %conv.i.i28.i = zext i32 %294 to i64
  %idxprom.i.i.i30.i = zext i32 %293 to i64
  %e_type.i.i.i31.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %290, i64 0, i32 1
  %295 = load i16, ptr %e_type.i.i.i31.i, align 4, !tbaa !31
  %cmp.not.i.i.i32.i = icmp eq i16 %295, 1
  br i1 %cmp.not.i.i.i32.i, label %sech_name.exit.i45.i, label %if.then.i.i.i36.i

if.then.i.i.i36.i:                                ; preds = %if.then13.i
  %sh_addr.i.i.i33.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %289, i64 %idxprom.i.i.i30.i, i32 3
  %296 = load i32, ptr %sh_addr.i.i.i33.i, align 4, !tbaa !52
  %conv2.i.i.i34.i = zext i32 %296 to i64
  %sub.i.i.i35.i = sub nsw i64 %conv.i.i28.i, %conv2.i.i.i34.i
  br label %sech_name.exit.i45.i

sech_name.exit.i45.i:                             ; preds = %if.then.i.i.i36.i, %if.then13.i
  %offset.addr.0.i.i.i37.i = phi i64 [ %sub.i.i.i35.i, %if.then.i.i.i36.i ], [ %conv.i.i28.i, %if.then13.i ]
  %sh_offset.i.i.i38.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %289, i64 %idxprom.i.i.i30.i, i32 4
  %297 = load i32, ptr %sh_offset.i.i.i38.i, align 4, !tbaa !53
  %idx.ext.i.i.i39.i = zext i32 %297 to i64
  %add.ptr.i.i.i40.i = getelementptr i8, ptr %290, i64 4
  %add.ptr4.i.i.i41.i = getelementptr i8, ptr %add.ptr.i.i.i40.i, i64 %idx.ext.i.i.i39.i
  %add.ptr3.i42.i = getelementptr inbounds i8, ptr %add.ptr4.i.i.i41.i, i64 %offset.addr.0.i.i.i37.i
  %call4.i43.i = call fastcc i32 @match(ptr noundef nonnull %add.ptr3.i42.i, ptr noundef nonnull @section_white_list) #25
  %tobool.not.i44.i = icmp eq i32 %call4.i43.i, 0
  %cmp129.i.i = icmp ult ptr %add.ptr.i23.i, %add.ptr2.i26.i
  %or.cond133.i.i = select i1 %tobool.not.i44.i, i1 %cmp129.i.i, i1 false
  br i1 %or.cond133.i.i, label %for.body.lr.ph.i48.i, label %section_rel.exit.i

for.body.lr.ph.i48.i:                             ; preds = %sech_name.exit.i45.i
  %sh_info.i.i85.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %289, i64 %indvars.iv.i371, i32 7
  %sh_addr.i.i.i392 = getelementptr inbounds %struct.Elf32_Shdr, ptr %289, i64 %indvars.iv.i371, i32 3
  br label %for.body.i75.i

for.body.i75.i:                                   ; preds = %for.inc.i86.i, %for.body.lr.ph.i48.i
  %rel.0.ptr132.i.i = phi ptr [ %add.ptr.i23.i, %for.body.lr.ph.i48.i ], [ %rel.0.ptr.i.i, %for.inc.i86.i ]
  %rel.0.idx130.i.i = phi i64 [ 0, %for.body.lr.ph.i48.i ], [ %rel.0.add.i.i, %for.inc.i86.i ]
  %arrayidx.i.i49.i = getelementptr inbounds i8, ptr %rel.0.ptr132.i.i, i64 3
  %298 = load i8, ptr %arrayidx.i.i49.i, align 1, !tbaa !14
  %arrayidx.i.1.i50.i = getelementptr inbounds i8, ptr %rel.0.ptr132.i.i, i64 2
  %299 = load i8, ptr %arrayidx.i.1.i50.i, align 1, !tbaa !14
  %arrayidx.i.2.i51.i = getelementptr inbounds i8, ptr %rel.0.ptr132.i.i, i64 1
  %300 = load i8, ptr %arrayidx.i.2.i51.i, align 1, !tbaa !14
  %301 = load i8, ptr %rel.0.ptr132.i.i, align 1, !tbaa !14
  %__x.sroa.6.0.insert.ext.i52.i = zext i8 %301 to i32
  %__x.sroa.6.0.insert.shift.i53.i = shl nuw i32 %__x.sroa.6.0.insert.ext.i52.i, 24
  %__x.sroa.5.0.insert.ext.i54.i = zext i8 %300 to i32
  %__x.sroa.5.0.insert.shift.i55.i = shl nuw nsw i32 %__x.sroa.5.0.insert.ext.i54.i, 16
  %__x.sroa.4.0.insert.ext.i57.i = zext i8 %299 to i32
  %__x.sroa.4.0.insert.shift.i58.i = shl nuw nsw i32 %__x.sroa.4.0.insert.ext.i57.i, 8
  %__x.sroa.0.0.insert.ext.i60.i = zext i8 %298 to i32
  %__x.sroa.5.0.insert.insert.i56.i = or i32 %__x.sroa.4.0.insert.shift.i58.i, %__x.sroa.0.0.insert.ext.i60.i
  %__x.sroa.4.0.insert.insert.i59.i = or i32 %__x.sroa.5.0.insert.insert.i56.i, %__x.sroa.5.0.insert.shift.i55.i
  %__x.sroa.0.0.insert.insert.i61.i = or i32 %__x.sroa.4.0.insert.insert.i59.i, %__x.sroa.6.0.insert.shift.i53.i
  store i32 %__x.sroa.0.0.insert.insert.i61.i, ptr %r.i19.i, align 4, !tbaa !74
  %r_info.i62.i = getelementptr inbounds %struct.Elf32_Rel, ptr %rel.0.ptr132.i.i, i64 0, i32 1
  %arrayidx.i73.i.i = getelementptr inbounds i8, ptr %r_info.i62.i, i64 3
  %302 = load i8, ptr %arrayidx.i73.i.i, align 1, !tbaa !14
  %arrayidx.i73.1.i.i = getelementptr inbounds i8, ptr %r_info.i62.i, i64 2
  %303 = load i8, ptr %arrayidx.i73.1.i.i, align 1, !tbaa !14
  %arrayidx.i73.2.i.i = getelementptr inbounds i8, ptr %r_info.i62.i, i64 1
  %304 = load i8, ptr %arrayidx.i73.2.i.i, align 1, !tbaa !14
  %305 = load i8, ptr %r_info.i62.i, align 1, !tbaa !14
  %__x6.sroa.6.0.insert.ext.i63.i = zext i8 %305 to i32
  %__x6.sroa.6.0.insert.shift.i64.i = shl nuw i32 %__x6.sroa.6.0.insert.ext.i63.i, 24
  %__x6.sroa.5.0.insert.ext.i65.i = zext i8 %304 to i32
  %__x6.sroa.5.0.insert.shift.i66.i = shl nuw nsw i32 %__x6.sroa.5.0.insert.ext.i65.i, 16
  %__x6.sroa.4.0.insert.ext.i68.i = zext i8 %303 to i32
  %__x6.sroa.4.0.insert.shift.i69.i = shl nuw nsw i32 %__x6.sroa.4.0.insert.ext.i68.i, 8
  %__x6.sroa.5.0.insert.insert.i67.i = or i32 %__x6.sroa.5.0.insert.shift.i66.i, %__x6.sroa.4.0.insert.shift.i69.i
  %__x6.sroa.4.0.insert.insert.i70.i = or i32 %__x6.sroa.5.0.insert.insert.i67.i, %__x6.sroa.6.0.insert.shift.i64.i
  %__x6.sroa.0.0.insert.ext.i71.i = zext i8 %302 to i32
  %__x6.sroa.0.0.insert.insert.i72.i = or i32 %__x6.sroa.4.0.insert.insert.i70.i, %__x6.sroa.0.0.insert.ext.i71.i
  store i32 %__x6.sroa.0.0.insert.insert.i72.i, ptr %r_info8.i46.i, align 4, !tbaa !76
  %shr.i73.i = lshr exact i32 %__x6.sroa.4.0.insert.insert.i70.i, 8
  store i32 0, ptr %r_addend.i47.i, align 4, !tbaa !77
  %306 = load ptr, ptr %hdr7.i, align 8, !tbaa !27
  %e_machine.i74.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %306, i64 0, i32 2
  %307 = load i16, ptr %e_machine.i74.i, align 2, !tbaa !33
  switch i16 %307, label %sw.epilog.i79.i [
    i16 3, label %sw.bb.i76.i
    i16 40, label %sw.bb15.i.i
    i16 8, label %sw.bb20.i.i
  ]

sw.bb.i76.i:                                      ; preds = %for.body.i75.i
  %308 = load i32, ptr %sh_info.i.i85.i.i, align 4, !tbaa !56
  %conv.i.i.i.i393 = zext i32 %__x.sroa.0.0.insert.insert.i61.i to i64
  %309 = load ptr, ptr %sechdrs70.i, align 8, !tbaa !45
  %idxprom.i.i.i.i.i394 = zext i32 %308 to i64
  %e_type.i.i.i.i.i395 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %306, i64 0, i32 1
  %310 = load i16, ptr %e_type.i.i.i.i.i395, align 4, !tbaa !31
  %cmp.not.i.i.i.i.i396 = icmp eq i16 %310, 1
  br i1 %cmp.not.i.i.i.i.i396, label %reloc_location.exit.i.i.i, label %if.then.i.i.i.i.i400

if.then.i.i.i.i.i400:                             ; preds = %sw.bb.i76.i
  %sh_addr.i.i.i.i.i397 = getelementptr inbounds %struct.Elf32_Shdr, ptr %309, i64 %idxprom.i.i.i.i.i394, i32 3
  %311 = load i32, ptr %sh_addr.i.i.i.i.i397, align 4, !tbaa !52
  %conv2.i.i.i.i.i398 = zext i32 %311 to i64
  %sub.i.i.i.i.i399 = sub nsw i64 %conv.i.i.i.i393, %conv2.i.i.i.i.i398
  br label %reloc_location.exit.i.i.i

reloc_location.exit.i.i.i:                        ; preds = %if.then.i.i.i.i.i400, %sw.bb.i76.i
  %offset.addr.0.i.i.i.i.i401 = phi i64 [ %sub.i.i.i.i.i399, %if.then.i.i.i.i.i400 ], [ %conv.i.i.i.i393, %sw.bb.i76.i ]
  %sh_offset.i.i.i.i.i402 = getelementptr inbounds %struct.Elf32_Shdr, ptr %309, i64 %idxprom.i.i.i.i.i394, i32 4
  %312 = load i32, ptr %sh_offset.i.i.i.i.i402, align 4, !tbaa !53
  %idx.ext.i.i.i.i.i403 = zext i32 %312 to i64
  %add.ptr.i.i.i.i.i404 = getelementptr i8, ptr %306, i64 %idx.ext.i.i.i.i.i403
  %add.ptr4.i.i.i.i.i405 = getelementptr i8, ptr %add.ptr.i.i.i.i.i404, i64 %offset.addr.0.i.i.i.i.i401
  switch i8 %302, label %sw.epilog.i79.i [
    i8 1, label %sw.bb.i.i.i
    i8 2, label %sw.bb1.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %reloc_location.exit.i.i.i
  %arrayidx.i.i.i.i406 = getelementptr inbounds i8, ptr %add.ptr4.i.i.i.i.i405, i64 3
  %313 = load i8, ptr %arrayidx.i.i.i.i406, align 1, !tbaa !14
  %arrayidx.i.1.i.i.i = getelementptr inbounds i8, ptr %add.ptr4.i.i.i.i.i405, i64 2
  %314 = load i8, ptr %arrayidx.i.1.i.i.i, align 1, !tbaa !14
  %arrayidx.i.2.i.i.i = getelementptr inbounds i8, ptr %add.ptr4.i.i.i.i.i405, i64 1
  %315 = load i8, ptr %arrayidx.i.2.i.i.i, align 1, !tbaa !14
  %316 = load i8, ptr %add.ptr4.i.i.i.i.i405, align 1, !tbaa !14
  %__x.sroa.6.0.insert.ext.i.i.i = zext i8 %316 to i32
  %__x.sroa.6.0.insert.shift.i.i.i = shl nuw i32 %__x.sroa.6.0.insert.ext.i.i.i, 24
  %__x.sroa.5.0.insert.ext.i.i.i = zext i8 %315 to i32
  %__x.sroa.5.0.insert.shift.i.i.i = shl nuw nsw i32 %__x.sroa.5.0.insert.ext.i.i.i, 16
  %__x.sroa.4.0.insert.ext.i.i.i = zext i8 %314 to i32
  %__x.sroa.4.0.insert.shift.i.i.i = shl nuw nsw i32 %__x.sroa.4.0.insert.ext.i.i.i, 8
  %__x.sroa.0.0.insert.ext.i.i.i = zext i8 %313 to i32
  %__x.sroa.5.0.insert.insert.i.i.i = or i32 %__x.sroa.4.0.insert.shift.i.i.i, %__x.sroa.0.0.insert.ext.i.i.i
  %__x.sroa.4.0.insert.insert.i.i.i = or i32 %__x.sroa.5.0.insert.insert.i.i.i, %__x.sroa.5.0.insert.shift.i.i.i
  %__x.sroa.0.0.insert.insert.i.i.i = or i32 %__x.sroa.4.0.insert.insert.i.i.i, %__x.sroa.6.0.insert.shift.i.i.i
  br label %sw.epilog.sink.split.i.i

sw.bb1.i.i.i:                                     ; preds = %reloc_location.exit.i.i.i
  %arrayidx.i5.i.i.i = getelementptr inbounds i8, ptr %add.ptr4.i.i.i.i.i405, i64 3
  %317 = load i8, ptr %arrayidx.i5.i.i.i, align 1, !tbaa !14
  %arrayidx.i5.1.i.i.i = getelementptr inbounds i8, ptr %add.ptr4.i.i.i.i.i405, i64 2
  %318 = load i8, ptr %arrayidx.i5.1.i.i.i, align 1, !tbaa !14
  %arrayidx.i5.2.i.i.i = getelementptr inbounds i8, ptr %add.ptr4.i.i.i.i.i405, i64 1
  %319 = load i8, ptr %arrayidx.i5.2.i.i.i, align 1, !tbaa !14
  %320 = load i8, ptr %add.ptr4.i.i.i.i.i405, align 1, !tbaa !14
  %__x2.sroa.6.0.insert.ext.i.i.i = zext i8 %320 to i32
  %__x2.sroa.6.0.insert.shift.i.i.i = shl nuw i32 %__x2.sroa.6.0.insert.ext.i.i.i, 24
  %__x2.sroa.5.0.insert.ext.i.i.i = zext i8 %319 to i32
  %__x2.sroa.5.0.insert.shift.i.i.i = shl nuw nsw i32 %__x2.sroa.5.0.insert.ext.i.i.i, 16
  %__x2.sroa.4.0.insert.ext.i.i.i = zext i8 %318 to i32
  %__x2.sroa.4.0.insert.shift.i.i.i = shl nuw nsw i32 %__x2.sroa.4.0.insert.ext.i.i.i, 8
  %__x2.sroa.0.0.insert.ext.i.i.i = zext i8 %317 to i32
  %__x2.sroa.5.0.insert.insert.i.i.i = or i32 %__x2.sroa.4.0.insert.shift.i.i.i, %__x2.sroa.0.0.insert.ext.i.i.i
  %__x2.sroa.4.0.insert.insert.i.i.i = or i32 %__x2.sroa.5.0.insert.insert.i.i.i, %__x2.sroa.5.0.insert.shift.i.i.i
  %__x2.sroa.0.0.insert.insert.i.i.i = or i32 %__x2.sroa.4.0.insert.insert.i.i.i, %__x2.sroa.6.0.insert.shift.i.i.i
  %add.i.i.i = add i32 %__x2.sroa.0.0.insert.insert.i.i.i, 4
  store i32 %add.i.i.i, ptr %r_addend.i47.i, align 4, !tbaa !77
  %cmp.i.i.i407 = icmp eq i16 %310, 2
  br i1 %cmp.i.i.i407, label %if.then.i.i77.i, label %sw.epilog.i79.i

if.then.i.i77.i:                                  ; preds = %sw.bb1.i.i.i
  %add7.i.i.i = add i32 %add.i.i.i, %__x.sroa.0.0.insert.insert.i61.i
  br label %sw.epilog.sink.split.i.i

sw.bb15.i.i:                                      ; preds = %for.body.i75.i
  switch i8 %302, label %for.inc.i86.i [
    i8 2, label %sw.bb.i81.i.i
    i8 1, label %sw.bb2.i.i.i
    i8 28, label %sw.bb2.i.i.i
    i8 29, label %sw.bb2.i.i.i
    i8 10, label %sw.bb2.i.i.i
    i8 30, label %sw.bb2.i.i.i
    i8 51, label %sw.bb2.i.i.i
  ]

sw.bb.i81.i.i:                                    ; preds = %sw.bb15.i.i
  %321 = load ptr, ptr %symtab_start301.i, align 8, !tbaa !63
  %idx.ext.i.i.i408 = zext i32 %shr.i73.i to i64
  %add.ptr.i.i.i409 = getelementptr inbounds %struct.Elf32_Sym, ptr %321, i64 %idx.ext.i.i.i408
  br label %addend_arm_rel.exit.thread.i.i

sw.bb2.i.i.i:                                     ; preds = %sw.bb15.i.i, %sw.bb15.i.i, %sw.bb15.i.i, %sw.bb15.i.i, %sw.bb15.i.i, %sw.bb15.i.i
  %322 = load i32, ptr %sh_offset.i21.i, align 4, !tbaa !53
  %idx.ext3.i.i.i = zext i32 %322 to i64
  %add.ptr4.i.i.i410 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %306, i64 %idx.ext3.i.i.i
  %323 = load i32, ptr %sh_addr.i.i.i392, align 4, !tbaa !52
  %sub.i.i.i411 = sub i32 %__x.sroa.0.0.insert.insert.i61.i, %323
  %idx.ext5.i.i.i = zext i32 %sub.i.i.i411 to i64
  %add.ptr6.i.i.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %add.ptr4.i.i.i410, i64 %idx.ext5.i.i.i
  br label %addend_arm_rel.exit.thread.i.i

addend_arm_rel.exit.thread.i.i:                   ; preds = %sw.bb2.i.i.i, %sw.bb.i81.i.i
  %add.ptr.sink.i.i.i = phi ptr [ %add.ptr.i.i.i409, %sw.bb.i81.i.i ], [ %add.ptr6.i.i.i, %sw.bb2.i.i.i ]
  %324 = ptrtoint ptr %add.ptr.sink.i.i.i to i64
  %conv.i82.i.i = trunc i64 %324 to i32
  br label %sw.epilog.sink.split.i.i

sw.bb20.i.i:                                      ; preds = %for.body.i75.i
  %325 = load i32, ptr %sh_info.i.i85.i.i, align 4, !tbaa !56
  %conv.i.i86.i.i = zext i32 %__x.sroa.0.0.insert.insert.i61.i to i64
  %326 = load ptr, ptr %sechdrs70.i, align 8, !tbaa !45
  %idxprom.i.i.i88.i.i = zext i32 %325 to i64
  %e_type.i.i.i90.i.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %306, i64 0, i32 1
  %327 = load i16, ptr %e_type.i.i.i90.i.i, align 4, !tbaa !31
  %cmp.not.i.i.i91.i.i = icmp eq i16 %327, 1
  br i1 %cmp.not.i.i.i91.i.i, label %reloc_location.exit.i98.i.i, label %if.then.i.i.i95.i.i

if.then.i.i.i95.i.i:                              ; preds = %sw.bb20.i.i
  %sh_addr.i.i.i92.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %326, i64 %idxprom.i.i.i88.i.i, i32 3
  %328 = load i32, ptr %sh_addr.i.i.i92.i.i, align 4, !tbaa !52
  %conv2.i.i.i93.i.i = zext i32 %328 to i64
  %sub.i.i.i94.i.i = sub nsw i64 %conv.i.i86.i.i, %conv2.i.i.i93.i.i
  br label %reloc_location.exit.i98.i.i

reloc_location.exit.i98.i.i:                      ; preds = %if.then.i.i.i95.i.i, %sw.bb20.i.i
  %offset.addr.0.i.i.i96.i.i = phi i64 [ %sub.i.i.i94.i.i, %if.then.i.i.i95.i.i ], [ %conv.i.i86.i.i, %sw.bb20.i.i ]
  %cmp.i97.i.i = icmp eq i8 %302, 5
  br i1 %cmp.i97.i.i, label %for.inc.i86.i, label %if.end.i.i.i412

if.end.i.i.i412:                                  ; preds = %reloc_location.exit.i98.i.i
  %sh_offset.i.i.i99.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %326, i64 %idxprom.i.i.i88.i.i, i32 4
  %329 = load i32, ptr %sh_offset.i.i.i99.i.i, align 4, !tbaa !53
  %idx.ext.i.i.i100.i.i = zext i32 %329 to i64
  %add.ptr.i.i.i101.i.i = getelementptr i8, ptr %306, i64 %idx.ext.i.i.i100.i.i
  %add.ptr4.i.i.i102.i.i = getelementptr i8, ptr %add.ptr.i.i.i101.i.i, i64 %offset.addr.0.i.i.i96.i.i
  %arrayidx.i.i103.i.i = getelementptr inbounds i8, ptr %add.ptr4.i.i.i102.i.i, i64 3
  %330 = load i8, ptr %arrayidx.i.i103.i.i, align 1, !tbaa !14
  %arrayidx.i.1.i104.i.i = getelementptr inbounds i8, ptr %add.ptr4.i.i.i102.i.i, i64 2
  %331 = load i8, ptr %arrayidx.i.1.i104.i.i, align 1, !tbaa !14
  %arrayidx.i.2.i105.i.i = getelementptr inbounds i8, ptr %add.ptr4.i.i.i102.i.i, i64 1
  %332 = load i8, ptr %arrayidx.i.2.i105.i.i, align 1, !tbaa !14
  %333 = load i8, ptr %add.ptr4.i.i.i102.i.i, align 1, !tbaa !14
  %__x.sroa.6.0.insert.ext.i106.i.i = zext i8 %333 to i32
  %__x.sroa.6.0.insert.shift.i107.i.i = shl nuw i32 %__x.sroa.6.0.insert.ext.i106.i.i, 24
  %__x.sroa.5.0.insert.ext.i108.i.i = zext i8 %332 to i32
  %__x.sroa.5.0.insert.shift.i109.i.i = shl nuw nsw i32 %__x.sroa.5.0.insert.ext.i108.i.i, 16
  %__x.sroa.4.0.insert.ext.i111.i.i = zext i8 %331 to i32
  %__x.sroa.4.0.insert.shift.i112.i.i = shl nuw nsw i32 %__x.sroa.4.0.insert.ext.i111.i.i, 8
  %__x.sroa.0.0.insert.ext.i114.i.i = zext i8 %330 to i32
  %__x.sroa.5.0.insert.insert.i110.i.i = or i32 %__x.sroa.4.0.insert.shift.i112.i.i, %__x.sroa.0.0.insert.ext.i114.i.i
  %__x.sroa.4.0.insert.insert.i113.i.i = or i32 %__x.sroa.5.0.insert.insert.i110.i.i, %__x.sroa.5.0.insert.shift.i109.i.i
  %__x.sroa.0.0.insert.insert.i115.i.i = or i32 %__x.sroa.4.0.insert.insert.i113.i.i, %__x.sroa.6.0.insert.shift.i107.i.i
  switch i8 %302, label %sw.epilog.i79.i [
    i8 6, label %sw.bb.i117.i.i
    i8 4, label %sw.bb2.i118.i.i
    i8 2, label %sw.epilog.sink.split.i.i
  ]

sw.bb.i117.i.i:                                   ; preds = %if.end.i.i.i412
  br label %sw.epilog.sink.split.i.i

sw.bb2.i118.i.i:                                  ; preds = %if.end.i.i.i412
  %and3.i.i.i = shl i32 %__x.sroa.0.0.insert.insert.i115.i.i, 2
  %shl.i.i.i = and i32 %and3.i.i.i, 268435452
  br label %sw.epilog.sink.split.i.i

sw.epilog.sink.split.i.i:                         ; preds = %sw.bb2.i118.i.i, %sw.bb.i117.i.i, %if.end.i.i.i412, %addend_arm_rel.exit.thread.i.i, %if.then.i.i77.i, %sw.bb.i.i.i
  %and1.sink.i.sink.i.i = phi i32 [ %conv.i82.i.i, %addend_arm_rel.exit.thread.i.i ], [ %add7.i.i.i, %if.then.i.i77.i ], [ %__x.sroa.0.0.insert.insert.i.i.i, %sw.bb.i.i.i ], [ %__x.sroa.5.0.insert.insert.i110.i.i, %sw.bb.i117.i.i ], [ %shl.i.i.i, %sw.bb2.i118.i.i ], [ %__x.sroa.0.0.insert.insert.i115.i.i, %if.end.i.i.i412 ]
  store i32 %and1.sink.i.sink.i.i, ptr %r_addend.i47.i, align 4, !tbaa !77
  br label %sw.epilog.i79.i

sw.epilog.i79.i:                                  ; preds = %sw.epilog.sink.split.i.i, %if.end.i.i.i412, %sw.bb1.i.i.i, %reloc_location.exit.i.i.i, %for.body.i75.i
  %334 = load ptr, ptr %symtab_start301.i, align 8, !tbaa !63
  %idx.ext25.i.i = zext i32 %shr.i73.i to i64
  %add.ptr26.i.i = getelementptr inbounds %struct.Elf32_Sym, ptr %334, i64 %idx.ext25.i.i
  %st_shndx.i78.i = getelementptr inbounds %struct.Elf32_Sym, ptr %334, i64 %idx.ext25.i.i, i32 5
  %335 = load i16, ptr %st_shndx.i78.i, align 2, !tbaa !68
  %336 = add i16 %335, 1
  %337 = icmp ult i16 %336, -255
  br i1 %337, label %if.end31.i.i, label %for.inc.i86.i

if.end31.i.i:                                     ; preds = %sw.epilog.i79.i
  %cmp33.i80.i = icmp eq i64 %rel.0.idx130.i.i, 1
  br i1 %cmp33.i80.i, label %land.lhs.true.i83.i, label %if.end39.i.i

land.lhs.true.i83.i:                              ; preds = %if.end31.i.i
  %call35.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.93, ptr noundef nonnull %add.ptr3.i42.i) #29
  %cmp36.i.i = icmp eq i32 %call35.i.i, 0
  %338 = load i32, ptr @extable_entry_size, align 4
  %tobool.not.i.i81.i = icmp eq i32 %338, 0
  %or.cond.i82.i = select i1 %cmp36.i.i, i1 %tobool.not.i.i81.i, i1 false
  br i1 %or.cond.i82.i, label %if.then.i123.i.i, label %if.end39.i.i

if.then.i123.i.i:                                 ; preds = %land.lhs.true.i83.i
  %mul.i.i84.i = shl i32 %__x.sroa.0.0.insert.insert.i61.i, 1
  store i32 %mul.i.i84.i, ptr @extable_entry_size, align 4, !tbaa !21
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.then.i123.i.i, %land.lhs.true.i83.i, %if.end31.i.i
  call fastcc void @check_section_mismatch(ptr noundef %modname, ptr noundef nonnull %info, ptr noundef nonnull %r.i19.i, ptr noundef nonnull %add.ptr26.i.i, ptr noundef nonnull %add.ptr3.i42.i) #25
  br label %for.inc.i86.i

for.inc.i86.i:                                    ; preds = %if.end39.i.i, %sw.epilog.i79.i, %reloc_location.exit.i98.i.i, %sw.bb15.i.i
  %rel.0.add.i.i = add nuw nsw i64 %rel.0.idx130.i.i, 1
  %rel.0.ptr.i.i = getelementptr inbounds %struct.Elf32_Rel, ptr %add.ptr.i23.i, i64 %rel.0.add.i.i
  %cmp.i85.i = icmp ult ptr %rel.0.ptr.i.i, %add.ptr2.i26.i
  br i1 %cmp.i85.i, label %for.body.i75.i, label %section_rel.exit.i

section_rel.exit.i:                               ; preds = %for.inc.i86.i, %sech_name.exit.i45.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %r.i19.i) #25
  br label %for.inc.i415

for.inc.i415:                                     ; preds = %section_rel.exit.i, %section_rela.exit.i, %check_section.exit.i
  %indvars.iv.next.i413 = add nuw nsw i64 %indvars.iv.i371, 1
  %339 = load i32, ptr %num_sections91.i, align 4, !tbaa !46
  %340 = zext i32 %339 to i64
  %cmp.i414 = icmp ult i64 %indvars.iv.next.i413, %340
  br i1 %cmp.i414, label %for.inc.for.body_crit_edge.i, label %check_sec_ref.exit

for.inc.for.body_crit_edge.i:                     ; preds = %for.inc.i415
  %.pre.i416 = load ptr, ptr %sechdrs70.i, align 8, !tbaa !45
  br label %for.body.i375

check_sec_ref.exit:                               ; preds = %for.inc.i415, %for.end81
  %341 = load i32, ptr %is_vmlinux.i, align 4, !tbaa !21
  %tobool83.not = icmp eq i32 %341, 0
  br i1 %tobool83.not, label %if.then84, label %if.end92

if.then84:                                        ; preds = %check_sec_ref.exit
  %modinfo1.i.i418 = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 8
  %342 = load ptr, ptr %modinfo1.i.i418, align 8, !tbaa !59
  %tobool4.not57.i.i419 = icmp eq ptr %342, null
  br i1 %tobool4.not57.i.i419, label %get_modinfo.exit454, label %for.body.lr.ph.i.i424

for.body.lr.ph.i.i424:                            ; preds = %if.then84
  %modinfo_len.i.i420 = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 9
  %343 = load i32, ptr %modinfo_len.i.i420, align 8, !tbaa !60
  %conv2.i.i421 = zext i32 %343 to i64
  br label %for.body.i.i429

for.body.i.i429:                                  ; preds = %while.cond1thread-pre-split.i41.i.i449, %for.body.lr.ph.i.i424
  %p.059.i.i425 = phi ptr [ %342, %for.body.lr.ph.i.i424 ], [ %incdec.ptr5.i38.i.i446, %while.cond1thread-pre-split.i41.i.i449 ]
  %size.358.i.i426 = phi i64 [ %conv2.i.i421, %for.body.lr.ph.i.i424 ], [ %dec6.i43.i.i445, %while.cond1thread-pre-split.i41.i.i449 ]
  %call6.i.i427 = call i32 @strncmp(ptr noundef nonnull %p.059.i.i425, ptr noundef nonnull dereferenceable(8) @.str.32, i64 noundef 7) #29
  %cmp.i.i428 = icmp eq i32 %call6.i.i427, 0
  br i1 %cmp.i.i428, label %land.lhs.true.i.i432, label %while.cond.i31.i.i440.preheader

land.lhs.true.i.i432:                             ; preds = %for.body.i.i429
  %arrayidx.i.i430 = getelementptr inbounds i8, ptr %p.059.i.i425, i64 7
  %344 = load i8, ptr %arrayidx.i.i430, align 1, !tbaa !14
  %cmp9.i.i431 = icmp eq i8 %344, 61
  br i1 %cmp9.i.i431, label %if.then89, label %while.cond.i31.i.i440.preheader

while.cond.i31.i.i440.preheader:                  ; preds = %land.lhs.true.i.i432, %for.body.i.i429
  br label %while.cond.i31.i.i440

while.cond.i31.i.i440:                            ; preds = %while.body.i37.i.i444, %while.cond.i31.i.i440.preheader
  %size.4.i.i437 = phi i64 [ %dec.i35.i.i442, %while.body.i37.i.i444 ], [ %size.358.i.i426, %while.cond.i31.i.i440.preheader ]
  %string.addr.0.i29.i.i438 = phi ptr [ %incdec.ptr.i34.i.i441, %while.body.i37.i.i444 ], [ %p.059.i.i425, %while.cond.i31.i.i440.preheader ]
  %345 = load i8, ptr %string.addr.0.i29.i.i438, align 1, !tbaa !14
  %tobool.not.i30.i.i439 = icmp eq i8 %345, 0
  br i1 %tobool.not.i30.i.i439, label %while.body4.i45.i.i452, label %while.body.i37.i.i444

while.body.i37.i.i444:                            ; preds = %while.cond.i31.i.i440
  %incdec.ptr.i34.i.i441 = getelementptr inbounds i8, ptr %string.addr.0.i29.i.i438, i64 1
  %dec.i35.i.i442 = add i64 %size.4.i.i437, -1
  %cmp.i36.i.i443 = icmp ult i64 %size.4.i.i437, 2
  br i1 %cmp.i36.i.i443, label %get_modinfo.exit454, label %while.cond.i31.i.i440

while.cond1thread-pre-split.i41.i.i449:           ; preds = %while.body4.i45.i.i452
  %dec6.i43.i.i445 = add i64 %346, -1
  %incdec.ptr5.i38.i.i446 = getelementptr inbounds i8, ptr %string.addr.118.i42.i.i450, i64 1
  %.pr.i39.i.i447 = load i8, ptr %incdec.ptr5.i38.i.i446, align 1, !tbaa !14
  %tobool3.not.i40.i.i448 = icmp eq i8 %.pr.i39.i.i447, 0
  br i1 %tobool3.not.i40.i.i448, label %while.body4.i45.i.i452, label %for.body.i.i429

while.body4.i45.i.i452:                           ; preds = %while.cond1thread-pre-split.i41.i.i449, %while.cond.i31.i.i440
  %346 = phi i64 [ %dec6.i43.i.i445, %while.cond1thread-pre-split.i41.i.i449 ], [ %size.4.i.i437, %while.cond.i31.i.i440 ]
  %string.addr.118.i42.i.i450 = phi ptr [ %incdec.ptr5.i38.i.i446, %while.cond1thread-pre-split.i41.i.i449 ], [ %string.addr.0.i29.i.i438, %while.cond.i31.i.i440 ]
  %cmp7.i44.i.i451 = icmp ult i64 %346, 2
  br i1 %cmp7.i44.i.i451, label %get_modinfo.exit454, label %while.cond1thread-pre-split.i41.i.i449

get_modinfo.exit454:                              ; preds = %while.body4.i45.i.i452, %while.body.i37.i.i444, %if.then84
  %.b151 = load i1, ptr @all_versions, align 4
  br i1 %.b151, label %if.then89, label %if.end92

if.then89:                                        ; preds = %get_modinfo.exit454, %land.lhs.true.i.i432
  %srcversion = getelementptr inbounds %struct.module, ptr %call2.i, i64 0, i32 9
  call void @get_src_version(ptr noundef nonnull %name.i, ptr noundef nonnull %srcversion, i32 noundef 24) #25
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %get_modinfo.exit454, %check_sec_ref.exit
  %347 = load ptr, ptr %hdr7.i, align 8, !tbaa !27
  %348 = load i64, ptr %info, align 8, !tbaa !30
  %call.i.i455 = call i32 @munmap(ptr noundef %347, i64 noundef %348) #25
  %.b = load i1, ptr @modversions, align 4
  br i1 %.b, label %if.then94, label %cleanup

if.then94:                                        ; preds = %if.end92
  %unres = getelementptr inbounds %struct.module, ptr %call2.i, i64 0, i32 2
  %349 = load ptr, ptr %unres, align 8, !tbaa !5
  %call2.i458 = call noalias dereferenceable_or_null(54) ptr @malloc(i64 noundef 54) #28
  %tobool.not.i.i459 = icmp eq ptr %call2.i458, null
  br i1 %tobool.not.i.i459, label %if.then.i.i460, label %alloc_symbol.exit

if.then.i.i460:                                   ; preds = %if.then94
  call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.19) #25
  br label %alloc_symbol.exit

alloc_symbol.exit:                                ; preds = %if.then.i.i460, %if.then94
  %350 = getelementptr inbounds i8, ptr %call2.i458, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %350, i8 0, i64 32, i1 false) #25
  %name4.i = getelementptr inbounds %struct.symbol, ptr %call2.i458, i64 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %name4.i, ptr noundef nonnull align 1 dereferenceable(14) @.str.33, i64 14, i1 false) #25
  %weak6.i = getelementptr inbounds %struct.symbol, ptr %call2.i458, i64 0, i32 5
  store ptr %349, ptr %call2.i458, align 8, !tbaa !5
  store i8 2, ptr %weak6.i, align 8
  store ptr %call2.i458, ptr %unres, align 8, !tbaa !5
  br label %cleanup

cleanup:                                          ; preds = %alloc_symbol.exit, %if.end92, %cleanup.i, %if.then76.i, %lor.lhs.false24.i, %lor.lhs.false18.i, %lor.lhs.false.i, %if.end10.i, %if.end6.i, %if.then2.i
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %info) #25
  ret void
}

declare void @add_moddevtable(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @write_if_changed(ptr nocapture noundef readonly %b, ptr nocapture noundef readonly %fname) unnamed_addr #0 {
entry:
  %st = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %st) #25
  %call = tail call ptr @fopen(ptr noundef %fname, ptr noundef nonnull @.str.184)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %write, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @fileno(ptr noundef nonnull %call) #25
  %call.i = call i32 @__fxstat(i32 noundef 1, i32 noundef %call1, ptr noundef nonnull %st) #25
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %close_write, label %if.end4

if.end4:                                          ; preds = %if.end
  %st_size = getelementptr inbounds %struct.stat, ptr %st, i64 0, i32 8
  %0 = load i64, ptr %st_size, align 8, !tbaa !9
  %pos = getelementptr inbounds %struct.buffer, ptr %b, i64 0, i32 1
  %1 = load i32, ptr %pos, align 8, !tbaa !17
  %conv = sext i32 %1 to i64
  %cmp5.not = icmp eq i64 %0, %conv
  br i1 %cmp5.not, label %if.end8, label %close_write

if.end8:                                          ; preds = %if.end4
  %call11 = call noalias ptr @malloc(i64 noundef %0) #28
  %tobool.not.i = icmp eq ptr %call11, null
  br i1 %tobool.not.i, label %if.then.i, label %do_nofail.exit

if.then.i:                                        ; preds = %if.end8
  call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.223) #25
  %.pre = load i32, ptr %pos, align 8, !tbaa !17
  %.pre47 = sext i32 %.pre to i64
  br label %do_nofail.exit

do_nofail.exit:                                   ; preds = %if.then.i, %if.end8
  %conv14.pre-phi = phi i64 [ %conv, %if.end8 ], [ %.pre47, %if.then.i ]
  %call15 = call i64 @fread(ptr noundef %call11, i64 noundef 1, i64 noundef %conv14.pre-phi, ptr noundef nonnull %call)
  %2 = load i32, ptr %pos, align 8, !tbaa !17
  %conv17 = sext i32 %2 to i64
  %cmp18.not = icmp eq i64 %call15, %conv17
  br i1 %cmp18.not, label %if.end21, label %free_write

if.end21:                                         ; preds = %do_nofail.exit
  %3 = load ptr, ptr %b, align 8, !tbaa !18
  %bcmp = call i32 @bcmp(ptr %call11, ptr %3, i64 %call15)
  %cmp25.not = icmp eq i32 %bcmp, 0
  br i1 %cmp25.not, label %if.end28, label %free_write

if.end28:                                         ; preds = %if.end21
  call void @free(ptr noundef %call11) #25
  %call29 = call i32 @fclose(ptr noundef nonnull %call)
  br label %cleanup

free_write:                                       ; preds = %if.end21, %do_nofail.exit
  call void @free(ptr noundef %call11) #25
  br label %close_write

close_write:                                      ; preds = %free_write, %if.end4, %if.end
  %call30 = call i32 @fclose(ptr noundef nonnull %call)
  br label %write

write:                                            ; preds = %close_write, %entry
  call fastcc void @write_buf(ptr noundef %b, ptr noundef %fname)
  br label %cleanup

cleanup:                                          ; preds = %write, %if.end28
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st) #25
  ret void
}

; Function Attrs: nounwind
declare i32 @__fxstat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sym_add_exported(ptr noundef %name, ptr noundef %mod, i32 noundef %export) unnamed_addr #0 {
entry:
  %0 = load i8, ptr %name, align 1, !tbaa !14
  %cmp.i = icmp eq i8 %0, 46
  %spec.select.idx.i = zext i1 %cmp.i to i64
  %spec.select.i = getelementptr i8, ptr %name, i64 %spec.select.idx.i
  %call.i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select.i) #29
  %1 = trunc i64 %call.i.i to i32
  %conv.i.i = mul i32 %1, 596579247
  %2 = load i8, ptr %spec.select.i, align 1, !tbaa !14
  %tobool.not13.i.i = icmp eq i8 %2, 0
  br i1 %tobool.not13.i.i, label %tdb_hash.exit.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i, %entry
  %3 = phi i8 [ %4, %for.body.i.i ], [ %2, %entry ]
  %i.015.i.i = phi i32 [ %inc.i.i, %for.body.i.i ], [ 0, %entry ]
  %value.014.i.i = phi i32 [ %add.i.i, %for.body.i.i ], [ %conv.i.i, %entry ]
  %conv3.i.i = zext i8 %3 to i32
  %mul4.i.i = mul i32 %i.015.i.i, 5
  %rem.i.i = urem i32 %mul4.i.i, 24
  %shl.i.i = shl nuw nsw i32 %conv3.i.i, %rem.i.i
  %add.i.i = add i32 %shl.i.i, %value.014.i.i
  %inc.i.i = add i32 %i.015.i.i, 1
  %idxprom.i.i = zext i32 %inc.i.i to i64
  %arrayidx.i.i = getelementptr inbounds i8, ptr %spec.select.i, i64 %idxprom.i.i
  %4 = load i8, ptr %arrayidx.i.i, align 1, !tbaa !14
  %tobool.not.i.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i.i, label %tdb_hash.exit.i, label %for.body.i.i

tdb_hash.exit.i:                                  ; preds = %for.body.i.i, %entry
  %value.0.lcssa.i.i = phi i32 [ %conv.i.i, %entry ], [ %add.i.i, %for.body.i.i ]
  %mul5.i.i = mul i32 %value.0.lcssa.i.i, 619
  %add6.i.i = add i32 %mul5.i.i, 57
  %rem.i = and i32 %add6.i.i, 1023
  %idxprom.i = zext i32 %rem.i to i64
  %arrayidx2.i = getelementptr inbounds [1024 x ptr], ptr @symbolhash, i64 0, i64 %idxprom.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %tdb_hash.exit.i
  %s.0.in.i = phi ptr [ %arrayidx2.i, %tdb_hash.exit.i ], [ %s.0.i, %for.body.i ]
  %s.0.i = load ptr, ptr %s.0.in.i, align 8, !tbaa !5
  %tobool.not.i = icmp eq ptr %s.0.i, null
  br i1 %tobool.not.i, label %if.then, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %name3.i = getelementptr inbounds %struct.symbol, ptr %s.0.i, i64 0, i32 7
  %call4.i = tail call i32 @strcmp(ptr noundef nonnull %name3.i, ptr noundef nonnull %spec.select.i) #29
  %cmp5.i = icmp eq i32 %call4.i, 0
  br i1 %cmp5.i, label %if.else, label %for.cond.i

if.then:                                          ; preds = %for.cond.i
  %call.i.i31 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %name) #29
  %5 = trunc i64 %call.i.i31 to i32
  %conv.i.i32 = mul i32 %5, 596579247
  %tobool.not13.i.i33 = icmp eq i8 %0, 0
  br i1 %tobool.not13.i.i33, label %tdb_hash.exit.i51, label %for.body.i.i45

for.body.i.i45:                                   ; preds = %for.body.i.i45, %if.then
  %6 = phi i8 [ %7, %for.body.i.i45 ], [ %0, %if.then ]
  %i.015.i.i34 = phi i32 [ %inc.i.i41, %for.body.i.i45 ], [ 0, %if.then ]
  %value.014.i.i35 = phi i32 [ %add.i.i40, %for.body.i.i45 ], [ %conv.i.i32, %if.then ]
  %conv3.i.i36 = zext i8 %6 to i32
  %mul4.i.i37 = mul i32 %i.015.i.i34, 5
  %rem.i.i38 = urem i32 %mul4.i.i37, 24
  %shl.i.i39 = shl nuw nsw i32 %conv3.i.i36, %rem.i.i38
  %add.i.i40 = add i32 %shl.i.i39, %value.014.i.i35
  %inc.i.i41 = add i32 %i.015.i.i34, 1
  %idxprom.i.i42 = zext i32 %inc.i.i41 to i64
  %arrayidx.i.i43 = getelementptr inbounds i8, ptr %name, i64 %idxprom.i.i42
  %7 = load i8, ptr %arrayidx.i.i43, align 1, !tbaa !14
  %tobool.not.i.i44 = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i44, label %tdb_hash.exit.i51, label %for.body.i.i45

tdb_hash.exit.i51:                                ; preds = %for.body.i.i45, %if.then
  %value.0.lcssa.i.i46 = phi i32 [ %conv.i.i32, %if.then ], [ %add.i.i40, %for.body.i.i45 ]
  %mul5.i.i47 = mul i32 %value.0.lcssa.i.i46, 619
  %add6.i.i48 = add i32 %mul5.i.i47, 57
  %rem.i49 = and i32 %add6.i.i48, 1023
  %idxprom.i50 = zext i32 %rem.i49 to i64
  %arrayidx.i = getelementptr inbounds [1024 x ptr], ptr @symbolhash, i64 0, i64 %idxprom.i50
  %8 = load ptr, ptr %arrayidx.i, align 8, !tbaa !5
  %add1.i.i = add i64 %call.i.i31, 41
  %call2.i.i = tail call noalias ptr @malloc(i64 noundef %add1.i.i) #28
  %tobool.not.i.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %new_symbol.exit

if.then.i.i.i:                                    ; preds = %tdb_hash.exit.i51
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.19) #25
  br label %new_symbol.exit

new_symbol.exit:                                  ; preds = %if.then.i.i.i, %tdb_hash.exit.i51
  %9 = getelementptr inbounds i8, ptr %call2.i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, i8 0, i64 32, i1 false) #25
  %name4.i.i = getelementptr inbounds %struct.symbol, ptr %call2.i.i, i64 0, i32 7
  %call5.i.i = tail call ptr @strcpy(ptr noundef nonnull %name4.i.i, ptr noundef nonnull dereferenceable(1) %name) #25
  %weak6.i.i = getelementptr inbounds %struct.symbol, ptr %call2.i.i, i64 0, i32 5
  store ptr %8, ptr %call2.i.i, align 8, !tbaa !5
  store i8 2, ptr %weak6.i.i, align 8
  store ptr %call2.i.i, ptr %arrayidx.i, align 8, !tbaa !5
  br label %if.end14

if.else:                                          ; preds = %for.body.i
  %.b = load i1, ptr @external_module, align 4
  %module = getelementptr inbounds %struct.symbol, ptr %s.0.i, i64 0, i32 1
  %10 = load ptr, ptr %module, align 8, !tbaa !5
  %is_vmlinux = getelementptr inbounds %struct.module, ptr %10, i64 0, i32 4
  %11 = load i32, ptr %is_vmlinux, align 4, !tbaa !21
  br i1 %.b, label %lor.lhs.false, label %if.then6

lor.lhs.false:                                    ; preds = %if.else
  %tobool3.not = icmp ne i32 %11, 0
  %cmp = icmp eq ptr %10, %mod
  %or.cond = select i1 %tobool3.not, i1 true, i1 %cmp
  br i1 %or.cond, label %if.then6, label %if.end14

if.then6:                                         ; preds = %lor.lhs.false, %if.else
  %name7 = getelementptr inbounds %struct.module, ptr %mod, i64 0, i32 12
  %name9 = getelementptr inbounds %struct.module, ptr %10, i64 0, i32 12
  %tobool13.not = icmp eq i32 %11, 0
  %cond = select i1 %tobool13.not, ptr @.str.18, ptr @.str.17
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull %name7, ptr noundef nonnull %name, ptr noundef nonnull %name9, ptr noundef nonnull %cond)
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false, %new_symbol.exit
  %s.0 = phi ptr [ %call2.i.i, %new_symbol.exit ], [ %s.0.i, %lor.lhs.false ]
  %module15 = getelementptr inbounds %struct.symbol, ptr %s.0, i64 0, i32 1
  store ptr %mod, ptr %module15, align 8, !tbaa !5
  %export16 = getelementptr inbounds %struct.symbol, ptr %s.0, i64 0, i32 6
  store i32 %export, ptr %export16, align 4, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then6
  %retval.0 = phi ptr [ %s.0.i, %if.then6 ], [ %s.0, %if.end14 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sym_update_namespace(ptr noundef %symname, ptr noundef %namespace) unnamed_addr #0 {
entry:
  %0 = load i8, ptr %symname, align 1, !tbaa !14
  %cmp.i = icmp eq i8 %0, 46
  %spec.select.idx.i = zext i1 %cmp.i to i64
  %spec.select.i = getelementptr i8, ptr %symname, i64 %spec.select.idx.i
  %call.i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select.i) #29
  %1 = trunc i64 %call.i.i to i32
  %conv.i.i = mul i32 %1, 596579247
  %2 = load i8, ptr %spec.select.i, align 1, !tbaa !14
  %tobool.not13.i.i = icmp eq i8 %2, 0
  br i1 %tobool.not13.i.i, label %tdb_hash.exit.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i, %entry
  %3 = phi i8 [ %4, %for.body.i.i ], [ %2, %entry ]
  %i.015.i.i = phi i32 [ %inc.i.i, %for.body.i.i ], [ 0, %entry ]
  %value.014.i.i = phi i32 [ %add.i.i, %for.body.i.i ], [ %conv.i.i, %entry ]
  %conv3.i.i = zext i8 %3 to i32
  %mul4.i.i = mul i32 %i.015.i.i, 5
  %rem.i.i = urem i32 %mul4.i.i, 24
  %shl.i.i = shl nuw nsw i32 %conv3.i.i, %rem.i.i
  %add.i.i = add i32 %shl.i.i, %value.014.i.i
  %inc.i.i = add i32 %i.015.i.i, 1
  %idxprom.i.i = zext i32 %inc.i.i to i64
  %arrayidx.i.i = getelementptr inbounds i8, ptr %spec.select.i, i64 %idxprom.i.i
  %4 = load i8, ptr %arrayidx.i.i, align 1, !tbaa !14
  %tobool.not.i.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i.i, label %tdb_hash.exit.i, label %for.body.i.i

tdb_hash.exit.i:                                  ; preds = %for.body.i.i, %entry
  %value.0.lcssa.i.i = phi i32 [ %conv.i.i, %entry ], [ %add.i.i, %for.body.i.i ]
  %mul5.i.i = mul i32 %value.0.lcssa.i.i, 619
  %add6.i.i = add i32 %mul5.i.i, 57
  %rem.i = and i32 %add6.i.i, 1023
  %idxprom.i = zext i32 %rem.i to i64
  %arrayidx2.i = getelementptr inbounds [1024 x ptr], ptr @symbolhash, i64 0, i64 %idxprom.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %tdb_hash.exit.i
  %s.0.in.i = phi ptr [ %arrayidx2.i, %tdb_hash.exit.i ], [ %s.0.i, %for.body.i ]
  %s.0.i = load ptr, ptr %s.0.in.i, align 8, !tbaa !5
  %tobool.not.i = icmp eq ptr %s.0.i, null
  br i1 %tobool.not.i, label %if.then, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %name3.i = getelementptr inbounds %struct.symbol, ptr %s.0.i, i64 0, i32 7
  %call4.i = tail call i32 @strcmp(ptr noundef nonnull %name3.i, ptr noundef nonnull %spec.select.i) #29
  %cmp5.i = icmp eq i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end, label %for.cond.i

if.then:                                          ; preds = %for.cond.i
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 1, ptr noundef nonnull @.str.23, ptr noundef %namespace, ptr noundef nonnull %symname)
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %namespace1 = getelementptr inbounds %struct.symbol, ptr %s.0.i, i64 0, i32 4
  %5 = load ptr, ptr %namespace1, align 8, !tbaa !5
  tail call void @free(ptr noundef %5) #25
  %tobool2.not = icmp eq ptr %namespace, null
  br i1 %tobool2.not, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %6 = load i8, ptr %namespace, align 1, !tbaa !14
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  %call4 = tail call noalias ptr @strdup(ptr noundef nonnull %namespace) #25
  %tobool.not.i13 = icmp eq ptr %call4, null
  br i1 %tobool.not.i13, label %if.then.i, label %cond.end

if.then.i:                                        ; preds = %cond.true
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.24) #25
  br label %cond.end

cond.end:                                         ; preds = %if.then.i, %cond.true, %land.lhs.true, %if.end
  %cond = phi ptr [ null, %land.lhs.true ], [ null, %if.end ], [ %call4, %cond.true ], [ null, %if.then.i ]
  store ptr %cond, ptr %namespace1, align 8, !tbaa !5
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn
declare noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define internal fastcc void @add_namespace(ptr nocapture noundef %list, ptr nocapture noundef readonly %namespace) unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %list, align 8, !tbaa !5
  %tobool.not5.i = icmp eq ptr %0, null
  br i1 %tobool.not5.i, label %if.then, label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %entry
  %list.addr.06.i = phi ptr [ %1, %for.inc.i ], [ %0, %entry ]
  %namespace1.i = getelementptr inbounds %struct.namespace_list, ptr %list.addr.06.i, i64 0, i32 1
  %call.i = tail call i32 @strcmp(ptr noundef nonnull %namespace1.i, ptr noundef nonnull dereferenceable(1) %namespace) #29
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %1 = load ptr, ptr %list.addr.06.i, align 8, !tbaa !5
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then, label %for.body.i

if.then:                                          ; preds = %for.inc.i, %entry
  %call1 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %namespace) #29
  %add2 = add i64 %call1, 9
  %call3 = tail call noalias ptr @malloc(i64 noundef %add2) #28
  %tobool.not.i13 = icmp eq ptr %call3, null
  br i1 %tobool.not.i13, label %if.then.i, label %do_nofail.exit

if.then.i:                                        ; preds = %if.then
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.49) #25
  %.pre = load ptr, ptr %list, align 8, !tbaa !5
  br label %do_nofail.exit

do_nofail.exit:                                   ; preds = %if.then.i, %if.then
  %2 = phi ptr [ %0, %if.then ], [ %.pre, %if.then.i ]
  %namespace5 = getelementptr inbounds %struct.namespace_list, ptr %call3, i64 0, i32 1
  %call6 = tail call ptr @strcpy(ptr noundef nonnull %namespace5, ptr noundef nonnull dereferenceable(1) %namespace) #25
  store ptr %2, ptr %call3, align 8, !tbaa !5
  store ptr %call3, ptr %list, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %do_nofail.exit, %for.body.i
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn uwtable
define internal fastcc ptr @remove_dot(ptr noundef returned %s) unnamed_addr #18 {
entry:
  %call = tail call i64 @strcspn(ptr noundef %s, ptr noundef nonnull @.str.50) #29
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %if.end21, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds i8, ptr %s, i64 %call
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !14
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %if.end21, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %add.ptr2 = getelementptr inbounds i8, ptr %arrayidx, i64 1
  %call3 = tail call i64 @strspn(ptr noundef nonnull %add.ptr2, ptr noundef nonnull @.str.51) #29
  %tobool4.not = icmp eq i64 %call3, 0
  br i1 %tobool4.not, label %if.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %if.then
  %add = add i64 %call3, %call
  %arrayidx6 = getelementptr inbounds i8, ptr %s, i64 %add
  %1 = load i8, ptr %arrayidx6, align 1, !tbaa !14
  switch i8 %1, label %if.end [
    i8 46, label %if.then14
    i8 0, label %if.then14
  ]

if.then14:                                        ; preds = %land.lhs.true5, %land.lhs.true5
  store i8 0, ptr %arrayidx, align 1, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then14, %land.lhs.true5, %if.then
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #29
  %cmp.i = icmp ult i64 %call.i, 4
  br i1 %cmp.i, label %if.end21, label %strends.exit

strends.exit:                                     ; preds = %if.end
  %add.ptr.i = getelementptr inbounds i8, ptr %s, i64 %call.i
  %add.ptr4.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 -4
  %call5.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr4.i, ptr noundef nonnull dereferenceable(5) @.str.26) #29
  %cmp6.i = icmp eq i32 %call5.i, 0
  br i1 %cmp6.i, label %if.then17, label %if.end21

if.then17:                                        ; preds = %strends.exit
  %sub = add i64 %call.i, -4
  %arrayidx19 = getelementptr inbounds i8, ptr %s, i64 %sub
  store i8 0, ptr %arrayidx19, align 1, !tbaa !14
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %strends.exit, %if.end, %land.lhs.true, %entry
  ret ptr %s
}

declare void @handle_moddevtable(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #9

declare void @get_src_version(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #19

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_toupper_loc() local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define internal fastcc i32 @match(ptr noundef readonly %sym, ptr nocapture noundef readonly %pat) unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %pat, align 8, !tbaa !5
  %tobool.not69 = icmp eq ptr %0, null
  br i1 %tobool.not69, label %cleanup49, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %tobool.i.not = icmp eq ptr %sym, null
  br label %while.body

while.body:                                       ; preds = %if.end45, %while.body.lr.ph
  %1 = phi ptr [ %0, %while.body.lr.ph ], [ %4, %if.end45 ]
  %pat.addr.070 = phi ptr [ %pat, %while.body.lr.ph ], [ %incdec.ptr, %if.end45 ]
  %incdec.ptr = getelementptr inbounds ptr, ptr %pat.addr.070, i64 1
  %call = tail call i64 @strlen(ptr noundef nonnull %1) #29
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 -1
  %add.ptr1 = getelementptr inbounds i8, ptr %add.ptr, i64 %call
  %2 = load i8, ptr %1, align 1, !tbaa !14
  %cmp = icmp eq i8 %2, 42
  %3 = load i8, ptr %add.ptr1, align 1, !tbaa !14
  %cmp4 = icmp eq i8 %3, 42
  br i1 %cmp, label %land.lhs.true, label %if.else25

land.lhs.true:                                    ; preds = %while.body
  %add.ptr6 = getelementptr inbounds i8, ptr %1, i64 1
  br i1 %cmp4, label %if.then, label %if.then18

if.then:                                          ; preds = %land.lhs.true
  %sub = add i64 %call, -2
  %call8 = tail call noalias ptr @strndup(ptr noundef nonnull %add.ptr6, i64 noundef %sub) #25
  %tobool.not.i = icmp eq ptr %call8, null
  br i1 %tobool.not.i, label %if.then.i, label %do_nofail.exit

if.then.i:                                        ; preds = %if.then
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.73) #25
  br label %do_nofail.exit

do_nofail.exit:                                   ; preds = %if.then.i, %if.then
  %call10 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %sym, ptr noundef nonnull dereferenceable(1) %call8) #29
  tail call void @free(ptr noundef %call8) #25
  %cmp11.not = icmp eq ptr %call10, null
  br i1 %cmp11.not, label %if.end45, label %cleanup49

if.then18:                                        ; preds = %land.lhs.true
  br i1 %tobool.i.not, label %if.end45, label %if.end.i

if.end.i:                                         ; preds = %if.then18
  %call.i = tail call i64 @strlen(ptr noundef nonnull %sym) #29
  %conv.i = trunc i64 %call.i to i32
  %call2.i = tail call i64 @strlen(ptr noundef nonnull %add.ptr6) #29
  %conv3.i = trunc i64 %call2.i to i32
  %cmp.i = icmp eq i32 %conv.i, 0
  %cmp6.i = icmp eq i32 %conv3.i, 0
  %or.cond19.i = select i1 %cmp.i, i1 true, i1 %cmp6.i
  %cmp10.i = icmp sgt i32 %conv3.i, %conv.i
  %or.cond30.i = select i1 %or.cond19.i, i1 true, i1 %cmp10.i
  br i1 %or.cond30.i, label %if.end45, label %strrcmp.exit

strrcmp.exit:                                     ; preds = %if.end.i
  %sext.i = shl i64 %call.i, 32
  %idx.ext.i = ashr exact i64 %sext.i, 32
  %add.ptr.i = getelementptr inbounds i8, ptr %sym, i64 %idx.ext.i
  %sext29.i = shl i64 %call2.i, 32
  %idx.ext14.i = ashr exact i64 %sext29.i, 32
  %idx.neg.i = sub nsw i64 0, %idx.ext14.i
  %add.ptr15.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i
  %bcmp = tail call i32 @bcmp(ptr nonnull %add.ptr15.i, ptr nonnull %add.ptr6, i64 %idx.ext14.i)
  %cmp21 = icmp eq i32 %bcmp, 0
  br i1 %cmp21, label %cleanup49, label %if.end45

if.else25:                                        ; preds = %while.body
  br i1 %cmp4, label %if.then29, label %if.else37

if.then29:                                        ; preds = %if.else25
  %sub31 = add i64 %call, -1
  %call32 = tail call i32 @strncmp(ptr noundef %sym, ptr noundef nonnull %1, i64 noundef %sub31) #29
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %cleanup49, label %if.end45

if.else37:                                        ; preds = %if.else25
  %call38 = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef nonnull dereferenceable(1) %sym) #29
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %cleanup49, label %if.end45

if.end45:                                         ; preds = %if.else37, %if.then29, %strrcmp.exit, %if.end.i, %if.then18, %do_nofail.exit
  %4 = load ptr, ptr %incdec.ptr, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %cleanup49, label %while.body

cleanup49:                                        ; preds = %if.end45, %if.else37, %if.then29, %strrcmp.exit, %do_nofail.exit, %entry
  %retval.4 = phi i32 [ 0, %entry ], [ 1, %do_nofail.exit ], [ 0, %if.end45 ], [ 1, %strrcmp.exit ], [ 1, %if.then29 ], [ 1, %if.else37 ]
  ret i32 %retval.4
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn
declare noalias ptr @strndup(ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #17

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc void @check_section_mismatch(ptr noundef %modname, ptr noundef %elf, ptr noundef %r, ptr noundef %sym, ptr noundef %fromsec) unnamed_addr #0 {
entry:
  %st_shndx.i = getelementptr inbounds %struct.Elf32_Sym, ptr %sym, i64 0, i32 5
  %0 = load i16, ptr %st_shndx.i, align 2, !tbaa !68
  %conv.i = zext i16 %0 to i32
  %1 = add i16 %0, 1
  %2 = icmp ult i16 %1, -255
  br i1 %2, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %sub.i = or i32 %conv.i, -65536
  br label %get_secindex.exit

if.end.i:                                         ; preds = %entry
  %cmp.not.i = icmp eq i16 %0, -1
  br i1 %cmp.not.i, label %if.end9.i, label %get_secindex.exit

if.end9.i:                                        ; preds = %if.end.i
  %symtab_shndx_start.i = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 12
  %3 = load ptr, ptr %symtab_shndx_start.i, align 8, !tbaa !66
  %symtab_start.i = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 3
  %4 = load ptr, ptr %symtab_start.i, align 8, !tbaa !63
  %sub.ptr.lhs.cast.i = ptrtoint ptr %sym to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %4 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub.i, 4
  %arrayidx.i = getelementptr inbounds i32, ptr %3, i64 %sub.ptr.div.i
  %5 = load i32, ptr %arrayidx.i, align 4, !tbaa !21
  br label %get_secindex.exit

get_secindex.exit:                                ; preds = %if.end9.i, %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %5, %if.end9.i ], [ %conv.i, %if.end.i ]
  %sechdrs.i = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 2
  %6 = load ptr, ptr %sechdrs.i, align 8, !tbaa !45
  %idxprom.i = sext i32 %retval.0.i to i64
  %arrayidx.i20 = getelementptr inbounds %struct.Elf32_Shdr, ptr %6, i64 %idxprom.i
  %secindex_strings.i.i = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 11
  %7 = load i32, ptr %secindex_strings.i.i, align 8, !tbaa !47
  %8 = load i32, ptr %arrayidx.i20, align 4, !tbaa !48
  %conv.i.i = zext i32 %8 to i64
  %idxprom.i.i.i = zext i32 %7 to i64
  %hdr.i.i.i = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 1
  %9 = load ptr, ptr %hdr.i.i.i, align 8, !tbaa !27
  %e_type.i.i.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %9, i64 0, i32 1
  %10 = load i16, ptr %e_type.i.i.i, align 4, !tbaa !31
  %cmp.not.i.i.i = icmp eq i16 %10, 1
  br i1 %cmp.not.i.i.i, label %sec_name.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %get_secindex.exit
  %sh_addr.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %6, i64 %idxprom.i.i.i, i32 3
  %11 = load i32, ptr %sh_addr.i.i.i, align 4, !tbaa !52
  %conv2.i.i.i = zext i32 %11 to i64
  %sub.i.i.i = sub nsw i64 %conv.i.i, %conv2.i.i.i
  br label %sec_name.exit

sec_name.exit:                                    ; preds = %if.then.i.i.i, %get_secindex.exit
  %offset.addr.0.i.i.i = phi i64 [ %sub.i.i.i, %if.then.i.i.i ], [ %conv.i.i, %get_secindex.exit ]
  %sh_offset.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %6, i64 %idxprom.i.i.i, i32 4
  %12 = load i32, ptr %sh_offset.i.i.i, align 4, !tbaa !53
  %idx.ext.i.i.i = zext i32 %12 to i64
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i64 %idx.ext.i.i.i
  %add.ptr4.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i64 %offset.addr.0.i.i.i
  %13 = load i8, ptr %add.ptr4.i.i.i, align 1, !tbaa !14
  %cmp.i = icmp eq i8 %13, 0
  br i1 %cmp.i, label %if.end6, label %for.body.i

for.body.i:                                       ; preds = %if.end22.i, %sec_name.exit
  %check.036.i = phi ptr [ %incdec.ptr.i, %if.end22.i ], [ @sectioncheck, %sec_name.exit ]
  %i.035.i = phi i32 [ %inc.i, %if.end22.i ], [ 0, %sec_name.exit ]
  %call.i = tail call fastcc i32 @match(ptr noundef %fromsec, ptr noundef nonnull %check.036.i) #25
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end22.i, label %if.then5.i

if.then5.i:                                       ; preds = %for.body.i
  %bad_tosec.i = getelementptr inbounds %struct.sectioncheck, ptr %check.036.i, i64 0, i32 1
  %14 = load ptr, ptr %bad_tosec.i, align 8, !tbaa !5
  %tobool6.not.i = icmp eq ptr %14, null
  br i1 %tobool6.not.i, label %if.end12.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then5.i
  %call9.i = tail call fastcc i32 @match(ptr noundef nonnull %add.ptr4.i.i.i, ptr noundef nonnull %bad_tosec.i) #25
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.then

if.end12.i:                                       ; preds = %land.lhs.true.i, %if.then5.i
  %good_tosec.i = getelementptr inbounds %struct.sectioncheck, ptr %check.036.i, i64 0, i32 2
  %15 = load ptr, ptr %good_tosec.i, align 8, !tbaa !5
  %tobool14.not.i = icmp eq ptr %15, null
  br i1 %tobool14.not.i, label %if.end22.i, label %land.lhs.true15.i

land.lhs.true15.i:                                ; preds = %if.end12.i
  %call18.i = tail call fastcc i32 @match(ptr noundef nonnull %add.ptr4.i.i.i, ptr noundef nonnull %good_tosec.i) #25
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.then, label %if.end22.i

if.end22.i:                                       ; preds = %land.lhs.true15.i, %if.end12.i, %for.body.i
  %incdec.ptr.i = getelementptr inbounds %struct.sectioncheck, ptr %check.036.i, i64 1
  %inc.i = add nuw nsw i32 %i.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 12
  br i1 %exitcond.not.i, label %if.end6, label %for.body.i

if.then:                                          ; preds = %land.lhs.true15.i, %land.lhs.true.i
  %handler = getelementptr inbounds %struct.sectioncheck, ptr %check.036.i, i64 0, i32 5
  %16 = load ptr, ptr %handler, align 8, !tbaa !78
  %tobool3.not = icmp eq ptr %16, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  tail call void %16(ptr noundef %modname, ptr noundef %elf, ptr noundef nonnull %check.036.i, ptr noundef %r, ptr noundef %sym, ptr noundef %fromsec) #25
  br label %if.end6

if.else:                                          ; preds = %if.then
  %17 = load i32, ptr %r, align 4, !tbaa !74
  %call.i22 = tail call fastcc ptr @find_elf_symbol2(ptr noundef %elf, i32 noundef %17, ptr noundef %fromsec) #25
  %tobool.not.i.i = icmp eq ptr %call.i22, null
  br i1 %tobool.not.i.i, label %sym_name.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.else
  %strtab.i.i = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 7
  %18 = load ptr, ptr %strtab.i.i, align 8, !tbaa !65
  %19 = load i32, ptr %call.i22, align 4, !tbaa !70
  %idx.ext.i.i = zext i32 %19 to i64
  %add.ptr.i.i = getelementptr inbounds i8, ptr %18, i64 %idx.ext.i.i
  br label %sym_name.exit.i

sym_name.exit.i:                                  ; preds = %if.then.i.i, %if.else
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ @.str.22, %if.else ]
  %call2.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %retval.0.i.i, ptr noundef nonnull dereferenceable(21) @.str.149, i64 noundef 20) #29
  %cmp.i23 = icmp eq i32 %call2.i, 0
  br i1 %cmp.i23, label %if.end6, label %if.end.i25

if.end.i25:                                       ; preds = %sym_name.exit.i
  %20 = load i16, ptr %st_shndx.i, align 2, !tbaa !68
  %conv.i.i24 = zext i16 %20 to i32
  %21 = add i16 %20, 1
  %22 = icmp ult i16 %21, -255
  br i1 %22, label %if.end.i.i, label %if.then.i34.i

if.then.i34.i:                                    ; preds = %if.end.i25
  %sub.i.i = or i32 %conv.i.i24, -65536
  br label %get_secindex.exit.i

if.end.i.i:                                       ; preds = %if.end.i25
  %cmp.not.i.i = icmp eq i16 %20, -1
  br i1 %cmp.not.i.i, label %if.end9.i.i, label %get_secindex.exit.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  %symtab_shndx_start.i.i = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 12
  %23 = load ptr, ptr %symtab_shndx_start.i.i, align 8, !tbaa !66
  %symtab_start.i.i = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 3
  %24 = load ptr, ptr %symtab_start.i.i, align 8, !tbaa !63
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %sym to i64
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %24 to i64
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = ashr exact i64 %sub.ptr.sub.i.i, 4
  %arrayidx.i.i = getelementptr inbounds i32, ptr %23, i64 %sub.ptr.div.i.i
  %25 = load i32, ptr %arrayidx.i.i, align 4, !tbaa !21
  br label %get_secindex.exit.i

get_secindex.exit.i:                              ; preds = %if.end9.i.i, %if.end.i.i, %if.then.i34.i
  %retval.0.i35.i = phi i32 [ %sub.i.i, %if.then.i34.i ], [ %25, %if.end9.i.i ], [ %conv.i.i24, %if.end.i.i ]
  %26 = load ptr, ptr %sechdrs.i, align 8, !tbaa !45
  %idxprom.i.i = sext i32 %retval.0.i35.i to i64
  %arrayidx.i36.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %26, i64 %idxprom.i.i
  %27 = load i32, ptr %secindex_strings.i.i, align 8, !tbaa !47
  %28 = load i32, ptr %arrayidx.i36.i, align 4, !tbaa !48
  %conv.i.i.i = zext i32 %28 to i64
  %idxprom.i.i.i.i = zext i32 %27 to i64
  %29 = load ptr, ptr %hdr.i.i.i, align 8, !tbaa !27
  %e_type.i.i.i.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %29, i64 0, i32 1
  %30 = load i16, ptr %e_type.i.i.i.i, align 4, !tbaa !31
  %cmp.not.i.i.i.i = icmp eq i16 %30, 1
  br i1 %cmp.not.i.i.i.i, label %sec_name.exit.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %get_secindex.exit.i
  %sh_addr.i.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %26, i64 %idxprom.i.i.i.i, i32 3
  %31 = load i32, ptr %sh_addr.i.i.i.i, align 4, !tbaa !52
  %conv2.i.i.i.i = zext i32 %31 to i64
  %sub.i.i.i.i = sub nsw i64 %conv.i.i.i, %conv2.i.i.i.i
  br label %sec_name.exit.i

sec_name.exit.i:                                  ; preds = %if.then.i.i.i.i, %get_secindex.exit.i
  %offset.addr.0.i.i.i.i = phi i64 [ %sub.i.i.i.i, %if.then.i.i.i.i ], [ %conv.i.i.i, %get_secindex.exit.i ]
  %sh_offset.i.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %26, i64 %idxprom.i.i.i.i, i32 4
  %32 = load i32, ptr %sh_offset.i.i.i.i, align 4, !tbaa !53
  %idx.ext.i.i.i.i = zext i32 %32 to i64
  %add.ptr.i.i.i.i = getelementptr i8, ptr %29, i64 %idx.ext.i.i.i.i
  %add.ptr4.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i64 %offset.addr.0.i.i.i.i
  %r_addend.i = getelementptr inbounds %struct.Elf32_Rela, ptr %r, i64 0, i32 2
  %33 = load i32, ptr %r_addend.i, align 4, !tbaa !77
  %call5.i = tail call fastcc ptr @find_elf_symbol(ptr noundef nonnull %elf, i32 noundef %33, ptr noundef nonnull %sym) #25
  %tobool.not.i37.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i37.i, label %sym_name.exit43.i, label %if.then.i41.i

if.then.i41.i:                                    ; preds = %sec_name.exit.i
  %strtab.i38.i = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 7
  %34 = load ptr, ptr %strtab.i38.i, align 8, !tbaa !65
  %35 = load i32, ptr %call5.i, align 4, !tbaa !70
  %idx.ext.i39.i = zext i32 %35 to i64
  %add.ptr.i40.i = getelementptr inbounds i8, ptr %34, i64 %idx.ext.i39.i
  br label %sym_name.exit43.i

sym_name.exit43.i:                                ; preds = %if.then.i41.i, %sec_name.exit.i
  %retval.0.i42.i = phi ptr [ %add.ptr.i40.i, %if.then.i41.i ], [ @.str.22, %sec_name.exit.i ]
  %call.i.i = tail call fastcc i32 @match(ptr noundef %add.ptr4.i.i.i.i, ptr noundef nonnull @init_data_sections) #25
  %tobool.not.i44.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i44.i, label %if.end.i45.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %sym_name.exit43.i
  %call1.i.i = tail call fastcc i32 @match(ptr noundef %fromsec, ptr noundef nonnull @data_sections) #25
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i45.i, label %land.lhs.true3.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %call4.i.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %retval.0.i.i, ptr noundef nonnull dereferenceable(8) @.str.150, i64 noundef 7) #29
  %cmp.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %cmp.i.i, label %if.end6, label %if.end.i45.i

if.end.i45.i:                                     ; preds = %land.lhs.true3.i.i, %land.lhs.true.i.i, %sym_name.exit43.i
  %call5.i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr4.i.i.i.i, ptr noundef nonnull dereferenceable(11) @.str.123) #29
  %cmp6.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %cmp6.i.i, label %land.lhs.true7.i.i, label %if.end14.i.i

land.lhs.true7.i.i:                               ; preds = %if.end.i45.i
  %call8.i.i = tail call fastcc i32 @match(ptr noundef %fromsec, ptr noundef nonnull @data_sections) #25
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end14.i.i, label %land.lhs.true10.i.i

land.lhs.true10.i.i:                              ; preds = %land.lhs.true7.i.i
  %call11.i.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %retval.0.i.i, ptr noundef nonnull dereferenceable(13) @.str.151, i64 noundef 12) #29
  %cmp12.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %cmp12.i.i, label %if.end6, label %if.end14.i.i

if.end14.i.i:                                     ; preds = %land.lhs.true10.i.i, %land.lhs.true7.i.i, %if.end.i45.i
  %call15.i.i = tail call fastcc i32 @match(ptr noundef %add.ptr4.i.i.i.i, ptr noundef nonnull @init_exit_sections) #25
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end24.i.i, label %land.lhs.true17.i.i

land.lhs.true17.i.i:                              ; preds = %if.end14.i.i
  %call18.i.i = tail call fastcc i32 @match(ptr noundef %fromsec, ptr noundef nonnull @data_sections) #25
  %tobool19.not.i.i = icmp eq i32 %call18.i.i, 0
  br i1 %tobool19.not.i.i, label %if.end24.i.i, label %land.lhs.true20.i.i

land.lhs.true20.i.i:                              ; preds = %land.lhs.true17.i.i
  %symbol_white_list.i.i = getelementptr inbounds %struct.sectioncheck, ptr %check.036.i, i64 0, i32 4
  %call21.i.i = tail call fastcc i32 @match(ptr noundef %retval.0.i.i, ptr noundef nonnull %symbol_white_list.i.i) #25
  %tobool22.not.i.i = icmp eq i32 %call21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.end24.i.i, label %if.end6

if.end24.i.i:                                     ; preds = %land.lhs.true20.i.i, %land.lhs.true17.i.i, %if.end14.i.i
  %call25.i.i = tail call fastcc i32 @match(ptr noundef %fromsec, ptr noundef nonnull @head_sections) #25
  %tobool26.not.i.i = icmp eq i32 %call25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.end31.i.i, label %land.lhs.true27.i.i

land.lhs.true27.i.i:                              ; preds = %if.end24.i.i
  %call28.i.i = tail call fastcc i32 @match(ptr noundef %add.ptr4.i.i.i.i, ptr noundef nonnull @init_sections) #25
  %tobool29.not.i.i = icmp eq i32 %call28.i.i, 0
  br i1 %tobool29.not.i.i, label %if.end31.i.i, label %if.end6

if.end31.i.i:                                     ; preds = %land.lhs.true27.i.i, %if.end24.i.i
  %call32.i.i = tail call fastcc i32 @match(ptr noundef %retval.0.i42.i, ptr noundef nonnull @linker_symbols) #25
  %tobool33.not.i.i = icmp eq i32 %call32.i.i, 0
  br i1 %tobool33.not.i.i, label %if.end35.i.i, label %if.end6

if.end35.i.i:                                     ; preds = %if.end31.i.i
  %call36.i.i = tail call fastcc i32 @match(ptr noundef %fromsec, ptr noundef nonnull @text_sections) #25
  %tobool37.not.i.i = icmp eq i32 %call36.i.i, 0
  br i1 %tobool37.not.i.i, label %secref_whitelist.exit.i, label %land.lhs.true38.i.i

land.lhs.true38.i.i:                              ; preds = %if.end35.i.i
  %call39.i.i = tail call fastcc i32 @match(ptr noundef %add.ptr4.i.i.i.i, ptr noundef nonnull @init_sections) #25
  %tobool40.not.i.i = icmp eq i32 %call39.i.i, 0
  br i1 %tobool40.not.i.i, label %secref_whitelist.exit.i, label %land.lhs.true41.i.i

land.lhs.true41.i.i:                              ; preds = %land.lhs.true38.i.i
  %call42.i.i = tail call fastcc i32 @match(ptr noundef %retval.0.i.i, ptr noundef nonnull @optim_symbols) #25
  %tobool43.not.i.i = icmp eq i32 %call42.i.i, 0
  br i1 %tobool43.not.i.i, label %secref_whitelist.exit.i, label %if.end6

secref_whitelist.exit.i:                          ; preds = %land.lhs.true41.i.i, %land.lhs.true38.i.i, %if.end35.i.i
  %call46.i.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %retval.0.i.i, ptr noundef nonnull dereferenceable(3) @.str.152, i64 noundef 2) #29
  %cmp47.i.not.i = icmp eq i32 %call46.i.i, 0
  br i1 %cmp47.i.not.i, label %if.end6, label %if.then8.i

if.then8.i:                                       ; preds = %secref_whitelist.exit.i
  %36 = load i32, ptr %r, align 4, !tbaa !74
  %conv.i26 = zext i32 %36 to i64
  br i1 %tobool.not.i.i, label %is_function.exit.i, label %if.then.i49.i

if.then.i49.i:                                    ; preds = %if.then8.i
  %st_info.i.i = getelementptr inbounds %struct.Elf32_Sym, ptr %call.i22, i64 0, i32 3
  %37 = load i8, ptr %st_info.i.i, align 4, !tbaa !73
  %38 = and i8 %37, 15
  %cmp.i48.i = icmp eq i8 %38, 2
  %conv1.i.i = zext i1 %cmp.i48.i to i32
  br label %is_function.exit.i

is_function.exit.i:                               ; preds = %if.then.i49.i, %if.then8.i
  %retval.0.i50.i = phi i32 [ %conv1.i.i, %if.then.i49.i ], [ -1, %if.then8.i ]
  br i1 %tobool.not.i37.i, label %is_function.exit57.i, label %if.then.i55.i

if.then.i55.i:                                    ; preds = %is_function.exit.i
  %st_info.i52.i = getelementptr inbounds %struct.Elf32_Sym, ptr %call5.i, i64 0, i32 3
  %39 = load i8, ptr %st_info.i52.i, align 4, !tbaa !73
  %40 = and i8 %39, 15
  %cmp.i53.i = icmp eq i8 %40, 2
  %conv1.i54.i = zext i1 %cmp.i53.i to i32
  br label %is_function.exit57.i

is_function.exit57.i:                             ; preds = %if.then.i55.i, %is_function.exit.i
  %retval.0.i56.i = phi i32 [ %conv1.i54.i, %if.then.i55.i ], [ -1, %is_function.exit.i ]
  %41 = load i32, ptr @sec_mismatch_count, align 4, !tbaa !21
  %inc.i.i = add nsw i32 %41, 1
  store i32 %inc.i.i, ptr @sec_mismatch_count, align 4, !tbaa !21
  switch i32 %retval.0.i50.i, label %sw.default.i.i.i [
    i32 0, label %get_pretty_name.exit.i.i
    i32 1, label %sw.bb1.i.i.i
  ]

sw.bb1.i.i.i:                                     ; preds = %is_function.exit57.i
  br label %get_pretty_name.exit.i.i

sw.default.i.i.i:                                 ; preds = %is_function.exit57.i
  br label %get_pretty_name.exit.i.i

get_pretty_name.exit.i.i:                         ; preds = %sw.default.i.i.i, %sw.bb1.i.i.i, %is_function.exit57.i
  %.str.146.sink.i.i.i = phi ptr [ @.str.146, %sw.default.i.i.i ], [ @.str.144, %sw.bb1.i.i.i ], [ @.str.143, %is_function.exit57.i ]
  %.str.17.sink.i.i.i = phi ptr [ @.str.17, %sw.default.i.i.i ], [ @.str.145, %sw.bb1.i.i.i ], [ @.str.17, %is_function.exit57.i ]
  switch i32 %retval.0.i56.i, label %sw.default.i97.i.i [
    i32 0, label %get_pretty_name.exit100.i.i
    i32 1, label %sw.bb1.i96.i.i
  ]

sw.bb1.i96.i.i:                                   ; preds = %get_pretty_name.exit.i.i
  br label %get_pretty_name.exit100.i.i

sw.default.i97.i.i:                               ; preds = %get_pretty_name.exit.i.i
  br label %get_pretty_name.exit100.i.i

get_pretty_name.exit100.i.i:                      ; preds = %sw.default.i97.i.i, %sw.bb1.i96.i.i, %get_pretty_name.exit.i.i
  %.str.146.sink.i98.i.i = phi ptr [ @.str.146, %sw.default.i97.i.i ], [ @.str.144, %sw.bb1.i96.i.i ], [ @.str.143, %get_pretty_name.exit.i.i ]
  %.str.17.sink.i99.i.i = phi ptr [ @.str.17, %sw.default.i97.i.i ], [ @.str.145, %sw.bb1.i96.i.i ], [ @.str.17, %get_pretty_name.exit.i.i ]
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 0, ptr noundef nonnull @.str.163, ptr noundef %modname, ptr noundef %fromsec, i64 noundef %conv.i26, ptr noundef nonnull %.str.146.sink.i.i.i, ptr noundef %retval.0.i.i, ptr noundef nonnull %.str.17.sink.i.i.i, ptr noundef nonnull %.str.146.sink.i98.i.i, ptr noundef %add.ptr4.i.i.i.i, ptr noundef %retval.0.i42.i, ptr noundef nonnull %.str.17.sink.i99.i.i) #25
  %mismatch1.i.i = getelementptr inbounds %struct.sectioncheck, ptr %check.036.i, i64 0, i32 3
  %42 = load i32, ptr %mismatch1.i.i, align 8, !tbaa !80
  switch i32 %42, label %report_sec_mismatch.exit.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb4.i.i
    i32 2, label %sw.bb7.i.i
    i32 3, label %sw.bb10.i.i
    i32 4, label %sw.bb15.i.i
    i32 5, label %sw.bb15.i.i
    i32 6, label %sw.bb19.i.i
    i32 7, label %sw.bb23.i.i
    i32 8, label %sw.bb27.i.i
    i32 9, label %sw.bb30.i.i
  ]

sw.bb.i.i:                                        ; preds = %get_pretty_name.exit100.i.i
  %call.i58.i = tail call fastcc ptr @sec2annotation(ptr noundef %fromsec) #25
  %call2.i.i = tail call fastcc ptr @sec2annotation(ptr noundef %add.ptr4.i.i.i.i) #25
  %43 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call3.i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef nonnull @.str.164, ptr noundef %call.i58.i, ptr noundef %retval.0.i.i, ptr noundef nonnull %.str.146.sink.i98.i.i, ptr noundef %call2.i.i, ptr noundef %retval.0.i42.i, ptr noundef nonnull %.str.17.sink.i99.i.i, ptr noundef %retval.0.i.i, ptr noundef %call2.i.i, ptr noundef %retval.0.i42.i) #33
  tail call void @free(ptr noundef %call.i58.i) #25
  tail call void @free(ptr noundef %call2.i.i) #25
  br label %report_sec_mismatch.exit.i

sw.bb4.i.i:                                       ; preds = %get_pretty_name.exit100.i.i
  %call5.i59.i = tail call fastcc ptr @sec2annotation(ptr noundef %add.ptr4.i.i.i.i) #25
  %44 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call6.i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @.str.165, ptr noundef %retval.0.i.i, ptr noundef nonnull %.str.146.sink.i98.i.i, ptr noundef %call5.i59.i, ptr noundef %retval.0.i42.i, ptr noundef nonnull %.str.17.sink.i99.i.i) #33
  %symbol_white_list.i60.i = getelementptr inbounds %struct.sectioncheck, ptr %check.036.i, i64 0, i32 4
  %45 = load ptr, ptr %symbol_white_list.i60.i, align 8, !tbaa !5
  %tobool.not7.i.i.i = icmp eq ptr %45, null
  br i1 %tobool.not7.i.i.i, label %print_section_list.exit.i.i, label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end.i.i.i, %sw.bb4.i.i
  %46 = phi ptr [ %.pre.i.i.i, %if.end.i.i.i ], [ %45, %sw.bb4.i.i ]
  %s.08.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %if.end.i.i.i ], [ %symbol_white_list.i60.i, %sw.bb4.i.i ]
  %47 = load ptr, ptr @stderr, align 8, !tbaa !5
  %fputs.i.i.i = tail call i32 @fputs(ptr nonnull %46, ptr %47) #33
  %incdec.ptr.i.i.i = getelementptr inbounds ptr, ptr %s.08.i.i.i, i64 1
  %48 = load ptr, ptr %incdec.ptr.i.i.i, align 8, !tbaa !5
  %tobool1.not.i.i.i = icmp eq ptr %48, null
  br i1 %tobool1.not.i.i.i, label %print_section_list.exit.i.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i.i
  %49 = load ptr, ptr @stderr, align 8, !tbaa !5
  %50 = tail call i64 @fwrite(ptr nonnull @.str.182, i64 2, i64 1, ptr %49) #33
  %.pre.i.i.i = load ptr, ptr %incdec.ptr.i.i.i, align 8, !tbaa !5
  %tobool.not.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %tobool.not.i.i.i, label %print_section_list.exit.i.i, label %while.body.i.i.i

print_section_list.exit.i.i:                      ; preds = %if.end.i.i.i, %while.body.i.i.i, %sw.bb4.i.i
  %51 = load ptr, ptr @stderr, align 8, !tbaa !5
  %fputc.i.i.i = tail call i32 @fputc(i32 10, ptr %51) #25
  tail call void @free(ptr noundef %call5.i59.i) #25
  br label %report_sec_mismatch.exit.i

sw.bb7.i.i:                                       ; preds = %get_pretty_name.exit100.i.i
  %call8.i61.i = tail call fastcc ptr @sec2annotation(ptr noundef %add.ptr4.i.i.i.i) #25
  %52 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call9.i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef nonnull @.str.166, ptr noundef %retval.0.i.i, ptr noundef nonnull %.str.146.sink.i98.i.i, ptr noundef nonnull %.str.146.sink.i98.i.i, ptr noundef %retval.0.i42.i, ptr noundef nonnull %.str.17.sink.i99.i.i, ptr noundef %call8.i61.i, ptr noundef %retval.0.i42.i) #33
  tail call void @free(ptr noundef %call8.i61.i) #25
  br label %report_sec_mismatch.exit.i

sw.bb10.i.i:                                      ; preds = %get_pretty_name.exit100.i.i
  %call11.i62.i = tail call fastcc ptr @sec2annotation(ptr noundef %add.ptr4.i.i.i.i) #25
  %53 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call12.i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef nonnull @.str.167, ptr noundef %retval.0.i.i, ptr noundef nonnull %.str.146.sink.i98.i.i, ptr noundef %call11.i62.i, ptr noundef %retval.0.i42.i, ptr noundef nonnull %.str.17.sink.i99.i.i) #33
  %symbol_white_list13.i.i = getelementptr inbounds %struct.sectioncheck, ptr %check.036.i, i64 0, i32 4
  %54 = load ptr, ptr %symbol_white_list13.i.i, align 8, !tbaa !5
  %tobool.not7.i101.i.i = icmp eq ptr %54, null
  br i1 %tobool.not7.i101.i.i, label %print_section_list.exit111.i.i, label %while.body.i106.i.i

while.body.i106.i.i:                              ; preds = %if.end.i109.i.i, %sw.bb10.i.i
  %55 = phi ptr [ %.pre.i107.i.i, %if.end.i109.i.i ], [ %54, %sw.bb10.i.i ]
  %s.08.i102.i.i = phi ptr [ %incdec.ptr.i104.i.i, %if.end.i109.i.i ], [ %symbol_white_list13.i.i, %sw.bb10.i.i ]
  %56 = load ptr, ptr @stderr, align 8, !tbaa !5
  %fputs.i103.i.i = tail call i32 @fputs(ptr nonnull %55, ptr %56) #33
  %incdec.ptr.i104.i.i = getelementptr inbounds ptr, ptr %s.08.i102.i.i, i64 1
  %57 = load ptr, ptr %incdec.ptr.i104.i.i, align 8, !tbaa !5
  %tobool1.not.i105.i.i = icmp eq ptr %57, null
  br i1 %tobool1.not.i105.i.i, label %print_section_list.exit111.i.i, label %if.end.i109.i.i

if.end.i109.i.i:                                  ; preds = %while.body.i106.i.i
  %58 = load ptr, ptr @stderr, align 8, !tbaa !5
  %59 = tail call i64 @fwrite(ptr nonnull @.str.182, i64 2, i64 1, ptr %58) #33
  %.pre.i107.i.i = load ptr, ptr %incdec.ptr.i104.i.i, align 8, !tbaa !5
  %tobool.not.i108.i.i = icmp eq ptr %.pre.i107.i.i, null
  br i1 %tobool.not.i108.i.i, label %print_section_list.exit111.i.i, label %while.body.i106.i.i

print_section_list.exit111.i.i:                   ; preds = %if.end.i109.i.i, %while.body.i106.i.i, %sw.bb10.i.i
  %60 = load ptr, ptr @stderr, align 8, !tbaa !5
  %fputc.i110.i.i = tail call i32 @fputc(i32 10, ptr %60) #25
  tail call void @free(ptr noundef %call11.i62.i) #25
  br label %report_sec_mismatch.exit.i

sw.bb15.i.i:                                      ; preds = %get_pretty_name.exit100.i.i, %get_pretty_name.exit100.i.i
  %call16.i.i = tail call fastcc ptr @sec2annotation(ptr noundef %fromsec) #25
  %call17.i.i = tail call fastcc ptr @sec2annotation(ptr noundef %add.ptr4.i.i.i.i) #25
  %61 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call18.i63.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.168, ptr noundef nonnull %.str.146.sink.i.i.i, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i, ptr noundef nonnull %.str.17.sink.i.i.i, ptr noundef nonnull %.str.146.sink.i98.i.i, ptr noundef %call17.i.i, ptr noundef %retval.0.i42.i, ptr noundef nonnull %.str.17.sink.i99.i.i, ptr noundef %retval.0.i42.i, ptr noundef %retval.0.i.i, ptr noundef %retval.0.i42.i) #33
  tail call void @free(ptr noundef %call16.i.i) #25
  tail call void @free(ptr noundef %call17.i.i) #25
  br label %report_sec_mismatch.exit.i

sw.bb19.i.i:                                      ; preds = %get_pretty_name.exit100.i.i
  %call20.i.i = tail call fastcc ptr @sec2annotation(ptr noundef %fromsec) #25
  %call21.i64.i = tail call fastcc ptr @sec2annotation(ptr noundef %add.ptr4.i.i.i.i) #25
  %62 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call22.i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef nonnull @.str.169, ptr noundef nonnull %.str.146.sink.i.i.i, ptr noundef %call20.i.i, ptr noundef %retval.0.i.i, ptr noundef nonnull %.str.17.sink.i.i.i, ptr noundef nonnull %.str.146.sink.i98.i.i, ptr noundef %call21.i64.i, ptr noundef %retval.0.i42.i, ptr noundef nonnull %.str.17.sink.i99.i.i, ptr noundef %call21.i64.i, ptr noundef %retval.0.i42.i, ptr noundef nonnull %.str.17.sink.i99.i.i) #33
  tail call void @free(ptr noundef %call20.i.i) #25
  tail call void @free(ptr noundef %call21.i64.i) #25
  br label %report_sec_mismatch.exit.i

sw.bb23.i.i:                                      ; preds = %get_pretty_name.exit100.i.i
  %call24.i.i = tail call fastcc ptr @sec2annotation(ptr noundef %fromsec) #25
  %call25.i65.i = tail call fastcc ptr @sec2annotation(ptr noundef %add.ptr4.i.i.i.i) #25
  %63 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call26.i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef nonnull @.str.170, ptr noundef nonnull %.str.146.sink.i.i.i, ptr noundef %call24.i.i, ptr noundef %retval.0.i.i, ptr noundef nonnull %.str.17.sink.i.i.i, ptr noundef nonnull %.str.146.sink.i98.i.i, ptr noundef %call25.i65.i, ptr noundef %retval.0.i42.i, ptr noundef nonnull %.str.17.sink.i99.i.i, ptr noundef %call25.i65.i, ptr noundef %retval.0.i42.i, ptr noundef nonnull %.str.17.sink.i99.i.i) #33
  tail call void @free(ptr noundef %call24.i.i) #25
  tail call void @free(ptr noundef %call25.i65.i) #25
  br label %report_sec_mismatch.exit.i

sw.bb27.i.i:                                      ; preds = %get_pretty_name.exit100.i.i
  %call28.i66.i = tail call fastcc ptr @sec2annotation(ptr noundef %add.ptr4.i.i.i.i) #25
  %64 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call29.i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.171, ptr noundef %retval.0.i42.i, ptr noundef %call28.i66.i, ptr noundef %call28.i66.i, ptr noundef %retval.0.i42.i) #33
  tail call void @free(ptr noundef %call28.i66.i) #25
  br label %report_sec_mismatch.exit.i

sw.bb30.i.i:                                      ; preds = %get_pretty_name.exit100.i.i
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.172) #25
  br label %report_sec_mismatch.exit.i

report_sec_mismatch.exit.i:                       ; preds = %sw.bb30.i.i, %sw.bb27.i.i, %sw.bb23.i.i, %sw.bb19.i.i, %sw.bb15.i.i, %print_section_list.exit111.i.i, %sw.bb7.i.i, %print_section_list.exit.i.i, %sw.bb.i.i, %get_pretty_name.exit100.i.i
  %65 = load ptr, ptr @stderr, align 8, !tbaa !5
  %fputc.i.i = tail call i32 @fputc(i32 10, ptr %65) #25
  br label %if.end6

if.end6:                                          ; preds = %report_sec_mismatch.exit.i, %secref_whitelist.exit.i, %land.lhs.true41.i.i, %if.end31.i.i, %land.lhs.true27.i.i, %land.lhs.true20.i.i, %land.lhs.true10.i.i, %land.lhs.true3.i.i, %sym_name.exit.i, %if.then4, %if.end22.i, %sec_name.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extable_mismatch_handler(ptr noundef %modname, ptr nocapture noundef readonly %elf, ptr nocapture noundef readonly %mismatch, ptr nocapture noundef readonly %r, ptr noundef %sym, ptr noundef %fromsec) #0 {
entry:
  %st_shndx.i = getelementptr inbounds %struct.Elf32_Sym, ptr %sym, i64 0, i32 5
  %0 = load i16, ptr %st_shndx.i, align 2, !tbaa !68
  %conv.i = zext i16 %0 to i32
  %1 = add i16 %0, 1
  %2 = icmp ult i16 %1, -255
  br i1 %2, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %sub.i = or i32 %conv.i, -65536
  br label %get_secindex.exit

if.end.i:                                         ; preds = %entry
  %cmp.not.i = icmp eq i16 %0, -1
  br i1 %cmp.not.i, label %if.end9.i, label %get_secindex.exit

if.end9.i:                                        ; preds = %if.end.i
  %symtab_shndx_start.i = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 12
  %3 = load ptr, ptr %symtab_shndx_start.i, align 8, !tbaa !66
  %symtab_start.i = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 3
  %4 = load ptr, ptr %symtab_start.i, align 8, !tbaa !63
  %sub.ptr.lhs.cast.i = ptrtoint ptr %sym to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %4 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub.i, 4
  %arrayidx.i = getelementptr inbounds i32, ptr %3, i64 %sub.ptr.div.i
  %5 = load i32, ptr %arrayidx.i, align 4, !tbaa !21
  br label %get_secindex.exit

get_secindex.exit:                                ; preds = %if.end9.i, %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %5, %if.end9.i ], [ %conv.i, %if.end.i ]
  %sechdrs.i = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 2
  %6 = load ptr, ptr %sechdrs.i, align 8, !tbaa !45
  %idxprom.i = sext i32 %retval.0.i to i64
  %arrayidx.i35 = getelementptr inbounds %struct.Elf32_Shdr, ptr %6, i64 %idxprom.i
  %secindex_strings.i.i = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 11
  %7 = load i32, ptr %secindex_strings.i.i, align 8, !tbaa !47
  %8 = load i32, ptr %arrayidx.i35, align 4, !tbaa !48
  %conv.i.i = zext i32 %8 to i64
  %idxprom.i.i.i = zext i32 %7 to i64
  %hdr.i.i.i = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 1
  %9 = load ptr, ptr %hdr.i.i.i, align 8, !tbaa !27
  %e_type.i.i.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %9, i64 0, i32 1
  %10 = load i16, ptr %e_type.i.i.i, align 4, !tbaa !31
  %cmp.not.i.i.i = icmp eq i16 %10, 1
  br i1 %cmp.not.i.i.i, label %sec_name.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %get_secindex.exit
  %sh_addr.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %6, i64 %idxprom.i.i.i, i32 3
  %11 = load i32, ptr %sh_addr.i.i.i, align 4, !tbaa !52
  %conv2.i.i.i = zext i32 %11 to i64
  %sub.i.i.i = sub nsw i64 %conv.i.i, %conv2.i.i.i
  br label %sec_name.exit

sec_name.exit:                                    ; preds = %if.then.i.i.i, %get_secindex.exit
  %offset.addr.0.i.i.i = phi i64 [ %sub.i.i.i, %if.then.i.i.i ], [ %conv.i.i, %get_secindex.exit ]
  %sh_offset.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %6, i64 %idxprom.i.i.i, i32 4
  %12 = load i32, ptr %sh_offset.i.i.i, align 4, !tbaa !53
  %idx.ext.i.i.i = zext i32 %12 to i64
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i64 %idx.ext.i.i.i
  %add.ptr4.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i64 %offset.addr.0.i.i.i
  %13 = load i32, ptr @sec_mismatch_count, align 4, !tbaa !21
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr @sec_mismatch_count, align 4, !tbaa !21
  %14 = load i32, ptr %r, align 4, !tbaa !74
  %call.i = tail call fastcc ptr @find_elf_symbol2(ptr noundef nonnull %elf, i32 noundef %14, ptr noundef %fromsec) #25
  %tobool.not.i.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i.i, label %sym_name.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sec_name.exit
  %strtab.i.i = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 7
  %15 = load ptr, ptr %strtab.i.i, align 8, !tbaa !65
  %16 = load i32, ptr %call.i, align 4, !tbaa !70
  %idx.ext.i.i = zext i32 %16 to i64
  %add.ptr.i.i = getelementptr inbounds i8, ptr %15, i64 %idx.ext.i.i
  br label %sym_name.exit.i

sym_name.exit.i:                                  ; preds = %if.then.i.i, %sec_name.exit
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ @.str.22, %sec_name.exit ]
  %r_addend.i = getelementptr inbounds %struct.Elf32_Rela, ptr %r, i64 0, i32 2
  %17 = load i32, ptr %r_addend.i, align 4, !tbaa !77
  %call2.i = tail call fastcc ptr @find_elf_symbol(ptr noundef nonnull %elf, i32 noundef %17, ptr noundef nonnull %sym) #25
  %tobool.not.i31.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i31.i, label %sym_name.exit37.i, label %if.then.i35.i

if.then.i35.i:                                    ; preds = %sym_name.exit.i
  %strtab.i32.i = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 7
  %18 = load ptr, ptr %strtab.i32.i, align 8, !tbaa !65
  %19 = load i32, ptr %call2.i, align 4, !tbaa !70
  %idx.ext.i33.i = zext i32 %19 to i64
  %add.ptr.i34.i = getelementptr inbounds i8, ptr %18, i64 %idx.ext.i33.i
  br label %sym_name.exit37.i

sym_name.exit37.i:                                ; preds = %if.then.i35.i, %sym_name.exit.i
  %retval.0.i36.i = phi ptr [ %add.ptr.i34.i, %if.then.i35.i ], [ @.str.22, %sym_name.exit.i ]
  br i1 %tobool.not.i.i, label %get_pretty_name.exit.i, label %is_function.exit.i

is_function.exit.i:                               ; preds = %sym_name.exit37.i
  %st_info.i.i = getelementptr inbounds %struct.Elf32_Sym, ptr %call.i, i64 0, i32 3
  %20 = load i8, ptr %st_info.i.i, align 4, !tbaa !73
  %21 = and i8 %20, 15
  %cmp.i.i = icmp eq i8 %21, 2
  %spec.select.i = select i1 %cmp.i.i, ptr @.str.144, ptr @.str.143
  %spec.select61.i = select i1 %cmp.i.i, ptr @.str.145, ptr @.str.17
  br label %get_pretty_name.exit.i

get_pretty_name.exit.i:                           ; preds = %is_function.exit.i, %sym_name.exit37.i
  %.str.146.sink.i.i = phi ptr [ %spec.select.i, %is_function.exit.i ], [ @.str.146, %sym_name.exit37.i ]
  %.str.17.sink.i.i = phi ptr [ %spec.select61.i, %is_function.exit.i ], [ @.str.17, %sym_name.exit37.i ]
  br i1 %tobool.not.i31.i, label %get_pretty_name.exit52.i, label %is_function.exit47.i

is_function.exit47.i:                             ; preds = %get_pretty_name.exit.i
  %st_info.i42.i = getelementptr inbounds %struct.Elf32_Sym, ptr %call2.i, i64 0, i32 3
  %22 = load i8, ptr %st_info.i42.i, align 4, !tbaa !73
  %23 = and i8 %22, 15
  %cmp.i43.i = icmp eq i8 %23, 2
  %spec.select64.i = select i1 %cmp.i43.i, ptr @.str.144, ptr @.str.143
  %spec.select65.i = select i1 %cmp.i43.i, ptr @.str.145, ptr @.str.17
  br label %get_pretty_name.exit52.i

get_pretty_name.exit52.i:                         ; preds = %is_function.exit47.i, %get_pretty_name.exit.i
  %.str.146.sink.i50.i = phi ptr [ %spec.select64.i, %is_function.exit47.i ], [ @.str.146, %get_pretty_name.exit.i ]
  %.str.17.sink.i51.i = phi ptr [ %spec.select65.i, %is_function.exit47.i ], [ @.str.17, %get_pretty_name.exit.i ]
  %conv.i36 = zext i32 %14 to i64
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 0, ptr noundef nonnull @.str.140, ptr noundef %modname, ptr noundef %fromsec, i64 noundef %conv.i36, ptr noundef nonnull %.str.146.sink.i.i, ptr noundef %retval.0.i.i, ptr noundef nonnull %.str.17.sink.i.i, ptr noundef nonnull %.str.146.sink.i50.i, ptr noundef %add.ptr4.i.i.i, ptr noundef %retval.0.i36.i, ptr noundef nonnull %.str.17.sink.i51.i) #25
  %bad_tosec.i = getelementptr inbounds %struct.sectioncheck, ptr %mismatch, i64 0, i32 1
  %call7.i = tail call fastcc i32 @match(ptr noundef %add.ptr4.i.i.i, ptr noundef nonnull %bad_tosec.i) #25
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %report_extable_warnings.exit

land.lhs.true.i:                                  ; preds = %get_pretty_name.exit52.i
  %24 = load i16, ptr %st_shndx.i, align 2, !tbaa !68
  %conv.i.i37 = zext i16 %24 to i32
  %25 = add i16 %24, 1
  %26 = icmp ult i16 %25, -255
  br i1 %26, label %if.end.i.i, label %if.then.i53.i

if.then.i53.i:                                    ; preds = %land.lhs.true.i
  %sub.i.i = or i32 %conv.i.i37, -65536
  br label %get_secindex.exit.i

if.end.i.i:                                       ; preds = %land.lhs.true.i
  %cmp.not.i.i = icmp eq i16 %24, -1
  br i1 %cmp.not.i.i, label %if.end9.i.i, label %get_secindex.exit.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  %symtab_shndx_start.i.i = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 12
  %27 = load ptr, ptr %symtab_shndx_start.i.i, align 8, !tbaa !66
  %symtab_start.i.i = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 3
  %28 = load ptr, ptr %symtab_start.i.i, align 8, !tbaa !63
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %sym to i64
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %28 to i64
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = ashr exact i64 %sub.ptr.sub.i.i, 4
  %arrayidx.i.i = getelementptr inbounds i32, ptr %27, i64 %sub.ptr.div.i.i
  %29 = load i32, ptr %arrayidx.i.i, align 4, !tbaa !21
  br label %get_secindex.exit.i

get_secindex.exit.i:                              ; preds = %if.end9.i.i, %if.end.i.i, %if.then.i53.i
  %retval.0.i54.i = phi i32 [ %sub.i.i, %if.then.i53.i ], [ %29, %if.end9.i.i ], [ %conv.i.i37, %if.end.i.i ]
  %num_sections.i.i = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 10
  %30 = load i32, ptr %num_sections.i.i, align 4, !tbaa !46
  %cmp.i55.i = icmp ult i32 %30, %retval.0.i54.i
  br i1 %cmp.i55.i, label %if.then.i56.i, label %is_executable_section.exit.i

if.then.i56.i:                                    ; preds = %get_secindex.exit.i
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.147) #25
  br label %is_executable_section.exit.i

is_executable_section.exit.i:                     ; preds = %if.then.i56.i, %get_secindex.exit.i
  %31 = load ptr, ptr %sechdrs.i, align 8, !tbaa !45
  %idxprom.i.i = zext i32 %retval.0.i54.i to i64
  %sh_flags.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %31, i64 %idxprom.i.i, i32 2
  %32 = load i32, ptr %sh_flags.i.i, align 4, !tbaa !51
  %33 = and i32 %32, 4
  %tobool10.not.i = icmp eq i32 %33, 0
  br i1 %tobool10.not.i, label %report_extable_warnings.exit, label %if.then.i38

if.then.i38:                                      ; preds = %is_executable_section.exit.i
  %34 = load ptr, ptr @stderr, align 8, !tbaa !5
  %35 = load i32, ptr %r, align 4, !tbaa !74
  %conv12.i = zext i32 %35 to i64
  %call13.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.141, ptr noundef %fromsec, i64 noundef %conv12.i, ptr noundef %add.ptr4.i.i.i, ptr noundef %add.ptr4.i.i.i, ptr noundef %add.ptr4.i.i.i) #33
  br label %report_extable_warnings.exit

report_extable_warnings.exit:                     ; preds = %if.then.i38, %is_executable_section.exit.i, %get_pretty_name.exit52.i
  %call2 = tail call fastcc i32 @match(ptr noundef %add.ptr4.i.i.i, ptr noundef nonnull %bad_tosec.i)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %report_extable_warnings.exit
  %36 = load i32, ptr %r, align 4, !tbaa !74
  %conv = zext i32 %36 to i64
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.137, ptr noundef %fromsec, i64 noundef %conv, ptr noundef %add.ptr4.i.i.i, ptr noundef %modname)
  br label %if.end15

if.else:                                          ; preds = %report_extable_warnings.exit
  %37 = load i16, ptr %st_shndx.i, align 2, !tbaa !68
  %conv.i41 = zext i16 %37 to i32
  %38 = add i16 %37, 1
  %39 = icmp ult i16 %38, -255
  br i1 %39, label %if.end.i45, label %if.then.i43

if.then.i43:                                      ; preds = %if.else
  %sub.i42 = or i32 %conv.i41, -65536
  br label %get_secindex.exit55

if.end.i45:                                       ; preds = %if.else
  %cmp.not.i44 = icmp eq i16 %37, -1
  br i1 %cmp.not.i44, label %if.end9.i53, label %get_secindex.exit55

if.end9.i53:                                      ; preds = %if.end.i45
  %symtab_shndx_start.i46 = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 12
  %40 = load ptr, ptr %symtab_shndx_start.i46, align 8, !tbaa !66
  %symtab_start.i47 = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 3
  %41 = load ptr, ptr %symtab_start.i47, align 8, !tbaa !63
  %sub.ptr.lhs.cast.i48 = ptrtoint ptr %sym to i64
  %sub.ptr.rhs.cast.i49 = ptrtoint ptr %41 to i64
  %sub.ptr.sub.i50 = sub i64 %sub.ptr.lhs.cast.i48, %sub.ptr.rhs.cast.i49
  %sub.ptr.div.i51 = ashr exact i64 %sub.ptr.sub.i50, 4
  %arrayidx.i52 = getelementptr inbounds i32, ptr %40, i64 %sub.ptr.div.i51
  %42 = load i32, ptr %arrayidx.i52, align 4, !tbaa !21
  br label %get_secindex.exit55

get_secindex.exit55:                              ; preds = %if.end9.i53, %if.end.i45, %if.then.i43
  %retval.0.i54 = phi i32 [ %sub.i42, %if.then.i43 ], [ %42, %if.end9.i53 ], [ %conv.i41, %if.end.i45 ]
  %num_sections.i = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 10
  %43 = load i32, ptr %num_sections.i, align 4, !tbaa !46
  %cmp.i = icmp ult i32 %43, %retval.0.i54
  br i1 %cmp.i, label %if.then.i56, label %is_executable_section.exit

if.then.i56:                                      ; preds = %get_secindex.exit55
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.147) #25
  br label %is_executable_section.exit

is_executable_section.exit:                       ; preds = %if.then.i56, %get_secindex.exit55
  %44 = load ptr, ptr %sechdrs.i, align 8, !tbaa !45
  %idxprom.i58 = zext i32 %retval.0.i54 to i64
  %sh_flags.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %44, i64 %idxprom.i58, i32 2
  %45 = load i32, ptr %sh_flags.i, align 4, !tbaa !51
  %46 = and i32 %45, 4
  %tobool5.not = icmp eq i32 %46, 0
  br i1 %tobool5.not, label %if.then6, label %if.end15

if.then6:                                         ; preds = %is_executable_section.exit
  %47 = load i32, ptr %r, align 4, !tbaa !74
  %tobool.i = icmp ne i32 %47, 0
  %48 = load i32, ptr @extable_entry_size, align 4
  %cmp.i60 = icmp eq i32 %48, 0
  %or.cond.i = select i1 %tobool.i, i1 %cmp.i60, i1 false
  br i1 %or.cond.i, label %if.then.i61, label %if.end.i62

if.then.i61:                                      ; preds = %if.then6
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.148) #25
  %.pr.i = load i32, ptr %r, align 4, !tbaa !74
  br label %if.end.i62

if.end.i62:                                       ; preds = %if.then.i61, %if.then6
  %49 = phi i32 [ %.pr.i, %if.then.i61 ], [ %47, %if.then6 ]
  %cmp2.i = icmp eq i32 %49, 0
  br i1 %cmp2.i, label %if.then8, label %is_extable_fault_address.exit

is_extable_fault_address.exit:                    ; preds = %if.end.i62
  %50 = load i32, ptr @extable_entry_size, align 4, !tbaa !21
  %rem.i = urem i32 %49, %50
  %cmp4.i = icmp eq i32 %rem.i, 0
  br i1 %cmp4.i, label %if.then8, label %if.else11

if.then8:                                         ; preds = %is_extable_fault_address.exit, %if.end.i62
  %conv10 = zext i32 %49 to i64
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.138, ptr noundef %fromsec, i64 noundef %conv10, ptr noundef %add.ptr4.i.i.i)
  br label %if.end15

if.else11:                                        ; preds = %is_extable_fault_address.exit
  %conv13 = zext i32 %49 to i64
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.139, ptr noundef %fromsec, i64 noundef %conv13, ptr noundef %add.ptr4.i.i.i)
  br label %if.end15

if.end15:                                         ; preds = %if.else11, %if.then8, %is_executable_section.exit, %if.then
  ret void
}

; Function Attrs: nofree nounwind readonly uwtable
define internal fastcc ptr @find_elf_symbol2(ptr nocapture noundef readonly %elf, i32 noundef %addr, ptr nocapture noundef readonly %sec) unnamed_addr #20 {
entry:
  %symtab_start = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 3
  %0 = load ptr, ptr %symtab_start, align 8, !tbaa !63
  %symtab_stop = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 4
  %1 = load ptr, ptr %symtab_stop, align 8, !tbaa !64
  %cmp59 = icmp ult ptr %0, %1
  br i1 %cmp59, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %symtab_shndx_start.i = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 12
  %sub.ptr.rhs.cast.i = ptrtoint ptr %0 to i64
  %sechdrs.i = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 2
  %secindex_strings.i.i = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 11
  %hdr.i.i.i = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 1
  %strtab.i = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 7
  br label %for.body

for.body:                                         ; preds = %cleanup, %for.body.lr.ph
  %sym.064 = phi ptr [ %0, %for.body.lr.ph ], [ %incdec.ptr, %cleanup ]
  %distance.062 = phi i32 [ -1, %for.body.lr.ph ], [ %distance.2, %cleanup ]
  %near.060 = phi ptr [ null, %for.body.lr.ph ], [ %near.2, %cleanup ]
  %st_shndx = getelementptr inbounds %struct.Elf32_Sym, ptr %sym.064, i64 0, i32 5
  %2 = load i16, ptr %st_shndx, align 2, !tbaa !68
  %3 = add i16 %2, 1
  %4 = icmp ult i16 %3, -255
  br i1 %4, label %if.end.i, label %cleanup

if.end.i:                                         ; preds = %for.body
  %conv = zext i16 %2 to i32
  %cmp.not.i = icmp eq i16 %2, -1
  br i1 %cmp.not.i, label %if.end9.i, label %get_secindex.exit

if.end9.i:                                        ; preds = %if.end.i
  %5 = load ptr, ptr %symtab_shndx_start.i, align 8, !tbaa !66
  %sub.ptr.lhs.cast.i = ptrtoint ptr %sym.064 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub.i, 4
  %arrayidx.i = getelementptr inbounds i32, ptr %5, i64 %sub.ptr.div.i
  %6 = load i32, ptr %arrayidx.i, align 4, !tbaa !21
  br label %get_secindex.exit

get_secindex.exit:                                ; preds = %if.end9.i, %if.end.i
  %retval.0.i = phi i32 [ %6, %if.end9.i ], [ %conv, %if.end.i ]
  %7 = load ptr, ptr %sechdrs.i, align 8, !tbaa !45
  %idxprom.i = sext i32 %retval.0.i to i64
  %arrayidx.i50 = getelementptr inbounds %struct.Elf32_Shdr, ptr %7, i64 %idxprom.i
  %8 = load i32, ptr %secindex_strings.i.i, align 8, !tbaa !47
  %9 = load i32, ptr %arrayidx.i50, align 4, !tbaa !48
  %conv.i.i = zext i32 %9 to i64
  %idxprom.i.i.i = zext i32 %8 to i64
  %10 = load ptr, ptr %hdr.i.i.i, align 8, !tbaa !27
  %e_type.i.i.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %10, i64 0, i32 1
  %11 = load i16, ptr %e_type.i.i.i, align 4, !tbaa !31
  %cmp.not.i.i.i = icmp eq i16 %11, 1
  br i1 %cmp.not.i.i.i, label %sec_name.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %get_secindex.exit
  %sh_addr.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %7, i64 %idxprom.i.i.i, i32 3
  %12 = load i32, ptr %sh_addr.i.i.i, align 4, !tbaa !52
  %conv2.i.i.i = zext i32 %12 to i64
  %sub.i.i.i = sub nsw i64 %conv.i.i, %conv2.i.i.i
  br label %sec_name.exit

sec_name.exit:                                    ; preds = %if.then.i.i.i, %get_secindex.exit
  %offset.addr.0.i.i.i = phi i64 [ %sub.i.i.i, %if.then.i.i.i ], [ %conv.i.i, %get_secindex.exit ]
  %sh_offset.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %7, i64 %idxprom.i.i.i, i32 4
  %13 = load i32, ptr %sh_offset.i.i.i, align 4, !tbaa !53
  %idx.ext.i.i.i = zext i32 %13 to i64
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i64 %idx.ext.i.i.i
  %add.ptr4.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i64 %offset.addr.0.i.i.i
  %call3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr4.i.i.i, ptr noundef nonnull dereferenceable(1) %sec) #29
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %sec_name.exit
  %14 = load ptr, ptr %strtab.i, align 8, !tbaa !65
  %15 = load i32, ptr %sym.064, align 4, !tbaa !70
  %idx.ext.i = zext i32 %15 to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %14, i64 %idx.ext.i
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %cleanup, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end7
  %char0.i = load i8, ptr %add.ptr.i, align 1
  switch i8 %char0.i, label %if.end11 [
    i8 0, label %cleanup
    i8 36, label %land.lhs.true.i.i
  ]

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i
  %arrayidx2.i.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 1
  %16 = load i8, ptr %arrayidx2.i.i, align 1, !tbaa !14
  %conv3.i.i = sext i8 %16 to i32
  %memchr.i.i = tail call ptr @memchr(ptr noundef nonnull @.str.142, i32 %conv3.i.i, i64 5) #25
  %tobool.not.i.i = icmp eq ptr %memchr.i.i, null
  br i1 %tobool.not.i.i, label %if.end11, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %arrayidx4.i.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 2
  %17 = load i8, ptr %arrayidx4.i.i, align 1, !tbaa !14
  switch i8 %17, label %if.end11 [
    i8 0, label %cleanup
    i8 46, label %cleanup
  ]

if.end11:                                         ; preds = %land.rhs.i.i, %land.lhs.true.i.i, %lor.lhs.false.i
  %st_value = getelementptr inbounds %struct.Elf32_Sym, ptr %sym.064, i64 0, i32 1
  %18 = load i32, ptr %st_value, align 4, !tbaa !71
  %cmp12.not = icmp ugt i32 %18, %addr
  br i1 %cmp12.not, label %cleanup, label %if.then14

if.then14:                                        ; preds = %if.end11
  %sub = sub i32 %addr, %18
  %cmp16 = icmp ult i32 %sub, %distance.062
  br i1 %cmp16, label %cleanup, label %if.else

if.else:                                          ; preds = %if.then14
  %cmp23 = icmp eq i32 %sub, %distance.062
  %spec.select = select i1 %cmp23, ptr %sym.064, ptr %near.060
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then14, %if.end11, %land.rhs.i.i, %land.rhs.i.i, %lor.lhs.false.i, %if.end7, %sec_name.exit, %for.body
  %near.2 = phi ptr [ %near.060, %for.body ], [ %near.060, %sec_name.exit ], [ %near.060, %if.end11 ], [ %sym.064, %if.then14 ], [ %spec.select, %if.else ], [ %near.060, %land.rhs.i.i ], [ %near.060, %lor.lhs.false.i ], [ %near.060, %if.end7 ], [ %near.060, %land.rhs.i.i ]
  %distance.2 = phi i32 [ %distance.062, %for.body ], [ %distance.062, %sec_name.exit ], [ %distance.062, %if.end11 ], [ %sub, %if.then14 ], [ %distance.062, %if.else ], [ %distance.062, %land.rhs.i.i ], [ %distance.062, %lor.lhs.false.i ], [ %distance.062, %if.end7 ], [ %distance.062, %land.rhs.i.i ]
  %incdec.ptr = getelementptr inbounds %struct.Elf32_Sym, ptr %sym.064, i64 1
  %cmp = icmp ult ptr %incdec.ptr, %1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %cleanup, %entry
  %near.0.lcssa = phi ptr [ null, %entry ], [ %near.2, %cleanup ]
  ret ptr %near.0.lcssa
}

; Function Attrs: nofree nounwind readonly uwtable
define internal fastcc ptr @find_elf_symbol(ptr nocapture noundef readonly %elf, i32 noundef %addr, ptr noundef %relsym) unnamed_addr #20 {
entry:
  %0 = load i32, ptr %relsym, align 4, !tbaa !70
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %st_shndx.i = getelementptr inbounds %struct.Elf32_Sym, ptr %relsym, i64 0, i32 5
  %1 = load i16, ptr %st_shndx.i, align 2, !tbaa !68
  %conv.i = zext i16 %1 to i32
  %2 = add i16 %1, 1
  %3 = icmp ult i16 %2, -255
  br i1 %3, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %sub.i = or i32 %conv.i, -65536
  br label %get_secindex.exit

if.end.i:                                         ; preds = %if.end
  %cmp.not.i = icmp eq i16 %1, -1
  br i1 %cmp.not.i, label %if.end9.i, label %get_secindex.exit

if.end9.i:                                        ; preds = %if.end.i
  %symtab_shndx_start.i = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 12
  %4 = load ptr, ptr %symtab_shndx_start.i, align 8, !tbaa !66
  %symtab_start.i = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 3
  %5 = load ptr, ptr %symtab_start.i, align 8, !tbaa !63
  %sub.ptr.lhs.cast.i = ptrtoint ptr %relsym to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub.i, 4
  %arrayidx.i = getelementptr inbounds i32, ptr %4, i64 %sub.ptr.div.i
  %6 = load i32, ptr %arrayidx.i, align 4, !tbaa !21
  br label %get_secindex.exit

get_secindex.exit:                                ; preds = %if.end9.i, %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %6, %if.end9.i ], [ %conv.i, %if.end.i ]
  %symtab_start = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 3
  %7 = load ptr, ptr %symtab_start, align 8, !tbaa !63
  %symtab_stop = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 4
  %8 = load ptr, ptr %symtab_stop, align 8, !tbaa !64
  %cmp184 = icmp ult ptr %7, %8
  br i1 %cmp184, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %get_secindex.exit
  %symtab_shndx_start.i63 = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 12
  %sub.ptr.rhs.cast.i66 = ptrtoint ptr %7 to i64
  %strtab.i = getelementptr inbounds %struct.elf_info, ptr %elf, i64 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %distance.089 = phi i32 [ 20, %for.body.lr.ph ], [ %distance.1, %for.inc ]
  %near.087 = phi ptr [ null, %for.body.lr.ph ], [ %near.1, %for.inc ]
  %sym.085 = phi ptr [ %7, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %st_shndx.i57 = getelementptr inbounds %struct.Elf32_Sym, ptr %sym.085, i64 0, i32 5
  %9 = load i16, ptr %st_shndx.i57, align 2, !tbaa !68
  %conv.i58 = zext i16 %9 to i32
  %10 = add i16 %9, 1
  %11 = icmp ult i16 %10, -255
  br i1 %11, label %if.end.i62, label %if.then.i60

if.then.i60:                                      ; preds = %for.body
  %sub.i59 = or i32 %conv.i58, -65536
  br label %get_secindex.exit72

if.end.i62:                                       ; preds = %for.body
  %cmp.not.i61 = icmp eq i16 %9, -1
  br i1 %cmp.not.i61, label %if.end9.i70, label %get_secindex.exit72

if.end9.i70:                                      ; preds = %if.end.i62
  %12 = load ptr, ptr %symtab_shndx_start.i63, align 8, !tbaa !66
  %sub.ptr.lhs.cast.i65 = ptrtoint ptr %sym.085 to i64
  %sub.ptr.sub.i67 = sub i64 %sub.ptr.lhs.cast.i65, %sub.ptr.rhs.cast.i66
  %sub.ptr.div.i68 = ashr exact i64 %sub.ptr.sub.i67, 4
  %arrayidx.i69 = getelementptr inbounds i32, ptr %12, i64 %sub.ptr.div.i68
  %13 = load i32, ptr %arrayidx.i69, align 4, !tbaa !21
  br label %get_secindex.exit72

get_secindex.exit72:                              ; preds = %if.end9.i70, %if.end.i62, %if.then.i60
  %retval.0.i71 = phi i32 [ %sub.i59, %if.then.i60 ], [ %13, %if.end9.i70 ], [ %conv.i58, %if.end.i62 ]
  %cmp3.not = icmp eq i32 %retval.0.i71, %retval.0.i
  br i1 %cmp3.not, label %if.end5, label %for.inc

if.end5:                                          ; preds = %get_secindex.exit72
  %st_info = getelementptr inbounds %struct.Elf32_Sym, ptr %sym.085, i64 0, i32 3
  %14 = load i8, ptr %st_info, align 4, !tbaa !73
  %15 = and i8 %14, 15
  %cmp6 = icmp eq i8 %15, 3
  br i1 %cmp6, label %for.inc, label %if.end9

if.end9:                                          ; preds = %if.end5
  %16 = load ptr, ptr %strtab.i, align 8, !tbaa !65
  %17 = load i32, ptr %sym.085, align 4, !tbaa !70
  %idx.ext.i = zext i32 %17 to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %16, i64 %idx.ext.i
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %for.inc, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end9
  %char0.i = load i8, ptr %add.ptr.i, align 1
  switch i8 %char0.i, label %if.end12 [
    i8 0, label %for.inc
    i8 36, label %land.lhs.true.i.i
  ]

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i
  %arrayidx2.i.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 1
  %18 = load i8, ptr %arrayidx2.i.i, align 1, !tbaa !14
  %conv3.i.i = sext i8 %18 to i32
  %memchr.i.i = tail call ptr @memchr(ptr noundef nonnull @.str.142, i32 %conv3.i.i, i64 5) #25
  %tobool.not.i.i = icmp eq ptr %memchr.i.i, null
  br i1 %tobool.not.i.i, label %if.end12, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %arrayidx4.i.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 2
  %19 = load i8, ptr %arrayidx4.i.i, align 1, !tbaa !14
  switch i8 %19, label %if.end12 [
    i8 0, label %for.inc
    i8 46, label %for.inc
  ]

if.end12:                                         ; preds = %land.rhs.i.i, %land.lhs.true.i.i, %lor.lhs.false.i
  %st_value = getelementptr inbounds %struct.Elf32_Sym, ptr %sym.085, i64 0, i32 1
  %20 = load i32, ptr %st_value, align 4, !tbaa !71
  %cmp13 = icmp eq i32 %20, %addr
  br i1 %cmp13, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end12
  %sub = sub i32 %20, %addr
  %21 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %cmp24 = icmp slt i32 %21, %distance.089
  %spec.select55 = select i1 %cmp24, ptr %sym.085, ptr %near.087
  %22 = tail call i32 @llvm.smin.i32(i32 %21, i32 %distance.089)
  br label %for.inc

for.inc:                                          ; preds = %if.end16, %land.rhs.i.i, %land.rhs.i.i, %lor.lhs.false.i, %if.end9, %if.end5, %get_secindex.exit72
  %near.1 = phi ptr [ %near.087, %get_secindex.exit72 ], [ %near.087, %if.end5 ], [ %spec.select55, %if.end16 ], [ %near.087, %land.rhs.i.i ], [ %near.087, %lor.lhs.false.i ], [ %near.087, %if.end9 ], [ %near.087, %land.rhs.i.i ]
  %distance.1 = phi i32 [ %distance.089, %get_secindex.exit72 ], [ %distance.089, %if.end5 ], [ %22, %if.end16 ], [ %distance.089, %land.rhs.i.i ], [ %distance.089, %lor.lhs.false.i ], [ %distance.089, %if.end9 ], [ %distance.089, %land.rhs.i.i ]
  %incdec.ptr = getelementptr inbounds %struct.Elf32_Sym, ptr %sym.085, i64 1
  %cmp1 = icmp ult ptr %incdec.ptr, %8
  br i1 %cmp1, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc
  %cmp28 = icmp slt i32 %distance.1, 20
  %spec.select = select i1 %cmp28, ptr %near.1, ptr null
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end12, %get_secindex.exit, %entry
  %retval.0 = phi ptr [ %relsym, %entry ], [ null, %get_secindex.exit ], [ %spec.select, %for.end ], [ %sym.085, %if.end12 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noalias ptr @sec2annotation(ptr noundef %s) unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @match(ptr noundef %s, ptr noundef nonnull @init_exit_sections)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else34, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call noalias dereferenceable_or_null(20) ptr @malloc(i64 noundef 20) #28
  %tobool.not.i = icmp eq ptr %call1, null
  br i1 %tobool.not.i, label %if.then.i, label %do_nofail.exit

if.then.i:                                        ; preds = %if.then
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.174) #25
  br label %do_nofail.exit

do_nofail.exit:                                   ; preds = %if.then.i, %if.then
  %incdec.ptr = getelementptr inbounds i8, ptr %call1, i64 1
  store i8 95, ptr %call1, align 1, !tbaa !14
  %incdec.ptr3 = getelementptr inbounds i8, ptr %call1, i64 2
  store i8 95, ptr %incdec.ptr, align 1, !tbaa !14
  %0 = load i8, ptr %s, align 1, !tbaa !14
  %cmp = icmp eq i8 %0, 46
  %spec.select.idx = zext i1 %cmp to i64
  %spec.select = getelementptr i8, ptr %s, i64 %spec.select.idx
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do_nofail.exit
  %s.addr.1 = phi ptr [ %spec.select, %do_nofail.exit ], [ %incdec.ptr12, %while.body ]
  %p.0 = phi ptr [ %incdec.ptr3, %do_nofail.exit ], [ %incdec.ptr13, %while.body ]
  %1 = load i8, ptr %s.addr.1, align 1, !tbaa !14
  switch i8 %1, label %while.body [
    i8 0, label %while.end
    i8 46, label %while.end
  ]

while.body:                                       ; preds = %while.cond
  %incdec.ptr12 = getelementptr inbounds i8, ptr %s.addr.1, i64 1
  %incdec.ptr13 = getelementptr inbounds i8, ptr %p.0, i64 1
  store i8 %1, ptr %p.0, align 1, !tbaa !14
  br label %while.cond

while.end:                                        ; preds = %while.cond, %while.cond
  store i8 0, ptr %p.0, align 1, !tbaa !14
  %cmp15 = icmp eq i8 %1, 46
  %spec.select57.idx = zext i1 %cmp15 to i64
  %spec.select57 = getelementptr i8, ptr %s.addr.1, i64 %spec.select57.idx
  %call20 = tail call ptr @strstr(ptr noundef nonnull %spec.select57, ptr noundef nonnull @.str.175) #29
  %cmp21.not = icmp eq ptr %call20, null
  br i1 %cmp21.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %while.end
  %strlen55 = tail call i64 @strlen(ptr nonnull %p.0)
  %endptr56 = getelementptr i8, ptr %p.0, i64 %strlen55
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %endptr56, ptr noundef nonnull align 1 dereferenceable(7) @.str.176, i64 7, i1 false)
  br label %return

if.else:                                          ; preds = %while.end
  %call25 = tail call ptr @strstr(ptr noundef nonnull %spec.select57, ptr noundef nonnull @.str.177) #29
  %cmp26.not = icmp eq ptr %call25, null
  %strlen = tail call i64 @strlen(ptr nonnull %p.0)
  %endptr = getelementptr i8, ptr %p.0, i64 %strlen
  br i1 %cmp26.not, label %if.else30, label %if.then28

if.then28:                                        ; preds = %if.else
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr, ptr noundef nonnull align 1 dereferenceable(6) @.str.178, i64 6, i1 false)
  br label %return

if.else30:                                        ; preds = %if.else
  store i16 32, ptr %endptr, align 1
  br label %return

if.else34:                                        ; preds = %entry
  %call35 = tail call noalias dereferenceable_or_null(1) ptr @strdup(ptr noundef nonnull @.str.17) #25
  %tobool.not.i58 = icmp eq ptr %call35, null
  br i1 %tobool.not.i58, label %if.then.i59, label %return

if.then.i59:                                      ; preds = %if.else34
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.180) #25
  br label %return

return:                                           ; preds = %if.then.i59, %if.else34, %if.else30, %if.then28, %if.then23
  %retval.0 = phi ptr [ %call1, %if.then28 ], [ %call1, %if.else30 ], [ %call1, %if.then23 ], [ %call35, %if.else34 ], [ null, %if.then.i59 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @write_buf(ptr nocapture noundef readonly %b, ptr nocapture noundef readonly %fname) unnamed_addr #0 {
entry:
  %call = tail call ptr @fopen(ptr noundef %fname, ptr noundef nonnull @.str.224)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @perror(ptr noundef %fname) #26
  tail call void @exit(i32 noundef 1) #27
  unreachable

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %b, align 8, !tbaa !18
  %pos = getelementptr inbounds %struct.buffer, ptr %b, i64 0, i32 1
  %1 = load i32, ptr %pos, align 8, !tbaa !17
  %conv = sext i32 %1 to i64
  %call1 = tail call i64 @fwrite(ptr noundef %0, i64 noundef 1, i64 noundef %conv, ptr noundef nonnull %call)
  %2 = load i32, ptr %pos, align 8, !tbaa !17
  %conv3 = sext i32 %2 to i64
  %cmp.not = icmp eq i64 %call1, %conv3
  br i1 %cmp.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  tail call void @perror(ptr noundef %fname) #26
  tail call void @exit(i32 noundef 1) #27
  unreachable

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @fclose(ptr noundef nonnull %call)
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end6
  tail call void @perror(ptr noundef %fname) #26
  tail call void @exit(i32 noundef 1) #27
  unreachable

if.end11:                                         ; preds = %if.end6
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #24

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #24

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0,1) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { argmemonly mustprogress nofree nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { argmemonly nofree nounwind readonly willreturn }
attributes #22 = { nofree nounwind }
attributes #23 = { argmemonly nofree nounwind willreturn }
attributes #24 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #25 = { nounwind }
attributes #26 = { cold }
attributes #27 = { noreturn nounwind }
attributes #28 = { nounwind allocsize(0) }
attributes #29 = { nounwind readonly willreturn }
attributes #30 = { nounwind allocsize(1) }
attributes #31 = { nounwind allocsize(0,1) }
attributes #32 = { nounwind readnone willreturn }
attributes #33 = { cold nounwind }

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
!9 = !{!10, !11, i64 48}
!10 = !{!"stat", !11, i64 0, !11, i64 8, !11, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !13, i64 72, !13, i64 88, !13, i64 104, !7, i64 120}
!11 = !{!"long", !7, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!"timespec", !11, i64 0, !11, i64 8}
!14 = !{!7, !7, i64 0}
!15 = !{!16, !12, i64 12}
!16 = !{!"buffer", !6, i64 0, !12, i64 8, !12, i64 12}
!17 = !{!16, !12, i64 8}
!18 = !{!16, !6, i64 0}
!19 = !{!20, !6, i64 8}
!20 = !{!"dump_list", !6, i64 0, !6, i64 8}
!21 = !{!12, !12, i64 0}
!22 = !{!23, !7, i64 8}
!23 = !{!"", !6, i64 0, !7, i64 8}
!24 = !{!20, !6, i64 0}
!25 = !{!23, !6, i64 0}
!26 = !{!11, !11, i64 0}
!27 = !{!28, !6, i64 8}
!28 = !{!"elf_info", !11, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !29, i64 40, !29, i64 42, !6, i64 48, !6, i64 56, !12, i64 64, !12, i64 68, !12, i64 72, !6, i64 80, !6, i64 88}
!29 = !{!"short", !7, i64 0}
!30 = !{!28, !11, i64 0}
!31 = !{!32, !29, i64 16}
!32 = !{!"", !7, i64 0, !29, i64 16, !29, i64 18, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !29, i64 40, !29, i64 42, !29, i64 44, !29, i64 46, !29, i64 48, !29, i64 50}
!33 = !{!32, !29, i64 18}
!34 = !{!32, !12, i64 20}
!35 = !{!32, !12, i64 24}
!36 = !{!32, !12, i64 28}
!37 = !{!32, !12, i64 32}
!38 = !{!32, !12, i64 36}
!39 = !{!32, !29, i64 40}
!40 = !{!32, !29, i64 42}
!41 = !{!32, !29, i64 44}
!42 = !{!32, !29, i64 46}
!43 = !{!32, !29, i64 48}
!44 = !{!32, !29, i64 50}
!45 = !{!28, !6, i64 16}
!46 = !{!28, !12, i64 68}
!47 = !{!28, !12, i64 72}
!48 = !{!49, !12, i64 0}
!49 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36}
!50 = !{!49, !12, i64 4}
!51 = !{!49, !12, i64 8}
!52 = !{!49, !12, i64 12}
!53 = !{!49, !12, i64 16}
!54 = !{!49, !12, i64 20}
!55 = !{!49, !12, i64 24}
!56 = !{!49, !12, i64 28}
!57 = !{!49, !12, i64 32}
!58 = !{!49, !12, i64 36}
!59 = !{!28, !6, i64 56}
!60 = !{!28, !12, i64 64}
!61 = !{!28, !29, i64 40}
!62 = !{!28, !29, i64 42}
!63 = !{!28, !6, i64 24}
!64 = !{!28, !6, i64 32}
!65 = !{!28, !6, i64 48}
!66 = !{!28, !6, i64 80}
!67 = !{!28, !6, i64 88}
!68 = !{!69, !29, i64 14}
!69 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !7, i64 12, !7, i64 13, !29, i64 14}
!70 = !{!69, !12, i64 0}
!71 = !{!69, !12, i64 4}
!72 = !{!69, !12, i64 8}
!73 = !{!69, !7, i64 12}
!74 = !{!75, !12, i64 0}
!75 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8}
!76 = !{!75, !12, i64 4}
!77 = !{!75, !12, i64 8}
!78 = !{!79, !6, i64 648}
!79 = !{!"sectioncheck", !7, i64 0, !7, i64 160, !7, i64 320, !7, i64 480, !7, i64 488, !6, i64 648}
!80 = !{!79, !7, i64 480}
