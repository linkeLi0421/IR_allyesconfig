; ModuleID = '/llk/IR_all_yes/drivers/mailbox/sprd-mailbox.c_pt.bc'
source_filename = "../drivers/mailbox/sprd-mailbox.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mbox_chan_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.sprd_mbox_priv = type { %struct.mbox_controller, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, i32, [8 x %struct.mbox_chan] }
%struct.mbox_controller = type { ptr, ptr, ptr, i32, i8, i8, i32, ptr, %struct.hrtimer, %struct.list_head }
%struct.mbox_chan = type { ptr, i32, ptr, %struct.completion, ptr, i32, i32, [20 x ptr], %struct.spinlock, ptr }

@__initcall__kmod_sprd_mailbox__187_426_sprd_mbox_driver_init6 = internal global ptr @sprd_mbox_driver_init, section ".initcall6.init", align 4
@sprd_mbox_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sprd_mbox_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sprd_mbox_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sprd_mbox_driver_exit = internal global ptr @sprd_mbox_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [57 x i8] c"sprd_mailbox.author=Baolin Wang <baolin.wang@unisoc.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [51 x i8] c"sprd_mailbox.description=Spreadtrum mailbox driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [47 x i8] c"sprd_mailbox.file=drivers/mailbox/sprd-mailbox\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [28 x i8] c"sprd_mailbox.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sprd-mailbox\00", [19 x i8] zeroinitializer }, align 32
@sprd_mbox_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,sc9860-mailbox\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,sc9863a-mailbox\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sprd_mbox_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@sprd_mbox_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 336, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get mailbox clock\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sprd_mbox_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/mailbox/sprd-mailbox.c\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sprd_mbox_probe._entry_ptr = internal global ptr @sprd_mbox_probe._entry, section ".printk_index", align 4
@sprd_mbox_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 346, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to add mailbox disable action\0A\00", [58 x i8] zeroinitializer }, align 32
@sprd_mbox_probe._entry_ptr.10 = internal global ptr @sprd_mbox_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"inbox\00", [26 x i8] zeroinitializer }, align 32
@sprd_mbox_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 357, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to request inbox IRQ: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@sprd_mbox_probe._entry_ptr.14 = internal global ptr @sprd_mbox_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"outbox\00", [25 x i8] zeroinitializer }, align 32
@sprd_mbox_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 368, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to request outbox IRQ: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@sprd_mbox_probe._entry_ptr.18 = internal global ptr @sprd_mbox_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"supp-outbox\00", [20 x i8] zeroinitializer }, align 32
@sprd_mbox_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 378, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@sprd_mbox_probe._entry_ptr.21 = internal global ptr @sprd_mbox_probe._entry.20, section ".printk_index", align 4
@sprd_mbox_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.4, ptr @.str.5, i32 384, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"no supplementary outbox specified\0A\00", [61 x i8] zeroinitializer }, align 32
@sprd_mbox_probe._entry_ptr.24 = internal global ptr @sprd_mbox_probe._entry.22, section ".printk_index", align 4
@sprd_mbox_ops = internal constant { %struct.mbox_chan_ops, [40 x i8] } { %struct.mbox_chan_ops { ptr @sprd_mbox_send_data, ptr @sprd_mbox_flush, ptr @sprd_mbox_startup, ptr @sprd_mbox_shutdown, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sprd_mbox_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.4, ptr @.str.5, i32 404, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to register mailbox: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@sprd_mbox_probe._entry_ptr.27 = internal global ptr @sprd_mbox_probe._entry.25, section ".printk_index", align 4
@sprd_mbox_inbox_isr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.sprd_mbox_inbox_isr = private unnamed_addr constant [20 x i8] c"sprd_mbox_inbox_isr\00", align 1
@sprd_mbox_inbox_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @__func__.sprd_mbox_inbox_isr, ptr @.str.5, i32 166, ptr @.str.30, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"spurious inbox interrupt\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sprd_mbox_inbox_isr._entry_ptr = internal global ptr @sprd_mbox_inbox_isr._entry, section ".printk_index", align 4
@do_outbox_isr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.do_outbox_isr = private unnamed_addr constant [14 x i8] c"do_outbox_isr\00", align 1
@do_outbox_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @__func__.do_outbox_isr, ptr @.str.5, i32 114, ptr @.str.30, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"spurious outbox interrupt\0A\00", [37 x i8] zeroinitializer }, align 32
@do_outbox_isr._entry_ptr = internal global ptr @do_outbox_isr._entry, section ".printk_index", align 4
@do_outbox_isr._rs.32 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@do_outbox_isr._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @__func__.do_outbox_isr, ptr @.str.5, i32 128, ptr @.str.30, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"message's been dropped at ch[%d]\0A\00", [62 x i8] zeroinitializer }, align 32
@do_outbox_isr._entry_ptr.35 = internal global ptr @do_outbox_isr._entry.33, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"sprd_mbox_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 419, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 421, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"sprd_mbox_of_match\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 411, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 313, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 334, i32 32 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 336, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 346, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 350, i32 44 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 357, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 361, i32 45 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 368, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 373, i32 43 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 378, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 384, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant [14 x i8] c"sprd_mbox_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 287, i32 35 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 404, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 166, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 114, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private constant [34 x i8] c"../drivers/mailbox/sprd-mailbox.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 127, i32 4 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_sprd_mbox_driver_exit, ptr @__initcall__kmod_sprd_mailbox__187_426_sprd_mbox_driver_init6, ptr @do_outbox_isr._entry, ptr @do_outbox_isr._entry.33, ptr @do_outbox_isr._entry_ptr, ptr @do_outbox_isr._entry_ptr.35, ptr @sprd_mbox_driver_exit, ptr @sprd_mbox_inbox_isr._entry, ptr @sprd_mbox_inbox_isr._entry_ptr, ptr @sprd_mbox_probe._entry, ptr @sprd_mbox_probe._entry.12, ptr @sprd_mbox_probe._entry.16, ptr @sprd_mbox_probe._entry.20, ptr @sprd_mbox_probe._entry.22, ptr @sprd_mbox_probe._entry.25, ptr @sprd_mbox_probe._entry.8, ptr @sprd_mbox_probe._entry_ptr, ptr @sprd_mbox_probe._entry_ptr.10, ptr @sprd_mbox_probe._entry_ptr.14, ptr @sprd_mbox_probe._entry_ptr.18, ptr @sprd_mbox_probe._entry_ptr.21, ptr @sprd_mbox_probe._entry_ptr.24, ptr @sprd_mbox_probe._entry_ptr.27, ptr @sprd_mbox_driver, ptr @.str, ptr @sprd_mbox_of_match, ptr @sprd_mbox_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.23, ptr @sprd_mbox_ops, ptr @.str.26, ptr @sprd_mbox_inbox_isr._rs, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @do_outbox_isr._rs, ptr @.str.31, ptr @do_outbox_isr._rs.32, ptr @.str.34], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_mbox_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_mbox_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_mbox_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_mbox_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_mbox_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_mbox_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_mbox_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_mbox_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_mbox_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_mbox_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_mbox_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_mbox_inbox_isr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_mbox_inbox_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_outbox_isr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_outbox_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_outbox_isr._rs.32 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_outbox_isr._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_mbox_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sprd_mbox_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sprd_mbox_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sprd_mbox_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_mbox_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1872, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.sprd_mbox_priv, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev2, align 8
  %lock = getelementptr inbounds %struct.sprd_mbox_priv, ptr %call.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @sprd_mbox_probe.__key) #6
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %inbox_base = getelementptr inbounds %struct.sprd_mbox_priv, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %inbox_base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %inbox_base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #6
  %outbox_base = getelementptr inbounds %struct.sprd_mbox_priv, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %outbox_base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call10, ptr %outbox_base, align 8
  %cmp.i185 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i185, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %call17 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #6
  %clk = getelementptr inbounds %struct.sprd_mbox_priv, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call17, ptr %clk, align 8
  %cmp.i186 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i186, label %do.end23, label %if.end26

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #9
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 8
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end16
  %call.i187 = tail call i32 @clk_prepare(ptr noundef %call17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i187)
  %tobool.not.i = icmp eq i32 %call.i187, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end26
  %call1.i = tail call i32 @clk_enable(ptr noundef %call17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end31, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call17) #6
  br label %cleanup

