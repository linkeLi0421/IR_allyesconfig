; ModuleID = '/llk/IR_all_yes/drivers/mailbox/hi3660-mailbox.c_pt.bc'
source_filename = "../drivers/mailbox/hi3660-mailbox.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mbox_chan_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.hi3660_mbox = type { ptr, ptr, [32 x %struct.mbox_chan], [32 x %struct.hi3660_chan_info], %struct.mbox_controller }
%struct.mbox_chan = type { ptr, i32, ptr, %struct.completion, ptr, i32, i32, [20 x ptr], %struct.spinlock, ptr }
%struct.hi3660_chan_info = type { i32, i32 }
%struct.mbox_controller = type { ptr, ptr, ptr, i32, i8, i8, i32, ptr, %struct.hrtimer, %struct.list_head }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_hi3660_mailbox__187_287_hi3660_mbox_init1 = internal global ptr @hi3660_mbox_init, section ".initcall1.init", align 4
@hi3660_mbox_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hi3660_mbox_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hi3660_mbox_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hi3660_mbox_exit = internal global ptr @hi3660_mbox_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file188 = internal constant [51 x i8] c"hi3660_mailbox.file=drivers/mailbox/hi3660-mailbox\00", section ".modinfo", align 1
@__UNIQUE_ID_license189 = internal constant [27 x i8] c"hi3660_mailbox.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [63 x i8] c"hi3660_mailbox.description=Hisilicon Hi3660 Mailbox Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author191 = internal constant [51 x i8] c"hi3660_mailbox.author=Leo Yan <leo.yan@linaro.org>\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hi3660-mbox\00", [20 x i8] zeroinitializer }, align 32
@hi3660_mbox_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3660-mbox\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@hi3660_mbox_ops = internal constant { %struct.mbox_chan_ops, [40 x i8] } { %struct.mbox_chan_ops { ptr @hi3660_mbox_send_data, ptr null, ptr @hi3660_mbox_startup, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hi3660_mbox_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 266, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register mailbox %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hi3660_mbox_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/mailbox/hi3660-mailbox.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hi3660_mbox_probe._entry_ptr = internal global ptr @hi3660_mbox_probe._entry, section ".printk_index", align 4
@hi3660_mbox_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 271, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mailbox enabled\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hi3660_mbox_probe._entry_ptr.9 = internal global ptr @hi3660_mbox_probe._entry.6, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@hi3660_mbox_check_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 101, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: timeout for receiving ack\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hi3660_mbox_check_state\00", [40 x i8] zeroinitializer }, align 32
@hi3660_mbox_check_state._entry_ptr = internal global ptr @hi3660_mbox_check_state._entry, section ".printk_index", align 4
@hi3660_mbox_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 127, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: failed to unlock mailbox\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hi3660_mbox_unlock\00", [45 x i8] zeroinitializer }, align 32
@hi3660_mbox_unlock._entry_ptr = internal global ptr @hi3660_mbox_unlock._entry, section ".printk_index", align 4
@hi3660_mbox_acquire_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 153, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: failed to acquire channel\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hi3660_mbox_acquire_channel\00", [36 x i8] zeroinitializer }, align 32
@hi3660_mbox_acquire_channel._entry_ptr = internal global ptr @hi3660_mbox_acquire_channel._entry, section ".printk_index", align 4
@hi3660_mbox_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 218, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid channel idx %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hi3660_mbox_xlate\00", [46 x i8] zeroinitializer }, align 32
@hi3660_mbox_xlate._entry_ptr = internal global ptr @hi3660_mbox_xlate._entry, section ".printk_index", align 4
@___asan_gen_.18 = private unnamed_addr constant [19 x i8] c"hi3660_mbox_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 275, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 278, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [21 x i8] c"hi3660_mbox_of_match\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 229, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"hi3660_mbox_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 205, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 266, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 271, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 101, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 127, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 153, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [36 x i8] c"../drivers/mailbox/hi3660-mailbox.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 218, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author191, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file188, ptr @__UNIQUE_ID_license189, ptr @__exitcall_hi3660_mbox_exit, ptr @__initcall__kmod_hi3660_mailbox__187_287_hi3660_mbox_init1, ptr @hi3660_mbox_acquire_channel._entry, ptr @hi3660_mbox_acquire_channel._entry_ptr, ptr @hi3660_mbox_check_state._entry, ptr @hi3660_mbox_check_state._entry_ptr, ptr @hi3660_mbox_exit, ptr @hi3660_mbox_probe._entry, ptr @hi3660_mbox_probe._entry.6, ptr @hi3660_mbox_probe._entry_ptr, ptr @hi3660_mbox_probe._entry_ptr.9, ptr @hi3660_mbox_unlock._entry, ptr @hi3660_mbox_unlock._entry_ptr, ptr @hi3660_mbox_xlate._entry, ptr @hi3660_mbox_xlate._entry_ptr, ptr @hi3660_mbox_driver, ptr @.str, ptr @hi3660_mbox_of_match, ptr @hi3660_mbox_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3660_mbox_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3660_mbox_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3660_mbox_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3660_mbox_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3660_mbox_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3660_mbox_check_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3660_mbox_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3660_mbox_acquire_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3660_mbox_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3660_mbox_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hi3660_mbox_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hi3660_mbox_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @hi3660_mbox_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3660_mbox_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 7008, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %base = getelementptr inbounds %struct.hi3660_mbox, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 8
  %controller = getelementptr inbounds %struct.hi3660_mbox, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %controller to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %controller, align 8
  %chan11 = getelementptr inbounds %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2
  %chans = getelementptr inbounds %struct.hi3660_mbox, ptr %call.i, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %chans to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %chan11, ptr %chans, align 8
  %num_chans = getelementptr inbounds %struct.hi3660_mbox, ptr %call.i, i32 0, i32 4, i32 3
  %5 = ptrtoint ptr %num_chans to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 32, ptr %num_chans, align 4
  %ops = getelementptr inbounds %struct.hi3660_mbox, ptr %call.i, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @hi3660_mbox_ops, ptr %ops, align 4
  %of_xlate = getelementptr inbounds %struct.hi3660_mbox, ptr %call.i, i32 0, i32 4, i32 7
  %7 = ptrtoint ptr %of_xlate to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @hi3660_mbox_xlate, ptr %of_xlate, align 8
  %con_priv = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 0, i32 9
  %8 = ptrtoint ptr %con_priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %con_priv, align 4
  %con_priv.1 = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 1, i32 9
  %9 = ptrtoint ptr %con_priv.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 1 to ptr), ptr %con_priv.1, align 4
  %con_priv.2 = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 2, i32 9
  %10 = ptrtoint ptr %con_priv.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 2 to ptr), ptr %con_priv.2, align 4
  %con_priv.3 = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 3, i32 9
  %11 = ptrtoint ptr %con_priv.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 3 to ptr), ptr %con_priv.3, align 4
  %con_priv.4 = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 4, i32 9
  %12 = ptrtoint ptr %con_priv.4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 4 to ptr), ptr %con_priv.4, align 4
  %con_priv.5 = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 5, i32 9
  %13 = ptrtoint ptr %con_priv.5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 5 to ptr), ptr %con_priv.5, align 4
  %con_priv.6 = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 6, i32 9
  %14 = ptrtoint ptr %con_priv.6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 6 to ptr), ptr %con_priv.6, align 4
  %con_priv.7 = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 7, i32 9
  %15 = ptrtoint ptr %con_priv.7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 7 to ptr), ptr %con_priv.7, align 4
  %con_priv.8 = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 8, i32 9
  %16 = ptrtoint ptr %con_priv.8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 8 to ptr), ptr %con_priv.8, align 4
  %con_priv.9 = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 9, i32 9
  %17 = ptrtoint ptr %con_priv.9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 9 to ptr), ptr %con_priv.9, align 4
  %con_priv.10 = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 10, i32 9
  %18 = ptrtoint ptr %con_priv.10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 10 to ptr), ptr %con_priv.10, align 4
  %con_priv.11 = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 11, i32 9
  %19 = ptrtoint ptr %con_priv.11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 11 to ptr), ptr %con_priv.11, align 4
  %con_priv.12 = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 12, i32 9
  %20 = ptrtoint ptr %con_priv.12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 12 to ptr), ptr %con_priv.12, align 4
  %con_priv.13 = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 13, i32 9
  %21 = ptrtoint ptr %con_priv.13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 13 to ptr), ptr %con_priv.13, align 4
  %con_priv.14 = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 14, i32 9
  %22 = ptrtoint ptr %con_priv.14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 14 to ptr), ptr %con_priv.14, align 4
  %con_priv.15 = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 15, i32 9
  %23 = ptrtoint ptr %con_priv.15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 15 to ptr), ptr %con_priv.15, align 4
  %con_priv.16 = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 16, i32 9
  %24 = ptrtoint ptr %con_priv.16 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 16 to ptr), ptr %con_priv.16, align 4
  %con_priv.17 = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 17, i32 9
  %25 = ptrtoint ptr %con_priv.17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 17 to ptr), ptr %con_priv.17, align 4
  %con_priv.18 = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 18, i32 9
  %26 = ptrtoint ptr %con_priv.18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 18 to ptr), ptr %con_priv.18, align 4
  %con_priv.19 = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 19, i32 9
  %27 = ptrtoint ptr %con_priv.19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 19 to ptr), ptr %con_priv.19, align 4
  %con_priv.20 = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 20, i32 9
  %28 = ptrtoint ptr %con_priv.20 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 20 to ptr), ptr %con_priv.20, align 4
  %con_priv.21 = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 21, i32 9
  %29 = ptrtoint ptr %con_priv.21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 21 to ptr), ptr %con_priv.21, align 4
  %con_priv.22 = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 22, i32 9
  %30 = ptrtoint ptr %con_priv.22 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 22 to ptr), ptr %con_priv.22, align 4
  %con_priv.23 = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 23, i32 9
  %31 = ptrtoint ptr %con_priv.23 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 23 to ptr), ptr %con_priv.23, align 4
  %con_priv.24 = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 24, i32 9
  %32 = ptrtoint ptr %con_priv.24 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 24 to ptr), ptr %con_priv.24, align 4
  %con_priv.25 = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 25, i32 9
  %33 = ptrtoint ptr %con_priv.25 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 25 to ptr), ptr %con_priv.25, align 4
  %con_priv.26 = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 26, i32 9
  %34 = ptrtoint ptr %con_priv.26 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 26 to ptr), ptr %con_priv.26, align 4
  %con_priv.27 = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 27, i32 9
  %35 = ptrtoint ptr %con_priv.27 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 27 to ptr), ptr %con_priv.27, align 4
  %con_priv.28 = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 28, i32 9
  %36 = ptrtoint ptr %con_priv.28 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 28 to ptr), ptr %con_priv.28, align 4
  %con_priv.29 = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 29, i32 9
  %37 = ptrtoint ptr %con_priv.29 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 29 to ptr), ptr %con_priv.29, align 4
  %con_priv.30 = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 30, i32 9
  %38 = ptrtoint ptr %con_priv.30 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 30 to ptr), ptr %con_priv.30, align 4
  %con_priv.31 = getelementptr %struct.hi3660_mbox, ptr %call.i, i32 0, i32 2, i32 31, i32 9
  %39 = ptrtoint ptr %con_priv.31 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 31 to ptr), ptr %con_priv.31, align 4
  %call19 = tail call i32 @devm_mbox_controller_register(ptr noundef %dev1, ptr noundef %controller) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %do.end

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %call19) #8
  br label %cleanup

