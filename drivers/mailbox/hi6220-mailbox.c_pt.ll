; ModuleID = '/llk/IR_all_yes/drivers/mailbox/hi6220-mailbox.c_pt.bc'
source_filename = "../drivers/mailbox/hi6220-mailbox.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mbox_chan_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.hi6220_mbox = type { ptr, i32, i8, ptr, ptr, i32, ptr, [32 x ptr], ptr, %struct.mbox_controller }
%struct.mbox_controller = type { ptr, ptr, ptr, i32, i8, i8, i32, ptr, %struct.hrtimer, %struct.list_head }
%struct.hi6220_mbox_chan = type { i32, i32, i32, i32, ptr }
%struct.mbox_chan = type { ptr, i32, ptr, %struct.completion, ptr, i32, i32, [20 x ptr], %struct.spinlock, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_hi6220_mailbox__232_363_hi6220_mbox_init1 = internal global ptr @hi6220_mbox_init, section ".initcall1.init", align 4
@hi6220_mbox_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hi6220_mbox_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hi6220_mbox_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hi6220_mbox_exit = internal global ptr @hi6220_mbox_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author233 = internal constant [51 x i8] c"hi6220_mailbox.author=Leo Yan <leo.yan@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [49 x i8] c"hi6220_mailbox.description=Hi6220 mailbox driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [51 x i8] c"hi6220_mailbox.file=drivers/mailbox/hi6220-mailbox\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [30 x i8] c"hi6220_mailbox.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hi6220-mbox\00", [20 x i8] zeroinitializer }, align 32
@hi6220_mbox_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi6220-mbox\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@hi6220_mbox_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 291, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ioremap ipc failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hi6220_mbox_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/mailbox/hi6220-mailbox.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hi6220_mbox_probe._entry_ptr = internal global ptr @hi6220_mbox_probe._entry, section ".printk_index", align 4
@hi6220_mbox_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 297, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ioremap buffer failed\0A\00", [41 x i8] zeroinitializer }, align 32
@hi6220_mbox_probe._entry_ptr.8 = internal global ptr @hi6220_mbox_probe._entry.6, section ".printk_index", align 4
@hi6220_mbox_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 305, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to register a mailbox IRQ handler: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@hi6220_mbox_probe._entry_ptr.11 = internal global ptr @hi6220_mbox_probe._entry.9, section ".printk_index", align 4
@hi6220_mbox_ops = internal constant { %struct.mbox_chan_ops, [40 x i8] } { %struct.mbox_chan_ops { ptr @hi6220_mbox_send_data, ptr null, ptr @hi6220_mbox_startup, ptr @hi6220_mbox_shutdown, ptr @hi6220_mbox_last_tx_done, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hi6220,mbox-tx-noirq\00", [43 x i8] zeroinitializer }, align 32
@hi6220_mbox_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 342, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register mailbox %d\0A\00", [33 x i8] zeroinitializer }, align 32
@hi6220_mbox_probe._entry_ptr.15 = internal global ptr @hi6220_mbox_probe._entry.13, section ".printk_index", align 4
@hi6220_mbox_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 347, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mailbox enabled\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hi6220_mbox_probe._entry_ptr.19 = internal global ptr @hi6220_mbox_probe._entry.16, section ".printk_index", align 4
@hi6220_mbox_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 159, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: spurious interrupt\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hi6220_mbox_interrupt\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hi6220_mbox_interrupt._entry_ptr = internal global ptr @hi6220_mbox_interrupt._entry, section ".printk_index", align 4
@hi6220_mbox_interrupt._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.21, ptr @.str.3, i32 170, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: unexpected irq vector %d\0A\00", [34 x i8] zeroinitializer }, align 32
@hi6220_mbox_interrupt._entry_ptr.25 = internal global ptr @hi6220_mbox_interrupt._entry.23, section ".printk_index", align 4
@hi6220_mbox_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 237, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Invalid channel idx %d dst_irq %d ack_irq %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hi6220_mbox_xlate\00", [46 x i8] zeroinitializer }, align 32
@hi6220_mbox_xlate._entry_ptr = internal global ptr @hi6220_mbox_xlate._entry, section ".printk_index", align 4
@hi6220_mbox_xlate._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 244, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Channel in use\0A\00", [16 x i8] zeroinitializer }, align 32
@hi6220_mbox_xlate._entry_ptr.30 = internal global ptr @hi6220_mbox_xlate._entry.28, section ".printk_index", align 4
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"hi6220_mbox_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 351, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 353, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [21 x i8] c"hi6220_mbox_of_match\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 256, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 291, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 297, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 304, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [16 x i8] c"hi6220_mbox_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 215, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 328, i32 29 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 342, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 347, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 158, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 169, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 235, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private constant [36 x i8] c"../drivers/mailbox/hi6220-mailbox.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 244, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_hi6220_mbox_exit, ptr @__initcall__kmod_hi6220_mailbox__232_363_hi6220_mbox_init1, ptr @hi6220_mbox_exit, ptr @hi6220_mbox_interrupt._entry, ptr @hi6220_mbox_interrupt._entry.23, ptr @hi6220_mbox_interrupt._entry_ptr, ptr @hi6220_mbox_interrupt._entry_ptr.25, ptr @hi6220_mbox_probe._entry, ptr @hi6220_mbox_probe._entry.13, ptr @hi6220_mbox_probe._entry.16, ptr @hi6220_mbox_probe._entry.6, ptr @hi6220_mbox_probe._entry.9, ptr @hi6220_mbox_probe._entry_ptr, ptr @hi6220_mbox_probe._entry_ptr.11, ptr @hi6220_mbox_probe._entry_ptr.15, ptr @hi6220_mbox_probe._entry_ptr.19, ptr @hi6220_mbox_probe._entry_ptr.8, ptr @hi6220_mbox_xlate._entry, ptr @hi6220_mbox_xlate._entry.28, ptr @hi6220_mbox_xlate._entry_ptr, ptr @hi6220_mbox_xlate._entry_ptr.30, ptr @hi6220_mbox_driver, ptr @.str, ptr @hi6220_mbox_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @hi6220_mbox_ops, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_mbox_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_mbox_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_mbox_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_mbox_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_mbox_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_mbox_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_mbox_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_mbox_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_mbox_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_mbox_interrupt._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_mbox_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_mbox_xlate._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6220_mbox_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hi6220_mbox_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hi6220_mbox_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @hi6220_mbox_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6220_mbox_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 248, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 8
  %chan_num = getelementptr inbounds %struct.hi6220_mbox, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %chan_num to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32, ptr %chan_num, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 640, i32 noundef 3520) #6
  %mchan = getelementptr inbounds %struct.hi6220_mbox, ptr %call.i, i32 0, i32 6
  %4 = ptrtoint ptr %mchan to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5.i.i, ptr %mchan, align 8
  %tobool7.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %5 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chan_num, align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 208) #6
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !74

devm_kcalloc.exit.thread:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %chan177 = getelementptr inbounds %struct.hi6220_mbox, ptr %call.i, i32 0, i32 8
  %9 = ptrtoint ptr %chan177 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %chan177, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end9
  %10 = extractvalue { i32, i1 } %7, 0
  %call5.i.i173 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %10, i32 noundef 3520) #6
  %chan = getelementptr inbounds %struct.hi6220_mbox, ptr %call.i, i32 0, i32 8
  %11 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i.i173, ptr %chan, align 4
  %tobool13.not = icmp eq ptr %call5.i.i173, null
  br i1 %tobool13.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end15

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %devm_kcalloc.exit
  %call16 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.hi6220_mbox, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call16, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %call21 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %ipc = getelementptr inbounds %struct.hi6220_mbox, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %ipc to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call21, ptr %ipc, align 4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end27

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  %14 = ptrtoint ptr %ipc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ipc, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  %call28 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #6
  %base = getelementptr inbounds %struct.hi6220_mbox, ptr %call.i, i32 0, i32 4
  %17 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call28, ptr %base, align 8
  %cmp.i174 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i174, label %do.end34, label %if.end37

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 8
  %20 = ptrtoint ptr %19 to i32
  br label %cleanup