if.end31:                                         ; preds = %if.end.i
  %call.i188 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @sprd_mbox_disable, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188)
  %tobool.not.i189 = icmp eq i32 %call.i188, 0
  br i1 %tobool.not.i189, label %if.end38, label %do.end37

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %10) #6
  tail call void @clk_unprepare(ptr noundef %10) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end38:                                         ; preds = %if.end31
  %call39 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp = icmp slt i32 %call39, 0
  br i1 %cmp, label %if.end38.cleanup_crit_edge, label %if.end41

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %if.end38
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i191 = icmp eq ptr %12, null
  br i1 %tobool.not.i191, label %if.end.i192, label %if.end41.dev_name.exit_crit_edge

if.end41.dev_name.exit_crit_edge:                 ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i192:                                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i192, %if.end41.dev_name.exit_crit_edge
  %retval.0.i193 = phi ptr [ %14, %if.end.i192 ], [ %12, %if.end41.dev_name.exit_crit_edge ]
  %call.i194 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call39, ptr noundef nonnull @sprd_mbox_inbox_isr, ptr noundef null, i32 noundef 16384, ptr noundef %retval.0.i193, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %tobool44.not = icmp eq i32 %call.i194, 0
  br i1 %tobool44.not, label %if.end49, label %do.end48

do.end48:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %call.i194) #9
  br label %cleanup

