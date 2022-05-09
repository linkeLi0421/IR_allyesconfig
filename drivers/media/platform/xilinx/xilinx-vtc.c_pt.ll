; ModuleID = '/llk/IR_all_yes/drivers/media/platform/xilinx/xilinx-vtc.c_pt.bc'
source_filename = "../drivers/media/platform/xilinx/xilinx-vtc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+xvtc_generator_start\22, \22a\22\09"
module asm "\09.weak\09__crc_xvtc_generator_start\09\09\09\09"
module asm "\09.long\09__crc_xvtc_generator_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xvtc_generator_start:\09\09\09\09\09"
module asm "\09.asciz \09\22xvtc_generator_start\22\09\09\09\09\09"
module asm "__kstrtabns_xvtc_generator_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+xvtc_generator_stop\22, \22a\22\09"
module asm "\09.weak\09__crc_xvtc_generator_stop\09\09\09\09"
module asm "\09.long\09__crc_xvtc_generator_stop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xvtc_generator_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22xvtc_generator_stop\22\09\09\09\09\09"
module asm "__kstrtabns_xvtc_generator_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+xvtc_of_get\22, \22a\22\09"
module asm "\09.weak\09__crc_xvtc_of_get\09\09\09\09"
module asm "\09.long\09__crc_xvtc_of_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xvtc_of_get:\09\09\09\09\09"
module asm "\09.asciz \09\22xvtc_of_get\22\09\09\09\09\09"
module asm "__kstrtabns_xvtc_of_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+xvtc_put\22, \22a\22\09"
module asm "\09.weak\09__crc_xvtc_put\09\09\09\09"
module asm "\09.long\09__crc_xvtc_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xvtc_put:\09\09\09\09\09"
module asm "\09.asciz \09\22xvtc_put\22\09\09\09\09\09"
module asm "__kstrtabns_xvtc_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xvtc_device = type { %struct.xvip_device, %struct.list_head, i8, i8, %struct.xvtc_config }
%struct.xvip_device = type { %struct.v4l2_subdev, ptr, ptr, ptr, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.xvtc_config = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__kstrtab_xvtc_generator_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_xvtc_generator_start = external dso_local constant [0 x i8], align 1
@__ksymtab_xvtc_generator_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xvtc_generator_start to i32), ptr @__kstrtab_xvtc_generator_start, ptr @__kstrtabns_xvtc_generator_start }, section "___ksymtab_gpl+xvtc_generator_start", align 4
@__kstrtab_xvtc_generator_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_xvtc_generator_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_xvtc_generator_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xvtc_generator_stop to i32), ptr @__kstrtab_xvtc_generator_stop, ptr @__kstrtabns_xvtc_generator_stop }, section "___ksymtab_gpl+xvtc_generator_stop", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xlnx,vtc\00", [23 x i8] zeroinitializer }, align 32
@xvtc_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @xvtc_lock, i64 52), ptr getelementptr (i8, ptr @xvtc_lock, i64 52) }, ptr @xvtc_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@xvtc_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @xvtc_list, ptr @xvtc_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_xvtc_of_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_xvtc_of_get = external dso_local constant [0 x i8], align 1
@__ksymtab_xvtc_of_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xvtc_of_get to i32), ptr @__kstrtab_xvtc_of_get, ptr @__kstrtabns_xvtc_of_get }, section "___ksymtab_gpl+xvtc_of_get", align 4
@__kstrtab_xvtc_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_xvtc_put = external dso_local constant [0 x i8], align 1
@__ksymtab_xvtc_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xvtc_put to i32), ptr @__kstrtab_xvtc_put, ptr @__kstrtabns_xvtc_put }, section "___ksymtab_gpl+xvtc_put", align 4
@__initcall__kmod_xilinx_vtc__292_373_xvtc_driver_init6 = internal global ptr @xvtc_driver_init, section ".initcall6.init", align 4
@xvtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xvtc_probe, ptr @xvtc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xvtc_of_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xvtc_driver_exit = internal global ptr @xvtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [71 x i8] c"xilinx_vtc.author=Laurent Pinchart <laurent.pinchart@ideasonboard.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [61 x i8] c"xilinx_vtc.description=Xilinx Video Timing Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [57 x i8] c"xilinx_vtc.file=drivers/media/platform/xilinx/xilinx-vtc\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [26 x i8] c"xilinx_vtc.license=GPL v2\00", section ".modinfo", align 1
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xvtc_lock.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xvtc_lock\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xilinx-vtc\00", [21 x i8] zeroinitializer }, align 32
@xvtc_of_id_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,v-tc-6.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xlnx,detector\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xlnx,generator\00", [17 x i8] zeroinitializer }, align 32
@xvip_print_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 231, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"device found, version %u.%02x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xvip_print_version\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/platform/xilinx/xilinx-vip.h\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xvip_print_version._entry_ptr = internal global ptr @xvip_print_version._entry, section ".printk_index", align 4
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 257, i32 28 }
@___asan_gen_.14 = private unnamed_addr constant [10 x i8] c"xvtc_lock\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [10 x i8] c"xvtc_list\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 162, i32 8 }
@___asan_gen_.20 = private unnamed_addr constant [12 x i8] c"xvtc_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 364, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 163, i32 8 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 366, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"xvtc_of_id_table\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 358, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 313, i32 51 }
@___asan_gen_.39 = private constant [46 x i8] c"../drivers/media/platform/xilinx/xilinx-vtc.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 314, i32 52 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [46 x i8] c"../drivers/media/platform/xilinx/xilinx-vip.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 225, i32 2 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_xvtc_driver_exit, ptr @__initcall__kmod_xilinx_vtc__292_373_xvtc_driver_init6, ptr @__ksymtab_xvtc_generator_start, ptr @__ksymtab_xvtc_generator_stop, ptr @__ksymtab_xvtc_of_get, ptr @__ksymtab_xvtc_put, ptr @xvip_print_version._entry, ptr @xvip_print_version._entry_ptr, ptr @xvtc_driver_exit, ptr @.str, ptr @xvtc_lock, ptr @xvtc_list, ptr @xvtc_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @xvtc_of_id_table, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvtc_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvtc_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvtc_of_id_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_print_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xvtc_generator_start(ptr nocapture noundef readonly %xvtc, ptr nocapture noundef readonly %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %has_generator = getelementptr inbounds %struct.xvtc_device, ptr %xvtc, i32 0, i32 3
  %0 = ptrtoint ptr %has_generator to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_generator, align 1, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr inbounds %struct.xvip_device, ptr %xvtc, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end2_crit_edge, label %if.then3.i

if.end.i.if.end2_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end2_crit_edge

clk_prepare_enable.exit.if.end2_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %clk_prepare_enable.exit.if.end2_crit_edge, %if.end.i.if.end2_crit_edge
  %iomem.i.i = getelementptr inbounds %struct.xvip_device, ptr %xvtc, i32 0, i32 2
  %4 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1056964608) #7, !srcloc !55
  %6 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i.i31 = getelementptr i8, ptr %7, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i31, i32 0) #7, !srcloc !55
  %vblank_start = getelementptr inbounds %struct.xvtc_config, ptr %config, i32 0, i32 4
  %8 = ptrtoint ptr %vblank_start to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vblank_start, align 4
  %shl = shl i32 %9, 16
  %10 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %config, align 4
  %or = or i32 %shl, %11
  %12 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i.i33 = getelementptr i8, ptr %13, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i33, i32 %14) #7, !srcloc !55
  %hsize = getelementptr inbounds %struct.xvtc_config, ptr %config, i32 0, i32 3
  %15 = ptrtoint ptr %hsize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hsize, align 4
  %17 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %18, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i35, i32 %19) #7, !srcloc !55
  %vsize = getelementptr inbounds %struct.xvtc_config, ptr %config, i32 0, i32 7
  %20 = ptrtoint ptr %vsize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vsize, align 4
  %22 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i.i37 = getelementptr i8, ptr %23, i32 116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  tail call void @arm_heavy_mb() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i37, i32 %24) #7, !srcloc !55
  %hsync_end = getelementptr inbounds %struct.xvtc_config, ptr %config, i32 0, i32 2
  %25 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hsync_end, align 4
  %shl4 = shl i32 %26, 16
  %hsync_start = getelementptr inbounds %struct.xvtc_config, ptr %config, i32 0, i32 1
  %27 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hsync_start, align 4
  %or6 = or i32 %shl4, %28
  %29 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i.i39 = getelementptr i8, ptr %30, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  tail call void @arm_heavy_mb() #7
  %31 = tail call i32 @llvm.bswap.i32(i32 %or6) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i39, i32 %31) #7, !srcloc !55
  %32 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i.i41 = getelementptr i8, ptr %33, i32 124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i41, i32 0) #7, !srcloc !55
  %vsync_end = getelementptr inbounds %struct.xvtc_config, ptr %config, i32 0, i32 6
  %34 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vsync_end, align 4
  %shl7 = shl i32 %35, 16
  %vsync_start = getelementptr inbounds %struct.xvtc_config, ptr %config, i32 0, i32 5
  %36 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vsync_start, align 4
  %or9 = or i32 %shl7, %37
  %38 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i.i43 = getelementptr i8, ptr %39, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  tail call void @arm_heavy_mb() #7
  %40 = tail call i32 @llvm.bswap.i32(i32 %or9) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i43, i32 %40) #7, !srcloc !55
  %41 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i.i45 = getelementptr i8, ptr %42, i32 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i45, i32 0) #7, !srcloc !55
  %43 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %iomem.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 116389635) #7, !srcloc !55
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %clk_prepare_enable.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -6, %entry.cleanup_crit_edge ], [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xvtc_generator_stop(ptr nocapture noundef readonly %xvtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %has_generator = getelementptr inbounds %struct.xvtc_device, ptr %xvtc, i32 0, i32 3
  %0 = ptrtoint ptr %has_generator to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_generator, align 1, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %iomem.i = getelementptr inbounds %struct.xvip_device, ptr %xvtc, i32 0, i32 2
  %2 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomem.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #7, !srcloc !55
  %clk = getelementptr inbounds %struct.xvip_device, ptr %xvtc, i32 0, i32 3
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -6, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xvtc_of_get(ptr noundef %np) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %0 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  br label %cleanup

of_parse_phandle.exit:                            ; preds = %if.end
  %1 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %of_parse_phandle.exit.cleanup_crit_edge, label %if.end4

of_parse_phandle.exit.cleanup_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %of_parse_phandle.exit
  call void @mutex_lock_nested(ptr noundef nonnull @xvtc_lock, i32 noundef 0) #7
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end4
  %.pn.in = phi ptr [ @xvtc_list, %if.end4 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %3 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp5.not = icmp eq ptr %.pn, @xvtc_list
  br i1 %cmp5.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  %dev = getelementptr i8, ptr %.pn, i32 -16
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %cmp6 = icmp eq ptr %7, %2
  br i1 %cmp6, label %for.end.split.loop.exit, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.end.split.loop.exit:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %xvtc.0.le = getelementptr i8, ptr %.pn, i32 -212
  br label %for.end

for.end:                                          ; preds = %for.end.split.loop.exit, %for.cond.for.end_crit_edge
  %found.0 = phi ptr [ %xvtc.0.le, %for.end.split.loop.exit ], [ null, %for.cond.for.end_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @xvtc_lock) #7
  call void @of_node_put(ptr noundef nonnull %2) #7
  %tobool13.not = icmp eq ptr %found.0, null
  %spec.select = select i1 %tobool13.not, ptr inttoptr (i32 -517 to ptr), ptr %found.0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %of_parse_phandle.exit.cleanup_crit_edge, %of_parse_phandle.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %of_parse_phandle.exit.thread ], [ inttoptr (i32 -22 to ptr), %of_parse_phandle.exit.cleanup_crit_edge ], [ %spec.select, %for.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @xvtc_put(ptr nocapture %xvtc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xvtc_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xvtc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xvtc_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @xvtc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xvtc_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 256, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.xvip_device, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str.4, ptr noundef null) #7
  %tobool.i.i = icmp ne ptr %call.i.i, null
  %has_detector.i = getelementptr inbounds %struct.xvtc_device, ptr %call.i, i32 0, i32 2
  %frombool.i = zext i1 %tobool.i.i to i8
  %3 = ptrtoint ptr %has_detector.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool.i, ptr %has_detector.i, align 4
  %call.i1.i = tail call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str.5, ptr noundef null) #7
  %tobool.i2.i = icmp ne ptr %call.i1.i, null
  %has_generator.i = getelementptr inbounds %struct.xvtc_device, ptr %call.i, i32 0, i32 3
  %frombool2.i = zext i1 %tobool.i2.i to i8
  %4 = ptrtoint ptr %has_generator.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool2.i, ptr %has_generator.i, align 1
  %call7 = tail call i32 @xvip_init_resources(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %iomem.i.i = getelementptr inbounds %struct.xvip_device, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !56
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %10 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2, align 4
  %shr.i = lshr i32 %9, 24
  %and1.i = lshr i32 %9, 16
  %shr2.i = and i32 %and1.i, 255
  %and3.i = lshr i32 %9, 12
  %shr4.i = and i32 %and3.i, 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.6, i32 noundef %shr.i, i32 noundef %shr2.i, i32 noundef %shr4.i) #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @xvtc_lock, i32 noundef 0) #7
  %list.i = getelementptr inbounds %struct.xvtc_device, ptr %call.i, i32 0, i32 1
  %12 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @xvtc_list, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %12, ptr noundef nonnull @xvtc_list) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end10.xvtc_register_device.exit_crit_edge

if.end10.xvtc_register_device.exit_crit_edge:     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %xvtc_register_device.exit

if.end.i.i.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %list.i, ptr getelementptr inbounds (%struct.list_head, ptr @xvtc_list, i32 0, i32 1), align 4
  %13 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @xvtc_list, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.xvtc_device, ptr %call.i, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %list.i, ptr %12, align 4
  br label %xvtc_register_device.exit

xvtc_register_device.exit:                        ; preds = %if.end.i.i.i, %if.end10.xvtc_register_device.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @xvtc_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %xvtc_register_device.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %xvtc_register_device.exit ], [ -12, %entry.cleanup_crit_edge ], [ %call7, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xvtc_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @xvtc_lock, i32 noundef 0) #7
  %list.i = getelementptr inbounds %struct.xvtc_device, ptr %1, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.xvtc_unregister_device.exit_crit_edge

