; ModuleID = '/llk/IR_all_yes/drivers/bluetooth/btqcomsmd.c_pt.bc'
source_filename = "../drivers/bluetooth/btqcomsmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.btqcomsmd = type { ptr, ptr, ptr }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }

@__initcall__kmod_btqcomsmd__475_213_btqcomsmd_driver_init6 = internal global ptr @btqcomsmd_driver_init, section ".initcall6.init", align 4
@btqcomsmd_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @btqcomsmd_probe, ptr @btqcomsmd_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @btqcomsmd_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_btqcomsmd_driver_exit = internal global ptr @btqcomsmd_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author476 = internal constant [66 x i8] c"btqcomsmd.author=Bjorn Andersson <bjorn.andersson@sonymobile.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description477 = internal constant [46 x i8] c"btqcomsmd.description=Qualcomm SMD HCI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file478 = internal constant [43 x i8] c"btqcomsmd.file=drivers/bluetooth/btqcomsmd\00", section ".modinfo", align 1
@__UNIQUE_ID_license479 = internal constant [25 x i8] c"btqcomsmd.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"btqcomsmd\00", [22 x i8] zeroinitializer }, align 32
@btqcomsmd_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,wcnss-bt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"APPS_RIVA_BT_ACL\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"APPS_RIVA_BT_CMD\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.3 = private unnamed_addr constant [17 x i8] c"btqcomsmd_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 204, i32 31 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 208, i32 12 }
@___asan_gen_.9 = private unnamed_addr constant [19 x i8] c"btqcomsmd_of_match\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 198, i32 34 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 138, i32 52 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [33 x i8] c"../drivers/bluetooth/btqcomsmd.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 143, i32 52 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author476, ptr @__UNIQUE_ID_description477, ptr @__UNIQUE_ID_file478, ptr @__UNIQUE_ID_license479, ptr @__exitcall_btqcomsmd_driver_exit, ptr @__initcall__kmod_btqcomsmd__475_213_btqcomsmd_driver_init6, ptr @btqcomsmd_driver_exit, ptr @btqcomsmd_driver, ptr @.str, ptr @btqcomsmd_of_match, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btqcomsmd_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btqcomsmd_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @btqcomsmd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @btqcomsmd_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @btqcomsmd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @btqcomsmd_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btqcomsmd_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call3 = tail call ptr @qcom_wcnss_open_channel(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @btqcomsmd_acl_callback, ptr noundef nonnull %call.i) #4
  %acl_channel = getelementptr inbounds %struct.btqcomsmd, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %acl_channel to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %acl_channel, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @qcom_wcnss_open_channel(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @btqcomsmd_cmd_callback, ptr noundef nonnull %call.i) #4
  %cmd_channel = getelementptr inbounds %struct.btqcomsmd, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %cmd_channel to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %cmd_channel, align 4
  %cmp.i62 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i62, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %call10 to i32
  br label %destroy_acl_channel

if.end16:                                         ; preds = %if.end9
  %call.i63 = tail call ptr @hci_alloc_dev_priv(i32 noundef 0) #4
  %tobool18.not = icmp eq ptr %call.i63, null
  br i1 %tobool18.not, label %if.end16.destroy_cmd_channel_crit_edge, label %if.end20

if.end16.destroy_cmd_channel_crit_edge:           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %destroy_cmd_channel

if.end20:                                         ; preds = %if.end16
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %call.i63, i32 0, i32 204, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i63, ptr %call.i, align 4
  %parent24 = getelementptr inbounds %struct.hci_dev, ptr %call.i63, i32 0, i32 204, i32 1
  %10 = ptrtoint ptr %parent24 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %parent24, align 8
  %bus = getelementptr inbounds %struct.hci_dev, ptr %call.i63, i32 0, i32 5
  %11 = ptrtoint ptr %bus to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 9, ptr %bus, align 2
  %open = getelementptr inbounds %struct.hci_dev, ptr %call.i63, i32 0, i32 232
  %12 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @btqcomsmd_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.hci_dev, ptr %call.i63, i32 0, i32 233
  %13 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @btqcomsmd_close, ptr %close, align 4
  %send = getelementptr inbounds %struct.hci_dev, ptr %call.i63, i32 0, i32 237
  %14 = ptrtoint ptr %send to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @btqcomsmd_send, ptr %send, align 4
  %setup = getelementptr inbounds %struct.hci_dev, ptr %call.i63, i32 0, i32 235
  %15 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @btqcomsmd_setup, ptr %setup, align 4
  %set_bdaddr = getelementptr inbounds %struct.hci_dev, ptr %call.i63, i32 0, i32 242
  %16 = ptrtoint ptr %set_bdaddr to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @qca_set_bdaddr_rome, ptr %set_bdaddr, align 8
  %call25 = tail call i32 @hci_register_dev(ptr noundef nonnull %call.i63) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp slt i32 %call25, 0
  br i1 %cmp, label %hci_free_dev, label %if.end27