if.end22:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %call19, %do.end ], [ 0, %if.end22 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @hi3660_mbox_xlate(ptr noundef %controller, ptr nocapture noundef readonly %spec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %controller, i32 -6920
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %spec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp = icmp ugt i32 %1, 31
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.16, i32 noundef %1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx3 = getelementptr %struct.hi3660_mbox, ptr %add.ptr.i, i32 0, i32 3, i32 %1
  %arrayidx5 = getelementptr %struct.of_phandle_args, ptr %spec, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx5, align 4
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx3, align 4
  %arrayidx7 = getelementptr %struct.of_phandle_args, ptr %spec, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx7, align 4
  %ack_irq = getelementptr %struct.hi3660_mbox, ptr %add.ptr.i, i32 0, i32 3, i32 %1, i32 1
  %9 = ptrtoint ptr %ack_irq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %ack_irq, align 4
  %arrayidx8 = getelementptr %struct.hi3660_mbox, ptr %add.ptr.i, i32 0, i32 2, i32 %1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %arrayidx8, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mbox_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3660_mbox_send_data(ptr nocapture noundef readonly %chan, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chan, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 -6920
  %base3 = getelementptr i8, ptr %4, i32 -6916
  %5 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base3, align 4
  %mul = shl i32 %2, 6
  %add.ptr = getelementptr i8, ptr %6, i32 %mul
  %add.ptr4.i = getelementptr i8, ptr %add.ptr, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  %8 = and i32 %7, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call7.i = tail call i64 @ktime_get() #5
  %add.i.i = add i64 %call7.i, 300000000
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !61
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  %and1568.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1568.i)
  %tobool16.not69.i = icmp eq i32 %and1568.i, 0
  br i1 %tobool16.not69.i, label %if.end.i.land.lhs.true.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.end.i.land.lhs.true.i_crit_edge:               ; preds = %if.end.i
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %if.end.i.land.lhs.true.i_crit_edge
  %call20.i = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call20.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call20.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then22.i, label %cond.false.i

if.then22.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !61
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  br label %for.end.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #5
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !61
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  %and15.i = and i32 %15, 128
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %cond.false.i.land.lhs.true.i_crit_edge, label %cond.false.i.for.end.i_crit_edge

cond.false.i.for.end.i_crit_edge:                 ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %cond.false.i.for.end.i_crit_edge, %if.then22.i, %if.end.i.for.end.i_crit_edge
  %val.0.i = phi i32 [ %12, %if.then22.i ], [ %10, %if.end.i.for.end.i_crit_edge ], [ %15, %cond.false.i.for.end.i_crit_edge ]
  %and39.i = and i32 %val.0.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %hi3660_mbox_check_state.exit, label %do.body44.i

do.body44.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %ack_irq.i = getelementptr %struct.hi3660_mbox, ptr %add.ptr.i, i32 0, i32 3, i32 %2, i32 1
  %16 = ptrtoint ptr %ack_irq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ack_irq.i, align 4
  %shl.i = shl nuw i32 1, %17
  %18 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #5
  %add.ptr47.i = getelementptr i8, ptr %add.ptr, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.i, i32 %18) #5, !srcloc !66
  br label %if.end

hi3660_mbox_check_state.exit:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end:                                           ; preds = %do.body44.i, %entry.if.end_crit_edge
  %arrayidx = getelementptr %struct.hi3660_mbox, ptr %add.ptr.i, i32 0, i32 3, i32 %2
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %shl = shl nuw i32 1, %22
  %neg = xor i32 %shl, -1
  %23 = tail call i32 @llvm.bswap.i32(i32 %neg)
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %23) #5, !srcloc !66
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %shl7 = shl nuw i32 1, %25
  %26 = tail call i32 @llvm.bswap.i32(i32 %shl7)
  %add.ptr8 = getelementptr i8, ptr %add.ptr, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %26) #5, !srcloc !66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 16777216) #5, !srcloc !66
  %add.ptr11 = getelementptr i8, ptr %add.ptr, i32 32
  %27 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %29) #5, !srcloc !66
  %arrayidx10.1 = getelementptr i32, ptr %msg, i32 1
  %30 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx10.1, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %add.ptr13.1 = getelementptr i8, ptr %add.ptr11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.1, i32 %32) #5, !srcloc !66
  %arrayidx10.2 = getelementptr i32, ptr %msg, i32 2
  %33 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx10.2, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %add.ptr13.2 = getelementptr i8, ptr %add.ptr11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.2, i32 %35) #5, !srcloc !66
  %arrayidx10.3 = getelementptr i32, ptr %msg, i32 3
  %36 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx10.3, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %add.ptr13.3 = getelementptr i8, ptr %add.ptr11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.3, i32 %38) #5, !srcloc !66
  %arrayidx10.4 = getelementptr i32, ptr %msg, i32 4
  %39 = ptrtoint ptr %arrayidx10.4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx10.4, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %add.ptr13.4 = getelementptr i8, ptr %add.ptr11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.4, i32 %41) #5, !srcloc !66
  %arrayidx10.5 = getelementptr i32, ptr %msg, i32 5
  %42 = ptrtoint ptr %arrayidx10.5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx10.5, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %add.ptr13.5 = getelementptr i8, ptr %add.ptr11, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.5, i32 %44) #5, !srcloc !66
  %arrayidx10.6 = getelementptr i32, ptr %msg, i32 6
  %45 = ptrtoint ptr %arrayidx10.6 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx10.6, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %add.ptr13.6 = getelementptr i8, ptr %add.ptr11, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.6, i32 %47) #5, !srcloc !66
  %arrayidx10.7 = getelementptr i32, ptr %msg, i32 7
  %48 = ptrtoint ptr %arrayidx10.7 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx10.7, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %add.ptr13.7 = getelementptr i8, ptr %add.ptr11, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.7, i32 %50) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %ack_irq = getelementptr %struct.hi3660_mbox, ptr %add.ptr.i, i32 0, i32 3, i32 %2, i32 1
  %51 = ptrtoint ptr %ack_irq to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ack_irq, align 4
  %shl14 = shl nuw i32 1, %52
  %53 = tail call i32 @llvm.bswap.i32(i32 %shl14)
  %add.ptr15 = getelementptr i8, ptr %add.ptr, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %53) #5, !srcloc !66
  br label %cleanup

