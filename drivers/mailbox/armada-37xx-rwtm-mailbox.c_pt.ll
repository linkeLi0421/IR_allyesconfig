; ModuleID = '/llk/IR_all_yes/drivers/mailbox/armada-37xx-rwtm-mailbox.c_pt.bc'
source_filename = "../drivers/mailbox/armada-37xx-rwtm-mailbox.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mbox_chan_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.a37xx_mbox = type { ptr, %struct.mbox_controller, ptr, i32 }
%struct.mbox_controller = type { ptr, ptr, ptr, i32, i8, i8, i32, ptr, %struct.hrtimer, %struct.list_head }
%struct.mbox_chan = type { ptr, i32, ptr, %struct.completion, ptr, i32, i32, [20 x ptr], %struct.spinlock, ptr }
%struct.armada_37xx_rwtm_tx_msg = type { i16, [16 x i32] }
%struct.armada_37xx_rwtm_rx_msg = type { i32, [16 x i32] }

@__initcall__kmod_armada_37xx_rwtm_mailbox__187_202_armada_37xx_mbox_driver_init6 = internal global ptr @armada_37xx_mbox_driver_init, section ".initcall6.init", align 4
@armada_37xx_mbox_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @armada_37xx_mbox_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @armada_37xx_mbox_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_armada_37xx_mbox_driver_exit = internal global ptr @armada_37xx_mbox_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file188 = internal constant [71 x i8] c"armada_37xx_rwtm_mailbox.file=drivers/mailbox/armada-37xx-rwtm-mailbox\00", section ".modinfo", align 1
@__UNIQUE_ID_license189 = internal constant [40 x i8] c"armada_37xx_rwtm_mailbox.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [77 x i8] c"armada_37xx_rwtm_mailbox.description=rWTM BIU Mailbox driver for Armada 37xx\00", section ".modinfo", align 1
@__UNIQUE_ID_author191 = internal constant [63 x i8] c"armada_37xx_rwtm_mailbox.author=Marek Behun <kabel@kernel.org>\00", section ".modinfo", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"armada-37xx-rwtm-mailbox\00", [39 x i8] zeroinitializer }, align 32
@armada_37xx_mbox_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-3700-rwtm-mailbox\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@a37xx_mbox_ops = internal constant { %struct.mbox_chan_ops, [40 x i8] } { %struct.mbox_chan_ops { ptr @a37xx_mbox_send_data, ptr null, ptr @a37xx_mbox_startup, ptr @a37xx_mbox_shutdown, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@armada_37xx_mbox_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 178, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Could not register mailbox controller\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"armada_37xx_mbox_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/mailbox/armada-37xx-rwtm-mailbox.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@armada_37xx_mbox_probe._entry_ptr = internal global ptr @armada_37xx_mbox_probe._entry, section ".printk_index", align 4
@a37xx_mbox_send_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 89, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Secure processor not ready\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"a37xx_mbox_send_data\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@a37xx_mbox_send_data._entry_ptr = internal global ptr @a37xx_mbox_send_data._entry, section ".printk_index", align 4
@a37xx_mbox_send_data._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.3, i32 92, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Secure processor command queue full\0A\00", [59 x i8] zeroinitializer }, align 32
@a37xx_mbox_send_data._entry_ptr.11 = internal global ptr @a37xx_mbox_send_data._entry.9, section ".printk_index", align 4
@a37xx_mbox_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 112, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Cannot request irq\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"a37xx_mbox_startup\00", [45 x i8] zeroinitializer }, align 32
@a37xx_mbox_startup._entry_ptr = internal global ptr @a37xx_mbox_startup._entry, section ".printk_index", align 4
@a37xx_mbox_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.14, ptr @.str.3, i32 68, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"a37xx_mbox_irq_handler\00", [41 x i8] zeroinitializer }, align 32
@a37xx_mbox_irq_handler._entry_ptr = internal global ptr @a37xx_mbox_irq_handler._entry, section ".printk_index", align 4
@___asan_gen_.15 = private unnamed_addr constant [24 x i8] c"armada_37xx_mbox_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 194, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 197, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant [23 x i8] c"armada_37xx_mbox_match\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 187, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"a37xx_mbox_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 137, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 178, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 89, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 92, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 112, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [46 x i8] c"../drivers/mailbox/armada-37xx-rwtm-mailbox.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 68, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author191, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file188, ptr @__UNIQUE_ID_license189, ptr @__exitcall_armada_37xx_mbox_driver_exit, ptr @__initcall__kmod_armada_37xx_rwtm_mailbox__187_202_armada_37xx_mbox_driver_init6, ptr @a37xx_mbox_irq_handler._entry, ptr @a37xx_mbox_irq_handler._entry_ptr, ptr @a37xx_mbox_send_data._entry, ptr @a37xx_mbox_send_data._entry.9, ptr @a37xx_mbox_send_data._entry_ptr, ptr @a37xx_mbox_send_data._entry_ptr.11, ptr @a37xx_mbox_startup._entry, ptr @a37xx_mbox_startup._entry_ptr, ptr @armada_37xx_mbox_driver_exit, ptr @armada_37xx_mbox_probe._entry, ptr @armada_37xx_mbox_probe._entry_ptr, ptr @armada_37xx_mbox_driver, ptr @.str, ptr @armada_37xx_mbox_match, ptr @a37xx_mbox_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_37xx_mbox_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_37xx_mbox_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a37xx_mbox_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_37xx_mbox_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a37xx_mbox_send_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a37xx_mbox_send_data._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a37xx_mbox_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a37xx_mbox_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_37xx_mbox_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @armada_37xx_mbox_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @armada_37xx_mbox_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @armada_37xx_mbox_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_37xx_mbox_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 104, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i63 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 208, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i63, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.a37xx_mbox, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call6, ptr %base, align 8
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %call13 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.a37xx_mbox, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call13, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call.i, align 8
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %call.i63, i32 0, i32 9
  %4 = ptrtoint ptr %con_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %con_priv, align 4
  %controller = getelementptr inbounds %struct.a37xx_mbox, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %controller to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %controller, align 8
  %num_chans = getelementptr inbounds %struct.a37xx_mbox, ptr %call.i, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %num_chans to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %num_chans, align 4
  %chans24 = getelementptr inbounds %struct.a37xx_mbox, ptr %call.i, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %chans24 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i63, ptr %chans24, align 8
  %ops = getelementptr inbounds %struct.a37xx_mbox, ptr %call.i, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @a37xx_mbox_ops, ptr %ops, align 4
  %txdone_irq = getelementptr inbounds %struct.a37xx_mbox, ptr %call.i, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %txdone_irq to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %txdone_irq, align 8
  %call29 = tail call i32 @devm_mbox_controller_register(ptr noundef %dev, ptr noundef %controller) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end33, label %do.end

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end33:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %do.end, %if.end12.cleanup_crit_edge, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then9 ], [ %call29, %do.end ], [ 0, %if.end33 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mbox_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a37xx_mbox_send_data(ptr nocapture noundef readonly %chan, ptr noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %base = getelementptr inbounds %struct.a37xx_mbox, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 196
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !54
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.end, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.6) #9
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.end.if.end4_crit_edge
  %and5 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %cmp.not = icmp eq i32 %and5, 0
  br i1 %cmp.not, label %if.end4.do.body13_crit_edge, label %do.end9

if.end4.do.body13_crit_edge:                      ; preds = %if.end4
  br label %do.body13

do.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.10) #9
  br label %cleanup

