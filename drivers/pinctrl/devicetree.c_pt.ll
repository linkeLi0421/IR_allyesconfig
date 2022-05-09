; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/devicetree.c_pt.bc'
source_filename = "../drivers/pinctrl/devicetree.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+of_pinctrl_get\22, \22a\22\09"
module asm "\09.weak\09__crc_of_pinctrl_get\09\09\09\09"
module asm "\09.long\09__crc_of_pinctrl_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_pinctrl_get:\09\09\09\09\09"
module asm "\09.asciz \09\22of_pinctrl_get\22\09\09\09\09\09"
module asm "__kstrtabns_of_pinctrl_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pinctrl_count_index_with_args\22, \22a\22\09"
module asm "\09.weak\09__crc_pinctrl_count_index_with_args\09\09\09\09"
module asm "\09.long\09__crc_pinctrl_count_index_with_args\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinctrl_count_index_with_args:\09\09\09\09\09"
module asm "\09.asciz \09\22pinctrl_count_index_with_args\22\09\09\09\09\09"
module asm "__kstrtabns_pinctrl_count_index_with_args:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pinctrl_parse_index_with_args\22, \22a\22\09"
module asm "\09.weak\09__crc_pinctrl_parse_index_with_args\09\09\09\09"
module asm "\09.long\09__crc_pinctrl_parse_index_with_args\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinctrl_parse_index_with_args:\09\09\09\09\09"
module asm "\09.asciz \09\22pinctrl_parse_index_with_args\22\09\09\09\09\09"
module asm "__kstrtabns_pinctrl_parse_index_with_args:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pinctrl = type { %struct.list_head, ptr, %struct.list_head, ptr, %struct.list_head, %struct.kref }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.pinctrl_dt_map = type { %struct.list_head, ptr, ptr, i32 }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.68 }
%union.anon.68 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__kstrtab_of_pinctrl_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_pinctrl_get = external dso_local constant [0 x i8], align 1
@__ksymtab_of_pinctrl_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_pinctrl_get to i32), ptr @__kstrtab_of_pinctrl_get, ptr @__kstrtabns_of_pinctrl_get }, section "___ksymtab_gpl+of_pinctrl_get", align 4
@pinctrl_dt_to_map.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 53, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"devicetree\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pinctrl_dt_to_map\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/pinctrl/devicetree.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no of_node; not parsing pinctrl DT\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pinctrl-%d\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pinctrl-names\00", [18 x i8] zeroinitializer }, align 32
@pinctrl_dt_to_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 255, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"prop %s index %i invalid phandle\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pinctrl_dt_to_map._entry_ptr = internal global ptr @pinctrl_dt_to_map._entry, section ".printk_index", align 4
@__kstrtab_pinctrl_count_index_with_args = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinctrl_count_index_with_args = external dso_local constant [0 x i8], align 1
@__ksymtab_pinctrl_count_index_with_args = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinctrl_count_index_with_args to i32), ptr @__kstrtab_pinctrl_count_index_with_args, ptr @__kstrtabns_pinctrl_count_index_with_args }, section "___ksymtab_gpl+pinctrl_count_index_with_args", align 4
@__kstrtab_pinctrl_parse_index_with_args = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinctrl_parse_index_with_args = external dso_local constant [0 x i8], align 1
@__ksymtab_pinctrl_parse_index_with_args = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinctrl_parse_index_with_args to i32), ptr @__kstrtab_pinctrl_parse_index_with_args, ptr @__kstrtabns_pinctrl_parse_index_with_args }, section "___ksymtab_gpl+pinctrl_parse_index_with_args", align 4
@of_root = external dso_local local_unnamed_addr global ptr, align 4
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pinctrl-use-default\00", [44 x i8] zeroinitializer }, align 32
@dt_to_map_one_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 161, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pctldev %s doesn't support DT\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dt_to_map_one_config\00", [43 x i8] zeroinitializer }, align 32
@dt_to_map_one_config._entry_ptr = internal global ptr @dt_to_map_one_config._entry, section ".printk_index", align 4
@dt_to_map_one_config._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 174, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"there is not valid maps for state %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dt_to_map_one_config._entry_ptr.15 = internal global ptr @dt_to_map_one_config._entry.12, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"#pinctrl-cells\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 211, i32 4 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 222, i32 36 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 236, i32 43 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 253, i32 5 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 127, i32 14 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 160, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 173, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [32 x i8] c"../drivers/pinctrl/devicetree.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 289, i32 27 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__ksymtab_of_pinctrl_get, ptr @__ksymtab_pinctrl_count_index_with_args, ptr @__ksymtab_pinctrl_parse_index_with_args, ptr @dt_to_map_one_config._entry, ptr @dt_to_map_one_config._entry.12, ptr @dt_to_map_one_config._entry_ptr, ptr @dt_to_map_one_config._entry_ptr.15, ptr @pinctrl_dt_to_map._entry, ptr @pinctrl_dt_to_map._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinctrl_dt_to_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_to_map_one_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_to_map_one_config._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pinctrl_dt_free_maps(ptr noundef readonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dt_maps = getelementptr inbounds %struct.pinctrl, ptr %p, i32 0, i32 4
  %0 = ptrtoint ptr %dt_maps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dt_maps, align 4
  %cmp.not24 = icmp eq ptr %1, %dt_maps
  br i1 %cmp.not24, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %dt_free_map.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %dt_map.025 = phi ptr [ %n1.0, %dt_free_map.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %dt_map.025 to i32
  call void @__asan_load4_noabort(i32 %2)
  %n1.0 = load ptr, ptr %dt_map.025, align 4
  %map = getelementptr inbounds %struct.pinctrl_dt_map, ptr %dt_map.025, i32 0, i32 2
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  tail call void @pinctrl_unregister_mappings(ptr noundef %4) #5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dt_map.025) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %dt_map.025, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %dt_map.025 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dt_map.025, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %dt_map.025 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %dt_map.025, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %dt_map.025, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %pctldev = getelementptr inbounds %struct.pinctrl_dt_map, ptr %dt_map.025, i32 0, i32 1
  %13 = ptrtoint ptr %pctldev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pctldev, align 4
  %15 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map, align 4
  %num_maps = getelementptr inbounds %struct.pinctrl_dt_map, ptr %dt_map.025, i32 0, i32 3
  %17 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_maps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp17.not.i = icmp eq i32 %18, 0
  br i1 %cmp17.not.i, label %list_del.exit.for.end.i_crit_edge, label %list_del.exit.for.body.i_crit_edge

list_del.exit.for.body.i_crit_edge:               ; preds = %list_del.exit
  br label %for.body.i

list_del.exit.for.end.i_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %list_del.exit.for.body.i_crit_edge
  %i.018.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %list_del.exit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pinctrl_map, ptr %16, i32 %i.018.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree_const(ptr noundef %20) #5
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %18
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %list_del.exit.for.end.i_crit_edge
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.end.i
  %desc.i = getelementptr inbounds %struct.pinctrl_dev, ptr %14, i32 0, i32 1
  %22 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %desc.i, align 4
  %pctlops.i = getelementptr inbounds %struct.pinctrl_desc, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %pctlops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pctlops.i, align 4
  %dt_free_map.i = getelementptr inbounds %struct.pinctrl_ops, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %dt_free_map.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dt_free_map.i, align 4
  %tobool3.not.i = icmp eq ptr %27, null
  br i1 %tobool3.not.i, label %if.then.i.dt_free_map.exit_crit_edge, label %if.then4.i

if.then.i.dt_free_map.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dt_free_map.exit

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %27(ptr noundef nonnull %14, ptr noundef %16, i32 noundef %18) #5
  br label %dt_free_map.exit

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef %16) #5
  br label %dt_free_map.exit