if.end37:                                         ; preds = %if.end27
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end37.dev_name.exit_crit_edge

if.end37.dev_name.exit_crit_edge:                 ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end37.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %26, %if.end.i ], [ %24, %if.end37.dev_name.exit_crit_edge ]
  %call.i175 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %22, ptr noundef nonnull @hi6220_mbox_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175)
  %tobool41.not = icmp eq i32 %call.i175, 0
  br i1 %tobool41.not, label %if.end46, label %do.end45

do.end45:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call.i175) #9
  br label %cleanup

if.end46:                                         ; preds = %dev_name.exit
  %controller = getelementptr inbounds %struct.hi6220_mbox, ptr %call.i, i32 0, i32 9
  %27 = ptrtoint ptr %controller to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev, ptr %controller, align 8
  %28 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chan, align 4
  %chans = getelementptr inbounds %struct.hi6220_mbox, ptr %call.i, i32 0, i32 9, i32 2
  %30 = ptrtoint ptr %chans to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %chans, align 8
  %31 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chan_num, align 4
  %num_chans = getelementptr inbounds %struct.hi6220_mbox, ptr %call.i, i32 0, i32 9, i32 3
  %33 = ptrtoint ptr %num_chans to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %num_chans, align 4
  %ops = getelementptr inbounds %struct.hi6220_mbox, ptr %call.i, i32 0, i32 9, i32 1
  %34 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @hi6220_mbox_ops, ptr %ops, align 4
  %of_xlate = getelementptr inbounds %struct.hi6220_mbox, ptr %call.i, i32 0, i32 9, i32 7
  %35 = ptrtoint ptr %of_xlate to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @hi6220_mbox_xlate, ptr %of_xlate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp55179.not = icmp eq i32 %32, 0
  br i1 %cmp55179.not, label %if.end46.do.body65_crit_edge, label %if.end46.for.body_crit_edge

