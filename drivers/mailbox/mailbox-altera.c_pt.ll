; ModuleID = '/llk/IR_all_yes/drivers/mailbox/mailbox-altera.c_pt.bc'
source_filename = "../drivers/mailbox/mailbox-altera.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mbox_chan_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.altera_mbox = type { i8, i8, i32, ptr, ptr, %struct.mbox_controller, %struct.timer_list, ptr }
%struct.mbox_controller = type { ptr, ptr, ptr, i32, i8, i8, i32, ptr, %struct.hrtimer, %struct.list_head }
%struct.mbox_chan = type { ptr, i32, ptr, %struct.completion, ptr, i32, i32, [20 x ptr], %struct.spinlock, ptr }

@__initcall__kmod_mailbox_altera__187_356_altera_mbox_driver_init6 = internal global ptr @altera_mbox_driver_init, section ".initcall6.init", align 4
@altera_mbox_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @altera_mbox_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @altera_mbox_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_altera_mbox_driver_exit = internal global ptr @altera_mbox_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file188 = internal constant [51 x i8] c"mailbox_altera.file=drivers/mailbox/mailbox-altera\00", section ".modinfo", align 1
@__UNIQUE_ID_license189 = internal constant [30 x i8] c"mailbox_altera.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [61 x i8] c"mailbox_altera.description=Altera mailbox specific functions\00", section ".modinfo", align 1
@__UNIQUE_ID_author191 = internal constant [54 x i8] c"mailbox_altera.author=Ley Foon Tan <lftan@altera.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias192 = internal constant [45 x i8] c"mailbox_altera.alias=platform:altera-mailbox\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"altera-mailbox\00", [17 x i8] zeroinitializer }, align 32
@altera_mbox_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,mailbox-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@altera_mbox_ops = internal constant { %struct.mbox_chan_ops, [40 x i8] } { %struct.mbox_chan_ops { ptr @altera_mbox_send_data, ptr null, ptr @altera_mbox_startup, ptr @altera_mbox_shutdown, ptr @altera_mbox_last_tx_done, ptr @altera_mbox_peek_data }, [40 x i8] zeroinitializer }, align 32
@altera_mbox_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 332, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Register mailbox failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"altera_mbox_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/mailbox/mailbox-altera.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@altera_mbox_probe._entry_ptr = internal global ptr @altera_mbox_probe._entry, section ".printk_index", align 4
@altera_mbox_send_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 215, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to send. This is receiver mailbox.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"altera_mbox_send_data\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@altera_mbox_send_data._entry_ptr = internal global ptr @altera_mbox_send_data._entry, section ".printk_index", align 4
@altera_mbox_startup_sender._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 171, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to register mailbox interrupt:%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"altera_mbox_startup_sender\00", [37 x i8] zeroinitializer }, align 32
@altera_mbox_startup_sender._entry_ptr = internal global ptr @altera_mbox_startup_sender._entry, section ".printk_index", align 4
@altera_mbox_startup_receiver.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&mbox->rxpoll_timer)\00", [42 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@___asan_gen_.12 = private unnamed_addr constant [19 x i8] c"altera_mbox_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 348, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 351, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [18 x i8] c"altera_mbox_match\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 341, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"altera_mbox_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 277, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 332, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 214, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 169, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private constant [36 x i8] c"../drivers/mailbox/mailbox-altera.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 199, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_alias192, ptr @__UNIQUE_ID_author191, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file188, ptr @__UNIQUE_ID_license189, ptr @__exitcall_altera_mbox_driver_exit, ptr @__initcall__kmod_mailbox_altera__187_356_altera_mbox_driver_init6, ptr @altera_mbox_driver_exit, ptr @altera_mbox_probe._entry, ptr @altera_mbox_probe._entry_ptr, ptr @altera_mbox_send_data._entry, ptr @altera_mbox_send_data._entry_ptr, ptr @altera_mbox_startup_sender._entry, ptr @altera_mbox_startup_sender._entry_ptr, ptr @altera_mbox_driver, ptr @.str, ptr @altera_mbox_match, ptr @altera_mbox_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @altera_mbox_startup_receiver.__key, ptr @.str.11], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_mbox_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_mbox_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_mbox_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_mbox_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_mbox_send_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_mbox_startup_sender._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_mbox_startup_receiver.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_mbox_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @altera_mbox_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @altera_mbox_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @altera_mbox_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_mbox_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 160, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i78 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 208, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i78, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %mbox_base = getelementptr inbounds %struct.altera_mbox, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %mbox_base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call6, ptr %mbox_base, align 8
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %add.ptr.i = getelementptr i8, ptr %call6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1437246885) #6, !srcloc !51
  %2 = ptrtoint ptr %mbox_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mbox_base, align 8
  %add.ptr2.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !52
  call void @__sanitizer_cov_trace_const_cmp4(i32 1437246885, i32 %4)
  %cmp.i79 = icmp eq i32 %4, 1437246885
  br i1 %cmp.i79, label %if.then.i, label %if.end12.altera_mbox_is_sender.exit_crit_edge