dt_free_map.exit:                                 ; preds = %if.else.i, %if.then4.i, %if.then.i.dt_free_map.exit_crit_edge
  tail call void @kfree(ptr noundef %dt_map.025) #5
  %cmp.not = icmp eq ptr %n1.0, %dt_maps
  br i1 %cmp.not, label %dt_free_map.exit.for.end_crit_edge, label %dt_free_map.exit.for.body_crit_edge

dt_free_map.exit.for.body_crit_edge:              ; preds = %dt_free_map.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

dt_free_map.exit.for.end_crit_edge:               ; preds = %dt_free_map.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %dt_free_map.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %dev = getelementptr inbounds %struct.pinctrl, ptr %p, i32 0, i32 1
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 27
  %30 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node, align 8
  tail call void @of_node_put(ptr noundef %31) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_unregister_mappings(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_pinctrl_get(ptr noundef %np) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @get_pinctrl_dev_from_of_node(ptr noundef %np) #5
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_pinctrl_dev_from_of_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pinctrl_dt_to_map(ptr noundef %p, ptr noundef %pctldev) local_unnamed_addr #0 align 64 {
entry:
  %map.i = alloca ptr, align 4
  %num_maps.i = alloca i32, align 4
  %statename = alloca ptr, align 4
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pinctrl, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %statename) #5
  %4 = ptrtoint ptr %statename to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %statename, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #5
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %size, align 4, !annotation !45
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @of_root to i32))
  %6 = load ptr, ptr @of_root, align 4
  %cmp.i.not = icmp eq ptr %6, null
  br i1 %cmp.i.not, label %if.then.cleanup_crit_edge, label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pinctrl_dt_to_map.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pinctrl_dt_to_map, %cleanup)) #5
          to label %if.then7 [label %cleanup], !srcloc !46

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pinctrl_dt_to_map.__UNIQUE_ID_ddebug223, ptr noundef %8, ptr noundef nonnull @.str.3) #5
  br label %cleanup