if.end49:                                         ; preds = %dev_name.exit
  %call50 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.end49.cleanup_crit_edge, label %if.end53

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end53:                                         ; preds = %if.end49
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i196 = icmp eq ptr %16, null
  br i1 %tobool.not.i196, label %if.end.i197, label %if.end53.dev_name.exit199_crit_edge

if.end53.dev_name.exit199_crit_edge:              ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit199

if.end.i197:                                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit199

dev_name.exit199:                                 ; preds = %if.end.i197, %if.end53.dev_name.exit199_crit_edge
  %retval.0.i198 = phi ptr [ %18, %if.end.i197 ], [ %16, %if.end53.dev_name.exit199_crit_edge ]
  %call.i200 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call50, ptr noundef nonnull @sprd_mbox_outbox_isr, ptr noundef null, i32 noundef 16384, ptr noundef %retval.0.i198, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i200)
  %tobool56.not = icmp eq i32 %call.i200, 0
  br i1 %tobool56.not, label %if.end61, label %do.end60

do.end60:                                         ; preds = %dev_name.exit199
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %call.i200) #9
  br label %cleanup

if.end61:                                         ; preds = %dev_name.exit199
  %call62 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp sgt i32 %call62, 0
  br i1 %cmp63, label %if.then64, label %if.end61.if.end81_crit_edge

if.end61.if.end81_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.then64:                                        ; preds = %if.end61
  %19 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i202 = icmp eq ptr %20, null
  br i1 %tobool.not.i202, label %if.end.i203, label %if.then64.dev_name.exit205_crit_edge

if.then64.dev_name.exit205_crit_edge:             ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit205

if.end.i203:                                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit205

dev_name.exit205:                                 ; preds = %if.end.i203, %if.then64.dev_name.exit205_crit_edge
  %retval.0.i204 = phi ptr [ %22, %if.end.i203 ], [ %20, %if.then64.dev_name.exit205_crit_edge ]
  %call.i206 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call62, ptr noundef nonnull @sprd_mbox_supp_isr, ptr noundef null, i32 noundef 16384, ptr noundef %retval.0.i204, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i206)
  %tobool67.not = icmp eq i32 %call.i206, 0
  br i1 %tobool67.not, label %if.end72, label %do.end71

do.end71:                                         ; preds = %dev_name.exit205
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %call.i206) #9
  br label %cleanup

if.end72:                                         ; preds = %dev_name.exit205
  %call73 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %tobool74.not = icmp eq ptr %call73, null
  br i1 %tobool74.not, label %do.end78, label %if.end79

do.end78:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #9
  br label %cleanup