if.end12.altera_mbox_is_sender.exit_crit_edge:    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %altera_mbox_is_sender.exit

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %mbox_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mbox_base, align 8
  %add.ptr4.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #6, !srcloc !51
  br label %altera_mbox_is_sender.exit

altera_mbox_is_sender.exit:                       ; preds = %if.then.i, %if.end12.altera_mbox_is_sender.exit_crit_edge
  %frombool = zext i1 %cmp.i79 to i8
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %call.i, align 8
  %call14 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.altera_mbox, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call14, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call14)
  %cmp = icmp sgt i32 %call14, -1
  br i1 %cmp, label %if.then16, label %altera_mbox_is_sender.exit.if.end17_crit_edge

altera_mbox_is_sender.exit.if.end17_crit_edge:    ; preds = %altera_mbox_is_sender.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then16:                                        ; preds = %altera_mbox_is_sender.exit
  call void @__sanitizer_cov_trace_pc() #8
  %intr_mode = getelementptr inbounds %struct.altera_mbox, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %intr_mode to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %intr_mode, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %altera_mbox_is_sender.exit.if.end17_crit_edge
  %dev19 = getelementptr inbounds %struct.altera_mbox, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %dev19 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %dev19, align 4
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %call.i78, i32 0, i32 9
  %11 = ptrtoint ptr %con_priv to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %con_priv, align 4
  %controller = getelementptr inbounds %struct.altera_mbox, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %controller to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %controller, align 8
  %num_chans = getelementptr inbounds %struct.altera_mbox, ptr %call.i, i32 0, i32 5, i32 3
  %13 = ptrtoint ptr %num_chans to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %num_chans, align 4
  %chans24 = getelementptr inbounds %struct.altera_mbox, ptr %call.i, i32 0, i32 5, i32 2
  %14 = ptrtoint ptr %chans24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i78, ptr %chans24, align 8
  %ops = getelementptr inbounds %struct.altera_mbox, ptr %call.i, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @altera_mbox_ops, ptr %ops, align 4
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %call.i, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool27.not = icmp eq i8 %17, 0
  br i1 %tobool27.not, label %if.end17.if.end36_crit_edge, label %if.then28

if.end17.if.end36_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then28:                                        ; preds = %if.end17
  %intr_mode29 = getelementptr inbounds %struct.altera_mbox, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %intr_mode29 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %intr_mode29, align 1, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool30.not = icmp eq i8 %19, 0
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  %txdone_irq = getelementptr inbounds %struct.altera_mbox, ptr %call.i, i32 0, i32 5, i32 4
  %20 = ptrtoint ptr %txdone_irq to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %txdone_irq, align 8
  br label %if.end36

if.else:                                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  %txdone_poll = getelementptr inbounds %struct.altera_mbox, ptr %call.i, i32 0, i32 5, i32 5
  %21 = ptrtoint ptr %txdone_poll to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %txdone_poll, align 1
  %txpoll_period = getelementptr inbounds %struct.altera_mbox, ptr %call.i, i32 0, i32 5, i32 6
  %22 = ptrtoint ptr %txpoll_period to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 5, ptr %txpoll_period, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then31, %if.end17.if.end36_crit_edge
  %call39 = tail call i32 @devm_mbox_controller_register(ptr noundef %dev, ptr noundef %controller) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end43, label %do.end