if.end10:                                         ; preds = %entry
  %call11 = tail call ptr @of_node_get(ptr noundef nonnull %3) #5
  %call12133 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.4, i32 noundef 0) #5
  %call13134 = call ptr @of_find_property(ptr noundef nonnull %3, ptr noundef %call12133, ptr noundef nonnull %size) #5
  call void @kfree(ptr noundef %call12133) #5
  %tobool14.not135 = icmp eq ptr %call13134, null
  br i1 %tobool14.not135, label %if.end10.if.then16_crit_edge, label %if.end18.lr.ph

if.end10.if.then16_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

if.end18.lr.ph:                                   ; preds = %if.end10
  %tobool11.not.i = icmp eq ptr %pctldev, null
  br label %if.end18

if.then15:                                        ; preds = %for.inc46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc47)
  %phi.cmp = icmp eq i32 %inc47, 0
  br i1 %phi.cmp, label %if.then15.if.then16_crit_edge, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then15.if.then16_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

if.then16:                                        ; preds = %if.then15.if.then16_crit_edge, %if.end10.if.then16_crit_edge
  call void @of_node_put(ptr noundef nonnull %3) #5
  br label %cleanup

if.end18:                                         ; preds = %for.inc46.if.end18_crit_edge, %if.end18.lr.ph
  %call13137 = phi ptr [ %call13134, %if.end18.lr.ph ], [ %call13, %for.inc46.if.end18_crit_edge ]
  %state.0136 = phi i32 [ 0, %if.end18.lr.ph ], [ %inc47, %for.inc46.if.end18_crit_edge ]
  %value = getelementptr inbounds %struct.property, ptr %call13137, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %value, align 4
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 4
  %div83 = lshr i32 %12, 2
  store i32 %div83, ptr %size, align 4
  %call.i = call i32 @of_property_read_string_helper(ptr noundef nonnull %3, ptr noundef nonnull @.str.5, ptr noundef nonnull %statename, i32 noundef 1, i32 noundef %state.0136) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp20 = icmp slt i32 %call.i, 0
  br i1 %cmp20, label %if.then21, label %if.end18.if.end22_crit_edge

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call13137 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call13137, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 8
  %15 = ptrtoint ptr %statename to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %statename, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end18.if.end22_crit_edge
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp24130 = icmp sgt i32 %17, 0
  br i1 %cmp24130, label %if.end22.for.body_crit_edge, label %if.end22.for.end_crit_edge

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end22.for.body_crit_edge
  %config.0132 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end22.for.body_crit_edge ]
  %list.0131 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %10, %if.end22.for.body_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %list.0131, i32 1
  %18 = ptrtoint ptr %list.0131 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %list.0131, align 4
  %call26 = call ptr @of_find_node_by_phandle(i32 noundef %19) #5
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %do.end31, label %if.end34

do.end31:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %22 = ptrtoint ptr %call13137 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call13137, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.6, ptr noundef %23, i32 noundef %config.0132) #8
  br label %err

if.end34:                                         ; preds = %for.body
  %24 = ptrtoint ptr %statename to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %statename, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %map.i) #5
  %26 = ptrtoint ptr %map.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 -1 to ptr), ptr %map.i, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_maps.i) #5
  %27 = ptrtoint ptr %num_maps.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %num_maps.i, align 4, !annotation !45
  %call.i84 = call ptr @of_node_get(ptr noundef nonnull %call26) #5
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end20.i.for.cond.i_crit_edge, %if.end34
  %np_pctldev.0.i = phi ptr [ %call.i84, %if.end34 ], [ %call2.i, %if.end20.i.for.cond.i_crit_edge ]
  %allow_default.0.off0.i = phi i1 [ false, %if.end34 ], [ %allow_default.1.off0.i, %if.end20.i.for.cond.i_crit_edge ]
  br i1 %allow_default.0.off0.i, label %for.cond.i.if.end.i_crit_edge, label %if.then.i

for.cond.i.if.end.i_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = call ptr @of_find_property(ptr noundef %np_pctldev.0.i, ptr noundef nonnull @.str.9, ptr noundef null) #5
  %tobool.i.i = icmp ne ptr %call.i.i, null
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.cond.i.if.end.i_crit_edge
  %allow_default.1.off0.i = phi i1 [ true, %for.cond.i.if.end.i_crit_edge ], [ %tobool.i.i, %if.then.i ]
  %call2.i = call ptr @of_get_next_parent(ptr noundef %np_pctldev.0.i) #5
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i.if.then5.i_crit_edge, label %of_node_is_root.exit.i

if.end.i.if.then5.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5.i

of_node_is_root.exit.i:                           ; preds = %if.end.i
  %parent.i.i = getelementptr inbounds %struct.device_node, ptr %call2.i, i32 0, i32 6
  %28 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent.i.i, align 4
  %cmp.i.i = icmp eq ptr %29, null
  br i1 %cmp.i.i, label %of_node_is_root.exit.i.if.then5.i_crit_edge, label %if.end10.i