if.end79:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %call73 to i32
  %24 = ptrtoint ptr %outbox_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %outbox_base, align 8
  %mul = shl i32 %23, 12
  %add.ptr = getelementptr i8, ptr %25, i32 %mul
  %supp_base = getelementptr inbounds %struct.sprd_mbox_priv, ptr %call.i, i32 0, i32 4
  %26 = ptrtoint ptr %supp_base to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr, ptr %supp_base, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.end79, %if.end61.if.end81_crit_edge
  %27 = ptrtoint ptr %outbox_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %outbox_base, align 8
  %add.ptr83 = getelementptr i8, ptr %28, i32 36
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83) #6, !srcloc !88
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  %add = add i32 %30, 1
  %outbox_fifo_depth = getelementptr inbounds %struct.sprd_mbox_priv, ptr %call.i, i32 0, i32 6
  %31 = ptrtoint ptr %outbox_fifo_depth to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add, ptr %outbox_fifo_depth, align 4
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dev1, ptr %call.i, align 8
  %chan = getelementptr inbounds %struct.sprd_mbox_priv, ptr %call.i, i32 0, i32 9
  %chans = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 2
  %33 = ptrtoint ptr %chans to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %chan, ptr %chans, align 8
  %num_chans = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 3
  %34 = ptrtoint ptr %num_chans to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 8, ptr %num_chans, align 4
  %ops = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 1
  %35 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @sprd_mbox_ops, ptr %ops, align 4
  %txdone_irq = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 4
  %36 = ptrtoint ptr %txdone_irq to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %txdone_irq, align 8
  %con_priv = getelementptr %struct.sprd_mbox_priv, ptr %call.i, i32 0, i32 9, i32 0, i32 9
  %37 = ptrtoint ptr %con_priv to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %con_priv, align 4
  %con_priv.1 = getelementptr %struct.sprd_mbox_priv, ptr %call.i, i32 0, i32 9, i32 1, i32 9
  %38 = ptrtoint ptr %con_priv.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 1 to ptr), ptr %con_priv.1, align 4
  %con_priv.2 = getelementptr %struct.sprd_mbox_priv, ptr %call.i, i32 0, i32 9, i32 2, i32 9
  %39 = ptrtoint ptr %con_priv.2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 2 to ptr), ptr %con_priv.2, align 4
  %con_priv.3 = getelementptr %struct.sprd_mbox_priv, ptr %call.i, i32 0, i32 9, i32 3, i32 9
  %40 = ptrtoint ptr %con_priv.3 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 3 to ptr), ptr %con_priv.3, align 4
  %con_priv.4 = getelementptr %struct.sprd_mbox_priv, ptr %call.i, i32 0, i32 9, i32 4, i32 9
  %41 = ptrtoint ptr %con_priv.4 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 4 to ptr), ptr %con_priv.4, align 4
  %con_priv.5 = getelementptr %struct.sprd_mbox_priv, ptr %call.i, i32 0, i32 9, i32 5, i32 9
  %42 = ptrtoint ptr %con_priv.5 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 5 to ptr), ptr %con_priv.5, align 4
  %con_priv.6 = getelementptr %struct.sprd_mbox_priv, ptr %call.i, i32 0, i32 9, i32 6, i32 9
  %43 = ptrtoint ptr %con_priv.6 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 6 to ptr), ptr %con_priv.6, align 4
  %con_priv.7 = getelementptr %struct.sprd_mbox_priv, ptr %call.i, i32 0, i32 9, i32 7, i32 9
  %44 = ptrtoint ptr %con_priv.7 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 7 to ptr), ptr %con_priv.7, align 4
  %call95 = tail call i32 @devm_mbox_controller_register(ptr noundef %dev1, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end81.cleanup_crit_edge, label %do.end100

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end100:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef %call95) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end100, %if.end81.cleanup_crit_edge, %do.end78, %do.end71, %do.end60, %if.end49.cleanup_crit_edge, %do.end48, %if.end38.cleanup_crit_edge, %do.end37, %if.then3.i, %if.end26.cleanup_crit_edge, %do.end23, %if.then13, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %4, %if.then13 ], [ %8, %do.end23 ], [ %call.i188, %do.end37 ], [ %call.i194, %do.end48 ], [ %call.i200, %do.end60 ], [ %call.i206, %do.end71 ], [ %call95, %do.end100 ], [ -19, %do.end78 ], [ -12, %entry.cleanup_crit_edge ], [ %call39, %if.end38.cleanup_crit_edge ], [ %call50, %if.end49.cleanup_crit_edge ], [ 0, %if.end81.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i187, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_mbox_disable(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.sprd_mbox_priv, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %1) #6
  tail call void @clk_unprepare(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_mbox_inbox_isr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %inbox_base = getelementptr inbounds %struct.sprd_mbox_priv, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %inbox_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inbox_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !88
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %and = lshr i32 %3, 16
  %shr = and i32 %and, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool.not = icmp eq i32 %shr, 0
  br i1 %tobool.not, label %do.body, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %and13 = and i32 %3, 255
  br label %while.body

do.body:                                          ; preds = %entry
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @sprd_mbox_inbox_isr._rs, ptr noundef nonnull @__func__.sprd_mbox_inbox_isr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.sprd_mbox_priv, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.29) #9
  br label %cleanup

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %while.cond.preheader
  %send_sts.046 = phi i32 [ %shr, %while.cond.preheader ], [ %and11, %if.end17.while.body_crit_edge ]
  %6 = tail call i32 @llvm.cttz.i32(i32 %send_sts.046, i1 true) #6, !range !91
  %sub = add i32 %send_sts.046, -1
  %and11 = and i32 %sub, %send_sts.046
  %shl = shl nuw i32 1, %6
  %and14 = and i32 %and13, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then16, label %while.body.if.end17_crit_edge

while.body.if.end17_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then16:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.sprd_mbox_priv, ptr %data, i32 0, i32 9, i32 %6
  tail call void @mbox_chan_txdone(ptr noundef %arrayidx, i32 noundef 0) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %while.body.if.end17_crit_edge
  %tobool9.not = icmp eq i32 %and11, 0
  br i1 %tobool9.not, label %do.body18, label %if.end17.while.body_crit_edge

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

do.body18:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %and21 = and i32 %3, 16776960
  %7 = tail call i32 @llvm.bswap.i32(i32 %and21)
  %8 = ptrtoint ptr %inbox_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %inbox_base, align 4
  %add.ptr23 = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %7) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %inbox_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %inbox_base, align 4
  %add.ptr28 = getelementptr i8, ptr %11, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 16777216) #6, !srcloc !93
  br label %cleanup

