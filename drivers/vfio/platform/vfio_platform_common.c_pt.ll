; ModuleID = '/llk/IR_all_yes/drivers/vfio/platform/vfio_platform_common.c_pt.bc'
source_filename = "../drivers/vfio/platform/vfio_platform_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+vfio_platform_probe_common\22, \22a\22\09"
module asm "\09.weak\09__crc_vfio_platform_probe_common\09\09\09\09"
module asm "\09.long\09__crc_vfio_platform_probe_common\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfio_platform_probe_common:\09\09\09\09\09"
module asm "\09.asciz \09\22vfio_platform_probe_common\22\09\09\09\09\09"
module asm "__kstrtabns_vfio_platform_probe_common:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vfio_platform_remove_common\22, \22a\22\09"
module asm "\09.weak\09__crc_vfio_platform_remove_common\09\09\09\09"
module asm "\09.long\09__crc_vfio_platform_remove_common\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfio_platform_remove_common:\09\09\09\09\09"
module asm "\09.asciz \09\22vfio_platform_remove_common\22\09\09\09\09\09"
module asm "__kstrtabns_vfio_platform_remove_common:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__vfio_platform_register_reset\22, \22a\22\09"
module asm "\09.weak\09__crc___vfio_platform_register_reset\09\09\09\09"
module asm "\09.long\09__crc___vfio_platform_register_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___vfio_platform_register_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22__vfio_platform_register_reset\22\09\09\09\09\09"
module asm "__kstrtabns___vfio_platform_register_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vfio_platform_unregister_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_vfio_platform_unregister_reset\09\09\09\09"
module asm "\09.long\09__crc_vfio_platform_unregister_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfio_platform_unregister_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22vfio_platform_unregister_reset\22\09\09\09\09\09"
module asm "__kstrtabns_vfio_platform_unregister_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.vfio_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.vfio_platform_device = type { %struct.vfio_device, ptr, i32, ptr, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i8 }
%struct.vfio_device = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.refcount_struct, i32, %struct.completion, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.vfio_platform_reset_node = type { %struct.list_head, ptr, ptr, ptr }
%struct.vfio_platform_region = type { i64, i32, i32, i32, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vfio_device_info = type { i32, i32, i32, i32, i32 }
%struct.vfio_region_info = type { i32, i32, i32, i32, i64, i64 }
%struct.vfio_irq_info = type { i32, i32, i32, i32 }
%struct.vfio_irq_set = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.vfio_platform_irq = type { i32, i32, i32, ptr, ptr, i8, %struct.spinlock, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@vfio_platform_ops = internal constant { %struct.vfio_device_ops, [60 x i8] } { %struct.vfio_device_ops { ptr @.str.9, ptr @vfio_platform_open_device, ptr @vfio_platform_close_device, ptr @vfio_platform_read, ptr @vfio_platform_write, ptr @vfio_platform_ioctl, ptr @vfio_platform_mmap, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@vfio_platform_probe_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 661, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"VFIO: No reset function found for device %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vfio_platform_probe_common\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/vfio/platform/vfio_platform_common.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vfio_platform_probe_common._entry_ptr = internal global ptr @vfio_platform_probe_common._entry, section ".printk_index", align 4
@vfio_platform_probe_common.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&vdev->igate\00", [19 x i8] zeroinitializer }, align 32
@__kstrtab_vfio_platform_probe_common = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfio_platform_probe_common = external dso_local constant [0 x i8], align 1
@__ksymtab_vfio_platform_probe_common = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfio_platform_probe_common to i32), ptr @__kstrtab_vfio_platform_probe_common, ptr @__kstrtabns_vfio_platform_probe_common }, section "___ksymtab_gpl+vfio_platform_probe_common", align 4
@__kstrtab_vfio_platform_remove_common = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfio_platform_remove_common = external dso_local constant [0 x i8], align 1
@__ksymtab_vfio_platform_remove_common = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfio_platform_remove_common to i32), ptr @__kstrtab_vfio_platform_remove_common, ptr @__kstrtabns_vfio_platform_remove_common }, section "___ksymtab_gpl+vfio_platform_remove_common", align 4
@driver_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.31, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @driver_lock, i64 52), ptr getelementptr (i8, ptr @driver_lock, i64 52) }, ptr @driver_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@reset_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @reset_list, ptr @reset_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab___vfio_platform_register_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns___vfio_platform_register_reset = external dso_local constant [0 x i8], align 1
@__ksymtab___vfio_platform_register_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__vfio_platform_register_reset to i32), ptr @__kstrtab___vfio_platform_register_reset, ptr @__kstrtabns___vfio_platform_register_reset }, section "___ksymtab_gpl+__vfio_platform_register_reset", align 4
@__kstrtab_vfio_platform_unregister_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfio_platform_unregister_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_vfio_platform_unregister_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfio_platform_unregister_reset to i32), ptr @__kstrtab_vfio_platform_unregister_reset, ptr @__kstrtabns_vfio_platform_unregister_reset }, section "___ksymtab_gpl+vfio_platform_unregister_reset", align 4
@__UNIQUE_ID_version233 = internal constant [32 x i8] c"vfio_platform_base.version=0.10\00", section ".modinfo", align 1
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vfio_platform_base\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0.10\00", [27 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.7, ptr @.str.8 }, section "__modver", align 4
@__UNIQUE_ID_file234 = internal constant [65 x i8] c"vfio_platform_base.file=drivers/vfio/platform/vfio-platform-base\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [34 x i8] c"vfio_platform_base.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [78 x i8] c"vfio_platform_base.author=Antonios Motakis <a.motakis@virtualopensystems.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [57 x i8] c"vfio_platform_base.description=VFIO platform base module\00", section ".modinfo", align 1
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vfio-platform\00", [18 x i8] zeroinitializer }, align 32
@vfio_platform_open_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 264, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"VFIO: reset driver is required and reset call failed in open (%d) %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vfio_platform_open_device\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@vfio_platform_open_device._entry_ptr = internal global ptr @vfio_platform_open_device._entry, section ".printk_index", align 4
@.str.13 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@vfio_platform_call_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 210, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VFIO: reset\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vfio_platform_call_reset\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@vfio_platform_call_reset._entry_ptr = internal global ptr @vfio_platform_call_reset._entry, section ".printk_index", align 4
@vfio_platform_call_reset._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 213, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@vfio_platform_call_reset._entry_ptr.18 = internal global ptr @vfio_platform_call_reset._entry.17, section ".printk_index", align 4
@vfio_platform_call_reset._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 217, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VFIO: no reset function found!\0A\00", [32 x i8] zeroinitializer }, align 32
@vfio_platform_call_reset._entry_ptr.21 = internal global ptr @vfio_platform_call_reset._entry.19, section ".printk_index", align 4
@vfio_platform_close_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 233, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"VFIO: reset driver is required and reset call failed in release (%d) %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vfio_platform_close_device\00", [37 x i8] zeroinitializer }, align 32
@vfio_platform_close_device._entry_ptr = internal global ptr @vfio_platform_close_device._entry, section ".printk_index", align 4
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compatible\00", [21 x i8] zeroinitializer }, align 32
@vfio_platform_of_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 620, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"VFIO: Cannot retrieve compat for %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vfio_platform_of_probe\00", [41 x i8] zeroinitializer }, align 32
@vfio_platform_of_probe._entry_ptr = internal global ptr @vfio_platform_of_probe._entry, section ".printk_index", align 4
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vfio-reset:%s\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"driver_lock.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"driver_lock\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 512]
@__sancov_gen_cov_switch_values.33 = internal global [7 x i64] [i64 5, i64 32, i64 15211, i64 15212, i64 15213, i64 15214, i64 15215]
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"vfio_platform_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 602, i32 37 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 660, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 669, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [12 x i8] c"driver_lock\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [11 x i8] c"reset_list\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 28, i32 8 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 718, i32 1 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 603, i32 11 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 261, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 210, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 213, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 217, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 230, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 174, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 617, i32 41 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 620, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 121, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.146 = private constant [48 x i8] c"../drivers/vfio/platform/vfio_platform_common.c\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 29, i32 8 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__UNIQUE_ID_version233, ptr @__ksymtab___vfio_platform_register_reset, ptr @__ksymtab_vfio_platform_probe_common, ptr @__ksymtab_vfio_platform_remove_common, ptr @__ksymtab_vfio_platform_unregister_reset, ptr @__modver_attr, ptr @vfio_platform_call_reset._entry, ptr @vfio_platform_call_reset._entry.17, ptr @vfio_platform_call_reset._entry.19, ptr @vfio_platform_call_reset._entry_ptr, ptr @vfio_platform_call_reset._entry_ptr.18, ptr @vfio_platform_call_reset._entry_ptr.21, ptr @vfio_platform_close_device._entry, ptr @vfio_platform_close_device._entry_ptr, ptr @vfio_platform_of_probe._entry, ptr @vfio_platform_of_probe._entry_ptr, ptr @vfio_platform_open_device._entry, ptr @vfio_platform_open_device._entry_ptr, ptr @vfio_platform_probe_common._entry, ptr @vfio_platform_probe_common._entry_ptr, ptr @vfio_platform_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @vfio_platform_probe_common.__key, ptr @.str.5, ptr @driver_lock, ptr @reset_list, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_platform_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_platform_probe_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_platform_probe_common.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_platform_open_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_platform_call_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_platform_call_reset._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_platform_call_reset._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_platform_close_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_platform_of_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfio_platform_probe_common(ptr noundef %vdev, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @vfio_init_group_dev(ptr noundef %vdev, ptr noundef %dev, ptr noundef nonnull @vfio_platform_ops) #8
  %compat.i = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 6
  %call.i = tail call i32 @device_property_read_string(ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef %compat.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end5, label %vfio_platform_of_probe.exit

vfio_platform_of_probe.exit:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 11
  %0 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef %1) #11
  br label %out_uninit

if.end5:                                          ; preds = %entry
  %device = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 9
  %2 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %device, align 4
  %acpihid.i = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 7
  %3 = ptrtoint ptr %acpihid.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %acpihid.i, align 4
  %cmp.not.i = icmp eq ptr %4, null
  br i1 %cmp.not.i, label %if.end.i, label %if.end5.land.lhs.true_crit_edge

if.end5.land.lhs.true_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end.i:                                         ; preds = %if.end5
  %5 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %compat.i, align 4
  %reset_module.i = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @driver_lock, i32 noundef 0) #8
  %iter.014.i.i = load ptr, ptr @reset_list, align 4
  %cmp.not15.i.i = icmp eq ptr %iter.014.i.i, @reset_list
  br i1 %cmp.not15.i.i, label %if.end.i.vfio_platform_lookup_reset.exit.thread.i_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.vfio_platform_lookup_reset.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfio_platform_lookup_reset.exit.thread.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %iter.016.i.i = phi ptr [ %iter.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %iter.014.i.i, %if.end.i.for.body.i.i_crit_edge ]
  %compat1.i.i = getelementptr inbounds %struct.vfio_platform_reset_node, ptr %iter.016.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %compat1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %compat1.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef %8, ptr noundef %6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %owner.i.i = getelementptr inbounds %struct.vfio_platform_reset_node, ptr %iter.016.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %owner.i.i, align 4
  %call2.i.i = tail call zeroext i1 @try_module_get(ptr noundef %10) #8
  br i1 %call2.i.i, label %vfio_platform_lookup_reset.exit.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %11 = ptrtoint ptr %iter.016.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %iter.0.i.i = load ptr, ptr %iter.016.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %iter.0.i.i, @reset_list
  br i1 %cmp.not.i.i, label %for.inc.i.i.vfio_platform_lookup_reset.exit.thread.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.vfio_platform_lookup_reset.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfio_platform_lookup_reset.exit.thread.i