do.body13:                                        ; preds = %do.body13.do.body13_crit_edge, %if.end4.do.body13_crit_edge
  %i.036 = phi i32 [ %inc, %do.body13.do.body13_crit_edge ], [ 0, %if.end4.do.body13_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %arrayidx = getelementptr %struct.armada_37xx_rwtm_tx_msg, ptr %data, i32 0, i32 1, i32 %i.036
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 8
  %shl = shl i32 %i.036, 2
  %add.ptr17 = getelementptr i8, ptr %14, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %12) #6, !srcloc !57
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %do.body18, label %do.body13.do.body13_crit_edge

do.body13.do.body13_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body13

do.body18:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %data, align 4
  %conv = zext i16 %16 to i32
  %17 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 8
  %add.ptr22 = getelementptr i8, ptr %19, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %17) #6, !srcloc !57
  br label %cleanup

cleanup:                                          ; preds = %do.body18, %do.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end9 ], [ 0, %do.body18 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a37xx_mbox_startup(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %irq = getelementptr inbounds %struct.a37xx_mbox, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %5, ptr noundef nonnull @a37xx_mbox_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %chan) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %base = getelementptr inbounds %struct.a37xx_mbox, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 204
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  %11 = and i32 %10, -16778753
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 8
  %add.ptr8 = getelementptr i8, ptr %13, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %11) #6, !srcloc !57
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @a37xx_mbox_shutdown(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %base = getelementptr inbounds %struct.a37xx_mbox, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 204
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %5 = or i32 %4, 16778752
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 8
  %add.ptr3 = getelementptr i8, ptr %7, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #6, !srcloc !57
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %irq = getelementptr inbounds %struct.a37xx_mbox, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %9, i32 noundef %11, ptr noundef %chan) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a37xx_mbox_irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %rx_msg.i = alloca %struct.armada_37xx_rwtm_rx_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %data, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %base = getelementptr inbounds %struct.a37xx_mbox, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 200
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !54
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %con_priv, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %rx_msg.i) #6
  %8 = getelementptr inbounds i8, ptr %rx_msg.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 64)
  %base.i = getelementptr inbounds %struct.a37xx_mbox, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 128
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !54
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  %14 = ptrtoint ptr %rx_msg.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %rx_msg.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then
  %i.014.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 8
  %shl.i = shl i32 %i.014.i, 2
  %add.i = add nuw nsw i32 %shl.i, 132
  %add.ptr5.i = getelementptr i8, ptr %16, i32 %add.i
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #6, !srcloc !54
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  %arrayidx.i = getelementptr %struct.armada_37xx_rwtm_rx_msg, ptr %rx_msg.i, i32 0, i32 1, i32 %i.014.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %a37xx_mbox_receive.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

