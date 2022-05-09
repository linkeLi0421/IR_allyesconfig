; ModuleID = '/llk/IR_all_yes/drivers/mailbox/mailbox-mpfs.c_pt.bc'
source_filename = "../drivers/mailbox/mailbox-mpfs.c"
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
%struct.mpfs_mbox = type { %struct.mbox_controller, ptr, i32, ptr, ptr, [1 x %struct.mbox_chan], ptr, i16 }
%struct.mbox_controller = type { ptr, ptr, ptr, i32, i8, i8, i32, ptr, %struct.hrtimer, %struct.list_head }
%struct.mbox_chan = type { ptr, i32, ptr, %struct.completion, ptr, i32, i32, [20 x ptr], %struct.spinlock, ptr }
%struct.mpfs_mss_msg = type { i8, i16, ptr, ptr, i16, i16 }
%struct.mpfs_mss_response = type { i32, ptr, i16 }

@__initcall__kmod_mailbox_mpfs__187_247_mpfs_mbox_driver_init6 = internal global ptr @mpfs_mbox_driver_init, section ".initcall6.init", align 4
@mpfs_mbox_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mpfs_mbox_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mpfs_mbox_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mpfs_mbox_driver_exit = internal global ptr @mpfs_mbox_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file188 = internal constant [47 x i8] c"mailbox_mpfs.file=drivers/mailbox/mailbox-mpfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license189 = internal constant [28 x i8] c"mailbox_mpfs.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author190 = internal constant [62 x i8] c"mailbox_mpfs.author=Conor Dooley <conor.dooley@microchip.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description191 = internal constant [56 x i8] c"mailbox_mpfs.description=MPFS mailbox controller driver\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mpfs-mailbox\00", [19 x i8] zeroinitializer }, align 32
@mpfs_mbox_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mpfs-mailbox\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mpfs_mbox_ops = internal constant { %struct.mbox_chan_ops, [40 x i8] } { %struct.mbox_chan_ops { ptr @mpfs_mbox_send_data, ptr null, ptr @mpfs_mbox_startup, ptr @mpfs_mbox_shutdown, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpfs_mbox_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 226, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Registering MPFS mailbox controller failed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mpfs_mbox_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/mailbox/mailbox-mpfs.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mpfs_mbox_probe._entry_ptr = internal global ptr @mpfs_mbox_probe._entry, section ".printk_index", align 4
@mpfs_mbox_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 229, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Registered MPFS mailbox controller driver\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mpfs_mbox_probe._entry_ptr.9 = internal global ptr @mpfs_mbox_probe._entry.6, section ".printk_index", align 4
@mpfs_mbox_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 175, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to register mailbox interrupt:%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mpfs_mbox_startup\00", [46 x i8] zeroinitializer }, align 32
@mpfs_mbox_startup._entry_ptr = internal global ptr @mpfs_mbox_startup._entry, section ".printk_index", align 4
@mpfs_mbox_rx_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 137, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to assign memory for response %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mpfs_mbox_rx_data\00", [46 x i8] zeroinitializer }, align 32
@mpfs_mbox_rx_data._entry_ptr = internal global ptr @mpfs_mbox_rx_data._entry, section ".printk_index", align 4
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"mpfs_mbox_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 240, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 242, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"mpfs_mbox_of_match\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 234, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"mpfs_mbox_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 187, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 226, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 229, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 175, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [34 x i8] c"../drivers/mailbox/mailbox-mpfs.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 137, i32 3 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author190, ptr @__UNIQUE_ID_description191, ptr @__UNIQUE_ID_file188, ptr @__UNIQUE_ID_license189, ptr @__exitcall_mpfs_mbox_driver_exit, ptr @__initcall__kmod_mailbox_mpfs__187_247_mpfs_mbox_driver_init6, ptr @mpfs_mbox_driver_exit, ptr @mpfs_mbox_probe._entry, ptr @mpfs_mbox_probe._entry.6, ptr @mpfs_mbox_probe._entry_ptr, ptr @mpfs_mbox_probe._entry_ptr.9, ptr @mpfs_mbox_rx_data._entry, ptr @mpfs_mbox_rx_data._entry_ptr, ptr @mpfs_mbox_startup._entry, ptr @mpfs_mbox_startup._entry_ptr, ptr @mpfs_mbox_driver, ptr @.str, ptr @mpfs_mbox_of_match, ptr @mpfs_mbox_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpfs_mbox_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpfs_mbox_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpfs_mbox_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpfs_mbox_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpfs_mbox_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpfs_mbox_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpfs_mbox_rx_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mpfs_mbox_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mpfs_mbox_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mpfs_mbox_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mpfs_mbox_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpfs_mbox_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %regs = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regs) #6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %regs, align 4, !annotation !50
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 320, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %regs) #6
  %mbox_base = getelementptr inbounds %struct.mpfs_mbox, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %mbox_base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %mbox_base, align 8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 1, ptr noundef nonnull %regs) #6
  %int_reg = getelementptr inbounds %struct.mpfs_mbox, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %int_reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8, ptr %int_reg, align 4
  %cmp.i71 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %call15 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.mpfs_mbox, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call15, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %dev21 = getelementptr inbounds %struct.mpfs_mbox, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %dev21 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %dev21, align 8
  %chans = getelementptr inbounds %struct.mpfs_mbox, ptr %call.i, i32 0, i32 5
  %con_priv = getelementptr inbounds %struct.mpfs_mbox, ptr %call.i, i32 0, i32 5, i32 0, i32 9
  %7 = ptrtoint ptr %con_priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %con_priv, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %call.i, align 8
  %num_chans = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %num_chans to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %num_chans, align 4
  %chans27 = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %chans27 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %chans, ptr %chans27, align 8
  %ops = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mpfs_mbox_ops, ptr %ops, align 4
  %txdone_irq = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %txdone_irq to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %txdone_irq, align 8
  %call32 = call i32 @devm_mbox_controller_register(ptr noundef %dev, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %do.end39, label %do.end

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

do.end39:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %do.end, %if.end14.cleanup_crit_edge, %if.then11, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then4 ], [ %4, %if.then11 ], [ %call32, %do.end ], [ 0, %do.end39 ], [ -12, %entry.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regs) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mbox_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpfs_mbox_send_data(ptr nocapture noundef readonly %chan, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %response = getelementptr inbounds %struct.mpfs_mss_msg, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %response, align 4
  %response1 = getelementptr inbounds %struct.mpfs_mbox, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %response1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %response1, align 8
  %resp_offset = getelementptr inbounds %struct.mpfs_mss_msg, ptr %data, i32 0, i32 5
  %5 = ptrtoint ptr %resp_offset to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %resp_offset, align 2
  %resp_offset2 = getelementptr inbounds %struct.mpfs_mbox, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %resp_offset2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %resp_offset2, align 4
  %mbox_base.i = getelementptr inbounds %struct.mpfs_mbox, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %mbox_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mbox_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 84
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !51
  %11 = and i32 %10, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not = icmp eq i32 %11, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd_data_size = getelementptr inbounds %struct.mpfs_mss_msg, ptr %data, i32 0, i32 1
  %12 = ptrtoint ptr %cmd_data_size to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cmd_data_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not = icmp eq i16 %13, 0
  br i1 %tobool.not, label %if.end.if.end46_crit_edge, label %if.then3

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then3:                                         ; preds = %if.end
  %14 = trunc i16 %13 to i8
  %conv5 = and i8 %14, 3
  %cmd_data = getelementptr inbounds %struct.mpfs_mss_msg, ptr %data, i32 0, i32 3
  %15 = ptrtoint ptr %cmd_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmd_data, align 4
  %17 = ptrtoint ptr %cmd_data_size to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %cmd_data_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %18)
  %cmp95.not = icmp ult i16 %18, 4
  br i1 %cmp95.not, label %if.then3.for.end_crit_edge, label %if.then3.for.body_crit_edge