cleanup:                                          ; preds = %do.body18, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body18 ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_mbox_outbox_isr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %outbox_base = getelementptr inbounds %struct.sprd_mbox_priv, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %outbox_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %outbox_base, align 8
  %call = tail call fastcc i32 @do_outbox_isr(ptr noundef %1, ptr noundef %data)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_mbox_supp_isr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %supp_base = getelementptr inbounds %struct.sprd_mbox_priv, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %supp_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %supp_base, align 4
  %call = tail call fastcc i32 @do_outbox_isr(ptr noundef %1, ptr noundef %data)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mbox_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_txdone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_outbox_isr(ptr noundef %base, ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  %msg = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg) #6
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %msg, align 4, !annotation !95
  %1 = getelementptr inbounds [2 x i32], ptr %msg, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !95
  %add.ptr = getelementptr i8, ptr %base, i32 20
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !88
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %shr.i = lshr i32 %4, 16
  %and.i = and i32 %shr.i, 255
  %shr1.i = lshr i32 %4, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %shr1.i)
  %cmp.i = icmp eq i32 %and.i, %shr1.i
  br i1 %cmp.i, label %if.then.i, label %if.else5.i

if.then.i:                                        ; preds = %entry
  %and3.i = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body_crit_edge, label %if.then4.i

if.then.i.do.body_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %outbox_fifo_depth.i = getelementptr inbounds %struct.sprd_mbox_priv, ptr %priv, i32 0, i32 6
  %5 = ptrtoint ptr %outbox_fifo_depth.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %outbox_fifo_depth.i, align 4
  br label %sprd_mbox_get_fifo_len.exit

if.else5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %shr1.i)
  %cmp6.i = icmp ugt i32 %and.i, %shr1.i
  br i1 %cmp6.i, label %if.then7.i, label %if.else8.i

if.then7.i:                                       ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = sub nsw i32 %and.i, %shr1.i
  br label %sprd_mbox_get_fifo_len.exit

if.else8.i:                                       ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #8
  %outbox_fifo_depth9.i = getelementptr inbounds %struct.sprd_mbox_priv, ptr %priv, i32 0, i32 6
  %7 = ptrtoint ptr %outbox_fifo_depth9.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %outbox_fifo_depth9.i, align 4
  %sub10.i = sub nsw i32 %and.i, %shr1.i
  %add.i = add i32 %sub10.i, %8
  br label %sprd_mbox_get_fifo_len.exit