a37xx_mbox_receive.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @mbox_chan_received_data(ptr noundef %data, ptr noundef nonnull %rx_msg.i) #6
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %rx_msg.i) #6
  br label %if.end

if.end:                                           ; preds = %a37xx_mbox_receive.exit, %entry.if.end_crit_edge
  %and2 = and i32 %5, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.do.body6_crit_edge, label %do.end

if.end.do.body6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.10) #9
  br label %do.body6

do.body6:                                         ; preds = %do.end, %if.end.do.body6_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 8
  %add.ptr10 = getelementptr i8, ptr %23, i32 200
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %4) #6, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool11.not = icmp eq i32 %4, 0
  br i1 %tobool11.not, label %do.body6.if.end13_crit_edge, label %if.then12

do.body6.if.end13_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then12:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  call void @mbox_chan_txdone(ptr noundef %data, i32 noundef 0) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %do.body6.if.end13_crit_edge
  %not.tobool11.not = xor i1 %tobool11.not, true
  %cond = zext i1 %not.tobool11.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_txdone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_received_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__initcall__kmod_armada_37xx_rwtm_mailbox__187_202_armada_37xx_mbox_driver_init6, !1, !"__initcall__kmod_armada_37xx_rwtm_mailbox__187_202_armada_37xx_mbox_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mailbox/armada-37xx-rwtm-mailbox.c", i32 202, i32 1}
!2 = !{ptr @__exitcall_armada_37xx_mbox_driver_exit, !1, !"__exitcall_armada_37xx_mbox_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file188, !4, !"__UNIQUE_ID_file188", i1 false, i1 false}
!4 = !{!"../drivers/mailbox/armada-37xx-rwtm-mailbox.c", i32 204, i32 1}
!5 = !{ptr @__UNIQUE_ID_license189, !4, !"__UNIQUE_ID_license189", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description190, !7, !"__UNIQUE_ID_description190", i1 false, i1 false}
!7 = !{!"../drivers/mailbox/armada-37xx-rwtm-mailbox.c", i32 205, i32 1}
!8 = !{ptr @__UNIQUE_ID_author191, !9, !"__UNIQUE_ID_author191", i1 false, i1 false}
!9 = !{!"../drivers/mailbox/armada-37xx-rwtm-mailbox.c", i32 206, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mailbox/armada-37xx-rwtm-mailbox.c", i32 197, i32 12}
!12 = !{ptr @armada_37xx_mbox_driver, !13, !"armada_37xx_mbox_driver", i1 false, i1 false}
!13 = !{!"../drivers/mailbox/armada-37xx-rwtm-mailbox.c", i32 194, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mailbox/armada-37xx-rwtm-mailbox.c", i32 178, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @armada_37xx_mbox_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @armada_37xx_mbox_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @a37xx_mbox_ops, !23, !"a37xx_mbox_ops", i1 false, i1 false}
!23 = !{!"../drivers/mailbox/armada-37xx-rwtm-mailbox.c", i32 137, i32 35}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mailbox/armada-37xx-rwtm-mailbox.c", i32 89, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @a37xx_mbox_send_data._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @a37xx_mbox_send_data._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mailbox/armada-37xx-rwtm-mailbox.c", i32 92, i32 3}
!32 = !{ptr @a37xx_mbox_send_data._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @a37xx_mbox_send_data._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mailbox/armada-37xx-rwtm-mailbox.c", i32 112, i32 3}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @a37xx_mbox_startup._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @a37xx_mbox_startup._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mailbox/armada-37xx-rwtm-mailbox.c", i32 68, i32 3}
!41 = !{ptr @a37xx_mbox_irq_handler._entry, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @a37xx_mbox_irq_handler._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @armada_37xx_mbox_match, !44, !"armada_37xx_mbox_match", i1 false, i1 false}
!44 = !{!"../drivers/mailbox/armada-37xx-rwtm-mailbox.c", i32 187, i32 34}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 4862414}
!55 = !{i64 2153090400}
!56 = !{i64 2153094048}
!57 = !{i64 4861996}
!58 = !{i64 2153094494}
!59 = !{i64 2153096786}
!60 = !{i64 2153097255}
!61 = !{i64 2153097921}
!62 = !{i64 2153098390}
!63 = !{i64 2153083477}
!64 = !{i64 2153082410}
!65 = !{i64 2153082986}
!66 = !{i64 2153089731}