of_node_is_root.exit.i.if.then5.i_crit_edge:      ; preds = %of_node_is_root.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5.i

if.then5.i:                                       ; preds = %of_node_is_root.exit.i.if.then5.i_crit_edge, %if.end.i.if.then5.i_crit_edge
  call void @of_node_put(ptr noundef %call2.i) #5
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %call6.i = call i32 @driver_deferred_probe_check_state(ptr noundef %31) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i85 = icmp slt i32 %call6.i, 0
  %spec.store.select.i = select i1 %cmp.i85, i32 -517, i32 %call6.i
  %ret.0.i = select i1 %allow_default.1.off0.i, i32 %call6.i, i32 %spec.store.select.i
  br label %dt_to_map_one_config.exit

if.end10.i:                                       ; preds = %of_node_is_root.exit.i
  br i1 %tobool11.not.i, label %if.end10.i.if.end16.i_crit_edge, label %land.lhs.true12.i

if.end10.i.if.end16.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

land.lhs.true12.i:                                ; preds = %if.end10.i
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 27
  %34 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %of_node.i, align 8
  %cmp14.i = icmp eq ptr %call2.i, %35
  br i1 %cmp14.i, label %land.lhs.true12.i.for.end.i_crit_edge, label %land.lhs.true12.i.if.end16.i_crit_edge

land.lhs.true12.i.if.end16.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

land.lhs.true12.i.for.end.i_crit_edge:            ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.end16.i:                                       ; preds = %land.lhs.true12.i.if.end16.i_crit_edge, %if.end10.i.if.end16.i_crit_edge
  %call17.i = call ptr @get_pinctrl_dev_from_of_node(ptr noundef nonnull %call2.i) #5
  %tobool18.not.i = icmp eq ptr %call17.i, null
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end16.i.for.end.i_crit_edge

if.end16.i.for.end.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.end20.i:                                       ; preds = %if.end16.i
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %of_node22.i = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 27
  %38 = ptrtoint ptr %of_node22.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %of_node22.i, align 8
  %cmp23.i = icmp eq ptr %call2.i, %39
  br i1 %cmp23.i, label %if.then24.i, label %if.end20.i.for.cond.i_crit_edge

if.end20.i.for.cond.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

if.then24.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @of_node_put(ptr noundef nonnull %call2.i) #5
  br label %dt_to_map_one_config.exit.thread

for.end.i:                                        ; preds = %if.end16.i.for.end.i_crit_edge, %land.lhs.true12.i.for.end.i_crit_edge
  %pctldev.0.i = phi ptr [ %call17.i, %if.end16.i.for.end.i_crit_edge ], [ %pctldev, %land.lhs.true12.i.for.end.i_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %call2.i) #5
  %desc.i = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev.0.i, i32 0, i32 1
  %40 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %desc.i, align 4
  %pctlops.i = getelementptr inbounds %struct.pinctrl_desc, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %pctlops.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pctlops.i, align 4
  %dt_node_to_map.i = getelementptr inbounds %struct.pinctrl_ops, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %dt_node_to_map.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dt_node_to_map.i, align 4
  %tobool26.not.i = icmp eq ptr %45, null
  br i1 %tobool26.not.i, label %do.end.i, label %if.end31.i

do.end.i:                                         ; preds = %for.end.i
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  %dev29.i = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev.0.i, i32 0, i32 8
  %48 = ptrtoint ptr %dev29.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev29.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i80.i = icmp eq ptr %51, null
  br i1 %tobool.not.i80.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %49, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %53, %if.end.i.i ], [ %51, %do.end.i.dev_name.exit.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.10, ptr noundef %retval.0.i.i) #8
  br label %dt_to_map_one_config.exit.thread

if.end31.i:                                       ; preds = %for.end.i
  %call33.i = call i32 %45(ptr noundef nonnull %pctldev.0.i, ptr noundef nonnull %call26, ptr noundef nonnull %map.i, ptr noundef nonnull %num_maps.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp34.i = icmp slt i32 %call33.i, 0
  br i1 %cmp34.i, label %if.end31.i.dt_to_map_one_config.exit.thread_crit_edge, label %if.else.i

if.end31.i.dt_to_map_one_config.exit.thread_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dt_to_map_one_config.exit.thread

if.else.i:                                        ; preds = %if.end31.i
  %54 = ptrtoint ptr %num_maps.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_maps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp36.i = icmp eq i32 %55, 0
  br i1 %cmp36.i, label %dt_to_map_one_config.exit.thread92, label %if.end43.i

dt_to_map_one_config.exit.thread92:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %57, ptr noundef nonnull @.str.13, ptr noundef %25) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_maps.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %map.i) #5
  call void @of_node_put(ptr noundef nonnull %call26) #5
  br label %for.inc

