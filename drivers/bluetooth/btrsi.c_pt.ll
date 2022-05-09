; ModuleID = '/llk/IR_all_yes/drivers/bluetooth/btrsi.c_pt.bc'
source_filename = "../drivers/bluetooth/btrsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rsi_bt_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_rsi_bt_ops\09\09\09\09"
module asm "\09.long\09__crc_rsi_bt_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rsi_bt_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22rsi_bt_ops\22\09\09\09\09\09"
module asm "__kstrtabns_rsi_bt_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rsi_mod_ops = type { ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rsi_proto_ops = type { ptr, ptr, ptr }
%struct.rsi_hci_adapter = type { ptr, ptr, ptr }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }

@rsi_bt_ops = dso_local constant { %struct.rsi_mod_ops, [20 x i8] } { %struct.rsi_mod_ops { ptr @rsi_hci_attach, ptr @rsi_hci_detach, ptr @rsi_hci_recv_pkt }, [20 x i8] zeroinitializer }, align 32
@__kstrtab_rsi_bt_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_rsi_bt_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_rsi_bt_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rsi_bt_ops to i32), ptr @__kstrtab_rsi_bt_ops, ptr @__kstrtabns_rsi_bt_ops }, section "___ksymtab+rsi_bt_ops", align 4
@__initcall__kmod_btrsi__475_192_rsi_91x_bt_module_init6 = internal global ptr @rsi_91x_bt_module_init, section ".initcall6.init", align 4
@__exitcall_rsi_91x_bt_module_exit = internal global ptr @rsi_91x_bt_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author476 = internal constant [33 x i8] c"btrsi.author=Redpine Signals Inc\00", section ".modinfo", align 1
@__UNIQUE_ID_description477 = internal constant [32 x i8] c"btrsi.description=RSI BT driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file478 = internal constant [35 x i8] c"btrsi.file=drivers/bluetooth/btrsi\00", section ".modinfo", align 1
@__UNIQUE_ID_license479 = internal constant [27 x i8] c"btrsi.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to alloc HCI device\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"HCI registration failed with errcode %d\0A\00", [55 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_.2 = private unnamed_addr constant [11 x i8] c"rsi_bt_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 175, i32 26 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 125, i32 3 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [29 x i8] c"../drivers/bluetooth/btrsi.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 145, i32 3 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author476, ptr @__UNIQUE_ID_description477, ptr @__UNIQUE_ID_file478, ptr @__UNIQUE_ID_license479, ptr @__exitcall_rsi_91x_bt_module_exit, ptr @__initcall__kmod_btrsi__475_192_rsi_91x_bt_module_init6, ptr @__ksymtab_rsi_bt_ops, ptr @rsi_bt_ops, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsi_bt_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_hci_attach(ptr noundef %priv, ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %priv, ptr %call7.i.i, align 8
  %set_bt_context = getelementptr inbounds %struct.rsi_proto_ops, ptr %ops, i32 0, i32 2
  %2 = ptrtoint ptr %set_bt_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_bt_context, align 4
  tail call void %3(ptr noundef %priv, ptr noundef nonnull %call7.i.i) #5
  %proto_ops = getelementptr inbounds %struct.rsi_hci_adapter, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %proto_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ops, ptr %proto_ops, align 4
  %call.i = tail call ptr @hci_alloc_dev_priv(i32 noundef 0) #5
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str) #5
  br label %err15