do.end:                                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end43:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %do.end, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then9 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end43 ], [ %call39, %do.end ]
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_mbox_send_data(ptr noundef readonly %chan, ptr noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %chan, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %mbox_chan_to_altera_mbox.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mbox_chan_to_altera_mbox.exit:                    ; preds = %entry
  %con_priv.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv.i, align 4
  %tobool.not = icmp eq ptr %1, null
  %tobool1.not = icmp eq ptr %data, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %mbox_chan_to_altera_mbox.exit.cleanup_crit_edge, label %if.end

mbox_chan_to_altera_mbox.exit.cleanup_crit_edge:  ; preds = %mbox_chan_to_altera_mbox.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %mbox_chan_to_altera_mbox.exit
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.altera_mbox, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %mbox_base.i = getelementptr inbounds %struct.altera_mbox, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %mbox_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mbox_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !52
  %9 = and i32 %8, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %intr_mode = getelementptr inbounds %struct.altera_mbox, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %intr_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %intr_mode, align 1, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  br i1 %tobool9.not, label %if.end8.if.end11_crit_edge, label %if.then10

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %mbox_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mbox_base.i, align 8
  %add.ptr.i26 = getelementptr i8, ptr %13, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #6, !srcloc !52
  %15 = or i32 %14, 33554432
  %16 = ptrtoint ptr %mbox_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mbox_base.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %15) #6, !srcloc !51
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8.if.end11_crit_edge
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %mbox_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mbox_base.i, align 8
  %add.ptr = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %20) #6, !srcloc !51
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %mbox_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mbox_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #6, !srcloc !51
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end4.cleanup_crit_edge, %do.end, %mbox_chan_to_altera_mbox.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -22, %do.end ], [ -22, %mbox_chan_to_altera_mbox.exit.cleanup_crit_edge ], [ -16, %if.end4.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_mbox_startup(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %chan, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %mbox_chan_to_altera_mbox.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mbox_chan_to_altera_mbox.exit:                    ; preds = %entry
  %con_priv.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %mbox_chan_to_altera_mbox.exit.cleanup_crit_edge, label %if.end

mbox_chan_to_altera_mbox.exit.cleanup_crit_edge:  ; preds = %mbox_chan_to_altera_mbox.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %mbox_chan_to_altera_mbox.exit
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  %4 = ptrtoint ptr %con_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %con_priv.i, align 4
  %intr_mode.i16 = getelementptr inbounds %struct.altera_mbox, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %intr_mode.i16 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %intr_mode.i16, align 1, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i17 = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %mbox_chan_to_altera_mbox.exit.i18, label %mbox_chan_to_altera_mbox.exit.i

mbox_chan_to_altera_mbox.exit.i:                  ; preds = %if.end
  br i1 %tobool.not.i17, label %mbox_chan_to_altera_mbox.exit.i.cleanup_crit_edge, label %if.then.i

mbox_chan_to_altera_mbox.exit.i.cleanup_crit_edge: ; preds = %mbox_chan_to_altera_mbox.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %mbox_chan_to_altera_mbox.exit.i
  %irq.i = getelementptr inbounds %struct.altera_mbox, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq.i, align 4
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %9, ptr noundef nonnull @altera_mbox_tx_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %chan) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.then.i.cleanup_crit_edge, label %do.end.i, !prof !54

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.altera_mbox, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.9, i32 noundef %call.i.i) #9
  br label %cleanup

mbox_chan_to_altera_mbox.exit.i18:                ; preds = %if.end
  br i1 %tobool.not.i17, label %mbox_chan_to_altera_mbox.exit.i18.polling.i_crit_edge, label %if.then.i22

mbox_chan_to_altera_mbox.exit.i18.polling.i_crit_edge: ; preds = %mbox_chan_to_altera_mbox.exit.i18
  call void @__sanitizer_cov_trace_pc() #8
  br label %polling.i

if.then.i22:                                      ; preds = %mbox_chan_to_altera_mbox.exit.i18
  %irq.i19 = getelementptr inbounds %struct.altera_mbox, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %irq.i19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i19, align 4
  %call.i.i20 = tail call i32 @request_threaded_irq(i32 noundef %13, ptr noundef nonnull @altera_mbox_rx_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %chan) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i20)
  %tobool2.not.i21 = icmp eq i32 %call.i.i20, 0
  br i1 %tobool2.not.i21, label %if.end.i, label %if.then5.i, !prof !54

if.then5.i:                                       ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %intr_mode.i16 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %intr_mode.i16, align 1
  br label %polling.i