cleanup:                                          ; preds = %if.end, %hi3660_mbox_check_state.exit
  %retval.0 = phi i32 [ 0, %if.end ], [ -110, %hi3660_mbox_check_state.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3660_mbox_startup(ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -6920
  %base.i = getelementptr i8, ptr %1, i32 -6916
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1374014490) #5, !srcloc !66
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %5, i32 2560
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.1.i = getelementptr i8, ptr %9, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.i, i32 1374014490) #5, !srcloc !66
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr4.1.i = getelementptr i8, ptr %11, i32 2560
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.1.i) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.1.i = icmp eq i32 %12, 0
  br i1 %tobool.not.1.i, label %if.end.i.if.end_crit_edge, label %if.end.1.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.1.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.2.i = getelementptr i8, ptr %15, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2.i, i32 1374014490) #5, !srcloc !66
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr4.2.i = getelementptr i8, ptr %17, i32 2560
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.2.i) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.2.i = icmp eq i32 %18, 0
  br i1 %tobool.not.2.i, label %if.end.1.i.if.end_crit_edge, label %if.end.2.i

if.end.1.i.if.end_crit_edge:                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.2.i:                                       ; preds = %if.end.1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 2147480) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.3.i = getelementptr i8, ptr %21, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3.i, i32 1374014490) #5, !srcloc !66
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr4.3.i = getelementptr i8, ptr %23, i32 2560
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.3.i) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.3.i = icmp eq i32 %24, 0
  br i1 %tobool.not.3.i, label %if.end.2.i.if.end_crit_edge, label %hi3660_mbox_unlock.exit