if.end46.for.body_crit_edge:                      ; preds = %if.end46
  br label %for.body

if.end46.do.body65_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body65

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end46.for.body_crit_edge
  %i.0180 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end46.for.body_crit_edge ]
  %36 = ptrtoint ptr %mchan to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mchan, align 8
  %arrayidx57 = getelementptr %struct.hi6220_mbox_chan, ptr %37, i32 %i.0180
  %38 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chan, align 4
  %con_priv = getelementptr %struct.mbox_chan, ptr %39, i32 %i.0180, i32 9
  %40 = ptrtoint ptr %con_priv to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %arrayidx57, ptr %con_priv, align 4
  %arrayidx60 = getelementptr %struct.hi6220_mbox, ptr %call.i, i32 0, i32 7, i32 %i.0180
  %41 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %arrayidx60, align 4
  %42 = load ptr, ptr %mchan, align 8
  %parent = getelementptr %struct.hi6220_mbox_chan, ptr %42, i32 %i.0180, i32 4
  %43 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i, ptr %parent, align 4
  %44 = load ptr, ptr %mchan, align 8
  %slot = getelementptr %struct.hi6220_mbox_chan, ptr %44, i32 %i.0180, i32 3
  %45 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %i.0180, ptr %slot, align 4
  %inc = add nuw i32 %i.0180, 1
  %46 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %chan_num, align 4
  %cmp55 = icmp ult i32 %inc, %47
  br i1 %cmp55, label %for.body.for.body_crit_edge, label %for.body.do.body65_crit_edge

for.body.do.body65_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body65

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body65:                                        ; preds = %for.body.do.body65_crit_edge, %if.end46.do.body65_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %48 = ptrtoint ptr %ipc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ipc, align 4
  %add.ptr = getelementptr i8, ptr %49, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %50 = ptrtoint ptr %ipc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ipc, align 4
  %add.ptr73 = getelementptr i8, ptr %51, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 -1) #6, !srcloc !76
  %call74 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef null) #6
  %tobool75.not = icmp eq ptr %call74, null
  %52 = getelementptr inbounds %struct.hi6220_mbox, ptr %call.i, i32 0, i32 2
  br i1 %tobool75.not, label %if.then81, label %if.else83