vfio_platform_lookup_reset.exit.thread.i:         ; preds = %for.inc.i.i.vfio_platform_lookup_reset.exit.thread.i_crit_edge, %if.end.i.vfio_platform_lookup_reset.exit.thread.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @driver_lock) #8
  %of_reset43.i = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 15
  %12 = ptrtoint ptr %of_reset43.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %of_reset43.i, align 4
  br label %if.then3.i

vfio_platform_lookup_reset.exit.i:                ; preds = %land.lhs.true.i.i
  %owner.i.i.le = getelementptr inbounds %struct.vfio_platform_reset_node, ptr %iter.016.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %owner.i.i.le to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %owner.i.i.le, align 4
  %15 = ptrtoint ptr %reset_module.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %reset_module.i, align 4
  %of_reset.i.i = getelementptr inbounds %struct.vfio_platform_reset_node, ptr %iter.016.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %of_reset.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_reset.i.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @driver_lock) #8
  %of_reset.i = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 15
  %18 = ptrtoint ptr %of_reset.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %of_reset.i, align 4
  %tobool.not.i40 = icmp eq ptr %17, null
  br i1 %tobool.not.i40, label %vfio_platform_lookup_reset.exit.i.if.then3.i_crit_edge, label %vfio_platform_lookup_reset.exit.i.if.end10_crit_edge

vfio_platform_lookup_reset.exit.i.if.end10_crit_edge: ; preds = %vfio_platform_lookup_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

vfio_platform_lookup_reset.exit.i.if.then3.i_crit_edge: ; preds = %vfio_platform_lookup_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

if.then3.i:                                       ; preds = %vfio_platform_lookup_reset.exit.i.if.then3.i_crit_edge, %vfio_platform_lookup_reset.exit.thread.i
  %of_reset46.i = phi ptr [ %of_reset43.i, %vfio_platform_lookup_reset.exit.thread.i ], [ %of_reset.i, %vfio_platform_lookup_reset.exit.i.if.then3.i_crit_edge ]
  %19 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %compat.i, align 4
  %call5.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.30, ptr noundef %20) #8
  %21 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %compat.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @driver_lock, i32 noundef 0) #8
  %iter.014.i24.i = load ptr, ptr @reset_list, align 4
  %cmp.not15.i25.i = icmp eq ptr %iter.014.i24.i, @reset_list
  br i1 %cmp.not15.i25.i, label %if.then3.i.if.end10.i.thread52_crit_edge, label %if.then3.i.for.body.i30.i_crit_edge

if.then3.i.for.body.i30.i_crit_edge:              ; preds = %if.then3.i
  br label %for.body.i30.i

if.then3.i.if.end10.i.thread52_crit_edge:         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.thread52

for.body.i30.i:                                   ; preds = %for.inc.i39.i.for.body.i30.i_crit_edge, %if.then3.i.for.body.i30.i_crit_edge
  %iter.016.i26.i = phi ptr [ %iter.0.i37.i, %for.inc.i39.i.for.body.i30.i_crit_edge ], [ %iter.014.i24.i, %if.then3.i.for.body.i30.i_crit_edge ]
  %compat1.i27.i = getelementptr inbounds %struct.vfio_platform_reset_node, ptr %iter.016.i26.i, i32 0, i32 1
  %23 = ptrtoint ptr %compat1.i27.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %compat1.i27.i, align 4
  %call.i28.i = tail call i32 @strcmp(ptr noundef %24, ptr noundef %22) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i)
  %tobool.not.i29.i = icmp eq i32 %call.i28.i, 0
  br i1 %tobool.not.i29.i, label %land.lhs.true.i33.i, label %for.body.i30.i.for.inc.i39.i_crit_edge

for.body.i30.i.for.inc.i39.i_crit_edge:           ; preds = %for.body.i30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i39.i

land.lhs.true.i33.i:                              ; preds = %for.body.i30.i
  %owner.i31.i = getelementptr inbounds %struct.vfio_platform_reset_node, ptr %iter.016.i26.i, i32 0, i32 2
  %25 = ptrtoint ptr %owner.i31.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %owner.i31.i, align 4
  %call2.i32.i = tail call zeroext i1 @try_module_get(ptr noundef %26) #8
  br i1 %call2.i32.i, label %if.end10.i, label %land.lhs.true.i33.i.for.inc.i39.i_crit_edge

land.lhs.true.i33.i.for.inc.i39.i_crit_edge:      ; preds = %land.lhs.true.i33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i39.i

for.inc.i39.i:                                    ; preds = %land.lhs.true.i33.i.for.inc.i39.i_crit_edge, %for.body.i30.i.for.inc.i39.i_crit_edge
  %27 = ptrtoint ptr %iter.016.i26.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %iter.0.i37.i = load ptr, ptr %iter.016.i26.i, align 4
  %cmp.not.i38.i = icmp eq ptr %iter.0.i37.i, @reset_list
  br i1 %cmp.not.i38.i, label %for.inc.i39.i.if.end10.i.thread52_crit_edge, label %for.inc.i39.i.for.body.i30.i_crit_edge

for.inc.i39.i.for.body.i30.i_crit_edge:           ; preds = %for.inc.i39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i30.i

for.inc.i39.i.if.end10.i.thread52_crit_edge:      ; preds = %for.inc.i39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.thread52

if.end10.i.thread52:                              ; preds = %for.inc.i39.i.if.end10.i.thread52_crit_edge, %if.then3.i.if.end10.i.thread52_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @driver_lock) #8
  %28 = ptrtoint ptr %of_reset46.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %of_reset46.i, align 4
  br label %land.lhs.true

if.end10.i:                                       ; preds = %land.lhs.true.i33.i
  %owner.i31.i.le = getelementptr inbounds %struct.vfio_platform_reset_node, ptr %iter.016.i26.i, i32 0, i32 2
  %29 = ptrtoint ptr %owner.i31.i.le to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %owner.i31.i.le, align 4
  %31 = ptrtoint ptr %reset_module.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %reset_module.i, align 4
  %of_reset.i35.i = getelementptr inbounds %struct.vfio_platform_reset_node, ptr %iter.016.i26.i, i32 0, i32 3
  %32 = ptrtoint ptr %of_reset.i35.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_reset.i35.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @driver_lock) #8
  %34 = ptrtoint ptr %of_reset46.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %of_reset46.i, align 4
  %tobool12.not.i = icmp eq ptr %33, null
  br i1 %tobool12.not.i, label %if.end10.i.land.lhs.true_crit_edge, label %if.end10.i.if.end10_crit_edge

if.end10.i.if.end10_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end10.i.land.lhs.true_crit_edge:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end10.i.land.lhs.true_crit_edge, %if.end10.i.thread52, %if.end5.land.lhs.true_crit_edge
  %reset_required = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 16
  %35 = ptrtoint ptr %reset_required to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %reset_required, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool8.not = icmp eq i8 %36, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end10_crit_edge, label %do.end

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 11
  %37 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef %38) #11
  br label %out_uninit

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end10.i.if.end10_crit_edge, %vfio_platform_lookup_reset.exit.i.if.end10_crit_edge
  %call12 = tail call i32 @vfio_register_group_dev(ptr noundef %vdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.body16, label %put_reset

do.body16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %igate = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %igate, ptr noundef nonnull @.str.5, ptr noundef nonnull @vfio_platform_probe_common.__key) #8
  tail call void @pm_runtime_enable(ptr noundef %dev) #8
  br label %cleanup

put_reset:                                        ; preds = %if.end10
  %39 = ptrtoint ptr %acpihid.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %acpihid.i, align 4
  %cmp.not.i42 = icmp eq ptr %40, null
  br i1 %cmp.not.i42, label %if.end.i45, label %put_reset.out_uninit_crit_edge

put_reset.out_uninit_crit_edge:                   ; preds = %put_reset
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_uninit

if.end.i45:                                       ; preds = %put_reset
  %of_reset.i43 = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 15
  %41 = ptrtoint ptr %of_reset.i43 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %of_reset.i43, align 4
  %tobool.not.i44 = icmp eq ptr %42, null
  br i1 %tobool.not.i44, label %if.end.i45.out_uninit_crit_edge, label %if.then1.i

if.end.i45.out_uninit_crit_edge:                  ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_uninit

if.then1.i:                                       ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #10
  %reset_module.i46 = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 8
  %43 = ptrtoint ptr %reset_module.i46 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reset_module.i46, align 4
  tail call void @module_put(ptr noundef %44) #8
  br label %out_uninit

out_uninit:                                       ; preds = %if.then1.i, %if.end.i45.out_uninit_crit_edge, %put_reset.out_uninit_crit_edge, %do.end, %vfio_platform_of_probe.exit
  %ret.1 = phi i32 [ %call.i, %vfio_platform_of_probe.exit ], [ -2, %do.end ], [ %call12, %put_reset.out_uninit_crit_edge ], [ %call12, %if.end.i45.out_uninit_crit_edge ], [ %call12, %if.then1.i ]
  tail call void @vfio_uninit_group_dev(ptr noundef %vdev) #8
  br label %cleanup

