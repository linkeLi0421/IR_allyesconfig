; ModuleID = '/llk/IR_all_yes/sound/soc/qcom/common.c_pt.bc'
source_filename = "../sound/soc/qcom/common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+qcom_snd_parse_of\22, \22a\22\09"
module asm "\09.weak\09__crc_qcom_snd_parse_of\09\09\09\09"
module asm "\09.long\09__crc_qcom_snd_parse_of\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_snd_parse_of:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_snd_parse_of\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_snd_parse_of:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"model\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom,model\00", [21 x i8] zeroinitializer }, align 32
@qcom_snd_parse_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 25, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error parsing card name: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcom_snd_parse_of\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/soc/qcom/common.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_snd_parse_of._entry_ptr = internal global ptr @qcom_snd_parse_of._entry, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"widgets\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audio-routing\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom,audio-routing\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pin-switches\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aux-devs\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"link-name\00", [22 x i8] zeroinitializer }, align 32
@qcom_snd_parse_of._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 82, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error getting codec dai_link name\0A\00", [61 x i8] zeroinitializer }, align 32
@qcom_snd_parse_of._entry_ptr.15 = internal global ptr @qcom_snd_parse_of._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"platform\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"codec\00", [26 x i8] zeroinitializer }, align 32
@qcom_snd_parse_of._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 91, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Can't find cpu DT node\0A\00", [36 x i8] zeroinitializer }, align 32
@qcom_snd_parse_of._entry_ptr.21 = internal global ptr @qcom_snd_parse_of._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sound-dai\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"#sound-dai-cells\00", [47 x i8] zeroinitializer }, align 32
@qcom_snd_parse_of._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 99, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: error getting cpu phandle\0A\00", [33 x i8] zeroinitializer }, align 32
@qcom_snd_parse_of._entry_ptr.26 = internal global ptr @qcom_snd_parse_of._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: error getting cpu dai name\0A\00", [32 x i8] zeroinitializer }, align 32
@qcom_snd_parse_of._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 117, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: platform dai not found\0A\00", [36 x i8] zeroinitializer }, align 32
@qcom_snd_parse_of._entry_ptr.30 = internal global ptr @qcom_snd_parse_of._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: codec dai not found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd-soc-dummy-dai\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd-soc-dummy\00", [18 x i8] zeroinitializer }, align 32
@__kstrtab_qcom_snd_parse_of = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_snd_parse_of = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_snd_parse_of = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_snd_parse_of to i32), ptr @__kstrtab_qcom_snd_parse_of, ptr @__kstrtabns_qcom_snd_parse_of }, section "___ksymtab+qcom_snd_parse_of", align 4
@__UNIQUE_ID_file238 = internal constant [60 x i8] c"snd_soc_qcom_common.file=sound/soc/qcom/snd-soc-qcom-common\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [35 x i8] c"snd_soc_qcom_common.license=GPL v2\00", section ".modinfo", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 20, i32 41 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 23, i32 42 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 25, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 29, i32 42 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 36, i32 42 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 42, i32 42 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 48, i32 44 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 52, i32 40 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 80, i32 37 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 82, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 86, i32 34 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 87, i32 39 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 88, i32 36 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 91, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 96, i32 41 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 97, i32 6 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 99, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 108, i32 11 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 117, i32 5 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 129, i32 12 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 149, i32 29 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private constant [27 x i8] c"../sound/soc/qcom/common.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 150, i32 25 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__ksymtab_qcom_snd_parse_of, ptr @qcom_snd_parse_of._entry, ptr @qcom_snd_parse_of._entry.13, ptr @qcom_snd_parse_of._entry.19, ptr @qcom_snd_parse_of._entry.24, ptr @qcom_snd_parse_of._entry.28, ptr @qcom_snd_parse_of._entry_ptr, ptr @qcom_snd_parse_of._entry_ptr.15, ptr @qcom_snd_parse_of._entry_ptr.21, ptr @qcom_snd_parse_of._entry_ptr.26, ptr @qcom_snd_parse_of._entry_ptr.30, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_snd_parse_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_snd_parse_of._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_snd_parse_of._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_snd_parse_of._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_snd_parse_of._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qcom_snd_parse_of(ptr noundef %card) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 5
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #5
  %2 = call ptr @memset(ptr %args, i32 255, i32 72)
  %call = tail call i32 @snd_soc_of_parse_card_name(ptr noundef %card, ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end:                                           ; preds = %land.lhs.true
  %call2 = tail call i32 @snd_soc_of_parse_card_name(ptr noundef %card, ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

do.end:                                           ; preds = %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %ret.0282 = phi i32 [ %call2, %if.end.do.end_crit_edge ], [ %call, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %ret.0282) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end.if.end5_crit_edge, %land.lhs.true.if.end5_crit_edge
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %6, ptr noundef nonnull @.str.7, ptr noundef null) #5
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.end5.if.end12_crit_edge, label %if.then7

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then7:                                         ; preds = %if.end5
  %call8 = tail call i32 @snd_soc_of_parse_audio_simple_widgets(ptr noundef %card, ptr noundef nonnull @.str.7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.if.end12_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end12:                                         ; preds = %if.then7.if.end12_crit_edge, %if.end5.if.end12_crit_edge
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call.i268 = tail call ptr @of_find_property(ptr noundef %8, ptr noundef nonnull @.str.8, ptr noundef null) #5
  %tobool.i269.not = icmp eq ptr %call.i268, null
  br i1 %tobool.i269.not, label %if.end12.if.end20_crit_edge, label %if.then15

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then15:                                        ; preds = %if.end12
  %call16 = tail call i32 @snd_soc_of_parse_audio_routing(ptr noundef %card, ptr noundef nonnull @.str.8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then15.if.end20_crit_edge, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.end20:                                         ; preds = %if.then15.if.end20_crit_edge, %if.end12.if.end20_crit_edge
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call.i270 = tail call ptr @of_find_property(ptr noundef %10, ptr noundef nonnull @.str.9, ptr noundef null) #5
  %tobool.i271.not = icmp eq ptr %call.i270, null
  br i1 %tobool.i271.not, label %if.end20.if.end28_crit_edge, label %if.then23

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then23:                                        ; preds = %if.end20
  %call24 = tail call i32 @snd_soc_of_parse_audio_routing(ptr noundef %card, ptr noundef nonnull @.str.9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then23.if.end28_crit_edge, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then23.if.end28_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.end28:                                         ; preds = %if.then23.if.end28_crit_edge, %if.end20.if.end28_crit_edge
  %call29 = tail call i32 @snd_soc_of_parse_pin_switches(ptr noundef %card, ptr noundef nonnull @.str.10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  %call33 = tail call i32 @snd_soc_of_parse_aux_devs(ptr noundef %card, ptr noundef nonnull @.str.11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %call.i272 = tail call ptr @of_get_next_available_child(ptr noundef %12, ptr noundef null) #5
  %cmp.not5.i = icmp eq ptr %call.i272, null
  br i1 %cmp.not5.i, label %if.end36.of_get_available_child_count.exit_crit_edge, label %if.end36.for.body.i_crit_edge

if.end36.for.body.i_crit_edge:                    ; preds = %if.end36
  br label %for.body.i

if.end36.of_get_available_child_count.exit_crit_edge: ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_get_available_child_count.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end36.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end36.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i272, %if.end36.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_available_child(ptr noundef %12, ptr noundef nonnull %child.06.i) #5
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %for.body.i.of_get_available_child_count.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.of_get_available_child_count.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_get_available_child_count.exit

of_get_available_child_count.exit:                ; preds = %for.body.i.of_get_available_child_count.exit_crit_edge, %if.end36.of_get_available_child_count.exit_crit_edge
  %num.0.lcssa.i = phi i32 [ 0, %if.end36.of_get_available_child_count.exit_crit_edge ], [ %inc.i, %for.body.i.of_get_available_child_count.exit_crit_edge ]
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num.0.lcssa.i, i32 116) #5
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !72

devm_kcalloc.exit.thread:                         ; preds = %of_get_available_child_count.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dai_link284 = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 24
  %15 = ptrtoint ptr %dai_link284 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %dai_link284, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %of_get_available_child_count.exit
  %16 = extractvalue { i32, i1 } %13, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %16, i32 noundef 3520) #5
  %dai_link = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 24
  %17 = ptrtoint ptr %dai_link to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i.i, ptr %dai_link, align 4
  %tobool41.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool41.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end43

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end43:                                         ; preds = %devm_kcalloc.exit
  %num_links44 = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 25
  %18 = ptrtoint ptr %num_links44 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %num.0.lcssa.i, ptr %num_links44, align 4
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %call47 = tail call ptr @of_get_next_available_child(ptr noundef %20, ptr noundef null) #5
  %cmp48.not335 = icmp eq ptr %call47, null
  br i1 %cmp48.not335, label %if.end43.cleanup_crit_edge, label %for.body.lr.ph

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end43
  %args85 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end152.for.body_crit_edge, %for.body.lr.ph
  %link.0339 = phi ptr [ %call5.i.i, %for.body.lr.ph ], [ %incdec.ptr, %if.end152.for.body_crit_edge ]
  %np.0336 = phi ptr [ %call47, %for.body.lr.ph ], [ %call155, %if.end152.for.body_crit_edge ]
  %call.i273 = call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 24, i32 noundef 3520) #5
  %tobool50.not = icmp eq ptr %call.i273, null
  br i1 %tobool50.not, label %for.body.err_put_np_crit_edge, label %if.end52

for.body.err_put_np_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_put_np

if.end52:                                         ; preds = %for.body
  %cpus = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link.0339, i32 0, i32 2
  %21 = ptrtoint ptr %cpus to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i273, ptr %cpus, align 4
  %arrayidx53 = getelementptr %struct.snd_soc_dai_link_component, ptr %call.i273, i32 1
  %platforms = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link.0339, i32 0, i32 6
  %22 = ptrtoint ptr %platforms to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx53, ptr %platforms, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link.0339, i32 0, i32 3
  %23 = ptrtoint ptr %num_cpus to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %num_cpus, align 4
  %num_platforms = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link.0339, i32 0, i32 7
  %24 = ptrtoint ptr %num_platforms to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %num_platforms, align 4
  %call55 = call i32 @of_property_read_string(ptr noundef nonnull %np.0336, ptr noundef nonnull @.str.12, ptr noundef %link.0339) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end62, label %do.end60

do.end60:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.14) #8
  br label %err_put_np

if.end62:                                         ; preds = %if.end52
  %call63 = call ptr @of_get_child_by_name(ptr noundef nonnull %np.0336, ptr noundef nonnull @.str.16) #5
  %call64 = call ptr @of_get_child_by_name(ptr noundef nonnull %np.0336, ptr noundef nonnull @.str.17) #5
  %call65 = call ptr @of_get_child_by_name(ptr noundef nonnull %np.0336, ptr noundef nonnull @.str.18) #5
  %tobool66.not = icmp eq ptr %call63, null
  br i1 %tobool66.not, label %do.end70, label %if.end72

do.end70:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %link.0339 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %link.0339, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.20, ptr noundef %28) #8
  br label %err

if.end72:                                         ; preds = %if.end62
  %call.i274 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %call63, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %args) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i274)
  %tobool74.not = icmp eq i32 %call.i274, 0
  br i1 %tobool74.not, label %if.end81, label %do.end78