if.end.2.i.if.end_crit_edge:                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

hi3660_mbox_unlock.exit:                          ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 2147480) #5
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.2.i.if.end_crit_edge, %if.end.1.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %con_priv.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %28 = ptrtoint ptr %con_priv.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %con_priv.i, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chan, align 4
  %add.ptr.i.i9 = getelementptr i8, ptr %32, i32 -6920
  %base3.i = getelementptr i8, ptr %32, i32 -6916
  %33 = ptrtoint ptr %base3.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base3.i, align 4
  %mul.i = shl i32 %30, 6
  %add.ptr.i10 = getelementptr i8, ptr %34, i32 %mul.i
  %add.ptr4.i11 = getelementptr i8, ptr %add.ptr.i10, i32 16
  %ack_irq.i = getelementptr %struct.hi3660_mbox, ptr %add.ptr.i.i9, i32 0, i32 3, i32 %30, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %retry.038.i = phi i32 [ 10, %if.end ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i11) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %36 = and i32 %35, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool7.not.i = icmp eq i32 %36, 0
  br i1 %tobool7.not.i, label %for.body.i.for.inc.i_crit_edge, label %do.body.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

do.body.i:                                        ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %37 = ptrtoint ptr %ack_irq.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ack_irq.i, align 4
  %shl.i = shl nuw i32 1, %38
  %39 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %39) #5, !srcloc !66
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #5, !srcloc !61
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  %42 = ptrtoint ptr %ack_irq.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ack_irq.i, align 4
  %shl16.i = shl nuw i32 1, %43
  %and17.i = and i32 %shl16.i, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %do.body.i.for.inc.i_crit_edge, label %do.body.i.cleanup_crit_edge

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.i.for.inc.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.body.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %dec.i = add nsw i32 %retry.038.i, -1
  %tobool.not.i12 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i12, label %do.end25.critedge.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.end25.critedge.i:                              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %add.ptr.i.i9 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i.i9, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end25.critedge.i, %do.body.i.cleanup_crit_edge, %hi3660_mbox_unlock.exit
  %retval.0 = phi i32 [ -110, %hi3660_mbox_unlock.exit ], [ -110, %do.end25.critedge.i ], [ 0, %do.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__initcall__kmod_hi3660_mailbox__187_287_hi3660_mbox_init1, !1, !"__initcall__kmod_hi3660_mailbox__187_287_hi3660_mbox_init1", i1 false, i1 false}