cleanup:                                          ; preds = %out_uninit, %do.body16
  %retval.0 = phi i32 [ %ret.1, %out_uninit ], [ 0, %do.body16 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_init_group_dev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfio_register_group_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_uninit_group_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vfio_platform_remove_common(ptr noundef %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @vfio_unregister_group_dev(ptr noundef %vdev) #8
  %device = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 9
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  tail call void @__pm_runtime_disable(ptr noundef %1, i1 noundef zeroext true) #8
  %acpihid.i = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 7
  %2 = ptrtoint ptr %acpihid.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acpihid.i, align 4
  %cmp.not.i = icmp eq ptr %3, null
  br i1 %cmp.not.i, label %if.end.i, label %entry.vfio_platform_put_reset.exit_crit_edge

entry.vfio_platform_put_reset.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfio_platform_put_reset.exit

if.end.i:                                         ; preds = %entry
  %of_reset.i = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 15
  %4 = ptrtoint ptr %of_reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_reset.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i.vfio_platform_put_reset.exit_crit_edge, label %if.then1.i

if.end.i.vfio_platform_put_reset.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfio_platform_put_reset.exit

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %reset_module.i = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 8
  %6 = ptrtoint ptr %reset_module.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_module.i, align 4
  tail call void @module_put(ptr noundef %7) #8
  br label %vfio_platform_put_reset.exit

vfio_platform_put_reset.exit:                     ; preds = %if.then1.i, %if.end.i.vfio_platform_put_reset.exit_crit_edge, %entry.vfio_platform_put_reset.exit_crit_edge
  tail call void @vfio_uninit_group_dev(ptr noundef %vdev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_unregister_group_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__vfio_platform_register_reset(ptr noundef %node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @driver_lock, i32 noundef 0) #8
  %0 = load ptr, ptr @reset_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef nonnull @reset_list, ptr noundef %0) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %node, ptr %prev1.i.i, align 4
  %2 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %node, i32 0, i32 1
  %3 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @reset_list, ptr %prev3.i.i, align 4
  store volatile ptr %node, ptr @reset_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @driver_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vfio_platform_unregister_reset(ptr nocapture noundef readonly %compat, ptr noundef readnone %fn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @driver_lock, i32 noundef 0) #8
  %0 = load ptr, ptr @reset_list, align 4
  %cmp.not21 = icmp eq ptr %0, @reset_list
  br i1 %cmp.not21, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %iter.022 = phi ptr [ %temp.023, %for.inc.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %iter.022 to i32
  call void @__asan_load4_noabort(i32 %1)
  %temp.023 = load ptr, ptr %iter.022, align 4
  %compat5 = getelementptr inbounds %struct.vfio_platform_reset_node, ptr %iter.022, i32 0, i32 1
  %2 = ptrtoint ptr %compat5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %compat5, align 4
  %call = tail call i32 @strcmp(ptr noundef %3, ptr noundef %compat) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %of_reset = getelementptr inbounds %struct.vfio_platform_reset_node, ptr %iter.022, i32 0, i32 3
  %4 = ptrtoint ptr %of_reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_reset, align 4
  %cmp6 = icmp eq ptr %5, %fn
  br i1 %cmp6, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %iter.022) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %iter.022, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %iter.022 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iter.022, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %12 = ptrtoint ptr %iter.022 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %iter.022, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %iter.022, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %temp.023, @reset_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_del.exit, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @driver_lock) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_platform_open_device(ptr noundef %core_vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %get_resource.i = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 13
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %cnt.0.i = phi i32 [ 0, %entry ], [ %inc.i, %while.cond.i.while.cond.i_crit_edge ]
  %0 = ptrtoint ptr %get_resource.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_resource.i, align 4
  %call.i = tail call ptr %1(ptr noundef %core_vdev, i32 noundef %cnt.0.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  %inc.i = add i32 %cnt.0.i, 1
  br i1 %tobool.not.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %cnt.0.i, i32 24) #8
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !94

kcalloc.exit.thread.i:                            ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %regions91.i = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 1
  %4 = ptrtoint ptr %regions91.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %regions91.i, align 4
  br label %cleanup

if.end7.i.i.i:                                    ; preds = %while.end.i
  %5 = extractvalue { i32, i1 } %2, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #14
  %regions.i = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 1
  %6 = ptrtoint ptr %regions.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i.i, ptr %regions.i, align 4
  %tobool3.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool3.not.i, label %if.end7.i.i.i.cleanup_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.cleanup_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.0.i)
  %cmp94.not.i = icmp eq i32 %cnt.0.i, 0
  br i1 %cmp94.not.i, label %for.cond.preheader.i.if.end_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end_crit_edge:            ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.095.i = phi i32 [ %inc49.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %get_resource.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_resource.i, align 4
  %call5.i = tail call ptr %8(ptr noundef %core_vdev, i32 noundef %i.095.i) #8
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %for.body.i.err.i_crit_edge, label %if.end8.i

for.body.i.err.i_crit_edge:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.i

if.end8.i:                                        ; preds = %for.body.i
  %9 = ptrtoint ptr %call5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call5.i, align 4
  %conv.i = zext i32 %10 to i64
  %11 = ptrtoint ptr %regions.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regions.i, align 4
  %arrayidx.i = getelementptr %struct.vfio_platform_region, ptr %12, i32 %i.095.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv.i, ptr %arrayidx.i, align 8
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call5.i, i32 0, i32 1
  %14 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end.i.i, align 4
  %16 = load i32, ptr %call5.i, align 4
  %sub.i.i = add i32 %15, 1
  %add.i.i = sub i32 %sub.i.i, %16
  %17 = load ptr, ptr %regions.i, align 4
  %size.i = getelementptr %struct.vfio_platform_region, ptr %17, i32 %i.095.i, i32 1
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add.i.i, ptr %size.i, align 8
  %19 = load ptr, ptr %regions.i, align 4
  %flags.i = getelementptr %struct.vfio_platform_region, ptr %19, i32 %i.095.i, i32 2
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %flags.i, align 4
  %flags.i.i = getelementptr inbounds %struct.resource, ptr %call5.i, i32 0, i32 3
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %22, 7936
  %23 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i.i, label %if.end8.i.err.i_crit_edge [
    i32 512, label %sw.bb.i
    i32 256, label %sw.bb45.i
  ]

if.end8.i.err.i_crit_edge:                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.i

sw.bb.i:                                          ; preds = %if.end8.i
  %24 = ptrtoint ptr %regions.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regions.i, align 4
  %type.i = getelementptr %struct.vfio_platform_region, ptr %25, i32 %i.095.i, i32 3
  %26 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %type.i, align 8
  %27 = load ptr, ptr %regions.i, align 4
  %flags20.i = getelementptr %struct.vfio_platform_region, ptr %27, i32 %i.095.i, i32 2
  %28 = ptrtoint ptr %flags20.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags20.i, align 4
  %or.i = or i32 %29, 1
  store i32 %or.i, ptr %flags20.i, align 4
  %30 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i.i, align 4
  %and.i = and i32 %31, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool22.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool22.not.i, label %if.then23.i, label %sw.bb.i.if.end28.i_crit_edge

sw.bb.i.if.end28.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

if.then23.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %regions.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regions.i, align 4
  %flags26.i = getelementptr %struct.vfio_platform_region, ptr %33, i32 %i.095.i, i32 2
  %34 = ptrtoint ptr %flags26.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags26.i, align 4
  %or27.i = or i32 %35, 2
  store i32 %or27.i, ptr %flags26.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then23.i, %sw.bb.i.if.end28.i_crit_edge
  %36 = ptrtoint ptr %regions.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regions.i, align 4
  %arrayidx30.i = getelementptr %struct.vfio_platform_region, ptr %37, i32 %i.095.i
  %38 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx30.i, align 8
  %and32.i = and i64 %39, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and32.i)
  %tobool33.not.i = icmp eq i64 %and32.i, 0
  br i1 %tobool33.not.i, label %land.lhs.true.i, label %if.end28.i.for.inc.i_crit_edge

if.end28.i.for.inc.i_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end28.i
  %size36.i = getelementptr %struct.vfio_platform_region, ptr %37, i32 %i.095.i, i32 1
  %40 = ptrtoint ptr %size36.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size36.i, align 8
  %and37.i = and i32 %41, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.then39.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then39.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags42.i = getelementptr %struct.vfio_platform_region, ptr %37, i32 %i.095.i, i32 2
  %42 = ptrtoint ptr %flags42.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags42.i, align 4
  %or43.i = or i32 %43, 4
  store i32 %or43.i, ptr %flags42.i, align 4
  br label %for.inc.i

sw.bb45.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %regions.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regions.i, align 4
  %type48.i = getelementptr %struct.vfio_platform_region, ptr %45, i32 %i.095.i, i32 3
  %46 = ptrtoint ptr %type48.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %type48.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.bb45.i, %if.then39.i, %land.lhs.true.i.for.inc.i_crit_edge, %if.end28.i.for.inc.i_crit_edge
  %inc49.i = add nuw nsw i32 %i.095.i, 1
  %exitcond.not.i = icmp eq i32 %inc49.i, %cnt.0.i
  br i1 %exitcond.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

err.i:                                            ; preds = %if.end8.i.err.i_crit_edge, %for.body.i.err.i_crit_edge
  %47 = ptrtoint ptr %regions.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regions.i, align 4
  tail call void @kfree(ptr noundef %48) #8
  br label %cleanup

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %for.cond.preheader.i.if.end_crit_edge
  %num_regions.i = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 2
  %49 = ptrtoint ptr %num_regions.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %cnt.0.i, ptr %num_regions.i, align 4
  %call1 = tail call i32 @vfio_platform_irq_init(ptr noundef %core_vdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_irq_crit_edge

if.end.err_irq_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_irq

if.end4:                                          ; preds = %if.end
  %device = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 9
  %50 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %device, align 4
  %call.i33 = tail call i32 @__pm_runtime_resume(ptr noundef %51, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %cmp = icmp slt i32 %call.i33, 0
  br i1 %cmp, label %if.end4.err_rst_crit_edge, label %if.end7

if.end4.err_rst_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_rst

if.end7:                                          ; preds = %if.end4
  %acpihid.i = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 7
  %52 = ptrtoint ptr %acpihid.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %acpihid.i, align 4
  %cmp.not.i = icmp eq ptr %53, null
  br i1 %cmp.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %55, ptr noundef nonnull @.str.14) #11
  br label %land.lhs.true

if.else.i:                                        ; preds = %if.end7
  %of_reset.i = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 15
  %56 = ptrtoint ptr %of_reset.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %of_reset.i, align 4
  %tobool.not.i34 = icmp eq ptr %57, null
  %58 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device, align 4
  br i1 %tobool.not.i34, label %do.end9.i, label %vfio_platform_call_reset.exit

do.end9.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %59, ptr noundef nonnull @.str.20) #11
  br label %land.lhs.true

vfio_platform_call_reset.exit:                    ; preds = %if.else.i
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %59, ptr noundef nonnull @.str.14) #11
  %60 = ptrtoint ptr %of_reset.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %of_reset.i, align 4
  %call6.i = tail call i32 %61(ptr noundef %core_vdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool9.not = icmp eq i32 %call6.i, 0
  br i1 %tobool9.not, label %vfio_platform_call_reset.exit.cleanup_crit_edge, label %vfio_platform_call_reset.exit.land.lhs.true_crit_edge

vfio_platform_call_reset.exit.land.lhs.true_crit_edge: ; preds = %vfio_platform_call_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

vfio_platform_call_reset.exit.cleanup_crit_edge:  ; preds = %vfio_platform_call_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %vfio_platform_call_reset.exit.land.lhs.true_crit_edge, %do.end9.i, %do.end.i
  %retval.0.i3546 = phi i32 [ %call6.i, %vfio_platform_call_reset.exit.land.lhs.true_crit_edge ], [ -22, %do.end9.i ], [ -2, %do.end.i ]
  %reset_required = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 16
  %62 = ptrtoint ptr %reset_required to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %reset_required, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool10.not = icmp eq i8 %63, 0
  br i1 %tobool10.not, label %land.lhs.true.cleanup_crit_edge, label %do.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %65, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i3546, ptr noundef nonnull @.str.13) #11
  br label %err_rst

err_rst:                                          ; preds = %do.end, %if.end4.err_rst_crit_edge
  %ret.0 = phi i32 [ %call.i33, %if.end4.err_rst_crit_edge ], [ %retval.0.i3546, %do.end ]
  %66 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %device, align 4
  %call.i36 = tail call i32 @__pm_runtime_idle(ptr noundef %67, i32 noundef 5) #8
  tail call void @vfio_platform_irq_cleanup(ptr noundef %core_vdev) #8
  br label %err_irq

err_irq:                                          ; preds = %err_rst, %if.end.err_irq_crit_edge
  %ret.1 = phi i32 [ %call1, %if.end.err_irq_crit_edge ], [ %ret.0, %err_rst ]
  %68 = ptrtoint ptr %num_regions.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_regions.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp8.not.i = icmp eq i32 %69, 0
  br i1 %cmp8.not.i, label %err_irq.vfio_platform_regions_cleanup.exit_crit_edge, label %for.body.lr.ph.i

err_irq.vfio_platform_regions_cleanup.exit_crit_edge: ; preds = %err_irq
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfio_platform_regions_cleanup.exit

for.body.lr.ph.i:                                 ; preds = %err_irq
  %regions.i38 = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 1
  br label %for.body.i40

for.body.i40:                                     ; preds = %for.body.i40.for.body.i40_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i39, %for.body.i40.for.body.i40_crit_edge ]
  %70 = ptrtoint ptr %regions.i38 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regions.i38, align 4
  %ioaddr.i = getelementptr %struct.vfio_platform_region, ptr %71, i32 %i.09.i, i32 4
  %72 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ioaddr.i, align 4
  tail call void @iounmap(ptr noundef %73) #8
  %inc.i39 = add nuw i32 %i.09.i, 1
  %74 = ptrtoint ptr %num_regions.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_regions.i, align 4
  %cmp.i = icmp ult i32 %inc.i39, %75
  br i1 %cmp.i, label %for.body.i40.for.body.i40_crit_edge, label %for.body.i40.vfio_platform_regions_cleanup.exit_crit_edge

for.body.i40.vfio_platform_regions_cleanup.exit_crit_edge: ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfio_platform_regions_cleanup.exit

for.body.i40.for.body.i40_crit_edge:              ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i40

vfio_platform_regions_cleanup.exit:               ; preds = %for.body.i40.vfio_platform_regions_cleanup.exit_crit_edge, %err_irq.vfio_platform_regions_cleanup.exit_crit_edge
  %76 = ptrtoint ptr %num_regions.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %num_regions.i, align 4
  %regions2.i = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 1
  %77 = ptrtoint ptr %regions2.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regions2.i, align 4
  tail call void @kfree(ptr noundef %78) #8
  br label %cleanup