if.end43.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %map.i, align 4
  %call44.i = call fastcc i32 @dt_remember_or_free_map(ptr noundef %p, ptr noundef %25, ptr noundef nonnull %pctldev.0.i, ptr noundef %59, i32 noundef %55) #5
  br label %dt_to_map_one_config.exit

dt_to_map_one_config.exit.thread:                 ; preds = %if.end31.i.dt_to_map_one_config.exit.thread_crit_edge, %dev_name.exit.i, %if.then24.i
  %retval.0.i86.ph = phi i32 [ -19, %if.then24.i ], [ -19, %dev_name.exit.i ], [ %call33.i, %if.end31.i.dt_to_map_one_config.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_maps.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %map.i) #5
  call void @of_node_put(ptr noundef nonnull %call26) #5
  br label %err

dt_to_map_one_config.exit:                        ; preds = %if.end43.i, %if.then5.i
  %retval.0.i86 = phi i32 [ %ret.0.i, %if.then5.i ], [ %call44.i, %if.end43.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_maps.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %map.i) #5
  call void @of_node_put(ptr noundef nonnull %call26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i86)
  %cmp36 = icmp slt i32 %retval.0.i86, 0
  br i1 %cmp36, label %dt_to_map_one_config.exit.err_crit_edge, label %dt_to_map_one_config.exit.for.inc_crit_edge

dt_to_map_one_config.exit.for.inc_crit_edge:      ; preds = %dt_to_map_one_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

dt_to_map_one_config.exit.err_crit_edge:          ; preds = %dt_to_map_one_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc:                                          ; preds = %dt_to_map_one_config.exit.for.inc_crit_edge, %dt_to_map_one_config.exit.thread92
  %inc = add nuw nsw i32 %config.0132, 1
  %60 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %size, align 4
  %cmp24 = icmp slt i32 %inc, %61
  br i1 %cmp24, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end22.for.end_crit_edge
  %.lcssa = phi i32 [ %17, %if.end22.for.end_crit_edge ], [ %61, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa)
  %tobool39.not = icmp eq i32 %.lcssa, 0
  br i1 %tobool39.not, label %if.then40, label %for.end.for.inc46_crit_edge

for.end.for.inc46_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc46

if.then40:                                        ; preds = %for.end
  %62 = ptrtoint ptr %statename to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %statename, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %64 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 3520, i32 noundef 28) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then40.err_crit_edge, label %dt_remember_dummy_state.exit

if.then40.err_crit_edge:                          ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

dt_remember_dummy_state.exit:                     ; preds = %if.then40
  %type.i = getelementptr inbounds %struct.pinctrl_map, ptr %call7.i.i.i, i32 0, i32 2
  %65 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %type.i, align 8
  %call1.i = call fastcc i32 @dt_remember_or_free_map(ptr noundef %p, ptr noundef %63, ptr noundef null, ptr noundef nonnull %call7.i.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp42 = icmp slt i32 %call1.i, 0
  br i1 %cmp42, label %dt_remember_dummy_state.exit.err_crit_edge, label %dt_remember_dummy_state.exit.for.inc46_crit_edge

dt_remember_dummy_state.exit.for.inc46_crit_edge: ; preds = %dt_remember_dummy_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc46

dt_remember_dummy_state.exit.err_crit_edge:       ; preds = %dt_remember_dummy_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc46:                                        ; preds = %dt_remember_dummy_state.exit.for.inc46_crit_edge, %for.end.for.inc46_crit_edge
  %inc47 = add i32 %state.0136, 1
  %call12 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.4, i32 noundef %inc47) #5
  %call13 = call ptr @of_find_property(ptr noundef nonnull %3, ptr noundef %call12, ptr noundef nonnull %size) #5
  call void @kfree(ptr noundef %call12) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.then15, label %for.inc46.if.end18_crit_edge

for.inc46.if.end18_crit_edge:                     ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

err:                                              ; preds = %dt_remember_dummy_state.exit.err_crit_edge, %if.then40.err_crit_edge, %dt_to_map_one_config.exit.err_crit_edge, %dt_to_map_one_config.exit.thread, %do.end31
  %ret.0 = phi i32 [ -22, %do.end31 ], [ %retval.0.i86.ph, %dt_to_map_one_config.exit.thread ], [ %retval.0.i86, %dt_to_map_one_config.exit.err_crit_edge ], [ -12, %if.then40.err_crit_edge ], [ %call1.i, %dt_remember_dummy_state.exit.err_crit_edge ]
  call void @pinctrl_dt_free_maps(ptr noundef %p)
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then16, %if.then15.cleanup_crit_edge, %if.then7, %do.body, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ -19, %if.then16 ], [ 0, %if.then7 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then15.cleanup_crit_edge ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %statename) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_phandle(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pinctrl_count_index_with_args(ptr noundef %np, ptr noundef %list_name) #0 align 64 {
entry:
  %cells_size.i.i = alloca i32, align 4
  %size.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i) #5
  %0 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %size.i, align 4, !annotation !45
  %call.i = call ptr @of_get_property(ptr noundef %np, ptr noundef %list_name, ptr noundef nonnull %size.i) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.pinctrl_get_list_and_count.exit.thread_crit_edge, label %if.end.i