do.end78:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev1, align 4
  %31 = ptrtoint ptr %link.0339 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %link.0339, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.25, ptr noundef %32) #8
  br label %err

if.end81:                                         ; preds = %if.end72
  %33 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %args, align 4
  %35 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cpus, align 4
  %of_node84 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %of_node84 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %of_node84, align 4
  %38 = ptrtoint ptr %args85 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %args85, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link.0339, i32 0, i32 8
  %40 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %id, align 4
  %41 = load ptr, ptr %cpus, align 4
  %dai_name = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %41, i32 0, i32 2
  %call88 = call i32 @snd_soc_of_get_dai_name(ptr noundef nonnull %call63, ptr noundef %dai_name) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end94, label %if.then90

if.then90:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev1, align 4
  %44 = ptrtoint ptr %link.0339 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %link.0339, align 4
  %call93 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %43, i32 noundef %call88, ptr noundef nonnull @.str.27, ptr noundef %45) #5
  br label %err

if.end94:                                         ; preds = %if.end81
  %tobool95.not = icmp eq ptr %call64, null
  br i1 %tobool95.not, label %if.else, label %if.then96

if.then96:                                        ; preds = %if.end94
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #5
  %46 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i275 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %call64, ptr noundef nonnull @.str.22, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i275)
  %tobool.not.i = icmp eq i32 %call.i275, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then96.of_parse_phandle.exit_crit_edge