if.then3.for.body_crit_edge:                      ; preds = %if.then3
  br label %for.body

if.then3.for.end_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then3.for.body_crit_edge
  %index.096 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then3.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %16, i32 %index.096
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %mbox_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mbox_base.i, align 8
  %add.ptr = getelementptr i8, ptr %23, i32 2048
  %mul = shl i32 %index.096, 2
  %add.ptr9 = getelementptr i8, ptr %add.ptr, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %21) #6, !srcloc !52
  %inc = add nuw nsw i32 %index.096, 1
  %24 = ptrtoint ptr %cmd_data_size to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %cmd_data_size, align 2
  %26 = lshr i16 %25, 2
  %div93 = zext i16 %26 to i32
  %cmp = icmp ult i32 %inc, %div93
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %phi.bo = shl i32 %inc, 2
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.then3.for.end_crit_edge
  %index.0.lcssa = phi i32 [ 0, %if.then3.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %.lcssa = phi i16 [ %18, %if.then3.for.end_crit_edge ], [ %25, %for.end.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv5)
  %tobool10.not = icmp eq i8 %conv5, 0
  br i1 %tobool10.not, label %for.end.if.end46_crit_edge, label %for.body29.preheader

for.end.if.end46_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

for.body29.preheader:                             ; preds = %for.end
  %27 = and i16 %.lcssa, 252
  %conv15 = zext i16 %27 to i32
  %28 = ptrtoint ptr %cmd_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cmd_data, align 4
  %add.ptr18 = getelementptr i8, ptr %29, i32 %conv15
  %30 = ptrtoint ptr %mbox_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mbox_base.i, align 8
  %add.ptr20 = getelementptr i8, ptr %31, i32 2048
  %add.ptr22 = getelementptr i8, ptr %add.ptr20, i32 %index.0.lcssa
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #6, !srcloc !51
  %33 = and i32 %32, 16777215
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %add.ptr18, align 1
  %conv34 = zext i8 %36 to i32
  %or = or i32 %34, %conv34
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv5)
  %exitcond.not = icmp eq i8 %conv5, 1
  br i1 %exitcond.not, label %for.body29.preheader.for.end40_crit_edge, label %for.body29.1

