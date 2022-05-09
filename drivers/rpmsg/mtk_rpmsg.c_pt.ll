; ModuleID = '/llk/IR_all_yes/drivers/rpmsg/mtk_rpmsg.c_pt.bc'
source_filename = "../drivers/rpmsg/mtk_rpmsg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mtk_rpmsg_create_rproc_subdev\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_rpmsg_create_rproc_subdev\09\09\09\09"
module asm "\09.long\09__crc_mtk_rpmsg_create_rproc_subdev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_rpmsg_create_rproc_subdev:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_rpmsg_create_rproc_subdev\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_rpmsg_create_rproc_subdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mtk_rpmsg_destroy_rproc_subdev\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_rpmsg_destroy_rproc_subdev\09\09\09\09"
module asm "\09.long\09__crc_mtk_rpmsg_destroy_rproc_subdev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_rpmsg_destroy_rproc_subdev:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_rpmsg_destroy_rproc_subdev\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_rpmsg_destroy_rproc_subdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rpmsg_endpoint_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rpmsg_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.mtk_rpmsg_rproc_subdev = type { ptr, ptr, ptr, %struct.rproc_subdev, %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.rproc_subdev = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mtk_rpmsg_info = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mtk_rpmsg_endpoint = type { %struct.rpmsg_endpoint, ptr }
%struct.rpmsg_endpoint = type { ptr, %struct.kref, ptr, %struct.mutex, i32, ptr, ptr }
%struct.mtk_rpmsg_device = type { %struct.rpmsg_device, ptr }
%struct.rpmsg_device = type { %struct.device, %struct.rpmsg_device_id, ptr, i32, i32, ptr, i8, i8, ptr }
%struct.rpmsg_device_id = type { [32 x i8], i32 }
%struct.rpmsg_ns_msg = type { [32 x i8], i32 }
%struct.rpmsg_channel_info = type { [32 x i8], i32, i32 }
%struct.mtk_rpmsg_channel_info = type { %struct.rpmsg_channel_info, i8, %struct.list_head }