if.end5:                                          ; preds = %if.end
  %hdev6 = getelementptr inbounds %struct.rsi_hci_adapter, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %hdev6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %hdev6, align 8
  %get_host_intf = getelementptr inbounds %struct.rsi_proto_ops, ptr %ops, i32 0, i32 1
  %6 = ptrtoint ptr %get_host_intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_host_intf, align 4
  %call7 = tail call i32 %7(ptr noundef %priv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp eq i32 %call7, 0
  %spec.select = select i1 %cmp, i8 6, i8 1
  %8 = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %spec.select, ptr %8, align 2
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 204, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %dev_type = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 6
  %11 = ptrtoint ptr %dev_type to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %dev_type, align 1
  %open = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 232
  %12 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @rsi_hci_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 233
  %13 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @rsi_hci_close, ptr %close, align 4
  %flush = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 234
  %14 = ptrtoint ptr %flush to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @rsi_hci_flush, ptr %flush, align 8
  %send = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 237
  %15 = ptrtoint ptr %send to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @rsi_hci_send_pkt, ptr %send, align 4
  %call11 = tail call i32 @hci_register_dev(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then13:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.1, i32 noundef %call11) #5
  tail call void @hci_free_dev(ptr noundef nonnull %call.i) #5
  br label %err15

err15:                                            ; preds = %if.then13, %if.then4
  %hdev16 = getelementptr inbounds %struct.rsi_hci_adapter, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %hdev16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %hdev16, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %err15, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %err15 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsi_hci_detach(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %priv, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %hdev1 = getelementptr inbounds %struct.rsi_hci_adapter, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @hci_unregister_dev(ptr noundef nonnull %1) #5
  tail call void @hci_free_dev(ptr noundef nonnull %1) #5
  %2 = ptrtoint ptr %hdev1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %hdev1, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  tail call void @kfree(ptr noundef nonnull %priv) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_hci_recv_pkt(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %pkt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.rsi_hci_adapter, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %2 = ptrtoint ptr %pkt to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %pkt, align 1
  %4 = and i16 %3, -241
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %and = zext i16 %5 to i32
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %and, i32 noundef 2592) #5
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %pkt, i32 16
  %8 = call ptr @memcpy(ptr %7, ptr %add.ptr, i32 %and)
  %call3 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %and) #5
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %11 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdev1, align 4
  %byte_rx = getelementptr inbounds %struct.hci_dev, ptr %12, i32 0, i32 199, i32 8
  %13 = ptrtoint ptr %byte_rx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %byte_rx, align 8
  %add = add i32 %14, %10
  store i32 %add, ptr %byte_rx, align 8
  %arrayidx = getelementptr i8, ptr %pkt, i32 14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %cb, align 8
  %call5 = tail call i32 @hci_recv_frame(ptr noundef %1, ptr noundef nonnull %call.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rsi_91x_bt_module_init() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rsi_91x_bt_module_exit() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rsi_hci_open(ptr nocapture noundef readnone %hdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rsi_hci_close(ptr nocapture noundef readnone %hdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rsi_hci_flush(ptr nocapture noundef readnone %hdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsi_hci_send_pkt(ptr nocapture noundef %hdev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  switch i8 %3, label %entry.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb1
    i8 3, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cmd_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 2
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %acl_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 4
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sco_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 6
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb4, %sw.bb1, %sw.bb
  %sco_tx.sink55 = phi ptr [ %sco_tx, %sw.bb4 ], [ %acl_tx, %sw.bb1 ], [ %cmd_tx, %sw.bb ]
  %5 = ptrtoint ptr %sco_tx.sink55 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sco_tx.sink55, align 8
  %inc6 = add i32 %6, 1
  store i32 %inc6, ptr %sco_tx.sink55, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %9 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.ptr.sub.i)
  %cmp = icmp ult i32 %sub.ptr.sub.i, 24
  br i1 %cmp, label %if.then, label %sw.epilog.if.end31_crit_edge

sw.epilog.if.end31_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then:                                          ; preds = %sw.epilog
  %call9 = tail call ptr @skb_realloc_headroom(ptr noundef %skb, i32 noundef 24) #5
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end, !prof !28

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  %11 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cb, align 8
  %cb17 = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 3
  %13 = ptrtoint ptr %cb17 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %cb17, align 8
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  %data = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 19
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = ptrtoint ptr %15 to i32
  %and = and i32 %16, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp20 = icmp eq i32 %and, 0
  br i1 %cmp20, label %if.end.if.end31_crit_edge, label %if.then22

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %len = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 6
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %call24 = tail call ptr @skb_push(ptr noundef nonnull %call9, i32 noundef 8) #5
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %21 = ptrtoint ptr %20 to i32
  %add = add i32 %21, 7
  %and26 = and i32 %add, -8
  %sub.ptr.sub = sub i32 %and26, %21
  %call28 = tail call ptr @skb_pull(ptr noundef nonnull %call9, i32 noundef %sub.ptr.sub) #5
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %24 = call ptr @memmove(ptr %23, ptr %15, i32 %18)
  tail call void @skb_trim(ptr noundef nonnull %call9, i32 noundef %18) #5
  br label %if.end31

if.end31:                                         ; preds = %if.then22, %if.end.if.end31_crit_edge, %sw.epilog.if.end31_crit_edge
  %skb.addr.0 = phi ptr [ %call9, %if.end.if.end31_crit_edge ], [ %call9, %if.then22 ], [ %skb, %sw.epilog.if.end31_crit_edge ]
  %proto_ops = getelementptr inbounds %struct.rsi_hci_adapter, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %proto_ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %proto_ops, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %call32 = tail call i32 %28(ptr noundef %30, ptr noundef %skb.addr.0, i8 noundef zeroext 2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %if.end31 ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_register_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_free_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_alloc_dev_priv(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_realloc_headroom(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_unregister_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @rsi_bt_ops, !1, !"rsi_bt_ops", i1 false, i1 false}
!1 = !{!"../drivers/bluetooth/btrsi.c", i32 175, i32 26}
!2 = !{ptr @__ksymtab_rsi_bt_ops, !3, !"__ksymtab_rsi_bt_ops", i1 false, i1 false}
!3 = !{!"../drivers/bluetooth/btrsi.c", i32 180, i32 1}
!4 = !{ptr @__initcall__kmod_btrsi__475_192_rsi_91x_bt_module_init6, !5, !"__initcall__kmod_btrsi__475_192_rsi_91x_bt_module_init6", i1 false, i1 false}
!5 = !{!"../drivers/bluetooth/btrsi.c", i32 192, i32 1}
!6 = !{ptr @__exitcall_rsi_91x_bt_module_exit, !7, !"__exitcall_rsi_91x_bt_module_exit", i1 false, i1 false}
!7 = !{!"../drivers/bluetooth/btrsi.c", i32 193, i32 1}
!8 = !{ptr @__UNIQUE_ID_author476, !9, !"__UNIQUE_ID_author476", i1 false, i1 false}
!9 = !{!"../drivers/bluetooth/btrsi.c", i32 194, i32 1}
!10 = !{ptr @__UNIQUE_ID_description477, !11, !"__UNIQUE_ID_description477", i1 false, i1 false}
!11 = !{!"../drivers/bluetooth/btrsi.c", i32 195, i32 1}
!12 = !{ptr @__UNIQUE_ID_file478, !13, !"__UNIQUE_ID_file478", i1 false, i1 false}
!13 = !{!"../drivers/bluetooth/btrsi.c", i32 196, i32 1}
!14 = !{ptr @__UNIQUE_ID_license479, !13, !"__UNIQUE_ID_license479", i1 false, i1 false}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/bluetooth/btrsi.c", i32 125, i32 3}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/bluetooth/btrsi.c", i32 145, i32 3}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"branch_weights", i32 1, i32 2000}