sprd_mbox_get_fifo_len.exit:                      ; preds = %if.else8.i, %if.then7.i, %if.then4.i
  %fifo_len.0.i = phi i32 [ %6, %if.then4.i ], [ %sub.i, %if.then7.i ], [ %add.i, %if.else8.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fifo_len.0.i)
  %tobool.not = icmp eq i32 %fifo_len.0.i, 0
  br i1 %tobool.not, label %sprd_mbox_get_fifo_len.exit.do.body_crit_edge, label %for.body.lr.ph

sprd_mbox_get_fifo_len.exit.do.body_crit_edge:    ; preds = %sprd_mbox_get_fifo_len.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.body.lr.ph:                                   ; preds = %sprd_mbox_get_fifo_len.exit
  %add.ptr12 = getelementptr i8, ptr %base, i32 4
  %add.ptr18 = getelementptr i8, ptr %base, i32 8
  %dev40 = getelementptr inbounds %struct.sprd_mbox_priv, ptr %priv, i32 0, i32 1
  %add.ptr48 = getelementptr i8, ptr %base, i32 12
  br label %for.body

do.body:                                          ; preds = %sprd_mbox_get_fifo_len.exit.do.body_crit_edge, %if.then.i.do.body_crit_edge
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @do_outbox_isr._rs, ptr noundef nonnull @__func__.do_outbox_isr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.sprd_mbox_priv, ptr %priv, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.31) #9
  br label %cleanup

for.body:                                         ; preds = %do.body45.for.body_crit_edge, %for.body.lr.ph
  %i.073 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.body45.for.body_crit_edge ]
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #6, !srcloc !88
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %13 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %msg, align 4
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #6, !srcloc !88
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %1, align 4
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %base) #6, !srcloc !88
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  %cl = getelementptr %struct.sprd_mbox_priv, ptr %priv, i32 0, i32 9, i32 %18, i32 2
  %19 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cl, align 4
  %tobool31.not = icmp eq ptr %20, null
  br i1 %tobool31.not, label %do.body33, label %if.then32

if.then32:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx30 = getelementptr %struct.sprd_mbox_priv, ptr %priv, i32 0, i32 9, i32 %18
  call void @mbox_chan_received_data(ptr noundef %arrayidx30, ptr noundef nonnull %msg) #6
  br label %do.body45

do.body33:                                        ; preds = %for.body
  %call34 = call i32 @___ratelimit(ptr noundef nonnull @do_outbox_isr._rs.32, ptr noundef nonnull @__func__.do_outbox_isr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %do.body33.do.body45_crit_edge, label %do.end39

do.body33.do.body45_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body45

do.end39:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev40, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.34, i32 noundef %18) #9
  br label %do.body45

do.body45:                                        ; preds = %do.end39, %do.body33.do.body45_crit_edge, %if.then32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 16777216) #6, !srcloc !93
  %inc = add nuw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, %fifo_len.0.i
  br i1 %exitcond.not, label %do.body49, label %do.body45.for.body_crit_edge

do.body45.for.body_crit_edge:                     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body49:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  call void @arm_heavy_mb() #6
  %add.ptr52 = getelementptr i8, ptr %base, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 16777216) #6, !srcloc !93
  br label %cleanup