@mtk_rpmsg_create_rproc_subdev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&mtk_subdev->register_work)\00", [50 x i8] zeroinitializer }, align 32
@mtk_rpmsg_create_rproc_subdev.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&mtk_subdev->channels_lock\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab_mtk_rpmsg_create_rproc_subdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_rpmsg_create_rproc_subdev = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_rpmsg_create_rproc_subdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_rpmsg_create_rproc_subdev to i32), ptr @__kstrtab_mtk_rpmsg_create_rproc_subdev, ptr @__kstrtabns_mtk_rpmsg_create_rproc_subdev }, section "___ksymtab_gpl+mtk_rpmsg_create_rproc_subdev", align 4
@__kstrtab_mtk_rpmsg_destroy_rproc_subdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_rpmsg_destroy_rproc_subdev = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_rpmsg_destroy_rproc_subdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_rpmsg_destroy_rproc_subdev to i32), ptr @__kstrtab_mtk_rpmsg_destroy_rproc_subdev, ptr @__kstrtabns_mtk_rpmsg_destroy_rproc_subdev }, section "___ksymtab_gpl+mtk_rpmsg_destroy_rproc_subdev", align 4
@__UNIQUE_ID_file228 = internal constant [39 x i8] c"mtk_rpmsg.file=drivers/rpmsg/mtk_rpmsg\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [25 x i8] c"mtk_rpmsg.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [48 x i8] c"mtk_rpmsg.description=MediaTek scp rpmsg driver\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mtk_rpmsg_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 319, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to create name service endpoint\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtk_rpmsg_prepare\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/rpmsg/mtk_rpmsg.c\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_rpmsg_prepare._entry_ptr = internal global ptr @mtk_rpmsg_prepare._entry, section ".printk_index", align 4
@mtk_rpmsg_endpoint_ops = internal constant { %struct.rpmsg_endpoint_ops, [60 x i8] } { %struct.rpmsg_endpoint_ops { ptr @mtk_rpmsg_destroy_ept, ptr @mtk_rpmsg_send, ptr null, ptr null, ptr @mtk_rpmsg_trysend, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__mtk_create_ept._entry = internal constant %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 111, ptr @.str.6, ptr @.str.7 }, align 1
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IPI register failed, id = %d\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__mtk_create_ept\00", [47 x i8] zeroinitializer }, align 32
@__mtk_create_ept._entry_ptr = internal global ptr @__mtk_create_ept._entry, section ".printk_index", align 4
@mtk_rpmsg_ipi_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 81, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rpmsg handler return error = %d\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mtk_rpmsg_ipi_handler\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mtk_rpmsg_ipi_handler._entry_ptr = internal global ptr @mtk_rpmsg_ipi_handler._entry, section ".printk_index", align 4
@mtk_rpmsg_ns_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.5, i32 278, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"malformed ns msg (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mtk_rpmsg_ns_cb\00", [16 x i8] zeroinitializer }, align 32
@mtk_rpmsg_ns_cb._entry_ptr = internal global ptr @mtk_rpmsg_ns_cb._entry, section ".printk_index", align 4
@mtk_rpmsg_ns_cb._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.5, i32 289, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"anomaly: ns ept has an rpdev handle\0A\00", [59 x i8] zeroinitializer }, align 32
@mtk_rpmsg_ns_cb._entry_ptr.17 = internal global ptr @mtk_rpmsg_ns_cb._entry.15, section ".printk_index", align 4
@mtk_rpmsg_ns_cb._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.5, i32 296, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"creating channel %s addr 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mtk_rpmsg_ns_cb._entry_ptr.21 = internal global ptr @mtk_rpmsg_ns_cb._entry.18, section ".printk_index", align 4
@mtk_rpmsg_ns_cb._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.14, ptr @.str.5, i32 300, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"create rpmsg device failed\0A\00", [36 x i8] zeroinitializer }, align 32
@mtk_rpmsg_ns_cb._entry_ptr.24 = internal global ptr @mtk_rpmsg_ns_cb._entry.22, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@mtk_rpmsg_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.5, i32 363, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rpmsg_unregister_device failed for %s.%d.%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk_rpmsg_stop\00", [17 x i8] zeroinitializer }, align 32
@mtk_rpmsg_stop._entry_ptr = internal global ptr @mtk_rpmsg_stop._entry, section ".printk_index", align 4
@mtk_register_device_work_function._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.5, i32 239, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can't create rpmsg_device\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mtk_register_device_work_function\00", [62 x i8] zeroinitializer }, align 32
@mtk_register_device_work_function._entry_ptr = internal global ptr @mtk_register_device_work_function._entry, section ".printk_index", align 4
@mtk_rpmsg_device_ops = internal constant { %struct.rpmsg_device_ops, [44 x i8] } { %struct.rpmsg_device_ops { ptr null, ptr null, ptr @mtk_rpmsg_create_ept, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mediatek,rpmsg-name\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 391, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 393, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 318, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant [23 x i8] c"mtk_rpmsg_endpoint_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 160, i32 40 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 111, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 80, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 278, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 289, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 296, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 300, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 359, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 239, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant [21 x i8] c"mtk_rpmsg_device_ops\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 174, i32 38 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private constant [29 x i8] c"../drivers/rpmsg/mtk_rpmsg.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 186, i32 40 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file228, ptr @__UNIQUE_ID_license229, ptr @__ksymtab_mtk_rpmsg_create_rproc_subdev, ptr @__ksymtab_mtk_rpmsg_destroy_rproc_subdev, ptr @__mtk_create_ept._entry, ptr @__mtk_create_ept._entry_ptr, ptr @mtk_register_device_work_function._entry, ptr @mtk_register_device_work_function._entry_ptr, ptr @mtk_rpmsg_ipi_handler._entry, ptr @mtk_rpmsg_ipi_handler._entry_ptr, ptr @mtk_rpmsg_ns_cb._entry, ptr @mtk_rpmsg_ns_cb._entry.15, ptr @mtk_rpmsg_ns_cb._entry.18, ptr @mtk_rpmsg_ns_cb._entry.22, ptr @mtk_rpmsg_ns_cb._entry_ptr, ptr @mtk_rpmsg_ns_cb._entry_ptr.17, ptr @mtk_rpmsg_ns_cb._entry_ptr.21, ptr @mtk_rpmsg_ns_cb._entry_ptr.24, ptr @mtk_rpmsg_prepare._entry, ptr @mtk_rpmsg_prepare._entry_ptr, ptr @mtk_rpmsg_stop._entry, ptr @mtk_rpmsg_stop._entry_ptr, ptr @mtk_rpmsg_create_rproc_subdev.__key, ptr @.str, ptr @mtk_rpmsg_create_rproc_subdev.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @mtk_rpmsg_endpoint_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @mtk_rpmsg_device_ops, ptr @.str.29], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_rpmsg_create_rproc_subdev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_rpmsg_create_rproc_subdev.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_rpmsg_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_rpmsg_endpoint_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_rpmsg_ipi_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_rpmsg_ns_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_rpmsg_ns_cb._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_rpmsg_ns_cb._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_rpmsg_ns_cb._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_rpmsg_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_register_device_work_function._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_rpmsg_device_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mtk_rpmsg_create_rproc_subdev(ptr noundef %pdev, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 180) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %call7.i.i, align 8
  %subdev = getelementptr inbounds %struct.mtk_rpmsg_rproc_subdev, ptr %call7.i.i, i32 0, i32 3
  %prepare = getelementptr inbounds %struct.mtk_rpmsg_rproc_subdev, ptr %call7.i.i, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prepare to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @mtk_rpmsg_prepare, ptr %prepare, align 4
  %stop = getelementptr inbounds %struct.mtk_rpmsg_rproc_subdev, ptr %call7.i.i, i32 0, i32 3, i32 3
  %3 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @mtk_rpmsg_stop, ptr %stop, align 4
  %unprepare = getelementptr inbounds %struct.mtk_rpmsg_rproc_subdev, ptr %call7.i.i, i32 0, i32 3, i32 4
  %4 = ptrtoint ptr %unprepare to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mtk_rpmsg_unprepare, ptr %unprepare, align 8
  %info4 = getelementptr inbounds %struct.mtk_rpmsg_rproc_subdev, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %info4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %info, ptr %info4, align 4
  %channels = getelementptr inbounds %struct.mtk_rpmsg_rproc_subdev, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %channels, ptr %channels, align 8
  %prev.i = getelementptr inbounds %struct.mtk_rpmsg_rproc_subdev, ptr %call7.i.i, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %channels, ptr %prev.i, align 4
  %register_work = getelementptr inbounds %struct.mtk_rpmsg_rproc_subdev, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %register_work, i32 noundef 0) #7
  %8 = ptrtoint ptr %register_work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %register_work, align 4
  %lockdep_map = getelementptr inbounds %struct.mtk_rpmsg_rproc_subdev, ptr %call7.i.i, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @mtk_rpmsg_create_rproc_subdev.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry8 = getelementptr inbounds %struct.mtk_rpmsg_rproc_subdev, ptr %call7.i.i, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry8, ptr %entry8, align 8
  %prev.i27 = getelementptr inbounds %struct.mtk_rpmsg_rproc_subdev, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i27 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry8, ptr %prev.i27, align 4
  %func = getelementptr inbounds %struct.mtk_rpmsg_rproc_subdev, ptr %call7.i.i, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mtk_register_device_work_function, ptr %func, align 8
  %channels_lock = getelementptr inbounds %struct.mtk_rpmsg_rproc_subdev, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %channels_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @mtk_rpmsg_create_rproc_subdev.__key.1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %subdev, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_rpmsg_prepare(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -12
  %info = getelementptr i8, ptr %subdev, i32 -8
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %ns_ipi_id = getelementptr inbounds %struct.mtk_rpmsg_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ns_ipi_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ns_ipi_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp sgt i32 %3, -1
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call fastcc ptr @__mtk_create_ept(ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @mtk_rpmsg_ns_cb, ptr noundef %add.ptr, i32 noundef %3)
  %ns_ept = getelementptr i8, ptr %subdev, i32 -4
  %4 = ptrtoint ptr %ns_ept to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %ns_ept, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_rpmsg_stop(ptr noundef %subdev, i1 noundef zeroext %crashed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %ns_ept = getelementptr i8, ptr %subdev, i32 -4
  %2 = ptrtoint ptr %ns_ept to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns_ept, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %mtk_subdev1.i = getelementptr inbounds %struct.mtk_rpmsg_endpoint, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mtk_subdev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mtk_subdev1.i, align 4
  %info.i = getelementptr inbounds %struct.mtk_rpmsg_rproc_subdev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info.i, align 4
  %unregister_ipi.i = getelementptr inbounds %struct.mtk_rpmsg_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %unregister_ipi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unregister_ipi.i, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %addr.i = getelementptr inbounds %struct.rpmsg_endpoint, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i, align 4
  tail call void %9(ptr noundef %11, i32 noundef %13) #7
  %refcount.i = getelementptr inbounds %struct.rpmsg_endpoint, ptr %3, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !78
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.mtk_rpmsg_destroy_ept.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !79

if.end5.i.i.i.i.i.mtk_rpmsg_destroy_ept.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtk_rpmsg_destroy_ept.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %mtk_rpmsg_destroy_ept.exit

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @kfree(ptr noundef nonnull %3) #7
  br label %mtk_rpmsg_destroy_ept.exit

mtk_rpmsg_destroy_ept.exit:                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.mtk_rpmsg_destroy_ept.exit_crit_edge
  %15 = ptrtoint ptr %ns_ept to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %ns_ept, align 4
  br label %if.end

if.end:                                           ; preds = %mtk_rpmsg_destroy_ept.exit, %entry.if.end_crit_edge
  %register_work = getelementptr i8, ptr %subdev, i32 24
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %register_work) #7
  %channels_lock = getelementptr i8, ptr %subdev, i32 76
  tail call void @mutex_lock_nested(ptr noundef %channels_lock, i32 noundef 0) #7
  %channels = getelementptr i8, ptr %subdev, i32 68
  %16 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn74 = load ptr, ptr %channels, align 4
  %cmp.not76 = icmp eq ptr %.pn74, %channels
  br i1 %cmp.not76, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn77 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn74, %if.end.for.body_crit_edge ]
  %info.078 = getelementptr i8, ptr %.pn77, i32 -44
  %registered = getelementptr i8, ptr %.pn77, i32 -4
  %17 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %registered, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool9.not = icmp eq i8 %18, 0
  br i1 %tobool9.not, label %for.body.for.inc_crit_edge, label %if.end11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end11:                                         ; preds = %for.body
  %call13 = tail call i32 @rpmsg_unregister_device(ptr noundef %dev1, ptr noundef %info.078) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end11.for.inc_crit_edge, label %do.end

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %src = getelementptr i8, ptr %.pn77, i32 -12
  %19 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %src, align 4
  %dst = getelementptr i8, ptr %.pn77, i32 -8
  %21 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dst, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.25, ptr noundef %info.078, i32 noundef %20, i32 noundef %22) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.end11.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %23 = ptrtoint ptr %.pn77 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn = load ptr, ptr %.pn77, align 4
  %cmp.not = icmp eq ptr %.pn, %channels
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %24 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %channels, align 4
  %cmp38.not79 = icmp eq ptr %25, %channels
  br i1 %cmp38.not79, label %for.end.for.end48_crit_edge, label %for.end.for.body40_crit_edge