if.then96.of_parse_phandle.exit_crit_edge:        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_parse_phandle.exit

if.end.i:                                         ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i, %if.then96.of_parse_phandle.exit_crit_edge
  %retval.0.i = phi ptr [ %48, %if.end.i ], [ null, %if.then96.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  %49 = ptrtoint ptr %platforms to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %platforms, align 4
  %of_node99 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %of_node99 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %retval.0.i, ptr %of_node99, align 4
  %52 = load ptr, ptr %platforms, align 4
  %of_node101 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %of_node101 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %of_node101, align 4
  %tobool102.not = icmp eq ptr %54, null
  br i1 %tobool102.not, label %do.end106, label %of_parse_phandle.exit.if.end114_crit_edge

of_parse_phandle.exit.if.end114_crit_edge:        ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end114

do.end106:                                        ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev1, align 4
  %57 = ptrtoint ptr %link.0339 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %link.0339, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.29, ptr noundef %58) #8
  br label %err

if.else:                                          ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cpus, align 4
  %of_node111 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %of_node111 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %of_node111, align 4
  %63 = ptrtoint ptr %platforms to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %platforms, align 4
  %of_node113 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %of_node113 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %of_node113, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.else, %of_parse_phandle.exit.if.end114_crit_edge
  %tobool115.not = icmp eq ptr %call65, null
  br i1 %tobool115.not, label %if.else130, label %if.then116