cleanup:                                          ; preds = %do.body49, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body49 ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_received_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_mbox_send_data(ptr nocapture noundef readonly %chan, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %2 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %con_priv, align 4
  %4 = ptrtoint ptr %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %inbox_base = getelementptr inbounds %struct.sprd_mbox_priv, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %inbox_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %inbox_base, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %arrayidx4 = getelementptr i32, ptr %msg, i32 1
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %inbox_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %inbox_base, align 4
  %add.ptr6 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %12) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  %15 = tail call i32 @llvm.bswap.i32(i32 %4)
  %16 = ptrtoint ptr %inbox_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %inbox_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %inbox_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %inbox_base, align 4
  %add.ptr16 = getelementptr i8, ptr %19, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 16777216) #6, !srcloc !93
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_mbox_flush(ptr noundef %chan, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %2 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %con_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout) #6
  %5 = add i32 %call2.i, %4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub10 = sub i32 %6, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10)
  %cmp11 = icmp slt i32 %sub10, 0
  br i1 %cmp11, label %while.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %7 = ptrtoint ptr %3 to i32
  %inbox_base = getelementptr inbounds %struct.sprd_mbox_priv, ptr %1, i32 0, i32 2
  %shl = shl nuw i32 1, %7
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %8 = ptrtoint ptr %inbox_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %inbox_base, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 20
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !88
  %11 = lshr i32 %10, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  %and4 = and i32 %11, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mbox_chan_txdone(ptr noundef %chan, i32 noundef 0) #6
  br label %cleanup

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %13, %5
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -62, %entry.cleanup_crit_edge ], [ -62, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_mbox_startup(ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %lock = getelementptr inbounds %struct.sprd_mbox_priv, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %refcnt = getelementptr inbounds %struct.sprd_mbox_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %refcnt, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %do.body, label %entry.if.end41_crit_edge

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %outbox_base = getelementptr inbounds %struct.sprd_mbox_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %outbox_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %outbox_base, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !93
  %inbox_base = getelementptr inbounds %struct.sprd_mbox_priv, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %inbox_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %inbox_base, align 4
  %add.ptr1 = getelementptr i8, ptr %7, i32 28
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  %9 = and i32 %8, -100663297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %inbox_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %inbox_base, align 4
  %add.ptr8 = getelementptr i8, ptr %11, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %9) #6, !srcloc !93
  %12 = ptrtoint ptr %outbox_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %outbox_base, align 8
  %add.ptr12 = getelementptr i8, ptr %13, i32 28
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #6, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  %15 = and i32 %14, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %outbox_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %outbox_base, align 8
  %add.ptr21 = getelementptr i8, ptr %17, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %15) #6, !srcloc !93
  %supp_base = getelementptr inbounds %struct.sprd_mbox_priv, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %supp_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %supp_base, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %do.body.if.end41_crit_edge, label %do.body23

do.body.if.end41_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

do.body23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %supp_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %supp_base, align 4
  %add.ptr27 = getelementptr i8, ptr %21, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 0) #6, !srcloc !93
  %22 = ptrtoint ptr %supp_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %supp_base, align 4
  %add.ptr31 = getelementptr i8, ptr %23, i32 28
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #6, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  %25 = and i32 %24, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %supp_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %supp_base, align 4
  %add.ptr40 = getelementptr i8, ptr %27, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %25) #6, !srcloc !93
  br label %if.end41

if.end41:                                         ; preds = %do.body23, %do.body.if.end41_crit_edge, %entry.if.end41_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_mbox_shutdown(ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %lock = getelementptr inbounds %struct.sprd_mbox_priv, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %refcnt = getelementptr inbounds %struct.sprd_mbox_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %refcnt, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %do.body, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  %inbox_base = getelementptr inbounds %struct.sprd_mbox_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %inbox_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inbox_base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 117440512) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  %outbox_base = getelementptr inbounds %struct.sprd_mbox_priv, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %outbox_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %outbox_base, align 8
  %add.ptr4 = getelementptr i8, ptr %7, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 520093696) #6, !srcloc !93
  %supp_base = getelementptr inbounds %struct.sprd_mbox_priv, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %supp_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %supp_base, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %do.body.if.end11_crit_edge, label %do.body6

do.body.if.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %supp_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %supp_base, align 4
  %add.ptr10 = getelementptr i8, ptr %11, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 520093696) #6, !srcloc !93
  br label %if.end11