if.then81:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %52, align 8
  %txdone_irq = getelementptr inbounds %struct.hi6220_mbox, ptr %call.i, i32 0, i32 9, i32 4
  %54 = ptrtoint ptr %txdone_irq to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %txdone_irq, align 8
  br label %if.end86

if.else83:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %52, align 8
  %txdone_poll = getelementptr inbounds %struct.hi6220_mbox, ptr %call.i, i32 0, i32 9, i32 5
  %56 = ptrtoint ptr %txdone_poll to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %txdone_poll, align 1
  %txpoll_period = getelementptr inbounds %struct.hi6220_mbox, ptr %call.i, i32 0, i32 9, i32 6
  %57 = ptrtoint ptr %txpoll_period to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 5, ptr %txpoll_period, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.else83, %if.then81
  %call88 = tail call i32 @devm_mbox_controller_register(ptr noundef %dev, ptr noundef %controller) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end94, label %do.end93

do.end93:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call88) #9
  br label %cleanup

if.end94:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %58 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %do.end93, %do.end45, %do.end34, %do.end, %if.end15.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %do.end ], [ %20, %do.end34 ], [ -19, %do.end45 ], [ %call88, %do.end93 ], [ 0, %if.end94 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6220_mbox_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  %msg = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %msg) #6
  %0 = getelementptr inbounds [8 x i32], ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i32], ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i32], ptr %msg, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i32], ptr %msg, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i32], ptr %msg, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i32], ptr %msg, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i32], ptr %msg, i32 0, i32 7
  %ipc = getelementptr inbounds %struct.hi6220_mbox, ptr %p, i32 0, i32 3
  %7 = call ptr @memset(ptr %msg, i32 255, i32 32)
  %8 = ptrtoint ptr %ipc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ipc, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 1032
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %do.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %base = getelementptr inbounds %struct.hi6220_mbox, ptr %p, i32 0, i32 4
  br label %while.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #9
  br label %cleanup

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %state.058 = phi i32 [ %11, %while.body.lr.ph ], [ %and, %while.cond.backedge.while.body_crit_edge ]
  %14 = call i32 @llvm.cttz.i32(i32 %state.058, i1 true) #6, !range !80
  %sub = add i32 %state.058, -1
  %and = and i32 %sub, %state.058
  %arrayidx = getelementptr %struct.hi6220_mbox, ptr %p, i32 0, i32 7, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %16, null
  br i1 %tobool4.not, label %do.end8, label %if.end10