!1 = !{!"../drivers/mailbox/hi3660-mailbox.c", i32 287, i32 1}
!2 = !{ptr @__exitcall_hi3660_mbox_exit, !3, !"__exitcall_hi3660_mbox_exit", i1 false, i1 false}
!3 = !{!"../drivers/mailbox/hi3660-mailbox.c", i32 293, i32 1}
!4 = !{ptr @__UNIQUE_ID_file188, !5, !"__UNIQUE_ID_file188", i1 false, i1 false}
!5 = !{!"../drivers/mailbox/hi3660-mailbox.c", i32 295, i32 1}
!6 = !{ptr @__UNIQUE_ID_license189, !5, !"__UNIQUE_ID_license189", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description190, !8, !"__UNIQUE_ID_description190", i1 false, i1 false}
!8 = !{!"../drivers/mailbox/hi3660-mailbox.c", i32 296, i32 1}
!9 = !{ptr @__UNIQUE_ID_author191, !10, !"__UNIQUE_ID_author191", i1 false, i1 false}
!10 = !{!"../drivers/mailbox/hi3660-mailbox.c", i32 297, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mailbox/hi3660-mailbox.c", i32 278, i32 11}
!13 = !{ptr @hi3660_mbox_driver, !14, !"hi3660_mbox_driver", i1 false, i1 false}
!14 = !{!"../drivers/mailbox/hi3660-mailbox.c", i32 275, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mailbox/hi3660-mailbox.c", i32 266, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @hi3660_mbox_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @hi3660_mbox_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mailbox/hi3660-mailbox.c", i32 271, i32 2}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @hi3660_mbox_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @hi3660_mbox_probe._entry_ptr.9, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @hi3660_mbox_ops, !29, !"hi3660_mbox_ops", i1 false, i1 false}
!29 = !{!"../drivers/mailbox/hi3660-mailbox.c", i32 205, i32 35}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mailbox/hi3660-mailbox.c", i32 101, i32 3}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @hi3660_mbox_check_state._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @hi3660_mbox_check_state._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mailbox/hi3660-mailbox.c", i32 127, i32 3}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @hi3660_mbox_unlock._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @hi3660_mbox_unlock._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mailbox/hi3660-mailbox.c", i32 153, i32 3}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @hi3660_mbox_acquire_channel._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @hi3660_mbox_acquire_channel._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mailbox/hi3660-mailbox.c", i32 218, i32 3}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @hi3660_mbox_xlate._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @hi3660_mbox_xlate._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @hi3660_mbox_of_match, !51, !"hi3660_mbox_of_match", i1 false, i1 false}
!51 = !{!"../drivers/mailbox/hi3660-mailbox.c", i32 229, i32 34}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i64 4872540}
!62 = !{i64 2153105489}
!63 = !{i64 2153107466}
!64 = !{i64 2153107928}
!65 = !{i64 2153110539}
!66 = !{i64 4872122}
!67 = !{i64 2153118903}
!68 = !{i64 2153111058}
!69 = !{i64 2153111751}
!70 = !{i64 2153114473}
!71 = !{i64 2153114893}
!72 = !{i64 2153115640}