cleanup:                                          ; preds = %vfio_platform_regions_cleanup.exit, %land.lhs.true.cleanup_crit_edge, %vfio_platform_call_reset.exit.cleanup_crit_edge, %err.i, %if.end7.i.i.i.cleanup_crit_edge, %kcalloc.exit.thread.i
  %retval.0 = phi i32 [ %ret.1, %vfio_platform_regions_cleanup.exit ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %vfio_platform_call_reset.exit.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread.i ], [ -12, %if.end7.i.i.i.cleanup_crit_edge ], [ -22, %err.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfio_platform_close_device(ptr noundef %core_vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %acpihid.i = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 7
  %0 = ptrtoint ptr %acpihid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acpihid.i, align 4
  %cmp.not.i = icmp eq ptr %1, null
  br i1 %cmp.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %device.i = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 9
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.14) #11
  br label %land.rhs

if.else.i:                                        ; preds = %entry
  %of_reset.i = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 15
  %4 = ptrtoint ptr %of_reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_reset.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %device10.i = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 9
  %6 = ptrtoint ptr %device10.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device10.i, align 4
  br i1 %tobool.not.i, label %do.end9.i, label %vfio_platform_call_reset.exit

do.end9.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.20) #11
  br label %land.rhs

vfio_platform_call_reset.exit:                    ; preds = %if.else.i
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.14) #11
  %8 = ptrtoint ptr %of_reset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_reset.i, align 4
  %call6.i = tail call i32 %9(ptr noundef %core_vdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not = icmp eq i32 %call6.i, 0
  br i1 %tobool.not, label %vfio_platform_call_reset.exit.if.end28_crit_edge, label %vfio_platform_call_reset.exit.land.rhs_crit_edge

vfio_platform_call_reset.exit.land.rhs_crit_edge: ; preds = %vfio_platform_call_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

vfio_platform_call_reset.exit.if.end28_crit_edge: ; preds = %vfio_platform_call_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

land.rhs:                                         ; preds = %vfio_platform_call_reset.exit.land.rhs_crit_edge, %do.end9.i, %do.end.i
  %retval.0.i40 = phi i32 [ %call6.i, %vfio_platform_call_reset.exit.land.rhs_crit_edge ], [ -22, %do.end9.i ], [ -2, %do.end.i ]
  %reset_required = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 16
  %10 = ptrtoint ptr %reset_required to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reset_required, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.not = icmp eq i8 %11, 0
  br i1 %tobool1.not, label %land.rhs.if.end28_crit_edge, label %do.end, !prof !95

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 229, i32 noundef 9, ptr noundef null) #8
  %device = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 9
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.22, i32 noundef %retval.0.i40, ptr noundef nonnull @.str.13) #11
  br label %if.end28

if.end28:                                         ; preds = %do.end, %land.rhs.if.end28_crit_edge, %vfio_platform_call_reset.exit.if.end28_crit_edge
  %device29 = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 9
  %14 = ptrtoint ptr %device29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device29, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %15, i32 noundef 5) #8
  %num_regions.i = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 2
  %16 = ptrtoint ptr %num_regions.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_regions.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp8.not.i = icmp eq i32 %17, 0
  br i1 %cmp8.not.i, label %if.end28.vfio_platform_regions_cleanup.exit_crit_edge, label %for.body.lr.ph.i

if.end28.vfio_platform_regions_cleanup.exit_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfio_platform_regions_cleanup.exit

for.body.lr.ph.i:                                 ; preds = %if.end28
  %regions.i = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %regions.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regions.i, align 4
  %ioaddr.i = getelementptr %struct.vfio_platform_region, ptr %19, i32 %i.09.i, i32 4
  %20 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr.i, align 4
  tail call void @iounmap(ptr noundef %21) #8
  %inc.i = add nuw i32 %i.09.i, 1
  %22 = ptrtoint ptr %num_regions.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_regions.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %23
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.vfio_platform_regions_cleanup.exit_crit_edge

for.body.i.vfio_platform_regions_cleanup.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfio_platform_regions_cleanup.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

vfio_platform_regions_cleanup.exit:               ; preds = %for.body.i.vfio_platform_regions_cleanup.exit_crit_edge, %if.end28.vfio_platform_regions_cleanup.exit_crit_edge
  %24 = ptrtoint ptr %num_regions.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %num_regions.i, align 4
  %regions2.i = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 1
  %25 = ptrtoint ptr %regions2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regions2.i, align 4
  tail call void @kfree(ptr noundef %26) #8
  tail call void @vfio_platform_irq_cleanup(ptr noundef %core_vdev) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_platform_read(ptr nocapture noundef readonly %core_vdev, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val22.i = alloca i16, align 2
  %val35.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  %shr = ashr i64 %1, 40
  %conv = trunc i64 %shr to i32
  %and = and i64 %1, 1099511627775
  %num_regions = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 2
  %2 = ptrtoint ptr %num_regions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_regions, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp.not = icmp ugt i32 %3, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %regions = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 1
  %4 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regions, align 4
  %arrayidx = getelementptr %struct.vfio_platform_region, ptr %5, i32 %conv
  %flags = getelementptr %struct.vfio_platform_region, ptr %5, i32 %conv, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and2 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %type = getelementptr %struct.vfio_platform_region, ptr %5, i32 %conv, i32 3
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 8
  %and7 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end4.cleanup_crit_edge, label %if.then9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %if.end4
  %ioaddr.i = getelementptr %struct.vfio_platform_region, ptr %5, i32 %conv, i32 4
  %10 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.i, label %if.then9.if.end5.i_crit_edge

if.then9.if.end5.i_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then.i:                                        ; preds = %if.then9
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx, align 8
  %conv.i = trunc i64 %13 to i32
  %size.i = getelementptr %struct.vfio_platform_region, ptr %5, i32 %conv, i32 1
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 8
  %call.i = tail call ptr @ioremap(i32 noundef %conv.i, i32 noundef %15) #8
  %16 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %ioaddr.i, align 4
  %tobool3.not.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.if.end5.i_crit_edge

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %if.then9.if.end5.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool6.not.i31 = icmp eq i32 %count, 0
  br i1 %tobool6.not.i31, label %if.end5.i.cleanup_crit_edge, label %if.end5.i.while.body.i_crit_edge

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  br label %while.body.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.i:                                     ; preds = %cleanup52.i.while.body.i_crit_edge, %if.end5.i.while.body.i_crit_edge
  %done.0.i37 = phi i32 [ %add.i, %cleanup52.i.while.body.i_crit_edge ], [ 0, %if.end5.i.while.body.i_crit_edge ]
  %off.addr.0.i35 = phi i64 [ %add50.i, %cleanup52.i.while.body.i_crit_edge ], [ %and, %if.end5.i.while.body.i_crit_edge ]
  %count.addr.0.i34 = phi i32 [ %sub.i, %cleanup52.i.while.body.i_crit_edge ], [ %count, %if.end5.i.while.body.i_crit_edge ]
  %buf.addr.0.i32 = phi ptr [ %add.ptr51.i, %cleanup52.i.while.body.i_crit_edge ], [ %buf, %if.end5.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count.addr.0.i34)
  %cmp.i = icmp ugt i32 %count.addr.0.i34, 3
  %17 = and i64 %off.addr.0.i35, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool8.not.i = icmp eq i64 %17, 0
  %or.cond.i = select i1 %cmp.i, i1 %tobool8.not.i, i1 false
  br i1 %or.cond.i, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %while.body.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %val.i, align 4, !annotation !96
  %19 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioaddr.i, align 4
  %idx.ext.i = trunc i64 %off.addr.0.i35 to i32
  %add.ptr.i = getelementptr i8, ptr %20, i32 %idx.ext.i
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !97
  %22 = call i32 @llvm.bswap.i32(i32 %21) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %val.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 174) #8
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i, label %if.then9.i.copy_to_user.exit.thread.i_crit_edge, label %if.end.i.i.i

if.then9.i.copy_to_user.exit.thread.i_crit_edge:  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.thread.i

if.end.i.i.i:                                     ; preds = %if.then9.i
  %24 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0.i32, i32 4, i32 -1226833920) #15, !srcloc !99
  %asmresult.i.i.i = extractvalue { i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.copy_to_user.exit.thread.i_crit_edge

if.end.i.i.i.copy_to_user.exit.thread.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.thread.i

copy_to_user.exit.thread.i:                       ; preds = %if.end.i.i.i.copy_to_user.exit.thread.i_crit_edge, %if.then9.i.copy_to_user.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %cleanup

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val.i, i32 noundef 4) #8
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.0.i32, ptr noundef nonnull %val.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool13.not.i = icmp eq i32 %call.i12.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br i1 %tobool13.not.i, label %copy_to_user.exit.i.cleanup52.i_crit_edge, label %copy_to_user.exit.i.cleanup_crit_edge

copy_to_user.exit.i.cleanup_crit_edge:            ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

copy_to_user.exit.i.cleanup52.i_crit_edge:        ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup52.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.addr.0.i34)
  %cmp16.i = icmp ugt i32 %count.addr.0.i34, 1
  %25 = and i64 %off.addr.0.i35, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %tobool20.not.i = icmp eq i64 %25, 0
  %or.cond84.i = select i1 %cmp16.i, i1 %tobool20.not.i, i1 false
  br i1 %or.cond84.i, label %if.then21.i, label %if.else34.i

if.then21.i:                                      ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val22.i) #8
  %26 = ptrtoint ptr %val22.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -1, ptr %val22.i, align 2, !annotation !96
  %27 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioaddr.i, align 4
  %idx.ext24.i = trunc i64 %off.addr.0.i35 to i32
  %add.ptr25.i = getelementptr i8, ptr %28, i32 %idx.ext24.i
  %29 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr25.i) #8, !srcloc !100
  %30 = call i16 @llvm.bswap.i16(i16 %29) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  %31 = ptrtoint ptr %val22.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %val22.i, align 2
  call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 174) #8
  %call.i.i94.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i94.i, label %if.then21.i.copy_to_user.exit102.thread.i_crit_edge, label %if.end.i.i97.i

if.then21.i.copy_to_user.exit102.thread.i_crit_edge: ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit102.thread.i

if.end.i.i97.i:                                   ; preds = %if.then21.i
  %32 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0.i32, i32 2, i32 -1226833920) #15, !srcloc !99
  %asmresult.i.i95.i = extractvalue { i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i95.i)
  %cmp.i6.i96.i = icmp eq i32 %asmresult.i.i95.i, 0
  br i1 %cmp.i6.i96.i, label %copy_to_user.exit102.i, label %if.end.i.i97.i.copy_to_user.exit102.thread.i_crit_edge

if.end.i.i97.i.copy_to_user.exit102.thread.i_crit_edge: ; preds = %if.end.i.i97.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit102.thread.i

copy_to_user.exit102.thread.i:                    ; preds = %if.end.i.i97.i.copy_to_user.exit102.thread.i_crit_edge, %if.then21.i.copy_to_user.exit102.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val22.i) #8
  br label %cleanup

copy_to_user.exit102.i:                           ; preds = %if.end.i.i97.i
  %call.i.i.i98.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val22.i, i32 noundef 2) #8
  %call.i12.i.i99.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.0.i32, ptr noundef nonnull %val22.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i99.i)
  %tobool28.not.i = icmp eq i32 %call.i12.i.i99.i, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val22.i) #8
  br i1 %tobool28.not.i, label %copy_to_user.exit102.i.cleanup52.i_crit_edge, label %copy_to_user.exit102.i.cleanup_crit_edge

copy_to_user.exit102.i.cleanup_crit_edge:         ; preds = %copy_to_user.exit102.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

copy_to_user.exit102.i.cleanup52.i_crit_edge:     ; preds = %copy_to_user.exit102.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup52.i