do.end8:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.21, i32 noundef %14) #9
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.body23, %do.end8
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %while.body
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %16, i32 0, i32 9
  %19 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %con_priv, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp = icmp eq i32 %22, 1
  br i1 %cmp, label %if.then11, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %slot = getelementptr inbounds %struct.hi6220_mbox_chan, ptr %20, i32 0, i32 3
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 8
  %25 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %slot, align 4
  %mul = shl i32 %26, 6
  %add = or i32 %mul, 4
  %add.ptr15 = getelementptr i8, ptr %24, i32 %add
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #6, !srcloc !78
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %29 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %msg, align 4
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 8
  %32 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %slot, align 4
  %mul.1 = shl i32 %33, 6
  %add.1 = or i32 %mul.1, 4
  %add.ptr15.1 = getelementptr i8, ptr %31, i32 4
  %add.ptr17.1 = getelementptr i8, ptr %add.ptr15.1, i32 %add.1
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.1) #6, !srcloc !78
  %35 = call i32 @llvm.bswap.i32(i32 %34)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %0, align 4
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 8
  %39 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %slot, align 4
  %mul.2 = shl i32 %40, 6
  %add.2 = or i32 %mul.2, 4
  %add.ptr15.2 = getelementptr i8, ptr %38, i32 8
  %add.ptr17.2 = getelementptr i8, ptr %add.ptr15.2, i32 %add.2
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.2) #6, !srcloc !78
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %1, align 4
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 8
  %46 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %slot, align 4
  %mul.3 = shl i32 %47, 6
  %add.3 = or i32 %mul.3, 4
  %add.ptr15.3 = getelementptr i8, ptr %45, i32 12
  %add.ptr17.3 = getelementptr i8, ptr %add.ptr15.3, i32 %add.3
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.3) #6, !srcloc !78
  %49 = call i32 @llvm.bswap.i32(i32 %48)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %50 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %2, align 4
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 8
  %53 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %slot, align 4
  %mul.4 = shl i32 %54, 6
  %add.4 = or i32 %mul.4, 4
  %add.ptr15.4 = getelementptr i8, ptr %52, i32 16
  %add.ptr17.4 = getelementptr i8, ptr %add.ptr15.4, i32 %add.4
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.4) #6, !srcloc !78
  %56 = call i32 @llvm.bswap.i32(i32 %55)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %3, align 4
  %58 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base, align 8
  %60 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %slot, align 4
  %mul.5 = shl i32 %61, 6
  %add.5 = or i32 %mul.5, 4
  %add.ptr15.5 = getelementptr i8, ptr %59, i32 20
  %add.ptr17.5 = getelementptr i8, ptr %add.ptr15.5, i32 %add.5
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.5) #6, !srcloc !78
  %63 = call i32 @llvm.bswap.i32(i32 %62)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %64 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %4, align 4
  %65 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base, align 8
  %67 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %slot, align 4
  %mul.6 = shl i32 %68, 6
  %add.6 = or i32 %mul.6, 4
  %add.ptr15.6 = getelementptr i8, ptr %66, i32 24
  %add.ptr17.6 = getelementptr i8, ptr %add.ptr15.6, i32 %add.6
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.6) #6, !srcloc !78
  %70 = call i32 @llvm.bswap.i32(i32 %69)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %71 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %5, align 4
  %72 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base, align 8
  %74 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %slot, align 4
  %mul.7 = shl i32 %75, 6
  %add.7 = or i32 %mul.7, 4
  %add.ptr15.7 = getelementptr i8, ptr %73, i32 28
  %add.ptr17.7 = getelementptr i8, ptr %add.ptr15.7, i32 %add.7
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.7) #6, !srcloc !78
  %77 = call i32 @llvm.bswap.i32(i32 %76)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %78 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %6, align 4
  call void @mbox_chan_received_data(ptr noundef nonnull %16, ptr noundef nonnull %msg) #6
  br label %do.body23

if.then11:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  call void @mbox_chan_txdone(ptr noundef nonnull %16, i32 noundef 0) #6
  br label %do.body23

do.body23:                                        ; preds = %if.then11, %for.cond.preheader
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  call void @arm_heavy_mb() #6
  %ack_irq = getelementptr inbounds %struct.hi6220_mbox_chan, ptr %20, i32 0, i32 2
  %79 = ptrtoint ptr %ack_irq to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ack_irq, align 4
  %shl = shl nuw i32 1, %80
  %81 = call i32 @llvm.bswap.i32(i32 %shl)
  %82 = ptrtoint ptr %ipc to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ipc, align 4
  %add.ptr27 = getelementptr i8, ptr %83, i32 1036
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %81) #6, !srcloc !76
  %slot28 = getelementptr inbounds %struct.hi6220_mbox_chan, ptr %20, i32 0, i32 3
  %84 = ptrtoint ptr %slot28 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %slot28, align 4
  %86 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base, align 8
  %mul.i = shl i32 %85, 6
  %add.ptr.i = getelementptr i8, ptr %87, i32 %mul.i
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %89 = and i32 %88, 268435455
  %90 = or i32 %89, 268435456
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  call void @arm_heavy_mb() #6
  %91 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base, align 8
  %add.ptr5.i = getelementptr i8, ptr %92, i32 %mul.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %90) #6, !srcloc !76
  br label %while.cond.backedge