entry.pinctrl_get_list_and_count.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pinctrl_get_list_and_count.exit.thread

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cells_size.i.i) #5
  %1 = ptrtoint ptr %cells_size.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %cells_size.i.i, align 4, !annotation !45
  %parent.i.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 6
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 4
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.16, ptr noundef nonnull %cells_size.i.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool.not.i.i, label %if.end.i.pinctrl_find_cells_size.exit.i_crit_edge, label %if.then.i.i

if.end.i.pinctrl_find_cells_size.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pinctrl_find_cells_size.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  %4 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i.i, align 4
  %parent2.i.i = getelementptr inbounds %struct.device_node, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %parent2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent2.i.i, align 4
  %call.i.i12.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.16, ptr noundef nonnull %cells_size.i.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i12.i.i)
  %tobool4.not.i.i = icmp sgt i32 %call.i.i12.i.i, -1
  br i1 %tobool4.not.i.i, label %if.then.i.i.pinctrl_find_cells_size.exit.i_crit_edge, label %pinctrl_find_cells_size.exit.thread.i

if.then.i.i.pinctrl_find_cells_size.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pinctrl_find_cells_size.exit.i

pinctrl_find_cells_size.exit.thread.i:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cells_size.i.i) #5
  br label %pinctrl_get_list_and_count.exit.thread

pinctrl_find_cells_size.exit.i:                   ; preds = %if.then.i.i.pinctrl_find_cells_size.exit.i_crit_edge, %if.end.i.pinctrl_find_cells_size.exit.i_crit_edge
  %8 = ptrtoint ptr %cells_size.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cells_size.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cells_size.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp slt i32 %9, 0
  br i1 %cmp.i, label %pinctrl_find_cells_size.exit.i.pinctrl_get_list_and_count.exit.thread_crit_edge, label %if.end

pinctrl_find_cells_size.exit.i.pinctrl_get_list_and_count.exit.thread_crit_edge: ; preds = %pinctrl_find_cells_size.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pinctrl_get_list_and_count.exit.thread

pinctrl_get_list_and_count.exit.thread:           ; preds = %pinctrl_find_cells_size.exit.i.pinctrl_get_list_and_count.exit.thread_crit_edge, %pinctrl_find_cells_size.exit.thread.i, %entry.pinctrl_get_list_and_count.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #5
  br label %cleanup

if.end:                                           ; preds = %pinctrl_find_cells_size.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i, align 4
  %div11.i = lshr i32 %11, 2
  %add.i = add nuw i32 %9, 1
  %div4.i = udiv i32 %div11.i, %add.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %pinctrl_get_list_and_count.exit.thread
  %retval.0 = phi i32 [ %div4.i, %if.end ], [ -2, %pinctrl_get_list_and_count.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pinctrl_parse_index_with_args(ptr noundef %np, ptr noundef %list_name, i32 noundef %index, ptr nocapture noundef writeonly %out_args) #0 align 64 {
entry:
  %cells_size.i.i = alloca i32, align 4
  %size.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i) #5
  %0 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %size.i, align 4, !annotation !45
  %call.i = call ptr @of_get_property(ptr noundef %np, ptr noundef %list_name, ptr noundef nonnull %size.i) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.pinctrl_get_list_and_count.exit.thread_crit_edge, label %if.end.i

entry.pinctrl_get_list_and_count.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pinctrl_get_list_and_count.exit.thread

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cells_size.i.i) #5
  %1 = ptrtoint ptr %cells_size.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %cells_size.i.i, align 4, !annotation !45
  %parent.i.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 6
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 4
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.16, ptr noundef nonnull %cells_size.i.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool.not.i.i, label %if.end.i.pinctrl_find_cells_size.exit.i_crit_edge, label %if.then.i.i

if.end.i.pinctrl_find_cells_size.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pinctrl_find_cells_size.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  %4 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i.i, align 4
  %parent2.i.i = getelementptr inbounds %struct.device_node, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %parent2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent2.i.i, align 4
  %call.i.i12.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.16, ptr noundef nonnull %cells_size.i.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i12.i.i)
  %tobool4.not.i.i = icmp sgt i32 %call.i.i12.i.i, -1
  br i1 %tobool4.not.i.i, label %if.then.i.i.pinctrl_find_cells_size.exit.i_crit_edge, label %pinctrl_find_cells_size.exit.thread.i

if.then.i.i.pinctrl_find_cells_size.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pinctrl_find_cells_size.exit.i