if.end.i:                                         ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #8
  %mbox_base.i.i = getelementptr inbounds %struct.altera_mbox, ptr %5, i32 0, i32 3
  %15 = ptrtoint ptr %mbox_base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mbox_base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 12
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !52
  %18 = or i32 %17, 16777216
  %19 = ptrtoint ptr %mbox_base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mbox_base.i.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %18) #6, !srcloc !51
  br label %cleanup

polling.i:                                        ; preds = %if.then5.i, %mbox_chan_to_altera_mbox.exit.i18.polling.i_crit_edge
  %chan8.i = getelementptr inbounds %struct.altera_mbox, ptr %5, i32 0, i32 7
  %21 = ptrtoint ptr %chan8.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %chan, ptr %chan8.i, align 8
  %rxpoll_timer.i = getelementptr inbounds %struct.altera_mbox, ptr %5, i32 0, i32 6
  tail call void @init_timer_key(ptr noundef %rxpoll_timer.i, ptr noundef nonnull @altera_mbox_poll_rx, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @altera_mbox_startup_receiver.__key) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %22, 1
  %call11.i = tail call i32 @mod_timer(ptr noundef %rxpoll_timer.i, i32 noundef %add.i) #6
  br label %cleanup

cleanup:                                          ; preds = %polling.i, %if.end.i, %do.end.i, %if.then.i.cleanup_crit_edge, %mbox_chan_to_altera_mbox.exit.i.cleanup_crit_edge, %mbox_chan_to_altera_mbox.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %mbox_chan_to_altera_mbox.exit.cleanup_crit_edge ], [ %call.i.i, %do.end.i ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %mbox_chan_to_altera_mbox.exit.i.cleanup_crit_edge ], [ 0, %if.end.i ], [ 0, %polling.i ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altera_mbox_shutdown(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %chan, null
  br i1 %tobool.not.i, label %entry.mbox_chan_to_altera_mbox.exit_crit_edge, label %lor.lhs.false.i

entry.mbox_chan_to_altera_mbox.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mbox_chan_to_altera_mbox.exit

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %con_priv.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv.i, align 4
  br label %mbox_chan_to_altera_mbox.exit

mbox_chan_to_altera_mbox.exit:                    ; preds = %lor.lhs.false.i, %entry.mbox_chan_to_altera_mbox.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.mbox_chan_to_altera_mbox.exit_crit_edge ], [ %1, %lor.lhs.false.i ]
  %intr_mode = getelementptr inbounds %struct.altera_mbox, ptr %retval.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %intr_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %intr_mode, align 1, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %mbox_chan_to_altera_mbox.exit
  call void @__sanitizer_cov_trace_pc() #8
  %mbox_base = getelementptr inbounds %struct.altera_mbox, ptr %retval.0.i, i32 0, i32 3
  %4 = ptrtoint ptr %mbox_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mbox_base, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #6, !srcloc !51
  %irq = getelementptr inbounds %struct.altera_mbox, ptr %retval.0.i, i32 0, i32 2
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %chan) #6
  br label %if.end5