for.end.for.body40_crit_edge:                     ; preds = %for.end
  br label %for.body40

for.end.for.end48_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end48

for.body40:                                       ; preds = %list_del.exit.for.body40_crit_edge, %for.end.for.body40_crit_edge
  %.pn72.in80 = phi ptr [ %.pn72, %list_del.exit.for.body40_crit_edge ], [ %25, %for.end.for.body40_crit_edge ]
  %info.1 = getelementptr i8, ptr %.pn72.in80, i32 -44
  %26 = ptrtoint ptr %.pn72.in80 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn72 = load ptr, ptr %.pn72.in80, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn72.in80) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body40.list_del.exit_crit_edge

for.body40.list_del.exit_crit_edge:               ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn72.in80, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %.pn72.in80 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %.pn72.in80, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body40.list_del.exit_crit_edge
  %33 = ptrtoint ptr %.pn72.in80 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn72.in80, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn72.in80, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %info.1) #7
  %cmp38.not = icmp eq ptr %.pn72, %channels
  br i1 %cmp38.not, label %list_del.exit.for.end48_crit_edge, label %list_del.exit.for.body40_crit_edge

list_del.exit.for.body40_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body40

list_del.exit.for.end48_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end48

for.end48:                                        ; preds = %list_del.exit.for.end48_crit_edge, %for.end.for.end48_crit_edge
  tail call void @mutex_unlock(ptr noundef %channels_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_rpmsg_unprepare(ptr nocapture noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_ept = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %ns_ept to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns_ept, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %mtk_subdev1.i = getelementptr inbounds %struct.mtk_rpmsg_endpoint, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mtk_subdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mtk_subdev1.i, align 4
  %info.i = getelementptr inbounds %struct.mtk_rpmsg_rproc_subdev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info.i, align 4
  %unregister_ipi.i = getelementptr inbounds %struct.mtk_rpmsg_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %unregister_ipi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unregister_ipi.i, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %addr.i = getelementptr inbounds %struct.rpmsg_endpoint, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 4
  tail call void %7(ptr noundef %9, i32 noundef %11) #7
  %refcount.i = getelementptr inbounds %struct.rpmsg_endpoint, ptr %1, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !78
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.mtk_rpmsg_destroy_ept.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !79

if.end5.i.i.i.i.i.mtk_rpmsg_destroy_ept.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtk_rpmsg_destroy_ept.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %mtk_rpmsg_destroy_ept.exit

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @kfree(ptr noundef nonnull %1) #7
  br label %mtk_rpmsg_destroy_ept.exit

mtk_rpmsg_destroy_ept.exit:                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.mtk_rpmsg_destroy_ept.exit_crit_edge
  %13 = ptrtoint ptr %ns_ept to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %ns_ept, align 4
  br label %if.end

if.end:                                           ; preds = %mtk_rpmsg_destroy_ept.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_register_device_work_function(ptr noundef %register_work) #0 align 64 {
entry:
  %name.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %register_work, i32 -36
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %channels_lock = getelementptr i8, ptr %register_work, i32 52
  tail call void @mutex_lock_nested(ptr noundef %channels_lock, i32 noundef 0) #7
  %channels = getelementptr i8, ptr %register_work, i32 44
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn28 = load ptr, ptr %channels, align 4
  %cmp.not30 = icmp eq ptr %.pn28, %channels
  br i1 %cmp.not30, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn31 = phi ptr [ %.pn28, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %info.032 = getelementptr i8, ptr %.pn31, i32 -44
  %registered = getelementptr i8, ptr %.pn31, i32 -4
  %3 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %registered, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 1000) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.do.end_crit_edge, label %if.end.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %mtk_subdev2.i = getelementptr inbounds %struct.mtk_rpmsg_device, ptr %call7.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %mtk_subdev2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %mtk_subdev2.i, align 8
  %ops.i = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mtk_rpmsg_device_ops, ptr %ops.i, align 8
  %src.i = getelementptr i8, ptr %.pn31, i32 -12
  %10 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %src.i, align 4
  %src4.i = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %src4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %src4.i, align 8
  %dst.i = getelementptr i8, ptr %.pn31, i32 -8
  %13 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dst.i, align 4
  %dst5.i = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %dst5.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %dst5.i, align 4
  %id.i = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i.i, i32 0, i32 1
  %call8.i = call i32 @strscpy(ptr noundef %id.i, ptr noundef %info.032, i32 noundef 32) #7
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3, i32 27
  %16 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name.i.i) #7
  %18 = ptrtoint ptr %name.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %name.i.i, align 4, !annotation !82
  %call.i.i = call ptr @of_get_next_available_child(ptr noundef %17, ptr noundef null) #7
  %cmp.not13.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not13.i.i, label %if.end.i.mtk_rpmsg_register_device.exit_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.mtk_rpmsg_register_device.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtk_rpmsg_register_device.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %child.014.i.i = phi ptr [ %call6.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.end.i.for.body.i.i_crit_edge ]
  %call1.i.i = call i32 @of_property_read_string(ptr noundef nonnull %child.014.i.i, ptr noundef nonnull @.str.29, ptr noundef nonnull %name.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %19 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name.i.i, align 4
  %call2.i.i = call i32 @strcmp(ptr noundef %20, ptr noundef %info.032) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %if.end.i.i.mtk_rpmsg_register_device.exit_crit_edge, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end.i.i.mtk_rpmsg_register_device.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtk_rpmsg_register_device.exit

for.inc.i.i:                                      ; preds = %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %call6.i.i = call ptr @of_get_next_available_child(ptr noundef %17, ptr noundef nonnull %child.014.i.i) #7
  %cmp.not.i.i = icmp eq ptr %call6.i.i, null
  br i1 %cmp.not.i.i, label %for.inc.i.i.mtk_rpmsg_register_device.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.mtk_rpmsg_register_device.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtk_rpmsg_register_device.exit

mtk_rpmsg_register_device.exit:                   ; preds = %for.inc.i.i.mtk_rpmsg_register_device.exit_crit_edge, %if.end.i.i.mtk_rpmsg_register_device.exit_crit_edge, %if.end.i.mtk_rpmsg_register_device.exit_crit_edge
  %child.0.lcssa.i.i = phi ptr [ null, %if.end.i.mtk_rpmsg_register_device.exit_crit_edge ], [ null, %for.inc.i.i.mtk_rpmsg_register_device.exit_crit_edge ], [ %child.014.i.i, %if.end.i.i.mtk_rpmsg_register_device.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i.i) #7
  %of_node13.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 27
  %21 = ptrtoint ptr %of_node13.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %child.0.lcssa.i.i, ptr %of_node13.i, align 8
  %parent.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev.i, ptr %parent.i, align 8
  %release.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 35
  %23 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @mtk_rpmsg_release_device, ptr %release.i, align 4
  %call17.i = call i32 @rpmsg_register_device(ptr noundef nonnull %call7.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool7.not = icmp eq i32 %call17.i, 0
  br i1 %tobool7.not, label %if.end9, label %mtk_rpmsg_register_device.exit.do.end_crit_edge

mtk_rpmsg_register_device.exit.do.end_crit_edge:  ; preds = %mtk_rpmsg_register_device.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %mtk_rpmsg_register_device.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #11
  br label %for.inc

if.end9:                                          ; preds = %mtk_rpmsg_register_device.exit
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %registered to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %registered, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end9, %do.end, %for.body.for.inc_crit_edge
  %25 = ptrtoint ptr %.pn31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn = load ptr, ptr %.pn31, align 4
  %cmp.not = icmp eq ptr %.pn, %channels
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %channels_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_rpmsg_destroy_rproc_subdev(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -12
  tail call void @kfree(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__mtk_create_ept(ptr noundef %mtk_subdev, ptr noundef %rpdev, ptr noundef %cb, ptr noundef %priv, i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mtk_subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtk_subdev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 120) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mtk_subdev2 = getelementptr inbounds %struct.mtk_rpmsg_endpoint, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %mtk_subdev2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mtk_subdev, ptr %mtk_subdev2, align 4
  %refcount = getelementptr inbounds %struct.rpmsg_endpoint, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #7
  %4 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %refcount, align 4
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rpdev, ptr %call7.i.i, align 8
  %cb5 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %cb5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cb, ptr %cb5, align 8
  %priv6 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %priv6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %priv, ptr %priv6, align 4
  %ops = getelementptr inbounds %struct.rpmsg_endpoint, ptr %call7.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mtk_rpmsg_endpoint_ops, ptr %ops, align 8
  %addr = getelementptr inbounds %struct.rpmsg_endpoint, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %id, ptr %addr, align 8
  %info = getelementptr inbounds %struct.mtk_rpmsg_rproc_subdev, ptr %mtk_subdev, i32 0, i32 1
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call7 = tail call i32 %13(ptr noundef %1, i32 noundef %id, ptr noundef nonnull @mtk_rpmsg_ipi_handler, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %id) #11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #7
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #7, !srcloc !78
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !79

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #7
  br label %cleanup

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ null, %if.end5.i.i.i.i.cleanup_crit_edge ], [ null, %if.then10.i.i.i.i ], [ null, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_rpmsg_ns_cb(ptr noundef readnone %rpdev, ptr noundef %data, i32 noundef %len, ptr noundef %priv, i32 noundef %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %len)
  %cmp.not = icmp eq i32 %len, 36
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %len) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %rpdev, null
  br i1 %tobool.not, label %if.end6, label %do.end5

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %arrayidx = getelementptr [32 x i8], ptr %data, i32 0, i32 31
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx, align 1
  %addr = getelementptr inbounds %struct.rpmsg_ns_msg, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %addr, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.19, ptr noundef %data, i32 noundef %4) #11
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %addr, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 52) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end18, label %if.end.i

if.end.i:                                         ; preds = %if.end6
  %call3.i = tail call i32 @strscpy(ptr noundef nonnull %call7.i.i.i, ptr noundef %data, i32 noundef 32) #7
  %src.i = getelementptr inbounds %struct.rpmsg_channel_info, ptr %call7.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %src.i, align 8
  %dst.i = getelementptr inbounds %struct.rpmsg_channel_info, ptr %call7.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %dst.i, align 4
  %channels_lock.i = getelementptr inbounds %struct.mtk_rpmsg_rproc_subdev, ptr %priv, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %channels_lock.i, i32 noundef 0) #7
  %list.i = getelementptr inbounds %struct.mtk_rpmsg_channel_info, ptr %call7.i.i.i, i32 0, i32 2
  %channels.i = getelementptr inbounds %struct.mtk_rpmsg_rproc_subdev, ptr %priv, i32 0, i32 5
  %10 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %channels.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %channels.i, ptr noundef %11) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.mtk_rpmsg_create_device.exit.thread_crit_edge