if.else34.i:                                      ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val35.i) #8
  %33 = ptrtoint ptr %val35.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %val35.i, align 1, !annotation !96
  %34 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ioaddr.i, align 4
  %idx.ext37.i = trunc i64 %off.addr.0.i35 to i32
  %add.ptr38.i = getelementptr i8, ptr %35, i32 %idx.ext37.i
  %36 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr38.i) #8, !srcloc !102
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  %37 = ptrtoint ptr %val35.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %val35.i, align 1
  call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 174) #8
  %call.i.i107.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i107.i, label %if.else34.i.copy_to_user.exit115.thread.i_crit_edge, label %if.end.i.i110.i

if.else34.i.copy_to_user.exit115.thread.i_crit_edge: ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit115.thread.i

if.end.i.i110.i:                                  ; preds = %if.else34.i
  %38 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0.i32, i32 1, i32 -1226833920) #15, !srcloc !99
  %asmresult.i.i108.i = extractvalue { i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i108.i)
  %cmp.i6.i109.i = icmp eq i32 %asmresult.i.i108.i, 0
  br i1 %cmp.i6.i109.i, label %copy_to_user.exit115.i, label %if.end.i.i110.i.copy_to_user.exit115.thread.i_crit_edge

if.end.i.i110.i.copy_to_user.exit115.thread.i_crit_edge: ; preds = %if.end.i.i110.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit115.thread.i

copy_to_user.exit115.thread.i:                    ; preds = %if.end.i.i110.i.copy_to_user.exit115.thread.i_crit_edge, %if.else34.i.copy_to_user.exit115.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val35.i) #8
  br label %cleanup

copy_to_user.exit115.i:                           ; preds = %if.end.i.i110.i
  %call.i.i.i111.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val35.i, i32 noundef 1) #8
  %call.i12.i.i112.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.0.i32, ptr noundef nonnull %val35.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i112.i)
  %tobool41.not.i = icmp eq i32 %call.i12.i.i112.i, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val35.i) #8
  br i1 %tobool41.not.i, label %copy_to_user.exit115.i.cleanup52.i_crit_edge, label %copy_to_user.exit115.i.cleanup_crit_edge

copy_to_user.exit115.i.cleanup_crit_edge:         ; preds = %copy_to_user.exit115.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

copy_to_user.exit115.i.cleanup52.i_crit_edge:     ; preds = %copy_to_user.exit115.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup52.i

cleanup52.i:                                      ; preds = %copy_to_user.exit115.i.cleanup52.i_crit_edge, %copy_to_user.exit102.i.cleanup52.i_crit_edge, %copy_to_user.exit.i.cleanup52.i_crit_edge
  %filled.3.i = phi i32 [ 1, %copy_to_user.exit115.i.cleanup52.i_crit_edge ], [ 2, %copy_to_user.exit102.i.cleanup52.i_crit_edge ], [ 4, %copy_to_user.exit.i.cleanup52.i_crit_edge ]
  %sub.i = sub i32 %count.addr.0.i34, %filled.3.i
  %add.i = add i32 %filled.3.i, %done.0.i37
  %conv49.i = zext i32 %filled.3.i to i64
  %add50.i = add i64 %off.addr.0.i35, %conv49.i
  %add.ptr51.i = getelementptr i8, ptr %buf.addr.0.i32, i32 %filled.3.i
  %tobool6.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool6.not.i, label %cleanup52.i.cleanup_crit_edge, label %cleanup52.i.while.body.i_crit_edge

cleanup52.i.while.body.i_crit_edge:               ; preds = %cleanup52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

cleanup52.i.cleanup_crit_edge:                    ; preds = %cleanup52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup52.i.cleanup_crit_edge, %copy_to_user.exit115.i.cleanup_crit_edge, %copy_to_user.exit115.thread.i, %copy_to_user.exit102.i.cleanup_crit_edge, %copy_to_user.exit102.thread.i, %copy_to_user.exit.i.cleanup_crit_edge, %copy_to_user.exit.thread.i, %if.end5.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -12, %if.then.i.cleanup_crit_edge ], [ -14, %copy_to_user.exit.thread.i ], [ -14, %copy_to_user.exit102.thread.i ], [ -14, %copy_to_user.exit115.thread.i ], [ 0, %if.end5.i.cleanup_crit_edge ], [ %add.i, %cleanup52.i.cleanup_crit_edge ], [ -14, %copy_to_user.exit.i.cleanup_crit_edge ], [ -14, %copy_to_user.exit102.i.cleanup_crit_edge ], [ -14, %copy_to_user.exit115.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_platform_write(ptr nocapture noundef readonly %core_vdev, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val21.i = alloca i16, align 2
  %val33.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  %shr = ashr i64 %1, 40
  %conv = trunc i64 %shr to i32
  %and = and i64 %1, 1099511627775
  %num_regions = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 2
  %2 = ptrtoint ptr %num_regions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_regions, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp.not = icmp ugt i32 %3, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %regions = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 1
  %4 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regions, align 4
  %arrayidx = getelementptr %struct.vfio_platform_region, ptr %5, i32 %conv
  %flags = getelementptr %struct.vfio_platform_region, ptr %5, i32 %conv, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and2 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %type = getelementptr %struct.vfio_platform_region, ptr %5, i32 %conv, i32 3
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 8
  %and7 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end4.cleanup_crit_edge, label %if.then9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %if.end4
  %ioaddr.i = getelementptr %struct.vfio_platform_region, ptr %5, i32 %conv, i32 4
  %10 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.i, label %if.then9.if.end5.i_crit_edge

if.then9.if.end5.i_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then.i:                                        ; preds = %if.then9
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx, align 8
  %conv.i = trunc i64 %13 to i32
  %size.i = getelementptr %struct.vfio_platform_region, ptr %5, i32 %conv, i32 1
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 8
  %call.i = tail call ptr @ioremap(i32 noundef %conv.i, i32 noundef %15) #8
  %16 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %ioaddr.i, align 4
  %tobool3.not.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.if.end5.i_crit_edge

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %if.then9.if.end5.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool6.not163.i = icmp eq i32 %count, 0
  br i1 %tobool6.not163.i, label %if.end5.i.cleanup_crit_edge, label %if.end5.i.while.body.i_crit_edge

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  br label %while.body.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.i:                                     ; preds = %cleanup49.i.while.body.i_crit_edge, %if.end5.i.while.body.i_crit_edge
  %done.0170.i = phi i32 [ %add.i, %cleanup49.i.while.body.i_crit_edge ], [ 0, %if.end5.i.while.body.i_crit_edge ]
  %off.addr.0168.i = phi i64 [ %add47.i, %cleanup49.i.while.body.i_crit_edge ], [ %and, %if.end5.i.while.body.i_crit_edge ]
  %count.addr.0166.i = phi i32 [ %sub.i, %cleanup49.i.while.body.i_crit_edge ], [ %count, %if.end5.i.while.body.i_crit_edge ]
  %buf.addr.0164.i = phi ptr [ %add.ptr48.i, %cleanup49.i.while.body.i_crit_edge ], [ %buf, %if.end5.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count.addr.0166.i)
  %cmp.i = icmp ugt i32 %count.addr.0166.i, 3
  %17 = and i64 %off.addr.0168.i, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool8.not.i = icmp eq i64 %17, 0
  %or.cond.i = select i1 %cmp.i, i1 %tobool8.not.i, i1 false
  br i1 %or.cond.i, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %while.body.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %val.i, align 4, !annotation !96
  call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 156) #8
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i, label %if.then9.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then9.i.if.then11.i.i.i_crit_edge:             ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then9.i
  %19 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0164.i, i32 4, i32 -1226833920) #15, !srcloc !104
  %asmresult.i.i.i = extractvalue { i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !95

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val.i, i32 noundef 4) #8
  %20 = call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i.i.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !105
  %and.i.i.i.i.i = and i32 %22, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #8, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %val.i, ptr noundef %buf.addr.0164.i, i32 noundef 4) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #8, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %cleanup.thread.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !95

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then9.i.if.then11.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %cleanup

cleanup.thread.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i, align 4
  %25 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioaddr.i, align 4
  %idx.ext.i = trunc i64 %off.addr.0168.i to i32
  %add.ptr.i = getelementptr i8, ptr %26, i32 %idx.ext.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  call void @arm_heavy_mb() #8
  %27 = call i32 @llvm.bswap.i32(i32 %24) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %27) #8, !srcloc !109
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %cleanup49.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.addr.0166.i)
  %cmp15.i = icmp ugt i32 %count.addr.0166.i, 1
  %28 = and i64 %off.addr.0168.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %28)
  %tobool19.not.i = icmp eq i64 %28, 0
  %or.cond80.i = select i1 %cmp15.i, i1 %tobool19.not.i, i1 false
  br i1 %or.cond80.i, label %if.then20.i, label %if.else32.i

if.then20.i:                                      ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val21.i) #8
  %29 = ptrtoint ptr %val21.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -1, ptr %val21.i, align 2, !annotation !96
  call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 156) #8
  %call.i.i85.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i85.i, label %if.then20.i.if.then11.i.i101.i_crit_edge, label %land.lhs.true.i.i88.i

if.then20.i.if.then11.i.i101.i_crit_edge:         ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i101.i

land.lhs.true.i.i88.i:                            ; preds = %if.then20.i
  %30 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0164.i, i32 2, i32 -1226833920) #15, !srcloc !104
  %asmresult.i.i86.i = extractvalue { i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i86.i)
  %cmp.i6.i87.i = icmp eq i32 %asmresult.i.i86.i, 0
  br i1 %cmp.i6.i87.i, label %if.end.i.i98.i, label %land.lhs.true.i.i88.i.if.then11.i.i101.i_crit_edge, !prof !95

land.lhs.true.i.i88.i.if.then11.i.i101.i_crit_edge: ; preds = %land.lhs.true.i.i88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i101.i

if.end.i.i98.i:                                   ; preds = %land.lhs.true.i.i88.i
  %call.i.i.i89.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val21.i, i32 noundef 2) #8
  %31 = call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i.i.i.i.i.i90.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i.i90.i to ptr
  %cpu_domain.i.i.i.i.i91.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 4
  %33 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i91.i) #7, !srcloc !105
  %and.i.i.i.i92.i = and i32 %33, -13
  %or.i.i.i.i93.i = or i32 %and.i.i.i.i92.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i93.i) #8, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %call1.i.i.i94.i = call i32 @arm_copy_from_user(ptr noundef nonnull %val21.i, ptr noundef %buf.addr.0164.i, i32 noundef 2) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #8, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i94.i)
  %tobool4.not.i.i97.i = icmp eq i32 %call1.i.i.i94.i, 0
  br i1 %tobool4.not.i.i97.i, label %cleanup29.thread.i, label %if.end.i.i98.i.if.then11.i.i101.i_crit_edge, !prof !95

if.end.i.i98.i.if.then11.i.i101.i_crit_edge:      ; preds = %if.end.i.i98.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i101.i

if.then11.i.i101.i:                               ; preds = %if.end.i.i98.i.if.then11.i.i101.i_crit_edge, %land.lhs.true.i.i88.i.if.then11.i.i101.i_crit_edge, %if.then20.i.if.then11.i.i101.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val21.i) #8
  br label %cleanup

cleanup29.thread.i:                               ; preds = %if.end.i.i98.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %val21.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %val21.i, align 2
  %36 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr.i, align 4
  %idx.ext27.i = trunc i64 %off.addr.0168.i to i32
  %add.ptr28.i = getelementptr i8, ptr %37, i32 %idx.ext27.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  call void @arm_heavy_mb() #8
  %38 = call i16 @llvm.bswap.i16(i16 %35) #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr28.i, i16 %38) #8, !srcloc !111
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val21.i) #8
  br label %cleanup49.i

if.else32.i:                                      ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val33.i) #8
  %39 = ptrtoint ptr %val33.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -1, ptr %val33.i, align 1, !annotation !96
  call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 156) #8
  %call.i.i108.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i108.i, label %if.else32.i.if.then11.i.i124.i_crit_edge, label %land.lhs.true.i.i111.i

if.else32.i.if.then11.i.i124.i_crit_edge:         ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i124.i