if.else:                                          ; preds = %mbox_chan_to_altera_mbox.exit
  %8 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %retval.0.i, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %if.then3, label %if.else.if.end5_crit_edge

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %rxpoll_timer = getelementptr inbounds %struct.altera_mbox, ptr %retval.0.i, i32 0, i32 6
  %call4 = tail call i32 @del_timer_sync(ptr noundef %rxpoll_timer) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.else.if.end5_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @altera_mbox_last_tx_done(ptr noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %chan, null
  br i1 %tobool.not.i, label %entry.mbox_chan_to_altera_mbox.exit_crit_edge, label %lor.lhs.false.i

entry.mbox_chan_to_altera_mbox.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mbox_chan_to_altera_mbox.exit

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %con_priv.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv.i, align 4
  br label %mbox_chan_to_altera_mbox.exit

mbox_chan_to_altera_mbox.exit:                    ; preds = %lor.lhs.false.i, %entry.mbox_chan_to_altera_mbox.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.mbox_chan_to_altera_mbox.exit_crit_edge ], [ %1, %lor.lhs.false.i ]
  %mbox_base.i = getelementptr inbounds %struct.altera_mbox, ptr %retval.0.i, i32 0, i32 3
  %2 = ptrtoint ptr %mbox_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mbox_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !52
  %5 = and i32 %4, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @altera_mbox_peek_data(ptr noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %chan, null
  br i1 %tobool.not.i, label %entry.mbox_chan_to_altera_mbox.exit_crit_edge, label %lor.lhs.false.i

entry.mbox_chan_to_altera_mbox.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mbox_chan_to_altera_mbox.exit

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %con_priv.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv.i, align 4
  br label %mbox_chan_to_altera_mbox.exit

mbox_chan_to_altera_mbox.exit:                    ; preds = %lor.lhs.false.i, %entry.mbox_chan_to_altera_mbox.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.mbox_chan_to_altera_mbox.exit_crit_edge ], [ %1, %lor.lhs.false.i ]
  %mbox_base.i = getelementptr inbounds %struct.altera_mbox, ptr %retval.0.i, i32 0, i32 3
  %2 = ptrtoint ptr %mbox_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mbox_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !52
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool = icmp ne i32 %5, 0
  ret i1 %tobool
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_mbox_tx_interrupt(i32 noundef %irq, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %p, null
  br i1 %tobool.not.i, label %entry.mbox_chan_to_altera_mbox.exit_crit_edge, label %lor.lhs.false.i

entry.mbox_chan_to_altera_mbox.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mbox_chan_to_altera_mbox.exit

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %con_priv.i = getelementptr inbounds %struct.mbox_chan, ptr %p, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv.i, align 4
  br label %mbox_chan_to_altera_mbox.exit

mbox_chan_to_altera_mbox.exit:                    ; preds = %lor.lhs.false.i, %entry.mbox_chan_to_altera_mbox.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.mbox_chan_to_altera_mbox.exit_crit_edge ], [ %1, %lor.lhs.false.i ]
  %mbox_base.i = getelementptr inbounds %struct.altera_mbox, ptr %retval.0.i, i32 0, i32 3
  %2 = ptrtoint ptr %mbox_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mbox_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !52
  %5 = and i32 %4, -33554433
  %6 = ptrtoint ptr %mbox_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mbox_base.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %5) #6, !srcloc !51
  tail call void @mbox_chan_txdone(ptr noundef %p, i32 noundef 0) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_txdone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_mbox_rx_interrupt(i32 noundef %irq, ptr noundef %p) #2 align 64 {
entry:
  %data.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %p, null
  br i1 %tobool.not.i.i, label %entry.mbox_chan_to_altera_mbox.exit.i_crit_edge, label %lor.lhs.false.i.i

entry.mbox_chan_to_altera_mbox.exit.i_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mbox_chan_to_altera_mbox.exit.i

lor.lhs.false.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %con_priv.i.i = getelementptr inbounds %struct.mbox_chan, ptr %p, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv.i.i, align 4
  br label %mbox_chan_to_altera_mbox.exit.i

mbox_chan_to_altera_mbox.exit.i:                  ; preds = %lor.lhs.false.i.i, %entry.mbox_chan_to_altera_mbox.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ null, %entry.mbox_chan_to_altera_mbox.exit.i_crit_edge ], [ %1, %lor.lhs.false.i.i ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.i) #6
  %mbox_base.i.i = getelementptr inbounds %struct.altera_mbox, ptr %retval.0.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %mbox_base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mbox_base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !52
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %mbox_chan_to_altera_mbox.exit.i.altera_mbox_rx_data.exit_crit_edge, label %if.then.i

mbox_chan_to_altera_mbox.exit.i.altera_mbox_rx_data.exit_crit_edge: ; preds = %mbox_chan_to_altera_mbox.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %altera_mbox_rx_data.exit

if.then.i:                                        ; preds = %mbox_chan_to_altera_mbox.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = getelementptr inbounds [2 x i32], ptr %data.i, i32 0, i32 1
  %7 = ptrtoint ptr %mbox_base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mbox_base.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !52
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %6, align 4
  %12 = ptrtoint ptr %mbox_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mbox_base.i.i, align 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !52
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %data.i, align 4
  call void @mbox_chan_received_data(ptr noundef %p, ptr noundef nonnull %data.i) #6
  br label %altera_mbox_rx_data.exit

altera_mbox_rx_data.exit:                         ; preds = %if.then.i, %mbox_chan_to_altera_mbox.exit.i.altera_mbox_rx_data.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altera_mbox_poll_rx(ptr noundef %t) #2 align 64 {
entry:
  %data.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.mbox_chan_to_altera_mbox.exit.i_crit_edge, label %lor.lhs.false.i.i