pinctrl_find_cells_size.exit.thread.i:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cells_size.i.i) #5
  br label %pinctrl_get_list_and_count.exit.thread

pinctrl_find_cells_size.exit.i:                   ; preds = %if.then.i.i.pinctrl_find_cells_size.exit.i_crit_edge, %if.end.i.pinctrl_find_cells_size.exit.i_crit_edge
  %8 = ptrtoint ptr %cells_size.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cells_size.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cells_size.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp slt i32 %9, 0
  br i1 %cmp.i, label %pinctrl_find_cells_size.exit.i.pinctrl_get_list_and_count.exit.thread_crit_edge, label %lor.lhs.false

pinctrl_find_cells_size.exit.i.pinctrl_get_list_and_count.exit.thread_crit_edge: ; preds = %pinctrl_find_cells_size.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pinctrl_get_list_and_count.exit.thread

pinctrl_get_list_and_count.exit.thread:           ; preds = %pinctrl_find_cells_size.exit.i.pinctrl_get_list_and_count.exit.thread_crit_edge, %pinctrl_find_cells_size.exit.thread.i, %entry.pinctrl_get_list_and_count.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %pinctrl_find_cells_size.exit.i
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not = icmp eq i32 %9, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %div11.i = lshr i32 %11, 2
  %add.i = add nuw i32 %9, 1
  %div4.i = udiv i32 %div11.i, %add.i
  %12 = getelementptr inbounds i8, ptr %out_args, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 64)
  %14 = ptrtoint ptr %out_args to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %np, ptr %out_args, align 4
  %args_count.i = getelementptr inbounds %struct.of_phandle_args, ptr %out_args, i32 0, i32 1
  %15 = ptrtoint ptr %args_count.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add.i, ptr %args_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div4.i, i32 %index)
  %cmp.not.i = icmp sgt i32 %div4.i, %index
  br i1 %cmp.not.i, label %if.end.i14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i14:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %9)
  %cmp414.i = icmp ult i32 %9, 2147483647
  br i1 %cmp414.i, label %for.body.preheader.i, label %if.end.i14.cleanup_crit_edge

if.end.i14.cleanup_crit_edge:                     ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader.i:                             ; preds = %if.end.i14
  %mul.i = mul i32 %add.i, %index
  %add.ptr.i = getelementptr i32, ptr %call.i, i32 %mul.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.016.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %list.addr.015.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr.i, %for.body.preheader.i ]
  %incdec.ptr.i = getelementptr i32, ptr %list.addr.015.i, i32 1
  %16 = ptrtoint ptr %list.addr.015.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %list.addr.015.i, align 4
  %arrayidx.i = getelementptr %struct.of_phandle_args, ptr %out_args, i32 0, i32 2, i32 %i.016.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %i.016.i, %9
  br i1 %exitcond.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %if.end.i14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %pinctrl_get_list_and_count.exit.thread
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ -2, %pinctrl_get_list_and_count.exit.thread ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end.i14.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_deferred_probe_check_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dt_remember_or_free_map(ptr noundef %p, ptr noundef %statename, ptr noundef %pctldev, ptr noundef %map, i32 noundef %num_maps) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_maps)
  %cmp47.not = icmp eq i32 %num_maps, 0
  br i1 %cmp47.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.pinctrl, ptr %p, i32 0, i32 1
  %tobool3.not = icmp eq ptr %pctldev, null
  %dev5 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %for.body.dev_name.exit_crit_edge

for.body.dev_name.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %for.body.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %for.body.dev_name.exit_crit_edge ]
  %call1 = tail call ptr @kstrdup_const(ptr noundef %retval.0.i, i32 noundef 3264) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %dev_name.exit.err_free_map_crit_edge, label %if.end

dev_name.exit.err_free_map_crit_edge:             ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_map

if.end:                                           ; preds = %dev_name.exit
  %arrayidx = getelementptr %struct.pinctrl_map, ptr %map, i32 %i.048
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1, ptr %arrayidx, align 4
  %name = getelementptr %struct.pinctrl_map, ptr %map, i32 %i.048, i32 1
  %7 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %statename, ptr %name, align 4
  br i1 %tobool3.not, label %if.end.for.inc_crit_edge, label %if.then4

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then4:                                         ; preds = %if.end
  %8 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev5, align 4
  %init_name.i40 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i40 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i40, align 8
  %tobool.not.i41 = icmp eq ptr %11, null
  br i1 %tobool.not.i41, label %if.end.i42, label %if.then4.dev_name.exit44_crit_edge

if.then4.dev_name.exit44_crit_edge:               ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit44

if.end.i42:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  br label %dev_name.exit44