if.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %driver_data.i.i64 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %driver_data.i.i64 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i.i64, align 4
  br label %cleanup

hci_free_dev:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @hci_free_dev(ptr noundef nonnull %call.i63) #4
  br label %destroy_cmd_channel

destroy_cmd_channel:                              ; preds = %hci_free_dev, %if.end16.destroy_cmd_channel_crit_edge
  %ret.0 = phi i32 [ %call25, %hci_free_dev ], [ -12, %if.end16.destroy_cmd_channel_crit_edge ]
  %18 = ptrtoint ptr %cmd_channel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmd_channel, align 4
  tail call void @rpmsg_destroy_ept(ptr noundef %19) #4
  br label %destroy_acl_channel

destroy_acl_channel:                              ; preds = %destroy_cmd_channel, %if.then13
  %ret.1 = phi i32 [ %7, %if.then13 ], [ %ret.0, %destroy_cmd_channel ]
  %20 = ptrtoint ptr %acl_channel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %acl_channel, align 4
  tail call void @rpmsg_destroy_ept(ptr noundef %21) #4
  br label %cleanup

cleanup:                                          ; preds = %destroy_acl_channel, %if.end27, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then6 ], [ %ret.1, %destroy_acl_channel ], [ 0, %if.end27 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btqcomsmd_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @hci_unregister_dev(ptr noundef %3) #4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @hci_free_dev(ptr noundef %5) #4
  %cmd_channel = getelementptr inbounds %struct.btqcomsmd, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %cmd_channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd_channel, align 4
  tail call void @rpmsg_destroy_ept(ptr noundef %7) #4
  %acl_channel = getelementptr inbounds %struct.btqcomsmd, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %acl_channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %acl_channel, align 4
  tail call void @rpmsg_destroy_ept(ptr noundef %9) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_wcnss_open_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btqcomsmd_acl_callback(ptr nocapture noundef readnone %rpdev, ptr nocapture noundef readonly %data, i32 noundef %count, ptr nocapture noundef readonly %priv, i32 noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %byte_rx = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 199, i32 8
  %2 = ptrtoint ptr %byte_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %byte_rx, align 8
  %add = add i32 %3, %count
  store i32 %add, ptr %byte_rx, align 8
  %4 = load ptr, ptr %priv, align 4
  %add.i.i = add i32 %count, 8
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #4
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %stat.i = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 199
  %5 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stat.i, align 8
  %inc.i = add i32 %6, 1
  store i32 %inc.i, ptr %stat.i, align 8
  br label %btqcomsmd_recv.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %9 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %10, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %cb.i, align 8
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %count) #4
  %12 = call ptr @memcpy(ptr %call.i.i, ptr %data, i32 %count)
  %call2.i = tail call i32 @hci_recv_frame(ptr noundef %4, ptr noundef nonnull %call.i.i.i) #4
  br label %btqcomsmd_recv.exit

btqcomsmd_recv.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ -12, %if.then.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btqcomsmd_cmd_callback(ptr nocapture noundef readnone %rpdev, ptr nocapture noundef readonly %data, i32 noundef %count, ptr nocapture noundef readonly %priv, i32 noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %byte_rx = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 199, i32 8
  %2 = ptrtoint ptr %byte_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %byte_rx, align 8
  %add = add i32 %3, %count
  store i32 %add, ptr %byte_rx, align 8
  %4 = load ptr, ptr %priv, align 4
  %add.i.i = add i32 %count, 8
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #4
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %stat.i = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 199
  %5 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stat.i, align 8
  %inc.i = add i32 %6, 1
  store i32 %inc.i, ptr %stat.i, align 8
  br label %btqcomsmd_recv.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %9 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %10, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %cb.i, align 8
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %count) #4
  %12 = call ptr @memcpy(ptr %call.i.i, ptr %data, i32 %count)
  %call2.i = tail call i32 @hci_recv_frame(ptr noundef %4, ptr noundef nonnull %call.i.i.i) #4
  br label %btqcomsmd_recv.exit

btqcomsmd_recv.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ -12, %if.then.i ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @btqcomsmd_open(ptr nocapture noundef readnone %hdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @btqcomsmd_close(ptr nocapture noundef readnone %hdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btqcomsmd_send(ptr nocapture noundef %hdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cb, align 8
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %entry.if.end24_crit_edge [
    i8 2, label %sw.bb
    i8 1, label %sw.bb6
  ]

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

sw.bb:                                            ; preds = %entry
  %acl_channel = getelementptr inbounds %struct.btqcomsmd, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %acl_channel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %acl_channel, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %call1 = tail call i32 @rpmsg_send(ptr noundef %6, ptr noundef %8, i32 noundef %10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %err_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 1
  %11 = ptrtoint ptr %err_tx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %err_tx, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %err_tx, align 4
  br label %if.end24

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %acl_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 4
  br label %if.then23

sw.bb6:                                           ; preds = %entry
  %cmd_channel = getelementptr inbounds %struct.btqcomsmd, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %cmd_channel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd_channel, align 4
  %data7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data7, align 4
  %len8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len8, align 4
  %call9 = tail call i32 @rpmsg_send(ptr noundef %14, ptr noundef %16, i32 noundef %18) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end15, label %if.then11

if.then11:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #6
  %err_tx13 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 1
  %19 = ptrtoint ptr %err_tx13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %err_tx13, align 4
  %inc14 = add i32 %20, 1
  store i32 %inc14, ptr %err_tx13, align 4
  br label %if.end24

if.end15:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #6
  %cmd_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 2
  br label %if.then23

if.then23:                                        ; preds = %if.end15, %if.end
  %acl_tx.sink47 = phi ptr [ %acl_tx, %if.end ], [ %cmd_tx, %if.end15 ]
  %len.sink = phi ptr [ %len, %if.end ], [ %len8, %if.end15 ]
  %21 = ptrtoint ptr %acl_tx.sink47 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %acl_tx.sink47, align 8
  %inc3 = add i32 %22, 1
  store i32 %inc3, ptr %acl_tx.sink47, align 8
  %23 = ptrtoint ptr %len.sink to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.sink, align 4
  %byte_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 9
  %25 = ptrtoint ptr %byte_tx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %byte_tx, align 4
  %add = add i32 %26, %24
  store i32 %add, ptr %byte_tx, align 4
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.then11, %if.then, %entry.if.end24_crit_edge
  %ret.044 = phi i32 [ 0, %if.then23 ], [ -84, %entry.if.end24_crit_edge ], [ %call1, %if.then ], [ %call9, %if.then11 ]
  ret i32 %ret.044
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btqcomsmd_setup(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @__hci_cmd_sync(ptr noundef %hdev, i16 noundef zeroext 3075, i32 noundef 0, ptr noundef null, i32 noundef 1000) #4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree_skb_reason(ptr noundef %call1, i32 noundef 0) #4
  %quirks = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 8, ptr noundef %quirks) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qca_set_bdaddr_rome(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_register_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_free_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpmsg_destroy_ept(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_alloc_dev_priv(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__hci_cmd_sync(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_unregister_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__initcall__kmod_btqcomsmd__475_213_btqcomsmd_driver_init6, !1, !"__initcall__kmod_btqcomsmd__475_213_btqcomsmd_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/bluetooth/btqcomsmd.c", i32 213, i32 1}
!2 = !{ptr @__exitcall_btqcomsmd_driver_exit, !1, !"__exitcall_btqcomsmd_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author476, !4, !"__UNIQUE_ID_author476", i1 false, i1 false}
!4 = !{!"../drivers/bluetooth/btqcomsmd.c", i32 215, i32 1}
!5 = !{ptr @__UNIQUE_ID_description477, !6, !"__UNIQUE_ID_description477", i1 false, i1 false}
!6 = !{!"../drivers/bluetooth/btqcomsmd.c", i32 216, i32 1}
!7 = !{ptr @__UNIQUE_ID_file478, !8, !"__UNIQUE_ID_file478", i1 false, i1 false}
!8 = !{!"../drivers/bluetooth/btqcomsmd.c", i32 217, i32 1}
!9 = !{ptr @__UNIQUE_ID_license479, !8, !"__UNIQUE_ID_license479", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/bluetooth/btqcomsmd.c", i32 208, i32 12}
!12 = !{ptr @btqcomsmd_driver, !13, !"btqcomsmd_driver", i1 false, i1 false}
!13 = !{!"../drivers/bluetooth/btqcomsmd.c", i32 204, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/bluetooth/btqcomsmd.c", i32 138, i32 52}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/bluetooth/btqcomsmd.c", i32 143, i32 52}
!18 = !{ptr @btqcomsmd_of_match, !19, !"btqcomsmd_of_match", i1 false, i1 false}
!19 = !{!"../drivers/bluetooth/btqcomsmd.c", i32 198, i32 34}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