for.body29.preheader.for.end40_crit_edge:         ; preds = %for.body29.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end40

for.body29.1:                                     ; preds = %for.body29.preheader
  %and32.1 = and i32 %or, -65281
  %arrayidx33.1 = getelementptr i8, ptr %add.ptr18, i32 1
  %37 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx33.1, align 1
  %conv34.1 = zext i8 %38 to i32
  %shl37.1 = shl nuw nsw i32 %conv34.1, 8
  %or.1 = or i32 %shl37.1, %and32.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv5)
  %exitcond.not.1 = icmp eq i8 %conv5, 2
  br i1 %exitcond.not.1, label %for.body29.1.for.end40_crit_edge, label %for.body29.2

for.body29.1.for.end40_crit_edge:                 ; preds = %for.body29.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end40

for.body29.2:                                     ; preds = %for.body29.1
  call void @__sanitizer_cov_trace_pc() #8
  %and32.2 = and i32 %or.1, -16711681
  %arrayidx33.2 = getelementptr i8, ptr %add.ptr18, i32 2
  %39 = ptrtoint ptr %arrayidx33.2 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx33.2, align 1
  %conv34.2 = zext i8 %40 to i32
  %shl37.2 = shl nuw nsw i32 %conv34.2, 16
  %or.2 = or i32 %shl37.2, %and32.2
  br label %for.end40

for.end40:                                        ; preds = %for.body29.2, %for.body29.1.for.end40_crit_edge, %for.body29.preheader.for.end40_crit_edge
  %or.lcssa = phi i32 [ %or, %for.body29.preheader.for.end40_crit_edge ], [ %or.1, %for.body29.1.for.end40_crit_edge ], [ %or.2, %for.body29.2 ]
  %41 = tail call i32 @llvm.bswap.i32(i32 %or.lcssa)
  %42 = ptrtoint ptr %mbox_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mbox_base.i, align 8
  %add.ptr42 = getelementptr i8, ptr %43, i32 2048
  %add.ptr44 = getelementptr i8, ptr %add.ptr42, i32 %index.0.lcssa
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %41) #6, !srcloc !52
  br label %if.end46

if.end46:                                         ; preds = %for.end40, %for.end.if.end46_crit_edge, %if.end.if.end46_crit_edge
  %mbox_offset = getelementptr inbounds %struct.mpfs_mss_msg, ptr %data, i32 0, i32 4
  %44 = ptrtoint ptr %mbox_offset to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %mbox_offset, align 4
  %shl48 = shl i16 %45, 7
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %data, align 4
  %48 = and i8 %47, 127
  %and50 = zext i8 %48 to i16
  %or51 = or i16 %shl48, %and50
  %conv53 = zext i16 %or51 to i32
  %shl54 = shl nuw i32 %conv53, 16
  %or58 = or i32 %shl54, 9
  %49 = tail call i32 @llvm.bswap.i32(i32 %or58)
  %50 = ptrtoint ptr %mbox_base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mbox_base.i, align 8
  %add.ptr60 = getelementptr i8, ptr %51, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %49) #6, !srcloc !52
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end46 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpfs_mbox_startup(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.mpfs_mbox, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %irq = getelementptr inbounds %struct.mpfs_mbox, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %5, ptr noundef nonnull @mpfs_mbox_inbox_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %chan) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.10, i32 noundef %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mpfs_mbox_shutdown(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %dev = getelementptr inbounds %struct.mpfs_mbox, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %irq = getelementptr inbounds %struct.mpfs_mbox, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %3, i32 noundef %5, ptr noundef %chan) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpfs_mbox_inbox_isr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %data, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %int_reg = getelementptr inbounds %struct.mpfs_mbox, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %int_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %int_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #6, !srcloc !52
  %4 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %con_priv, align 4
  %response1.i = getelementptr inbounds %struct.mpfs_mbox, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %response1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %response1.i, align 8
  %resp_size.i = getelementptr inbounds %struct.mpfs_mss_response, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %resp_size.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %resp_size.i, align 4
  %conv.i = zext i16 %9 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %div26.i = lshr i32 %add.i, 2
  %resp_msg.i = getelementptr inbounds %struct.mpfs_mss_response, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %resp_msg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resp_msg.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.mpfs_mbox, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.12, i32 noundef -12) #9
  br label %mpfs_mbox_rx_data.exit