dev_name.exit44:                                  ; preds = %if.end.i42, %if.then4.dev_name.exit44_crit_edge
  %retval.0.i43 = phi ptr [ %13, %if.end.i42 ], [ %11, %if.then4.dev_name.exit44_crit_edge ]
  %ctrl_dev_name = getelementptr %struct.pinctrl_map, ptr %map, i32 %i.048, i32 3
  %14 = ptrtoint ptr %ctrl_dev_name to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %retval.0.i43, ptr %ctrl_dev_name, align 4
  br label %for.inc

for.inc:                                          ; preds = %dev_name.exit44, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, %num_maps
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 20) #9
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %for.end.err_free_map_crit_edge, label %if.end12

for.end.err_free_map_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_map

if.end12:                                         ; preds = %for.end
  %pctldev13 = getelementptr inbounds %struct.pinctrl_dt_map, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %pctldev13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pctldev, ptr %pctldev13, align 8
  %map14 = getelementptr inbounds %struct.pinctrl_dt_map, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %map14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %map, ptr %map14, align 4
  %num_maps15 = getelementptr inbounds %struct.pinctrl_dt_map, ptr %call7.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %num_maps15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %num_maps, ptr %num_maps15, align 8
  %dt_maps = getelementptr inbounds %struct.pinctrl, ptr %p, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.pinctrl, ptr %p, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %20, ptr noundef %dt_maps) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end12.list_add_tail.exit_crit_edge

if.end12.list_add_tail.exit_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dt_maps, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %call7.i.i, ptr %20, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end12.list_add_tail.exit_crit_edge
  %call16 = tail call i32 @pinctrl_register_mappings(ptr noundef %map, i32 noundef %num_maps) #5
  br label %cleanup17

err_free_map:                                     ; preds = %for.end.err_free_map_crit_edge, %dev_name.exit.err_free_map_crit_edge
  br i1 %cmp47.not, label %err_free_map.for.end.i_crit_edge, label %err_free_map.for.body.i_crit_edge

err_free_map.for.body.i_crit_edge:                ; preds = %err_free_map
  br label %for.body.i

err_free_map.for.end.i_crit_edge:                 ; preds = %err_free_map
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %err_free_map.for.body.i_crit_edge
  %i.018.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %err_free_map.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pinctrl_map, ptr %map, i32 %i.018.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree_const(ptr noundef %26) #5
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %num_maps
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %err_free_map.for.end.i_crit_edge
  %tobool.not.i45 = icmp eq ptr %pctldev, null
  br i1 %tobool.not.i45, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.end.i
  %desc.i = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 1
  %28 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %desc.i, align 4
  %pctlops.i = getelementptr inbounds %struct.pinctrl_desc, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %pctlops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pctlops.i, align 4
  %dt_free_map.i = getelementptr inbounds %struct.pinctrl_ops, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %dt_free_map.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dt_free_map.i, align 4
  %tobool3.not.i = icmp eq ptr %33, null
  br i1 %tobool3.not.i, label %if.then.i.cleanup17_crit_edge, label %if.then4.i

if.then.i.cleanup17_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup17

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %33(ptr noundef nonnull %pctldev, ptr noundef %map, i32 noundef %num_maps) #5
  br label %cleanup17

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef %map) #5
  br label %cleanup17

cleanup17:                                        ; preds = %if.else.i, %if.then4.i, %if.then.i.cleanup17_crit_edge, %list_add_tail.exit
  %retval.0 = phi i32 [ %call16, %list_add_tail.exit ], [ -12, %if.then.i.cleanup17_crit_edge ], [ -12, %if.then4.i ], [ -12, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_register_mappings(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !17, !18, !20, !22, !24, !26, !27, !28, !29, !31, !32, !33, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__ksymtab_of_pinctrl_get, !1, !"__ksymtab_of_pinctrl_get", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/devicetree.c", i32 107, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/devicetree.c", i32 211, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @pinctrl_dt_to_map.__UNIQUE_ID_ddebug223, !3, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/devicetree.c", i32 222, i32 36}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/devicetree.c", i32 236, i32 43}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/devicetree.c", i32 253, i32 5}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @pinctrl_dt_to_map._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @pinctrl_dt_to_map._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__ksymtab_pinctrl_count_index_with_args, !19, !"__ksymtab_pinctrl_count_index_with_args", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/devicetree.c", i32 360, i32 1}
!20 = !{ptr @__ksymtab_pinctrl_parse_index_with_args, !21, !"__ksymtab_pinctrl_parse_index_with_args", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/devicetree.c", i32 425, i32 1}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/devicetree.c", i32 127, i32 14}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/devicetree.c", i32 160, i32 3}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @dt_to_map_one_config._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @dt_to_map_one_config._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pinctrl/devicetree.c", i32 173, i32 3}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @dt_to_map_one_config._entry.12, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @dt_to_map_one_config._entry_ptr.15, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/devicetree.c", i32 289, i32 27}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"auto-init"}
!46 = !{i64 2148286676, i64 2148286681, i64 2148286694, i64 2148286738, i64 2148286772, i64 2148286793}