entry.xvtc_unregister_device.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %xvtc_unregister_device.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.xvtc_device, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %xvtc_unregister_device.exit

xvtc_unregister_device.exit:                      ; preds = %if.end.i.i.i, %entry.xvtc_unregister_device.exit_crit_edge
  %8 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.xvtc_device, ptr %1, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @xvtc_lock) #7
  tail call void @xvip_cleanup_resources(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xvip_init_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xvip_cleanup_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !20, !22, !23, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !40, !41, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__ksymtab_xvtc_generator_start, !1, !"__ksymtab_xvtc_generator_start", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/xilinx/xilinx-vtc.c", i32 236, i32 1}
!2 = !{ptr @__ksymtab_xvtc_generator_stop, !3, !"__ksymtab_xvtc_generator_stop", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/xilinx/xilinx-vtc.c", i32 249, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/platform/xilinx/xilinx-vtc.c", i32 257, i32 28}
!6 = !{ptr @__ksymtab_xvtc_of_get, !7, !"__ksymtab_xvtc_of_get", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/xilinx/xilinx-vtc.c", i32 280, i32 1}
!8 = !{ptr @__ksymtab_xvtc_put, !9, !"__ksymtab_xvtc_put", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/xilinx/xilinx-vtc.c", i32 285, i32 1}
!10 = !{ptr @__initcall__kmod_xilinx_vtc__292_373_xvtc_driver_init6, !11, !"__initcall__kmod_xilinx_vtc__292_373_xvtc_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/xilinx/xilinx-vtc.c", i32 373, i32 1}
!12 = !{ptr @__exitcall_xvtc_driver_exit, !11, !"__exitcall_xvtc_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author293, !14, !"__UNIQUE_ID_author293", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/xilinx/xilinx-vtc.c", i32 375, i32 1}
!15 = !{ptr @__UNIQUE_ID_description294, !16, !"__UNIQUE_ID_description294", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/xilinx/xilinx-vtc.c", i32 376, i32 1}
!17 = !{ptr @__UNIQUE_ID_file295, !18, !"__UNIQUE_ID_file295", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/xilinx/xilinx-vtc.c", i32 377, i32 1}
!19 = !{ptr @__UNIQUE_ID_license296, !18, !"__UNIQUE_ID_license296", i1 false, i1 false}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/xilinx/xilinx-vtc.c", i32 163, i32 8}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @xvtc_lock, !21, !"xvtc_lock", i1 false, i1 false}
!24 = !{ptr @xvtc_list, !25, !"xvtc_list", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/xilinx/xilinx-vtc.c", i32 162, i32 8}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/xilinx/xilinx-vtc.c", i32 366, i32 11}
!28 = !{ptr @xvtc_driver, !29, !"xvtc_driver", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/xilinx/xilinx-vtc.c", i32 364, i32 31}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/xilinx/xilinx-vtc.c", i32 313, i32 51}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/xilinx/xilinx-vtc.c", i32 314, i32 52}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/xilinx/xilinx-vip.h", i32 225, i32 2}
!36 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @xvip_print_version._entry, !35, !"_entry", i1 false, i1 false}
!41 = !{ptr @xvip_print_version._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @xvtc_of_id_table, !43, !"xvtc_of_id_table", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/xilinx/xilinx-vtc.c", i32 358, i32 34}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i8 0, i8 2}
!54 = !{i64 2152873348}
!55 = !{i64 5338716}
!56 = !{i64 5339134}
!57 = !{i64 2152871993}