land.lhs.true.i.i111.i:                           ; preds = %if.else32.i
  %40 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0164.i, i32 1, i32 -1226833920) #15, !srcloc !104
  %asmresult.i.i109.i = extractvalue { i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i109.i)
  %cmp.i6.i110.i = icmp eq i32 %asmresult.i.i109.i, 0
  br i1 %cmp.i6.i110.i, label %if.end.i.i121.i, label %land.lhs.true.i.i111.i.if.then11.i.i124.i_crit_edge, !prof !95

land.lhs.true.i.i111.i.if.then11.i.i124.i_crit_edge: ; preds = %land.lhs.true.i.i111.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i124.i

if.end.i.i121.i:                                  ; preds = %land.lhs.true.i.i111.i
  %call.i.i.i112.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val33.i, i32 noundef 1) #8
  %41 = call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i.i.i.i.i.i113.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i.i113.i to ptr
  %cpu_domain.i.i.i.i.i114.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 4
  %43 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i114.i) #7, !srcloc !105
  %and.i.i.i.i115.i = and i32 %43, -13
  %or.i.i.i.i116.i = or i32 %and.i.i.i.i115.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i116.i) #8, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %call1.i.i.i117.i = call i32 @arm_copy_from_user(ptr noundef nonnull %val33.i, ptr noundef %buf.addr.0164.i, i32 noundef 1) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #8, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i117.i)
  %tobool4.not.i.i120.i = icmp eq i32 %call1.i.i.i117.i, 0
  br i1 %tobool4.not.i.i120.i, label %cleanup41.thread.i, label %if.end.i.i121.i.if.then11.i.i124.i_crit_edge, !prof !95

if.end.i.i121.i.if.then11.i.i124.i_crit_edge:     ; preds = %if.end.i.i121.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i124.i

if.then11.i.i124.i:                               ; preds = %if.end.i.i121.i.if.then11.i.i124.i_crit_edge, %land.lhs.true.i.i111.i.if.then11.i.i124.i_crit_edge, %if.else32.i.if.then11.i.i124.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val33.i) #8
  br label %cleanup

cleanup41.thread.i:                               ; preds = %if.end.i.i121.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %val33.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %val33.i, align 1
  %46 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ioaddr.i, align 4
  %idx.ext39.i = trunc i64 %off.addr.0168.i to i32
  %add.ptr40.i = getelementptr i8, ptr %47, i32 %idx.ext39.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr40.i, i8 %45) #8, !srcloc !113
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val33.i) #8
  br label %cleanup49.i

cleanup49.i:                                      ; preds = %cleanup41.thread.i, %cleanup29.thread.i, %cleanup.thread.i
  %filled.3.i = phi i32 [ 4, %cleanup.thread.i ], [ 2, %cleanup29.thread.i ], [ 1, %cleanup41.thread.i ]
  %sub.i = sub i32 %count.addr.0166.i, %filled.3.i
  %add.i = add i32 %filled.3.i, %done.0170.i
  %conv46.i = zext i32 %filled.3.i to i64
  %add47.i = add i64 %off.addr.0168.i, %conv46.i
  %add.ptr48.i = getelementptr i8, ptr %buf.addr.0164.i, i32 %filled.3.i
  %tobool6.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool6.not.i, label %cleanup49.i.cleanup_crit_edge, label %cleanup49.i.while.body.i_crit_edge

cleanup49.i.while.body.i_crit_edge:               ; preds = %cleanup49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

cleanup49.i.cleanup_crit_edge:                    ; preds = %cleanup49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup49.i.cleanup_crit_edge, %if.then11.i.i124.i, %if.then11.i.i101.i, %if.then11.i.i.i, %if.end5.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -12, %if.then.i.cleanup_crit_edge ], [ -14, %if.then11.i.i124.i ], [ -14, %if.then11.i.i101.i ], [ -14, %if.then11.i.i.i ], [ 0, %if.end5.i.cleanup_crit_edge ], [ %add.i, %cleanup49.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_platform_ioctl(ptr noundef %core_vdev, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %info = alloca %struct.vfio_device_info, align 4
  %info16 = alloca %struct.vfio_region_info, align 8
  %info46 = alloca %struct.vfio_irq_info, align 4
  %hdr = alloca %struct.vfio_irq_set, align 4
  %data_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %cmd, label %entry.cleanup115_crit_edge [
    i32 15211, label %if.then
    i32 15212, label %if.then15
    i32 15213, label %if.then45
    i32 15214, label %if.then77
    i32 15215, label %if.then108
  ]

entry.cleanup115_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup115

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info) #8
  %1 = getelementptr inbounds %struct.vfio_device_info, ptr %info, i32 0, i32 1
  %2 = getelementptr inbounds %struct.vfio_device_info, ptr %info, i32 0, i32 2
  %3 = getelementptr inbounds %struct.vfio_device_info, ptr %info, i32 0, i32 3
  %4 = inttoptr i32 %arg to ptr
  %5 = call ptr @memset(ptr %info, i32 255, i32 20)
  tail call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.if.then11.i.i_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 16, i32 -1226833920) #15
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !95

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info, i32 noundef 16) #8
  %7 = call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !105
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %info, ptr noundef %4, i32 noundef 16) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #8, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !95

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.if.then11.i.i_crit_edge
  %res.0.i.i272 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %if.then.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i272
  %add.ptr.i.i = getelementptr i8, ptr %info, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i272)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %12)
  %cmp2 = icmp ult i32 %12, 16
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %acpihid.i = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 7
  %13 = ptrtoint ptr %acpihid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %acpihid.i, align 4
  %cmp.not.i = icmp eq ptr %14, null
  br i1 %cmp.not.i, label %vfio_platform_has_reset.exit, label %if.end4.if.end59.i.i164_crit_edge

if.end4.if.end59.i.i164_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59.i.i164

vfio_platform_has_reset.exit:                     ; preds = %if.end4
  %of_reset.i = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 15
  %15 = ptrtoint ptr %of_reset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_reset.i, align 4
  %tobool.i.not = icmp eq ptr %16, null
  br i1 %tobool.i.not, label %vfio_platform_has_reset.exit.if.end59.i.i164_crit_edge, label %if.then6

vfio_platform_has_reset.exit.if.end59.i.i164_crit_edge: ; preds = %vfio_platform_has_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59.i.i164

if.then6:                                         ; preds = %vfio_platform_has_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 12
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %or = or i32 %18, 1
  store i32 %or, ptr %flags, align 4
  br label %if.end59.i.i164

if.end59.i.i164:                                  ; preds = %if.then6, %vfio_platform_has_reset.exit.if.end59.i.i164_crit_edge, %if.end4.if.end59.i.i164_crit_edge
  %flags8 = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 12
  %19 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags8, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %1, align 4
  %num_regions = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 2
  %22 = ptrtoint ptr %num_regions to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_regions, align 4
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %2, align 4
  %num_irqs = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 4
  %25 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_irqs, align 4
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %3, align 4
  call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 174) #8
  %call.i.i165 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i165, label %if.end59.i.i164.cleanup_crit_edge, label %copy_to_user.exit

if.end59.i.i164.cleanup_crit_edge:                ; preds = %if.end59.i.i164
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end59.i.i164
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i169 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info, i32 noundef 16) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %info, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool13.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool13.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end59.i.i164.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.end59.i.i164.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info) #8
  br label %cleanup115

if.then15:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %info16) #8
  %28 = getelementptr inbounds %struct.vfio_region_info, ptr %info16, i32 0, i32 1
  %29 = getelementptr inbounds %struct.vfio_region_info, ptr %info16, i32 0, i32 2
  %30 = getelementptr inbounds %struct.vfio_region_info, ptr %info16, i32 0, i32 4
  %31 = getelementptr inbounds %struct.vfio_region_info, ptr %info16, i32 0, i32 5
  %32 = inttoptr i32 %arg to ptr
  %33 = call ptr @memset(ptr %info16, i32 255, i32 32)
  tail call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 156) #8
  %call.i.i175 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i175, label %if.then15.if.then11.i.i191_crit_edge, label %land.lhs.true.i.i178

if.then15.if.then11.i.i191_crit_edge:             ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i191

land.lhs.true.i.i178:                             ; preds = %if.then15
  %34 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %32, i32 32, i32 -1226833920) #15
  %asmresult.i.i176 = extractvalue { i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i176)
  %cmp.i6.i177 = icmp eq i32 %asmresult.i.i176, 0
  br i1 %cmp.i6.i177, label %if.end.i.i188, label %land.lhs.true.i.i178.if.then11.i.i191_crit_edge, !prof !95

land.lhs.true.i.i178.if.then11.i.i191_crit_edge:  ; preds = %land.lhs.true.i.i178
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i191

if.end.i.i188:                                    ; preds = %land.lhs.true.i.i178
  %call.i.i.i179 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info16, i32 noundef 32) #8
  %35 = call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i.i.i.i.i.i180 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i180 to ptr
  %cpu_domain.i.i.i.i.i181 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 4
  %37 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i181) #7, !srcloc !105
  %and.i.i.i.i182 = and i32 %37, -13
  %or.i.i.i.i183 = or i32 %and.i.i.i.i182, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i183) #8, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %call1.i.i.i184 = call i32 @arm_copy_from_user(ptr noundef nonnull %info16, ptr noundef %32, i32 noundef 32) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #8, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i184)
  %tobool4.not.i.i187 = icmp eq i32 %call1.i.i.i184, 0
  br i1 %tobool4.not.i.i187, label %if.end20, label %if.end.i.i188.if.then11.i.i191_crit_edge, !prof !95

if.end.i.i188.if.then11.i.i191_crit_edge:         ; preds = %if.end.i.i188
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i191

if.then11.i.i191:                                 ; preds = %if.end.i.i188.if.then11.i.i191_crit_edge, %land.lhs.true.i.i178.if.then11.i.i191_crit_edge, %if.then15.if.then11.i.i191_crit_edge
  %res.0.i.i186280 = phi i32 [ %call1.i.i.i184, %if.end.i.i188.if.then11.i.i191_crit_edge ], [ 32, %if.then15.if.then11.i.i191_crit_edge ], [ 32, %land.lhs.true.i.i178.if.then11.i.i191_crit_edge ]
  %sub.i.i189 = sub i32 32, %res.0.i.i186280
  %add.ptr.i.i190 = getelementptr i8, ptr %info16, i32 %sub.i.i189
  %38 = call ptr @memset(ptr %add.ptr.i.i190, i32 0, i32 %res.0.i.i186280)
  br label %cleanup41

if.end20:                                         ; preds = %if.end.i.i188
  %39 = ptrtoint ptr %info16 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %info16, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %40)
  %cmp22 = icmp ult i32 %40, 32
  br i1 %cmp22, label %if.end20.cleanup41_crit_edge, label %if.end24

if.end20.cleanup41_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup41

if.end24:                                         ; preds = %if.end20
  %41 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %29, align 8
  %num_regions25 = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 2
  %43 = ptrtoint ptr %num_regions25 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_regions25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp26.not = icmp ult i32 %42, %44
  br i1 %cmp26.not, label %if.end59.i.i197, label %if.end24.cleanup41_crit_edge

if.end24.cleanup41_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup41

if.end59.i.i197:                                  ; preds = %if.end24
  %conv = zext i32 %42 to i64
  %shl = shl i64 %conv, 40
  %45 = ptrtoint ptr %31 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %shl, ptr %31, align 8
  %regions = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 1
  %46 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regions, align 4
  %size = getelementptr %struct.vfio_platform_region, ptr %47, i32 %42, i32 1
  %48 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %size, align 8
  %conv31 = zext i32 %49 to i64
  %50 = ptrtoint ptr %30 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv31, ptr %30, align 8
  %flags36 = getelementptr %struct.vfio_platform_region, ptr %47, i32 %42, i32 2
  %51 = ptrtoint ptr %flags36 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags36, align 4
  %53 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %28, align 4
  call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 174) #8
  %call.i.i198 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i198, label %if.end59.i.i197.cleanup41_crit_edge, label %copy_to_user.exit206