cleanup:                                          ; preds = %while.cond.backedge.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %msg) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @hi6220_mbox_xlate(ptr nocapture noundef readonly %controller, ptr nocapture noundef readonly %spec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %spec, i32 0, i32 2
  %4 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args, align 4
  %arrayidx2 = getelementptr %struct.of_phandle_args, ptr %spec, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr %struct.of_phandle_args, ptr %spec, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %chan_num = getelementptr inbounds %struct.hi6220_mbox, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chan_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %11)
  %cmp.not = icmp ult i32 %5, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp6.not = icmp ult i32 %7, %11
  %or.cond = select i1 %cmp.not, i1 %cmp6.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp9.not = icmp ult i32 %9, %11
  %or.cond56 = select i1 %or.cond, i1 %cmp9.not, i1 false
  br i1 %or.cond56, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.26, i32 noundef %5, i32 noundef %7, i32 noundef %9) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %chan12 = getelementptr inbounds %struct.hi6220_mbox, ptr %3, i32 0, i32 8
  %14 = ptrtoint ptr %chan12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chan12, align 4
  %arrayidx13 = getelementptr %struct.mbox_chan, ptr %15, i32 %5
  %arrayidx14 = getelementptr %struct.hi6220_mbox, ptr %3, i32 0, i32 7, i32 %9
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx14, align 4
  %cmp15 = icmp eq ptr %17, %arrayidx13
  br i1 %cmp15, label %do.end19, label %if.end22

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.29) #9
  br label %cleanup