if.end.i.mtk_rpmsg_create_device.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtk_rpmsg_create_device.exit.thread

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mtk_rpmsg_channel_info, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %channels.i, ptr %prev3.i.i.i, align 8
  %15 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %list.i, ptr %channels.i, align 4
  br label %mtk_rpmsg_create_device.exit.thread

mtk_rpmsg_create_device.exit.thread:              ; preds = %if.end.i.i.i, %if.end.i.mtk_rpmsg_create_device.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %channels_lock.i) #7
  %register_work.i = getelementptr inbounds %struct.mtk_rpmsg_rproc_subdev, ptr %priv, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i15.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %register_work.i) #7
  br label %cleanup

do.end18:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %mtk_rpmsg_create_device.exit.thread, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end5 ], [ -12, %do.end18 ], [ 0, %mtk_rpmsg_create_device.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_rpmsg_ipi_handler(ptr noundef %data, i32 noundef %len, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.rpmsg_endpoint, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %priv2 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %priv, i32 0, i32 5
  %4 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv2, align 4
  %addr = getelementptr inbounds %struct.rpmsg_endpoint, ptr %priv, i32 0, i32 4
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 4
  %call = tail call i32 %1(ptr noundef %3, ptr noundef %data, i32 noundef %len, ptr noundef %5, i32 noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.10, i32 noundef %call) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_rpmsg_destroy_ept(ptr noundef %ept) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mtk_subdev1 = getelementptr inbounds %struct.mtk_rpmsg_endpoint, ptr %ept, i32 0, i32 1
  %0 = ptrtoint ptr %mtk_subdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtk_subdev1, align 4
  %info = getelementptr inbounds %struct.mtk_rpmsg_rproc_subdev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %unregister_ipi = getelementptr inbounds %struct.mtk_rpmsg_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %unregister_ipi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unregister_ipi, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %addr = getelementptr inbounds %struct.rpmsg_endpoint, ptr %ept, i32 0, i32 4
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 4
  tail call void %5(ptr noundef %7, i32 noundef %9) #7
  %refcount = getelementptr inbounds %struct.rpmsg_endpoint, ptr %ept, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #7
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #7, !srcloc !78
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !79

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #7
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @kfree(ptr noundef %ept) #7
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_rpmsg_send(ptr nocapture noundef readonly %ept, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mtk_subdev1 = getelementptr inbounds %struct.mtk_rpmsg_endpoint, ptr %ept, i32 0, i32 1
  %0 = ptrtoint ptr %mtk_subdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtk_subdev1, align 4
  %info = getelementptr inbounds %struct.mtk_rpmsg_rproc_subdev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %send_ipi = getelementptr inbounds %struct.mtk_rpmsg_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %send_ipi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %send_ipi, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %addr = getelementptr inbounds %struct.rpmsg_endpoint, ptr %ept, i32 0, i32 4
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 4
  %call = tail call i32 %5(ptr noundef %7, i32 noundef %9, ptr noundef %data, i32 noundef %len, i32 noundef 0) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_rpmsg_trysend(ptr nocapture noundef readonly %ept, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mtk_subdev1 = getelementptr inbounds %struct.mtk_rpmsg_endpoint, ptr %ept, i32 0, i32 1
  %0 = ptrtoint ptr %mtk_subdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtk_subdev1, align 4
  %info = getelementptr inbounds %struct.mtk_rpmsg_rproc_subdev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %send_ipi = getelementptr inbounds %struct.mtk_rpmsg_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %send_ipi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %send_ipi, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %addr = getelementptr inbounds %struct.rpmsg_endpoint, ptr %ept, i32 0, i32 4
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 4
  %call = tail call i32 %5(ptr noundef %7, i32 noundef %9, ptr noundef %data, i32 noundef %len, i32 noundef 0) #7
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_unregister_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_rpmsg_release_device(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %dev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mtk_rpmsg_create_ept(ptr noundef %rpdev, ptr noundef %cb, ptr noundef %priv, [10 x i32] %chinfo.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chinfo.coerce.fca.8.extract = extractvalue [10 x i32] %chinfo.coerce, 8
  %mtk_subdev1 = getelementptr inbounds %struct.mtk_rpmsg_device, ptr %rpdev, i32 0, i32 1
  %0 = ptrtoint ptr %mtk_subdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtk_subdev1, align 8
  %call = tail call fastcc ptr @__mtk_create_ept(ptr noundef %1, ptr noundef %rpdev, ptr noundef %cb, ptr noundef %priv, i32 noundef %chinfo.coerce.fca.8.extract)
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !30, !32, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @mtk_rpmsg_create_rproc_subdev.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/rpmsg/mtk_rpmsg.c", i32 391, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @mtk_rpmsg_create_rproc_subdev.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/rpmsg/mtk_rpmsg.c", i32 393, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__ksymtab_mtk_rpmsg_create_rproc_subdev, !7, !"__ksymtab_mtk_rpmsg_create_rproc_subdev", i1 false, i1 false}
!7 = !{!"../drivers/rpmsg/mtk_rpmsg.c", i32 397, i32 1}
!8 = !{ptr @__ksymtab_mtk_rpmsg_destroy_rproc_subdev, !9, !"__ksymtab_mtk_rpmsg_destroy_rproc_subdev", i1 false, i1 false}
!9 = !{!"../drivers/rpmsg/mtk_rpmsg.c", i32 405, i32 1}
!10 = !{ptr @__UNIQUE_ID_file228, !11, !"__UNIQUE_ID_file228", i1 false, i1 false}
!11 = !{!"../drivers/rpmsg/mtk_rpmsg.c", i32 407, i32 1}
!12 = !{ptr @__UNIQUE_ID_license229, !11, !"__UNIQUE_ID_license229", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_description230, !14, !"__UNIQUE_ID_description230", i1 false, i1 false}
!14 = !{!"../drivers/rpmsg/mtk_rpmsg.c", i32 408, i32 1}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/rpmsg/mtk_rpmsg.c", i32 318, i32 4}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @mtk_rpmsg_prepare._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @mtk_rpmsg_prepare._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/rpmsg/mtk_rpmsg.c", i32 111, i32 3}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @__mtk_create_ept._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @__mtk_create_ept._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @mtk_rpmsg_endpoint_ops, !29, !"mtk_rpmsg_endpoint_ops", i1 false, i1 false}
!29 = !{!"../drivers/rpmsg/mtk_rpmsg.c", i32 160, i32 40}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/rpmsg/mtk_rpmsg.c", i32 80, i32 3}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mtk_rpmsg_ipi_handler._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @mtk_rpmsg_ipi_handler._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/rpmsg/mtk_rpmsg.c", i32 278, i32 3}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mtk_rpmsg_ns_cb._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @mtk_rpmsg_ns_cb._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/rpmsg/mtk_rpmsg.c", i32 289, i32 3}
!43 = !{ptr @mtk_rpmsg_ns_cb._entry.15, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @mtk_rpmsg_ns_cb._entry_ptr.17, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/rpmsg/mtk_rpmsg.c", i32 296, i32 2}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @mtk_rpmsg_ns_cb._entry.18, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @mtk_rpmsg_ns_cb._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/rpmsg/mtk_rpmsg.c", i32 300, i32 3}
!52 = !{ptr @mtk_rpmsg_ns_cb._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @mtk_rpmsg_ns_cb._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/rpmsg/mtk_rpmsg.c", i32 359, i32 4}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @mtk_rpmsg_stop._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @mtk_rpmsg_stop._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/rpmsg/mtk_rpmsg.c", i32 239, i32 4}
!61 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @mtk_register_device_work_function._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @mtk_register_device_work_function._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @mtk_rpmsg_device_ops, !65, !"mtk_rpmsg_device_ops", i1 false, i1 false}
!65 = !{!"../drivers/rpmsg/mtk_rpmsg.c", i32 174, i32 38}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/rpmsg/mtk_rpmsg.c", i32 186, i32 40}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i64 2148307986}
!78 = !{i64 2148222450, i64 2148222482, i64 2148222511, i64 2148222545, i64 2148222576, i64 2148222599}
!79 = !{!"branch_weights", i32 2000, i32 1}
!80 = !{i64 2149314434}
!81 = !{i8 0, i8 2}
!82 = !{!"auto-init"}