if.end.i:                                         ; preds = %entry
  %mbox_base.i.i = getelementptr inbounds %struct.mpfs_mbox, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %mbox_base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mbox_base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 84
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !51
  %17 = and i32 %16, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not.i = icmp eq i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp27.i = icmp ne i16 %9, 0
  %or.cond.i = select i1 %tobool.i.not.i, i1 %cmp27.i, i1 false
  br i1 %or.cond.i, label %for.body.lr.ph.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %resp_offset.i = getelementptr inbounds %struct.mpfs_mbox, ptr %5, i32 0, i32 7
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div26.i, i32 1) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %mbox_base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mbox_base.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %19, i32 2048
  %20 = ptrtoint ptr %resp_offset.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %resp_offset.i, align 4
  %conv6.i = zext i16 %21 to i32
  %add.ptr7.i = getelementptr i8, ptr %add.ptr.i, i32 %conv6.i
  %mul.i = shl i32 %i.028.i, 2
  %add.ptr8.i = getelementptr i8, ptr %add.ptr7.i, i32 %mul.i
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #6, !srcloc !51
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  %24 = ptrtoint ptr %resp_msg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %resp_msg.i, align 4
  %arrayidx.i = getelementptr i32, ptr %25, i32 %i.028.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.if.end11.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.if.end11.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.end11.i:                                       ; preds = %for.body.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  tail call void @mbox_chan_received_data(ptr noundef %data, ptr noundef %7) #6
  br label %mpfs_mbox_rx_data.exit

mpfs_mbox_rx_data.exit:                           ; preds = %if.end11.i, %do.end.i
  tail call void @mbox_chan_txdone(ptr noundef %data, i32 noundef 0) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_txdone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_received_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !31, !32, !33, !34, !36, !37, !38, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_mailbox_mpfs__187_247_mpfs_mbox_driver_init6, !1, !"__initcall__kmod_mailbox_mpfs__187_247_mpfs_mbox_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mailbox/mailbox-mpfs.c", i32 247, i32 1}
!2 = !{ptr @__exitcall_mpfs_mbox_driver_exit, !1, !"__exitcall_mpfs_mbox_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file188, !4, !"__UNIQUE_ID_file188", i1 false, i1 false}
!4 = !{!"../drivers/mailbox/mailbox-mpfs.c", i32 249, i32 1}
!5 = !{ptr @__UNIQUE_ID_license189, !4, !"__UNIQUE_ID_license189", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author190, !7, !"__UNIQUE_ID_author190", i1 false, i1 false}
!7 = !{!"../drivers/mailbox/mailbox-mpfs.c", i32 250, i32 1}
!8 = !{ptr @__UNIQUE_ID_description191, !9, !"__UNIQUE_ID_description191", i1 false, i1 false}
!9 = !{!"../drivers/mailbox/mailbox-mpfs.c", i32 251, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mailbox/mailbox-mpfs.c", i32 242, i32 11}
!12 = !{ptr @mpfs_mbox_driver, !13, !"mpfs_mbox_driver", i1 false, i1 false}
!13 = !{!"../drivers/mailbox/mailbox-mpfs.c", i32 240, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mailbox/mailbox-mpfs.c", i32 226, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mpfs_mbox_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mpfs_mbox_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mailbox/mailbox-mpfs.c", i32 229, i32 2}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mpfs_mbox_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @mpfs_mbox_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @mpfs_mbox_ops, !28, !"mpfs_mbox_ops", i1 false, i1 false}
!28 = !{!"../drivers/mailbox/mailbox-mpfs.c", i32 187, i32 35}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mailbox/mailbox-mpfs.c", i32 175, i32 3}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @mpfs_mbox_startup._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @mpfs_mbox_startup._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mailbox/mailbox-mpfs.c", i32 137, i32 3}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @mpfs_mbox_rx_data._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @mpfs_mbox_rx_data._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @mpfs_mbox_of_match, !40, !"mpfs_mbox_of_match", i1 false, i1 false}
!40 = !{!"../drivers/mailbox/mailbox-mpfs.c", i32 234, i32 34}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"auto-init"}
!51 = !{i64 690001}
!52 = !{i64 689583}