if.end59.i.i197.cleanup41_crit_edge:              ; preds = %if.end59.i.i197
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup41

copy_to_user.exit206:                             ; preds = %if.end59.i.i197
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i202 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info16, i32 noundef 32) #8
  %call.i12.i.i203 = call i32 @arm_copy_to_user(ptr noundef %32, ptr noundef nonnull %info16, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i203)
  %tobool39.not = icmp eq i32 %call.i12.i.i203, 0
  %spec.select297 = select i1 %tobool39.not, i32 0, i32 -14
  br label %cleanup41

cleanup41:                                        ; preds = %copy_to_user.exit206, %if.end59.i.i197.cleanup41_crit_edge, %if.end24.cleanup41_crit_edge, %if.end20.cleanup41_crit_edge, %if.then11.i.i191
  %retval.1 = phi i32 [ -22, %if.end20.cleanup41_crit_edge ], [ -22, %if.end24.cleanup41_crit_edge ], [ -14, %if.then11.i.i191 ], [ -14, %if.end59.i.i197.cleanup41_crit_edge ], [ %spec.select297, %copy_to_user.exit206 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %info16) #8
  br label %cleanup115

if.then45:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info46) #8
  %54 = getelementptr inbounds %struct.vfio_irq_info, ptr %info46, i32 0, i32 1
  %55 = getelementptr inbounds %struct.vfio_irq_info, ptr %info46, i32 0, i32 2
  %56 = getelementptr inbounds %struct.vfio_irq_info, ptr %info46, i32 0, i32 3
  %57 = inttoptr i32 %arg to ptr
  %58 = call ptr @memset(ptr %info46, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 156) #8
  %call.i.i211 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i211, label %if.then45.if.then11.i.i227_crit_edge, label %land.lhs.true.i.i214

if.then45.if.then11.i.i227_crit_edge:             ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i227

land.lhs.true.i.i214:                             ; preds = %if.then45
  %59 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %57, i32 16, i32 -1226833920) #15
  %asmresult.i.i212 = extractvalue { i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i212)
  %cmp.i6.i213 = icmp eq i32 %asmresult.i.i212, 0
  br i1 %cmp.i6.i213, label %if.end.i.i224, label %land.lhs.true.i.i214.if.then11.i.i227_crit_edge, !prof !95

land.lhs.true.i.i214.if.then11.i.i227_crit_edge:  ; preds = %land.lhs.true.i.i214
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i227

if.end.i.i224:                                    ; preds = %land.lhs.true.i.i214
  %call.i.i.i215 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info46, i32 noundef 16) #8
  %60 = call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i.i.i.i.i.i216 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i.i216 to ptr
  %cpu_domain.i.i.i.i.i217 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 4
  %62 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i217) #7, !srcloc !105
  %and.i.i.i.i218 = and i32 %62, -13
  %or.i.i.i.i219 = or i32 %and.i.i.i.i218, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i219) #8, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %call1.i.i.i220 = call i32 @arm_copy_from_user(ptr noundef nonnull %info46, ptr noundef %57, i32 noundef 16) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %62) #8, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i220)
  %tobool4.not.i.i223 = icmp eq i32 %call1.i.i.i220, 0
  br i1 %tobool4.not.i.i223, label %if.end50, label %if.end.i.i224.if.then11.i.i227_crit_edge, !prof !95

if.end.i.i224.if.then11.i.i227_crit_edge:         ; preds = %if.end.i.i224
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i227

if.then11.i.i227:                                 ; preds = %if.end.i.i224.if.then11.i.i227_crit_edge, %land.lhs.true.i.i214.if.then11.i.i227_crit_edge, %if.then45.if.then11.i.i227_crit_edge
  %res.0.i.i222287 = phi i32 [ %call1.i.i.i220, %if.end.i.i224.if.then11.i.i227_crit_edge ], [ 16, %if.then45.if.then11.i.i227_crit_edge ], [ 16, %land.lhs.true.i.i214.if.then11.i.i227_crit_edge ]
  %sub.i.i225 = sub i32 16, %res.0.i.i222287
  %add.ptr.i.i226 = getelementptr i8, ptr %info46, i32 %sub.i.i225
  %63 = call ptr @memset(ptr %add.ptr.i.i226, i32 0, i32 %res.0.i.i222287)
  br label %cleanup73

if.end50:                                         ; preds = %if.end.i.i224
  %64 = ptrtoint ptr %info46 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %info46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %65)
  %cmp52 = icmp ult i32 %65, 16
  br i1 %cmp52, label %if.end50.cleanup73_crit_edge, label %if.end55

if.end50.cleanup73_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup73

if.end55:                                         ; preds = %if.end50
  %66 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %55, align 4
  %num_irqs57 = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 4
  %68 = ptrtoint ptr %num_irqs57 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_irqs57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp58.not = icmp ult i32 %67, %69
  br i1 %cmp58.not, label %if.end59.i.i233, label %if.end55.cleanup73_crit_edge

if.end55.cleanup73_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup73

if.end59.i.i233:                                  ; preds = %if.end55
  %irqs = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 3
  %70 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %irqs, align 4
  %arrayidx63 = getelementptr %struct.vfio_platform_irq, ptr %71, i32 %67
  %72 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx63, align 4
  %74 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %54, align 4
  %count = getelementptr %struct.vfio_platform_irq, ptr %71, i32 %67, i32 1
  %75 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %count, align 4
  %77 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %56, align 4
  call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 174) #8
  %call.i.i234 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i234, label %if.end59.i.i233.cleanup73_crit_edge, label %copy_to_user.exit242

if.end59.i.i233.cleanup73_crit_edge:              ; preds = %if.end59.i.i233
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup73

copy_to_user.exit242:                             ; preds = %if.end59.i.i233
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i238 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info46, i32 noundef 16) #8
  %call.i12.i.i239 = call i32 @arm_copy_to_user(ptr noundef %57, ptr noundef nonnull %info46, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i239)
  %tobool71.not = icmp eq i32 %call.i12.i.i239, 0
  %spec.select298 = select i1 %tobool71.not, i32 0, i32 -14
  br label %cleanup73

cleanup73:                                        ; preds = %copy_to_user.exit242, %if.end59.i.i233.cleanup73_crit_edge, %if.end55.cleanup73_crit_edge, %if.end50.cleanup73_crit_edge, %if.then11.i.i227
  %retval.2 = phi i32 [ -22, %if.end50.cleanup73_crit_edge ], [ -22, %if.end55.cleanup73_crit_edge ], [ -14, %if.then11.i.i227 ], [ -14, %if.end59.i.i233.cleanup73_crit_edge ], [ %spec.select298, %copy_to_user.exit242 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info46) #8
  br label %cleanup115

if.then77:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %hdr) #8
  %78 = getelementptr inbounds %struct.vfio_irq_set, ptr %hdr, i32 0, i32 1
  %79 = getelementptr inbounds %struct.vfio_irq_set, ptr %hdr, i32 0, i32 2
  %80 = getelementptr inbounds %struct.vfio_irq_set, ptr %hdr, i32 0, i32 3
  %81 = getelementptr inbounds %struct.vfio_irq_set, ptr %hdr, i32 0, i32 4
  %82 = call ptr @memset(ptr %hdr, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size) #8
  %83 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %data_size, align 4
  %84 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 156) #8
  %call.i.i247 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i247, label %if.then77.if.then11.i.i263_crit_edge, label %land.lhs.true.i.i250

if.then77.if.then11.i.i263_crit_edge:             ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i263

land.lhs.true.i.i250:                             ; preds = %if.then77
  %85 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %84, i32 20, i32 -1226833920) #15, !srcloc !104
  %asmresult.i.i248 = extractvalue { i32, i32 } %85, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i248)
  %cmp.i6.i249 = icmp eq i32 %asmresult.i.i248, 0
  br i1 %cmp.i6.i249, label %if.end.i.i260, label %land.lhs.true.i.i250.if.then11.i.i263_crit_edge, !prof !95

land.lhs.true.i.i250.if.then11.i.i263_crit_edge:  ; preds = %land.lhs.true.i.i250
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i263

if.end.i.i260:                                    ; preds = %land.lhs.true.i.i250
  %call.i.i.i251 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %hdr, i32 noundef 20) #8
  %86 = call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i.i.i.i.i.i252 = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i.i.i.i.i252 to ptr
  %cpu_domain.i.i.i.i.i253 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 4
  %88 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i253) #7, !srcloc !105
  %and.i.i.i.i254 = and i32 %88, -13
  %or.i.i.i.i255 = or i32 %and.i.i.i.i254, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i255) #8, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %call1.i.i.i256 = call i32 @arm_copy_from_user(ptr noundef nonnull %hdr, ptr noundef %84, i32 noundef 20) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %88) #8, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i256)
  %tobool4.not.i.i259 = icmp eq i32 %call1.i.i.i256, 0
  br i1 %tobool4.not.i.i259, label %if.end81, label %if.end.i.i260.if.then11.i.i263_crit_edge, !prof !95

if.end.i.i260.if.then11.i.i263_crit_edge:         ; preds = %if.end.i.i260
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i263

if.then11.i.i263:                                 ; preds = %if.end.i.i260.if.then11.i.i263_crit_edge, %land.lhs.true.i.i250.if.then11.i.i263_crit_edge, %if.then77.if.then11.i.i263_crit_edge
  %res.0.i.i258294 = phi i32 [ %call1.i.i.i256, %if.end.i.i260.if.then11.i.i263_crit_edge ], [ 20, %if.then77.if.then11.i.i263_crit_edge ], [ 20, %land.lhs.true.i.i250.if.then11.i.i263_crit_edge ]
  %sub.i.i261 = sub i32 20, %res.0.i.i258294
  %add.ptr.i.i262 = getelementptr i8, ptr %hdr, i32 %sub.i.i261
  %89 = call ptr @memset(ptr %add.ptr.i.i262, i32 0, i32 %res.0.i.i258294)
  br label %cleanup101

if.end81:                                         ; preds = %if.end.i.i260
  %num_irqs82 = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 4
  %90 = ptrtoint ptr %num_irqs82 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %num_irqs82, align 4
  %call84 = call i32 @vfio_set_irqs_validate_and_prepare(ptr noundef nonnull %hdr, i32 noundef %91, i32 noundef %91, ptr noundef nonnull %data_size) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %if.end81.cleanup101_crit_edge

if.end81.cleanup101_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup101

if.end87:                                         ; preds = %if.end81
  %92 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %data_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool88.not = icmp eq i32 %93, 0
  br i1 %tobool88.not, label %if.end87.if.end95_crit_edge, label %if.then89

if.end87.if.end95_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then89:                                        ; preds = %if.end87
  %add = add i32 %arg, 20
  %94 = inttoptr i32 %add to ptr
  %call90 = call ptr @memdup_user(ptr noundef %94, i32 noundef %93) #8
  %cmp.i = icmp ugt ptr %call90, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then92, label %if.then89.if.end95_crit_edge

if.then89.if.end95_crit_edge:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then92:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %call90 to i32
  br label %cleanup101

if.end95:                                         ; preds = %if.then89.if.end95_crit_edge, %if.end87.if.end95_crit_edge
  %data.0 = phi ptr [ %call90, %if.then89.if.end95_crit_edge ], [ null, %if.end87.if.end95_crit_edge ]
  %igate = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %igate, i32 noundef 0) #8
  %96 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %78, align 4
  %98 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %79, align 4
  %100 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %80, align 4
  %102 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %81, align 4
  %call99 = call i32 @vfio_platform_set_irqs_ioctl(ptr noundef %core_vdev, i32 noundef %97, i32 noundef %99, i32 noundef %101, i32 noundef %103, ptr noundef %data.0) #8
  call void @mutex_unlock(ptr noundef %igate) #8
  call void @kfree(ptr noundef %data.0) #8
  br label %cleanup101