entry.mbox_chan_to_altera_mbox.exit.i_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mbox_chan_to_altera_mbox.exit.i

lor.lhs.false.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %con_priv.i.i = getelementptr inbounds %struct.mbox_chan, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %con_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %con_priv.i.i, align 4
  br label %mbox_chan_to_altera_mbox.exit.i

mbox_chan_to_altera_mbox.exit.i:                  ; preds = %lor.lhs.false.i.i, %entry.mbox_chan_to_altera_mbox.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ null, %entry.mbox_chan_to_altera_mbox.exit.i_crit_edge ], [ %3, %lor.lhs.false.i.i ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.i) #6
  %mbox_base.i.i = getelementptr inbounds %struct.altera_mbox, ptr %retval.0.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %mbox_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mbox_base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !52
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %mbox_chan_to_altera_mbox.exit.i.altera_mbox_rx_data.exit_crit_edge, label %if.then.i

mbox_chan_to_altera_mbox.exit.i.altera_mbox_rx_data.exit_crit_edge: ; preds = %mbox_chan_to_altera_mbox.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %altera_mbox_rx_data.exit

if.then.i:                                        ; preds = %mbox_chan_to_altera_mbox.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = getelementptr inbounds [2 x i32], ptr %data.i, i32 0, i32 1
  %9 = ptrtoint ptr %mbox_base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mbox_base.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !52
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %8, align 4
  %14 = ptrtoint ptr %mbox_base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mbox_base.i.i, align 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !52
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %data.i, align 4
  call void @mbox_chan_received_data(ptr noundef %1, ptr noundef nonnull %data.i) #6
  br label %altera_mbox_rx_data.exit

altera_mbox_rx_data.exit:                         ; preds = %if.then.i, %mbox_chan_to_altera_mbox.exit.i.altera_mbox_rx_data.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %19, 1
  %call1 = call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_received_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__initcall__kmod_mailbox_altera__187_356_altera_mbox_driver_init6, !1, !"__initcall__kmod_mailbox_altera__187_356_altera_mbox_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mailbox/mailbox-altera.c", i32 356, i32 1}
!2 = !{ptr @__exitcall_altera_mbox_driver_exit, !1, !"__exitcall_altera_mbox_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file188, !4, !"__UNIQUE_ID_file188", i1 false, i1 false}
!4 = !{!"../drivers/mailbox/mailbox-altera.c", i32 358, i32 1}
!5 = !{ptr @__UNIQUE_ID_license189, !4, !"__UNIQUE_ID_license189", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description190, !7, !"__UNIQUE_ID_description190", i1 false, i1 false}
!7 = !{!"../drivers/mailbox/mailbox-altera.c", i32 359, i32 1}
!8 = !{ptr @__UNIQUE_ID_author191, !9, !"__UNIQUE_ID_author191", i1 false, i1 false}
!9 = !{!"../drivers/mailbox/mailbox-altera.c", i32 360, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias192, !11, !"__UNIQUE_ID_alias192", i1 false, i1 false}
!11 = !{!"../drivers/mailbox/mailbox-altera.c", i32 361, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mailbox/mailbox-altera.c", i32 351, i32 11}
!14 = !{ptr @altera_mbox_driver, !15, !"altera_mbox_driver", i1 false, i1 false}
!15 = !{!"../drivers/mailbox/mailbox-altera.c", i32 348, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mailbox/mailbox-altera.c", i32 332, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @altera_mbox_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @altera_mbox_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @altera_mbox_ops, !25, !"altera_mbox_ops", i1 false, i1 false}
!25 = !{!"../drivers/mailbox/mailbox-altera.c", i32 277, i32 35}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mailbox/mailbox-altera.c", i32 214, i32 3}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @altera_mbox_send_data._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @altera_mbox_send_data._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mailbox/mailbox-altera.c", i32 169, i32 4}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @altera_mbox_startup_sender._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @altera_mbox_startup_sender._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @altera_mbox_startup_receiver.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/mailbox/mailbox-altera.c", i32 199, i32 2}
!39 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @altera_mbox_match, !41, !"altera_mbox_match", i1 false, i1 false}
!41 = !{!"../drivers/mailbox/mailbox-altera.c", i32 341, i32 34}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 4865363}
!52 = !{i64 4865781}
!53 = !{i8 0, i8 2}
!54 = !{!"branch_weights", i32 2000, i32 1}