if.then116:                                       ; preds = %if.end114
  %call117 = call i32 @snd_soc_of_get_dai_link_codecs(ptr noundef %1, ptr noundef nonnull %call65, ptr noundef %link.0339) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %cmp118 = icmp slt i32 %call117, 0
  br i1 %cmp118, label %if.then119, label %if.end123

if.then119:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev1, align 4
  %68 = ptrtoint ptr %link.0339 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %link.0339, align 4
  %call122 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %67, i32 noundef %call117, ptr noundef nonnull @.str.31, ptr noundef %69) #5
  br label %err

if.end123:                                        ; preds = %if.then116
  br i1 %tobool95.not, label %if.end123.if.end152_crit_edge, label %if.end123.if.then145_crit_edge

if.end123.if.then145_crit_edge:                   ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then145

if.end123.if.end152_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end152

if.else130:                                       ; preds = %if.end114
  %call.i276 = call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 12, i32 noundef 3520) #5
  %tobool132.not = icmp eq ptr %call.i276, null
  br i1 %tobool132.not, label %if.else130.err_crit_edge, label %if.end134

if.else130.err_crit_edge:                         ; preds = %if.else130
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end134:                                        ; preds = %if.else130
  call void @__sanitizer_cov_trace_pc() #7
  %codecs = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link.0339, i32 0, i32 4
  %70 = ptrtoint ptr %codecs to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.i276, ptr %codecs, align 4
  %num_codecs = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link.0339, i32 0, i32 5
  %71 = ptrtoint ptr %num_codecs to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %num_codecs, align 4
  %dai_name136 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %call.i276, i32 0, i32 2
  %72 = ptrtoint ptr %dai_name136 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.32, ptr %dai_name136, align 4
  %73 = ptrtoint ptr %call.i276 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.33, ptr %call.i276, align 4
  br label %if.then145

if.then145:                                       ; preds = %if.end134, %if.end123.if.then145_crit_edge
  %.sink = phi i32 [ 8388608, %if.end134 ], [ 16908288, %if.end123.if.then145_crit_edge ]
  %dynamic = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link.0339, i32 0, i32 18
  %74 = ptrtoint ptr %dynamic to i32
  call void @__asan_load4_noabort(i32 %74)
  %bf.load139 = load i32, ptr %dynamic, align 4
  %bf.set141 = or i32 %bf.load139, %.sink
  store i32 %bf.set141, ptr %dynamic, align 4
  call void @snd_soc_dai_link_set_capabilities(ptr noundef %link.0339) #5
  %ignore_suspend = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link.0339, i32 0, i32 18
  %75 = ptrtoint ptr %ignore_suspend to i32
  call void @__asan_load4_noabort(i32 %75)
  %bf.load146 = load i32, ptr %ignore_suspend, align 4
  %bf.set151 = or i32 %bf.load146, -1879048192
  store i32 %bf.set151, ptr %ignore_suspend, align 4
  br label %if.end152

if.end152:                                        ; preds = %if.then145, %if.end123.if.end152_crit_edge
  %76 = ptrtoint ptr %link.0339 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %link.0339, align 4
  %stream_name = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link.0339, i32 0, i32 1
  %78 = ptrtoint ptr %stream_name to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %stream_name, align 4
  %incdec.ptr = getelementptr %struct.snd_soc_dai_link, ptr %link.0339, i32 1
  call void @of_node_put(ptr noundef nonnull %call63) #5
  call void @of_node_put(ptr noundef %call65) #5
  call void @of_node_put(ptr noundef %call64) #5
  %79 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %of_node, align 8
  %call155 = call ptr @of_get_next_available_child(ptr noundef %80, ptr noundef nonnull %np.0336) #5
  %cmp48.not = icmp eq ptr %call155, null
  br i1 %cmp48.not, label %if.end152.cleanup_crit_edge, label %if.end152.for.body_crit_edge