cleanup101:                                       ; preds = %if.end95, %if.then92, %if.end81.cleanup101_crit_edge, %if.then11.i.i263
  %retval.3 = phi i32 [ %95, %if.then92 ], [ %call99, %if.end95 ], [ %call84, %if.end81.cleanup101_crit_edge ], [ -14, %if.then11.i.i263 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hdr) #8
  br label %cleanup115

if.then108:                                       ; preds = %entry
  %acpihid.i266 = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 7
  %104 = ptrtoint ptr %acpihid.i266 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %acpihid.i266, align 4
  %cmp.not.i267 = icmp eq ptr %105, null
  br i1 %cmp.not.i267, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #10
  %device.i = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 9
  %106 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %device.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %107, ptr noundef nonnull @.str.14) #11
  br label %cleanup115

if.else.i:                                        ; preds = %if.then108
  %of_reset.i268 = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 15
  %108 = ptrtoint ptr %of_reset.i268 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %of_reset.i268, align 4
  %tobool.not.i = icmp eq ptr %109, null
  %device10.i = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 9
  %110 = ptrtoint ptr %device10.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %device10.i, align 4
  br i1 %tobool.not.i, label %do.end9.i, label %do.end3.i

do.end3.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %111, ptr noundef nonnull @.str.14) #11
  %112 = ptrtoint ptr %of_reset.i268 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %of_reset.i268, align 4
  %call6.i = tail call i32 %113(ptr noundef %core_vdev) #8
  br label %cleanup115

do.end9.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %111, ptr noundef nonnull @.str.20) #11
  br label %cleanup115

cleanup115:                                       ; preds = %do.end9.i, %do.end3.i, %do.end.i, %cleanup101, %cleanup73, %cleanup41, %cleanup, %entry.cleanup115_crit_edge
  %retval.4 = phi i32 [ %retval.0, %cleanup ], [ %retval.1, %cleanup41 ], [ %retval.2, %cleanup73 ], [ %retval.3, %cleanup101 ], [ -25, %entry.cleanup115_crit_edge ], [ -2, %do.end.i ], [ %call6.i, %do.end3.i ], [ -22, %do.end9.i ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_platform_mmap(ptr noundef %core_vdev, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %0 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_pgoff, align 4
  %shr = lshr i32 %1, 28
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %2 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_end, align 4
  %4 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vma, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %6 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_flags, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %num_regions = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 2
  %8 = ptrtoint ptr %num_regions to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_regions, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %9)
  %cmp3.not = icmp ult i32 %shr, %9
  %and7 = and i32 %5, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %or.cond84 = select i1 %cmp3.not, i1 %tobool8.not, i1 false
  %and12 = and i32 %3, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %or.cond85 = select i1 %or.cond84, i1 %tobool13.not, i1 false
  br i1 %or.cond85, label %if.end15, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end2
  %regions = getelementptr inbounds %struct.vfio_platform_device, ptr %core_vdev, i32 0, i32 1
  %10 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regions, align 4
  %flags = getelementptr %struct.vfio_platform_region, ptr %11, i32 %shr, i32 2
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and16 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %and23 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp ne i32 %and23, 0
  %and26 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %or.cond = select i1 %tobool24.not, i1 true, i1 %tobool27.not
  br i1 %or.cond, label %if.end29, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %if.end19
  %and33 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp ne i32 %and33, 0
  %and37 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %or.cond86 = select i1 %tobool34.not, i1 true, i1 %tobool38.not
  br i1 %or.cond86, label %if.end40, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end40:                                         ; preds = %if.end29
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %14 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %core_vdev, ptr %vm_private_data, align 4
  %15 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regions, align 4
  %type = getelementptr %struct.vfio_platform_region, ptr %16, i32 %shr, i32 3
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type, align 8
  %and43 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end40.cleanup_crit_edge, label %if.then45

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx42 = getelementptr %struct.vfio_platform_region, ptr %16, i32 %shr
  %19 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load8_noabort(i32 %19)
  %.unpack = load i64, ptr %arrayidx42, align 8
  %20 = insertvalue [3 x i64] undef, i64 %.unpack, 0
  %.elt80 = getelementptr inbounds [3 x i64], ptr %arrayidx42, i32 0, i32 1
  %21 = ptrtoint ptr %.elt80 to i32
  call void @__asan_load8_noabort(i32 %21)
  %.unpack81 = load i64, ptr %.elt80, align 8
  %22 = insertvalue [3 x i64] %20, i64 %.unpack81, 1
  %.elt82 = getelementptr inbounds [3 x i64], ptr %arrayidx42, i32 0, i32 2
  %23 = ptrtoint ptr %.elt82 to i32
  call void @__asan_load8_noabort(i32 %23)
  %.unpack83 = load i64, ptr %.elt82, align 8
  %24 = insertvalue [3 x i64] %22, i64 %.unpack83, 2
  %call = tail call fastcc i32 @vfio_platform_mmap_mmio([3 x i64] %24, ptr noundef %vma)
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end40.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then45 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ -22, %if.end19.cleanup_crit_edge ], [ -22, %if.end40.cleanup_crit_edge ], [ -22, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfio_platform_irq_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_platform_irq_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfio_set_irqs_validate_and_prepare(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfio_platform_set_irqs_ioctl(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vfio_platform_mmap_mmio([3 x i64] %region.coerce, ptr noundef %vma) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %region.coerce.fca.0.extract = extractvalue [3 x i64] %region.coerce, 0
  %region.coerce.fca.1.extract = extractvalue [3 x i64] %region.coerce, 1
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %0 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_end, align 4
  %2 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vma, align 4
  %sub = sub i32 %1, %3
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %4 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_pgoff, align 4
  %and = and i32 %5, 268435455
  call void @__sanitizer_cov_trace_const_cmp8(i64 17592186044416, i64 %region.coerce.fca.1.extract)
  %cmp = icmp ult i64 %region.coerce.fca.1.extract, 17592186044416
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %region.sroa.2.8.extract.shift = lshr i64 %region.coerce.fca.1.extract, 32
  %conv1 = zext i32 %and to i64
  %shl = shl nuw nsw i64 %conv1, 12
  %conv = zext i32 %sub to i64
  %add = add nuw nsw i64 %shl, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %region.sroa.2.8.extract.shift)
  %cmp5 = icmp ugt i64 %add, %region.sroa.2.8.extract.shift
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %6 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_page_prot, align 4
  %and7 = and i32 %7, -61
  store i32 %and7, ptr %vm_page_prot, align 4
  %shr = lshr i64 %region.coerce.fca.0.extract, 12
  %8 = trunc i64 %shr to i32
  %conv10 = add i32 %and, %8
  %9 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv10, ptr %vm_pgoff, align 4
  %call = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %3, i32 noundef %conv10, i32 noundef %sub, i32 noundef %and7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !30, !32, !34, !36, !38, !39, !40, !41, !42, !43, !45, !46, !47, !48, !49, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !66, !68, !70, !72, !73, !74, !75, !77, !79, !80, !81}
!llvm.named.register.sp = !{!83}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/vfio/platform/vfio_platform_common.c", i32 660, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vfio_platform_probe_common._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @vfio_platform_probe_common._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @vfio_platform_probe_common.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/vfio/platform/vfio_platform_common.c", i32 669, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__ksymtab_vfio_platform_probe_common, !12, !"__ksymtab_vfio_platform_probe_common", i1 false, i1 false}
!12 = !{!"../drivers/vfio/platform/vfio_platform_common.c", i32 680, i32 1}
!13 = !{ptr @__ksymtab_vfio_platform_remove_common, !14, !"__ksymtab_vfio_platform_remove_common", i1 false, i1 false}
!14 = !{!"../drivers/vfio/platform/vfio_platform_common.c", i32 690, i32 1}
!15 = !{ptr @__ksymtab___vfio_platform_register_reset, !16, !"__ksymtab___vfio_platform_register_reset", i1 false, i1 false}
!16 = !{!"../drivers/vfio/platform/vfio_platform_common.c", i32 698, i32 1}
!17 = !{ptr @__ksymtab_vfio_platform_unregister_reset, !18, !"__ksymtab_vfio_platform_unregister_reset", i1 false, i1 false}
!18 = !{!"../drivers/vfio/platform/vfio_platform_common.c", i32 716, i32 1}
!19 = !{ptr @__UNIQUE_ID_version233, !20, !"__UNIQUE_ID_version233", i1 false, i1 false}
!20 = !{!"../drivers/vfio/platform/vfio_platform_common.c", i32 718, i32 1}
!21 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__modver_attr, !20, !"__modver_attr", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_file234, !26, !"__UNIQUE_ID_file234", i1 false, i1 false}
!26 = !{!"../drivers/vfio/platform/vfio_platform_common.c", i32 719, i32 1}
!27 = !{ptr @__UNIQUE_ID_license235, !26, !"__UNIQUE_ID_license235", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_author236, !29, !"__UNIQUE_ID_author236", i1 false, i1 false}
!29 = !{!"../drivers/vfio/platform/vfio_platform_common.c", i32 720, i32 1}
!30 = !{ptr @__UNIQUE_ID_description237, !31, !"__UNIQUE_ID_description237", i1 false, i1 false}
!31 = !{!"../drivers/vfio/platform/vfio_platform_common.c", i32 721, i32 1}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/vfio/platform/vfio_platform_common.c", i32 603, i32 11}
!34 = !{ptr @vfio_platform_ops, !35, !"vfio_platform_ops", i1 false, i1 false}
!35 = !{!"../drivers/vfio/platform/vfio_platform_common.c", i32 602, i32 37}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/vfio/platform/vfio_platform_common.c", i32 261, i32 3}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @vfio_platform_open_device._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @vfio_platform_open_device._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/vfio/platform/vfio_platform_common.c", i32 210, i32 3}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @vfio_platform_call_reset._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @vfio_platform_call_reset._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @vfio_platform_call_reset._entry.17, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../drivers/vfio/platform/vfio_platform_common.c", i32 213, i32 3}
!51 = !{ptr @vfio_platform_call_reset._entry_ptr.18, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/vfio/platform/vfio_platform_common.c", i32 217, i32 2}
!54 = !{ptr @vfio_platform_call_reset._entry.19, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @vfio_platform_call_reset._entry_ptr.21, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/vfio/platform/vfio_platform_common.c", i32 230, i32 3}
!58 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @vfio_platform_close_device._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @vfio_platform_close_device._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!63 = distinct !{null, !62, !"<string literal>", i1 false, i1 false}
!64 = distinct !{null, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/vfio/platform/vfio_platform_common.c", i32 617, i32 41}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/vfio/platform/vfio_platform_common.c", i32 620, i32 3}
!72 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @vfio_platform_of_probe._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @vfio_platform_of_probe._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/vfio/platform/vfio_platform_common.c", i32 121, i32 3}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/vfio/platform/vfio_platform_common.c", i32 29, i32 8}
!79 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @driver_lock, !78, !"driver_lock", i1 false, i1 false}
!81 = !{ptr @reset_list, !82, !"reset_list", i1 false, i1 false}
!82 = !{!"../drivers/vfio/platform/vfio_platform_common.c", i32 28, i32 8}
!83 = !{!"sp"}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{i8 0, i8 2}
!94 = !{!"branch_weights", i32 1, i32 2000}
!95 = !{!"branch_weights", i32 2000, i32 1}
!96 = !{!"auto-init"}
!97 = !{i64 6900927}
!98 = !{i64 2154433786}
!99 = !{i64 2153906438, i64 2153906463}
!100 = !{i64 6900089}
!101 = !{i64 2154433174}
!102 = !{i64 6900707}
!103 = !{i64 2154432562}
!104 = !{i64 2153905757, i64 2153905782}
!105 = !{i64 6401312}
!106 = !{i64 6401509}
!107 = !{i64 2153886742}
!108 = !{i64 2154435141}
!109 = !{i64 6900509}
!110 = !{i64 2154434591}
!111 = !{i64 6899889}
!112 = !{i64 2154434167}
!113 = !{i64 6900312}