if.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %con_priv = getelementptr %struct.mbox_chan, ptr %15, i32 %5, i32 9
  %20 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %con_priv, align 4
  %dst_irq23 = getelementptr inbounds %struct.hi6220_mbox_chan, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %dst_irq23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %7, ptr %dst_irq23, align 4
  %ack_irq24 = getelementptr inbounds %struct.hi6220_mbox_chan, ptr %21, i32 0, i32 2
  %23 = ptrtoint ptr %ack_irq24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %9, ptr %ack_irq24, align 4
  %24 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx13, ptr %arrayidx14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end19, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -16 to ptr), %do.end19 ], [ %arrayidx13, %if.end22 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mbox_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_txdone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_received_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6220_mbox_send_data(ptr nocapture noundef readonly %chan, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %parent = getelementptr inbounds %struct.hi6220_mbox_chan, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %slot1 = getelementptr inbounds %struct.hi6220_mbox_chan, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %slot1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slot1, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %1, align 4
  %base.i = getelementptr inbounds %struct.hi6220_mbox, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 8
  %mul.i = shl i32 %5, 6
  %add.ptr.i = getelementptr i8, ptr %8, i32 %mul.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %10 = and i32 %9, 268435455
  %11 = or i32 %10, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %13, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %11) #6, !srcloc !76
  %tx_irq_mode = getelementptr inbounds %struct.hi6220_mbox, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %tx_irq_mode to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tx_irq_mode, align 8, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 8
  %add.ptr.i28 = getelementptr i8, ptr %17, i32 %mul.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %19 = and i32 %18, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 8
  %add.ptr5.i25 = getelementptr i8, ptr %21, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i25, i32 %19) #6, !srcloc !76
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %22 = or i32 %18, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 8
  %add.ptr5.i30 = getelementptr i8, ptr %24, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i30, i32 %22) #6, !srcloc !76
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %add = or i32 %mul.i, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 8
  %add.ptr = getelementptr i8, ptr %29, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %27) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %arrayidx.1 = getelementptr i32, ptr %msg, i32 1
  %30 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.1, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 8
  %add.ptr.1 = getelementptr i8, ptr %34, i32 %add
  %add.ptr3.1 = getelementptr i8, ptr %add.ptr.1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.1, i32 %32) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %arrayidx.2 = getelementptr i32, ptr %msg, i32 2
  %35 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.2, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 8
  %add.ptr.2 = getelementptr i8, ptr %39, i32 %add
  %add.ptr3.2 = getelementptr i8, ptr %add.ptr.2, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.2, i32 %37) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %arrayidx.3 = getelementptr i32, ptr %msg, i32 3
  %40 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.3, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 8
  %add.ptr.3 = getelementptr i8, ptr %44, i32 %add
  %add.ptr3.3 = getelementptr i8, ptr %add.ptr.3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.3, i32 %42) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %arrayidx.4 = getelementptr i32, ptr %msg, i32 4
  %45 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.4, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 8
  %add.ptr.4 = getelementptr i8, ptr %49, i32 %add
  %add.ptr3.4 = getelementptr i8, ptr %add.ptr.4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.4, i32 %47) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %arrayidx.5 = getelementptr i32, ptr %msg, i32 5
  %50 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.5, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %53 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i, align 8
  %add.ptr.5 = getelementptr i8, ptr %54, i32 %add
  %add.ptr3.5 = getelementptr i8, ptr %add.ptr.5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.5, i32 %52) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %arrayidx.6 = getelementptr i32, ptr %msg, i32 6
  %55 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.6, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %58 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i, align 8
  %add.ptr.6 = getelementptr i8, ptr %59, i32 %add
  %add.ptr3.6 = getelementptr i8, ptr %add.ptr.6, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.6, i32 %57) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %arrayidx.7 = getelementptr i32, ptr %msg, i32 7
  %60 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.7, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %63 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i, align 8
  %add.ptr.7 = getelementptr i8, ptr %64, i32 %add
  %add.ptr3.7 = getelementptr i8, ptr %add.ptr.7, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.7, i32 %62) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %dst_irq = getelementptr inbounds %struct.hi6220_mbox_chan, ptr %1, i32 0, i32 1
  %65 = ptrtoint ptr %dst_irq to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dst_irq, align 4
  %shl = shl nuw i32 1, %66
  %67 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %ipc = getelementptr inbounds %struct.hi6220_mbox, ptr %3, i32 0, i32 3
  %68 = ptrtoint ptr %ipc to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ipc, align 4
  %add.ptr7 = getelementptr i8, ptr %69, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %67) #6, !srcloc !76
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6220_mbox_startup(ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %parent = getelementptr inbounds %struct.hi6220_mbox_chan, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %ack_irq = getelementptr inbounds %struct.hi6220_mbox_chan, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %ack_irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ack_irq, align 4
  %shl = shl nuw i32 1, %6
  %7 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %ipc = getelementptr inbounds %struct.hi6220_mbox, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %ipc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ipc, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 1280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #6, !srcloc !76
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hi6220_mbox_shutdown(ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %parent = getelementptr inbounds %struct.hi6220_mbox_chan, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %ack_irq = getelementptr inbounds %struct.hi6220_mbox_chan, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ack_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ack_irq, align 4
  %shl = shl nuw i32 1, %5
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %ipc = getelementptr inbounds %struct.hi6220_mbox, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %ipc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ipc, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 1284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #6, !srcloc !76
  %9 = ptrtoint ptr %ack_irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ack_irq, align 4
  %arrayidx = getelementptr %struct.hi6220_mbox, ptr %3, i32 0, i32 7, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @hi6220_mbox_last_tx_done(ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %parent = getelementptr inbounds %struct.hi6220_mbox_chan, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %tx_irq_mode = getelementptr inbounds %struct.hi6220_mbox, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %tx_irq_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_irq_mode, align 8, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !91

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mailbox/hi6220-mailbox.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 116, 0\0A.popsection", ""() #6, !srcloc !92
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %base = getelementptr inbounds %struct.hi6220_mbox, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 8
  %slot = getelementptr inbounds %struct.hi6220_mbox_chan, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %slot, align 4
  %mul = shl i32 %9, 6
  %add.ptr = getelementptr i8, ptr %7, i32 %mul
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  %11 = and i32 %10, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %11)
  %cmp = icmp eq i32 %11, 268435456
  ret i1 %cmp
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !48, !50, !51, !52, !54, !56, !57, !58, !59, !61, !62, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_hi6220_mailbox__232_363_hi6220_mbox_init1, !1, !"__initcall__kmod_hi6220_mailbox__232_363_hi6220_mbox_init1", i1 false, i1 false}
!1 = !{!"../drivers/mailbox/hi6220-mailbox.c", i32 363, i32 1}
!2 = !{ptr @__exitcall_hi6220_mbox_exit, !3, !"__exitcall_hi6220_mbox_exit", i1 false, i1 false}
!3 = !{!"../drivers/mailbox/hi6220-mailbox.c", i32 369, i32 1}
!4 = !{ptr @__UNIQUE_ID_author233, !5, !"__UNIQUE_ID_author233", i1 false, i1 false}
!5 = !{!"../drivers/mailbox/hi6220-mailbox.c", i32 371, i32 1}
!6 = !{ptr @__UNIQUE_ID_description234, !7, !"__UNIQUE_ID_description234", i1 false, i1 false}
!7 = !{!"../drivers/mailbox/hi6220-mailbox.c", i32 372, i32 1}
!8 = !{ptr @__UNIQUE_ID_file235, !9, !"__UNIQUE_ID_file235", i1 false, i1 false}
!9 = !{!"../drivers/mailbox/hi6220-mailbox.c", i32 373, i32 1}
!10 = !{ptr @__UNIQUE_ID_license236, !9, !"__UNIQUE_ID_license236", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mailbox/hi6220-mailbox.c", i32 353, i32 11}
!13 = !{ptr @hi6220_mbox_driver, !14, !"hi6220_mbox_driver", i1 false, i1 false}
!14 = !{!"../drivers/mailbox/hi6220-mailbox.c", i32 351, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mailbox/hi6220-mailbox.c", i32 291, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @hi6220_mbox_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @hi6220_mbox_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mailbox/hi6220-mailbox.c", i32 297, i32 3}
!25 = !{ptr @hi6220_mbox_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @hi6220_mbox_probe._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mailbox/hi6220-mailbox.c", i32 304, i32 3}
!29 = !{ptr @hi6220_mbox_probe._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @hi6220_mbox_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mailbox/hi6220-mailbox.c", i32 328, i32 29}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mailbox/hi6220-mailbox.c", i32 342, i32 3}
!35 = !{ptr @hi6220_mbox_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @hi6220_mbox_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mailbox/hi6220-mailbox.c", i32 347, i32 2}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @hi6220_mbox_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @hi6220_mbox_probe._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mailbox/hi6220-mailbox.c", i32 158, i32 3}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @hi6220_mbox_interrupt._entry, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @hi6220_mbox_interrupt._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mailbox/hi6220-mailbox.c", i32 169, i32 4}
!50 = !{ptr @hi6220_mbox_interrupt._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @hi6220_mbox_interrupt._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @hi6220_mbox_ops, !53, !"hi6220_mbox_ops", i1 false, i1 false}
!53 = !{!"../drivers/mailbox/hi6220-mailbox.c", i32 215, i32 35}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mailbox/hi6220-mailbox.c", i32 235, i32 3}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @hi6220_mbox_xlate._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @hi6220_mbox_xlate._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mailbox/hi6220-mailbox.c", i32 244, i32 3}
!61 = !{ptr @hi6220_mbox_xlate._entry.28, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @hi6220_mbox_xlate._entry_ptr.30, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @hi6220_mbox_of_match, !64, !"hi6220_mbox_of_match", i1 false, i1 false}
!64 = !{!"../drivers/mailbox/hi6220-mailbox.c", i32 256, i32 34}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"branch_weights", i32 1, i32 2000}
!75 = !{i64 2154225131}
!76 = !{i64 4865909}
!77 = !{i64 2154225557}
!78 = !{i64 4866327}
!79 = !{i64 2154210009}
!80 = !{i32 0, i32 33}
!81 = !{i64 2154214024}
!82 = !{i64 2154214393}
!83 = !{i64 2154204352}
!84 = !{i64 2154204645}
!85 = !{i8 0, i8 2}
!86 = !{i64 2154205759}
!87 = !{i64 2154208598}
!88 = !{i64 2154209181}
!89 = !{i64 2154215065}
!90 = !{i64 2154215726}
!91 = !{!"branch_weights", i32 2000, i32 1}
!92 = !{i64 2154206331, i64 2154206828, i64 2154206368, i64 2154206424, i64 2154206458, i64 2154206482, i64 2154206523, i64 2154206544, i64 2154206572, i64 2154206606}
!93 = !{i64 2154208247}