if.end152.for.body_crit_edge:                     ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end152.cleanup_crit_edge:                      ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err:                                              ; preds = %if.else130.err_crit_edge, %if.then119, %do.end106, %if.then90, %do.end78, %do.end70
  %call65373 = phi ptr [ %call65, %do.end78 ], [ %call65, %if.then90 ], [ %call65, %if.then119 ], [ %call65, %do.end106 ], [ %call65, %do.end70 ], [ null, %if.else130.err_crit_edge ]
  %ret.1 = phi i32 [ %call.i274, %do.end78 ], [ %call88, %if.then90 ], [ %call117, %if.then119 ], [ -22, %do.end106 ], [ -22, %do.end70 ], [ -12, %if.else130.err_crit_edge ]
  call void @of_node_put(ptr noundef %call63) #5
  call void @of_node_put(ptr noundef %call65373) #5
  call void @of_node_put(ptr noundef %call64) #5
  br label %err_put_np

err_put_np:                                       ; preds = %err, %do.end60, %for.body.err_put_np_crit_edge
  %ret.2 = phi i32 [ %call55, %do.end60 ], [ %ret.1, %err ], [ -12, %for.body.err_put_np_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %np.0336) #5
  br label %cleanup

cleanup:                                          ; preds = %err_put_np, %if.end152.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %if.end32.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.0282, %do.end ], [ %ret.2, %err_put_np ], [ %call8, %if.then7.cleanup_crit_edge ], [ %call16, %if.then15.cleanup_crit_edge ], [ %call24, %if.then23.cleanup_crit_edge ], [ %call29, %if.end28.cleanup_crit_edge ], [ %call33, %if.end32.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ 0, %if.end43.cleanup_crit_edge ], [ 0, %if.end152.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_card_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_audio_simple_widgets(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_audio_routing(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_pin_switches(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_aux_devs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_get_dai_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_get_dai_link_codecs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_dai_link_set_capabilities(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !30, !32, !34, !36, !37, !38, !40, !42, !44, !45, !46, !48, !50, !51, !52, !54, !56, !58, !60, !62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/qcom/common.c", i32 20, i32 41}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/qcom/common.c", i32 23, i32 42}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/qcom/common.c", i32 25, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @qcom_snd_parse_of._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @qcom_snd_parse_of._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/qcom/common.c", i32 29, i32 42}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/qcom/common.c", i32 36, i32 42}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/qcom/common.c", i32 42, i32 42}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/qcom/common.c", i32 48, i32 44}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/qcom/common.c", i32 52, i32 40}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/qcom/common.c", i32 80, i32 37}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/qcom/common.c", i32 82, i32 4}
!26 = !{ptr @qcom_snd_parse_of._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @qcom_snd_parse_of._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/qcom/common.c", i32 86, i32 34}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/qcom/common.c", i32 87, i32 39}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/qcom/common.c", i32 88, i32 36}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/qcom/common.c", i32 91, i32 4}
!36 = !{ptr @qcom_snd_parse_of._entry.19, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @qcom_snd_parse_of._entry_ptr.21, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/qcom/common.c", i32 96, i32 41}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/qcom/common.c", i32 97, i32 6}
!42 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/qcom/common.c", i32 99, i32 4}
!44 = !{ptr @qcom_snd_parse_of._entry.24, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @qcom_snd_parse_of._entry_ptr.26, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/qcom/common.c", i32 108, i32 11}
!48 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/qcom/common.c", i32 117, i32 5}
!50 = !{ptr @qcom_snd_parse_of._entry.28, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @qcom_snd_parse_of._entry_ptr.30, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/qcom/common.c", i32 129, i32 12}
!54 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/qcom/common.c", i32 149, i32 29}
!56 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/qcom/common.c", i32 150, i32 25}
!58 = !{ptr @__ksymtab_qcom_snd_parse_of, !59, !"__ksymtab_qcom_snd_parse_of", i1 false, i1 false}
!59 = !{!"../sound/soc/qcom/common.c", i32 178, i32 1}
!60 = !{ptr @__UNIQUE_ID_file238, !61, !"__UNIQUE_ID_file238", i1 false, i1 false}
!61 = !{!"../sound/soc/qcom/common.c", i32 180, i32 1}
!62 = !{ptr @__UNIQUE_ID_license239, !61, !"__UNIQUE_ID_license239", i1 false, i1 false}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{!"branch_weights", i32 1, i32 2000}