if.end11:                                         ; preds = %do.body6, %do.body.if.end11_crit_edge, %entry.if.end11_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !35, !36, !37, !39, !41, !42, !43, !45, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !62, !63, !64, !66, !67, !68, !69, !70, !72, !73, !74, !75, !77}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @__initcall__kmod_sprd_mailbox__187_426_sprd_mbox_driver_init6, !1, !"__initcall__kmod_sprd_mailbox__187_426_sprd_mbox_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mailbox/sprd-mailbox.c", i32 426, i32 1}
!2 = !{ptr @__exitcall_sprd_mbox_driver_exit, !1, !"__exitcall_sprd_mbox_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author188, !4, !"__UNIQUE_ID_author188", i1 false, i1 false}
!4 = !{!"../drivers/mailbox/sprd-mailbox.c", i32 428, i32 1}
!5 = !{ptr @__UNIQUE_ID_description189, !6, !"__UNIQUE_ID_description189", i1 false, i1 false}
!6 = !{!"../drivers/mailbox/sprd-mailbox.c", i32 429, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/mailbox/sprd-mailbox.c", i32 430, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mailbox/sprd-mailbox.c", i32 421, i32 11}
!12 = !{ptr @sprd_mbox_driver, !13, !"sprd_mbox_driver", i1 false, i1 false}
!13 = !{!"../drivers/mailbox/sprd-mailbox.c", i32 419, i32 31}
!14 = !{ptr @sprd_mbox_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/mailbox/sprd-mailbox.c", i32 313, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mailbox/sprd-mailbox.c", i32 334, i32 32}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mailbox/sprd-mailbox.c", i32 336, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @sprd_mbox_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @sprd_mbox_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mailbox/sprd-mailbox.c", i32 346, i32 3}
!29 = !{ptr @sprd_mbox_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @sprd_mbox_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mailbox/sprd-mailbox.c", i32 350, i32 44}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mailbox/sprd-mailbox.c", i32 357, i32 3}
!35 = !{ptr @sprd_mbox_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @sprd_mbox_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mailbox/sprd-mailbox.c", i32 361, i32 45}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mailbox/sprd-mailbox.c", i32 368, i32 3}
!41 = !{ptr @sprd_mbox_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @sprd_mbox_probe._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mailbox/sprd-mailbox.c", i32 373, i32 43}
!45 = !{ptr @sprd_mbox_probe._entry.20, !46, !"_entry", i1 false, i1 false}
!46 = !{!"../drivers/mailbox/sprd-mailbox.c", i32 378, i32 4}
!47 = !{ptr @sprd_mbox_probe._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mailbox/sprd-mailbox.c", i32 384, i32 4}
!50 = !{ptr @sprd_mbox_probe._entry.22, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @sprd_mbox_probe._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mailbox/sprd-mailbox.c", i32 404, i32 3}
!54 = !{ptr @sprd_mbox_probe._entry.25, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @sprd_mbox_probe._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mailbox/sprd-mailbox.c", i32 166, i32 3}
!58 = !{ptr @sprd_mbox_inbox_isr._rs, !57, !"_rs", i1 false, i1 false}
!59 = !{ptr @__func__.sprd_mbox_inbox_isr, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @sprd_mbox_inbox_isr._entry, !57, !"_entry", i1 false, i1 false}
!63 = !{ptr @sprd_mbox_inbox_isr._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @do_outbox_isr._rs, !65, !"_rs", i1 false, i1 false}
!65 = !{!"../drivers/mailbox/sprd-mailbox.c", i32 114, i32 3}
!66 = !{ptr @__func__.do_outbox_isr, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @do_outbox_isr._entry, !65, !"_entry", i1 false, i1 false}
!69 = !{ptr @do_outbox_isr._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @do_outbox_isr._rs.32, !71, !"_rs", i1 false, i1 false}
!71 = !{!"../drivers/mailbox/sprd-mailbox.c", i32 127, i32 4}
!72 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @do_outbox_isr._entry.33, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @do_outbox_isr._entry_ptr.35, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @sprd_mbox_ops, !76, !"sprd_mbox_ops", i1 false, i1 false}
!76 = !{!"../drivers/mailbox/sprd-mailbox.c", i32 287, i32 35}
!77 = !{ptr @sprd_mbox_of_match, !78, !"sprd_mbox_of_match", i1 false, i1 false}
!78 = !{!"../drivers/mailbox/sprd-mailbox.c", i32 411, i32 34}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{i64 4216080}
!89 = !{i64 2153223293}
!90 = !{i64 2153188997}
!91 = !{i32 0, i32 33}
!92 = !{i64 2153195355}
!93 = !{i64 4215662}
!94 = !{i64 2153197667}
!95 = !{!"auto-init"}
!96 = !{i64 2153180620}
!97 = !{i64 2153183806}
!98 = !{i64 2153184268}
!99 = !{i64 2153184730}
!100 = !{i64 2153187754}
!101 = !{i64 2153188241}
!102 = !{i64 2153198147}
!103 = !{i64 2153198566}
!104 = !{i64 2153198980}
!105 = !{i64 2153199380}
!106 = !{i64 2153200453}
!107 = !{i64 2153202007}
!108 = !{i64 2153202704}
!109 = !{i64 2153203093}
!110 = !{i64 2153203793}
!111 = !{i64 2153204101}
!112 = !{i64 2153204507}
!113 = !{i64 2153205198}
!114 = !{i64 2153205504}
!115 = !{i64 2153206903}
!116 = !{i64 2153209108}
!117 = !{i64 2153211312}
