; ModuleID = '/llk/IR_all_yes/sound/firewire/fireworks/fireworks_transaction.c_pt.bc'
source_filename = "../sound/firewire/fireworks/fireworks_transaction.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fw_address_region = type { i64, i64 }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.transaction_queue = type { %struct.list_head, ptr, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.snd_efw_transaction = type { i32, i32, i32, i32, i32, i32, [0 x i32] }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.snd_efw = type { ptr, ptr, i32, %struct.mutex, %struct.spinlock, i32, i8, i8, i8, i32, i32, i32, i32, [3 x i32], [3 x i32], %struct.amdtp_stream, %struct.amdtp_stream, %struct.cmp_connection, %struct.cmp_connection, i32, i32, i32, i32, i32, [8 x %struct.snd_efw_phys_grp], [8 x %struct.snd_efw_phys_grp], i32, i8, %struct.wait_queue_head, ptr, ptr, ptr, %struct.amdtp_domain }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.cmp_connection = type { i32, i8, %struct.mutex, %struct.fw_iso_resources, i32, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.snd_efw_phys_grp = type { i8, i8 }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.82, %struct.anon.83 }
%struct.anon.82 = type { i32, i32, i32 }
%struct.anon.83 = type { i8 }

@snd_efw_transaction_run.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"&t.wait\00", [24 x i8] zeroinitializer }, align 32
@transaction_queues_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@transaction_queues = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @transaction_queues, ptr @transaction_queues }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"sound/firewire/fireworks/fireworks_transaction.c\00", [47 x i8] zeroinitializer }, align 32
@snd_efw_transaction_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 104, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"EFW transaction timed out\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snd_efw_transaction_run\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_efw_transaction_run._entry_ptr = internal global ptr @snd_efw_transaction_run._entry, section ".printk_index", align 4
@instances_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@instances = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@snd_efw_transaction_register.resp_register_region = internal constant { %struct.fw_address_region, [16 x i8] } { %struct.fw_address_region { i64 260311525359616, i64 260311525360128 }, [16 x i8] zeroinitializer }, align 32
@resp_register_handler = internal global { %struct.fw_address_handler, [32 x i8] } { %struct.fw_address_handler { i64 0, i64 512, ptr @efw_response, ptr null, %struct.list_head zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"transaction_queues_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"instances_lock\00", [17 x i8] zeroinitializer }, align 32
@snd_efw_resp_buf_debug = external dso_local local_unnamed_addr global i8, align 1
@snd_efw_resp_buf_size = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.8 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 83, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant [24 x i8] c"transaction_queues_lock\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [19 x i8] c"transaction_queues\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 44, i32 8 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 95, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 104, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"instances_lock\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [10 x i8] c"instances\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 41, i32 24 }
@___asan_gen_.44 = private unnamed_addr constant [21 x i8] c"resp_register_region\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 311, i32 40 }
@___asan_gen_.47 = private unnamed_addr constant [22 x i8] c"resp_register_handler\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 304, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 43, i32 8 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [52 x i8] c"../sound/firewire/fireworks/fireworks_transaction.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 40, i32 8 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @snd_efw_transaction_run._entry, ptr @snd_efw_transaction_run._entry_ptr, ptr @snd_efw_transaction_run.__key, ptr @.str, ptr @transaction_queues_lock, ptr @transaction_queues, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @instances_lock, ptr @instances, ptr @snd_efw_transaction_register.resp_register_region, ptr @resp_register_handler, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_efw_transaction_run.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @transaction_queues_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @transaction_queues to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_efw_transaction_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @instances_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @instances to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_efw_transaction_register.resp_register_region to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resp_register_handler to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_efw_transaction_cmd(ptr noundef %unit, ptr noundef %cmd, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_fw_transaction(ptr noundef %unit, i32 noundef 1, i64 noundef 260309377875968, ptr noundef %cmd, i32 noundef %size, i32 noundef 0) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_fw_transaction(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_efw_transaction_run(ptr noundef %unit, ptr noundef %cmd, i32 noundef %cmd_size, ptr noundef %resp, i32 noundef %resp_size) local_unnamed_addr #0 align 64 {
entry:
  %t = alloca %struct.transaction_queue, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %t) #5
  %0 = call ptr @memset(ptr %t, i32 255, i32 80)
  %unit1 = getelementptr inbounds %struct.transaction_queue, ptr %t, i32 0, i32 1
  %1 = ptrtoint ptr %unit1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %unit, ptr %unit1, align 4
  %buf = getelementptr inbounds %struct.transaction_queue, ptr %t, i32 0, i32 2
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %resp, ptr %buf, align 4
  %size = getelementptr inbounds %struct.transaction_queue, ptr %t, i32 0, i32 3
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %resp_size, ptr %size, align 4
  %seqnum = getelementptr inbounds %struct.snd_efw_transaction, ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %seqnum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %seqnum, align 4
  %add = add i32 %5, 1
  %seqnum2 = getelementptr inbounds %struct.transaction_queue, ptr %t, i32 0, i32 4
  %6 = ptrtoint ptr %seqnum2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %seqnum2, align 4
  %state = getelementptr inbounds %struct.transaction_queue, ptr %t, i32 0, i32 5
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %state, align 4
  %wait = getelementptr inbounds %struct.transaction_queue, ptr %t, i32 0, i32 6
  call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str, ptr noundef nonnull @snd_efw_transaction_run.__key) #5
  call void @_raw_spin_lock_irq(ptr noundef nonnull @transaction_queues_lock) #5
  %8 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @transaction_queues, i32 0, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %t, ptr noundef %8, ptr noundef nonnull @transaction_queues) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %t, ptr getelementptr inbounds (%struct.list_head, ptr @transaction_queues, i32 0, i32 1), align 4
  %9 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @transaction_queues, ptr %t, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %t, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %t, ptr %8, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @transaction_queues_lock) #5
  %12 = ptrtoint ptr %unit1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %unit1, align 4
  %call.i93 = call i32 @snd_fw_transaction(ptr noundef %13, i32 noundef 1, i64 noundef 260309377875968, ptr noundef %cmd, i32 noundef %cmd_size, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %cmp94 = icmp slt i32 %call.i93, 0
  br i1 %cmp94, label %list_add_tail.exit.do.end67_crit_edge, label %list_add_tail.exit.if.end_crit_edge

list_add_tail.exit.if.end_crit_edge:              ; preds = %list_add_tail.exit
  br label %if.end

list_add_tail.exit.do.end67_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

if.end:                                           ; preds = %do.cond66.if.end_crit_edge, %list_add_tail.exit.if.end_crit_edge
  %tries.095 = phi i32 [ %tries.1, %do.cond66.if.end_crit_edge ], [ 0, %list_add_tail.exit.if.end_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 96) #5
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp13.not = icmp eq i32 %15, 0
  br i1 %cmp13.not, label %if.then20, label %if.end.if.end47_crit_edge

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then20:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %16 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %call2489 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp27.not90.not = icmp eq i32 %18, 0
  br i1 %cmp27.not90.not, label %if.then20.cleanup_crit_edge, label %if.then20.for.end_crit_edge

if.then20.for.end_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then20.cleanup_crit_edge
  %__ret21.192 = phi i32 [ %__ret21.1, %cleanup.cleanup_crit_edge ], [ 13, %if.then20.cleanup_crit_edge ]
  %call44 = call i32 @schedule_timeout(i32 noundef %__ret21.192) #5
  %call24 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp27.not = icmp eq i32 %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool31.not = icmp eq i32 %call44, 0
  %spec.store.select72 = select i1 %tobool31.not, i32 1, i32 %call44
  %__ret21.1 = select i1 %cmp27.not, i32 %call44, i32 %spec.store.select72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret21.1)
  %tobool37.not = icmp eq i32 %__ret21.1, 0
  %not.cmp27.not = xor i1 %cmp27.not, true
  %21 = select i1 %not.cmp27.not, i1 true, i1 %tobool37.not
  br i1 %21, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then20.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %state, align 4
  br label %if.end47

if.end47:                                         ; preds = %for.end, %if.end.if.end47_crit_edge
  %23 = phi i32 [ %.pr, %for.end ], [ %15, %if.end.if.end47_crit_edge ]
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %23, label %if.else56 [
    i32 2, label %if.then51
    i32 1, label %if.then55
  ]

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size, align 4
  br label %do.end67

if.then55:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  call void @msleep(i32 noundef 5) #5
  br label %do.cond66

if.else56:                                        ; preds = %if.end47
  %inc = add i32 %tries.095, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc)
  %cmp57 = icmp ugt i32 %inc, 2
  br i1 %cmp57, label %do.end61, label %if.else56.do.cond66_crit_edge

if.else56.do.cond66_crit_edge:                    ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond66

do.end61:                                         ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %unit1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %unit1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.2) #8
  br label %do.end67

do.cond66:                                        ; preds = %if.else56.do.cond66_crit_edge, %if.then55
  %tries.1 = phi i32 [ %tries.095, %if.then55 ], [ %inc, %if.else56.do.cond66_crit_edge ]
  %29 = ptrtoint ptr %unit1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %unit1, align 4
  %call.i = call i32 @snd_fw_transaction(ptr noundef %30, i32 noundef 1, i64 noundef 260309377875968, ptr noundef %cmd, i32 noundef %cmd_size, i32 noundef 0) #5
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.cond66.do.end67_crit_edge, label %do.cond66.if.end_crit_edge

do.cond66.if.end_crit_edge:                       ; preds = %do.cond66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.cond66.do.end67_crit_edge:                     ; preds = %do.cond66
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

do.end67:                                         ; preds = %do.cond66.do.end67_crit_edge, %do.end61, %if.then51, %list_add_tail.exit.do.end67_crit_edge
  %ret.0 = phi i32 [ %26, %if.then51 ], [ -5, %do.end61 ], [ %call.i93, %list_add_tail.exit.do.end67_crit_edge ], [ %call.i, %do.cond66.do.end67_crit_edge ]
  call void @_raw_spin_lock_irq(ptr noundef nonnull @transaction_queues_lock) #5
  %call.i.i82 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %t) #5
  br i1 %call.i.i82, label %if.end.i.i83, label %do.end67.list_del.exit_crit_edge

do.end67.list_del.exit_crit_edge:                 ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i83:                                     ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %t, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %t, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i83, %do.end67.list_del.exit_crit_edge
  %37 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %t, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %t, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @transaction_queues_lock) #5
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %t) #5
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_efw_transaction_add_instance(ptr noundef %efw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @instances_lock) #5
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr @instances, i32 0, i32 %i.06
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp1.not = icmp eq ptr %1, null
  br i1 %cmp1.not, label %if.end, label %for.cond

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %efw, ptr %arrayidx, align 4
  br label %for.end

for.end:                                          ; preds = %if.end, %for.cond.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @instances_lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_efw_transaction_remove_instance(ptr noundef readnone %efw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @instances_lock) #5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr @instances, i32 0, i32 %i.06
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp1.not = icmp eq ptr %1, %efw
  br i1 %cmp1.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @instances_lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_efw_transaction_bus_reset(ptr noundef readnone %unit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @transaction_queues_lock) #5
  %t.014 = load ptr, ptr @transaction_queues, align 4
  %cmp.not15 = icmp eq ptr %t.014, @transaction_queues
  br i1 %cmp.not15, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %t.016 = phi ptr [ %t.0, %for.inc.for.body_crit_edge ], [ %t.014, %entry.for.body_crit_edge ]
  %unit1 = getelementptr inbounds %struct.transaction_queue, ptr %t.016, i32 0, i32 1
  %0 = ptrtoint ptr %unit1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unit1, align 4
  %cmp2 = icmp eq ptr %1, %unit
  br i1 %cmp2, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %state = getelementptr inbounds %struct.transaction_queue, ptr %t.016, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3 = icmp eq i32 %3, 0
  br i1 %cmp3, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %state, align 4
  %wait = getelementptr inbounds %struct.transaction_queue, ptr %t.016, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %5 = ptrtoint ptr %t.016 to i32
  call void @__asan_load4_noabort(i32 %5)
  %t.0 = load ptr, ptr %t.016, align 4
  %cmp.not = icmp eq ptr %t.0, @transaction_queues
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @transaction_queues_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_efw_transaction_register() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fw_core_add_address_handler(ptr noundef nonnull @resp_register_handler, ptr noundef nonnull @snd_efw_transaction_register.resp_register_region) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_core_add_address_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_efw_transaction_unregister() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @transaction_queues, align 4
  %cmp.i.not = icmp eq ptr %0, @transaction_queues
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !35

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 322, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @fw_core_remove_address_handler(ptr noundef nonnull @resp_register_handler) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_core_remove_address_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efw_response(ptr noundef %card, ptr noundef %request, i32 noundef %tcode, i32 noundef %destination, i32 noundef %source, i32 noundef %generation, i64 noundef %offset, ptr nocapture noundef readonly %data, i32 noundef %length, ptr nocapture noundef readnone %callback_data) #0 align 64 {
entry:
  %rcode = alloca i32, align 4
  %dummy = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rcode) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy) #5
  %0 = ptrtoint ptr %rcode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 6, ptr %rcode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %length)
  %cmp = icmp ult i32 %length, 24
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %rcode to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 5, ptr %rcode, align 4
  br label %end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 260311525359616, i64 %offset)
  %cmp1.not = icmp eq i64 %offset, 260311525359616
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %rcode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 7, ptr %rcode, align 4
  br label %end

if.end3:                                          ; preds = %if.else
  %seqnum4 = getelementptr inbounds %struct.snd_efw_transaction, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %seqnum4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %seqnum4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %4)
  %cmp5 = icmp ugt i32 %4, 65535
  br i1 %cmp5, label %if.then6, label %if.else9

if.then6:                                         ; preds = %if.end3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @transaction_queues_lock) #5
  %t.056.i = load ptr, ptr @transaction_queues, align 4
  %cmp6.not57.i = icmp eq ptr %t.056.i, @transaction_queues
  br i1 %cmp6.not57.i, label %if.then6.handle_resp_for_kernel.exit_crit_edge, label %for.body.i.preheader

if.then6.handle_resp_for_kernel.exit_crit_edge:   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %handle_resp_for_kernel.exit

for.body.i.preheader:                             ; preds = %if.then6
  %5 = ptrtoint ptr %rcode to i32
  call void @__asan_load4_noabort(i32 %5)
  %rcode.promoted = load i32, ptr %rcode, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %6 = phi i32 [ %29, %for.inc.i.for.body.i_crit_edge ], [ %rcode.promoted, %for.body.i.preheader ]
  %t.058.i = phi ptr [ %t.0.i, %for.inc.i.for.body.i_crit_edge ], [ %t.056.i, %for.body.i.preheader ]
  %unit.i = getelementptr inbounds %struct.transaction_queue, ptr %t.058.i, i32 0, i32 1
  %7 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %unit.i, align 4
  %parent.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i.i, align 8
  %card9.i = getelementptr i8, ptr %10, i32 -4
  %11 = ptrtoint ptr %card9.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card9.i, align 4
  %cmp10.not.i = icmp eq ptr %12, %card
  br i1 %cmp10.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %generation12.i = getelementptr i8, ptr %10, i32 -12
  %13 = ptrtoint ptr %generation12.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %generation12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %generation)
  %cmp13.not.i = icmp eq i32 %14, %generation
  br i1 %cmp13.not.i, label %do.end18.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

do.end18.i:                                       ; preds = %lor.lhs.false.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !36
  %node_id.i = getelementptr i8, ptr %10, i32 -16
  %15 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %node_id.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %source)
  %cmp21.not.i = icmp eq i32 %16, %source
  br i1 %cmp21.not.i, label %if.end24.i, label %do.end18.i.for.inc.i_crit_edge

do.end18.i.for.inc.i_crit_edge:                   ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end24.i:                                       ; preds = %do.end18.i
  %state.i = getelementptr inbounds %struct.transaction_queue, ptr %t.058.i, i32 0, i32 5
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp25.i = icmp eq i32 %18, 0
  br i1 %cmp25.i, label %land.lhs.true.i, label %if.end24.i.for.inc.i_crit_edge

if.end24.i.for.inc.i_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end24.i
  %seqnum27.i = getelementptr inbounds %struct.transaction_queue, ptr %t.058.i, i32 0, i32 4
  %19 = ptrtoint ptr %seqnum27.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %seqnum27.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %4)
  %cmp28.i = icmp eq i32 %20, %4
  br i1 %cmp28.i, label %if.then30.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then30.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %state.i, align 4
  %size.i = getelementptr inbounds %struct.transaction_queue, ptr %t.058.i, i32 0, i32 3
  %22 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size.i, align 4
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 %length) #5
  %25 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %size.i, align 4
  %buf.i = getelementptr inbounds %struct.transaction_queue, ptr %t.058.i, i32 0, i32 2
  %26 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buf.i, align 4
  %28 = call ptr @memcpy(ptr %27, ptr %data, i32 %24)
  %wait.i = getelementptr inbounds %struct.transaction_queue, ptr %t.058.i, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then30.i, %land.lhs.true.i.for.inc.i_crit_edge, %if.end24.i.for.inc.i_crit_edge, %do.end18.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %29 = phi i32 [ 0, %if.then30.i ], [ %6, %land.lhs.true.i.for.inc.i_crit_edge ], [ %6, %if.end24.i.for.inc.i_crit_edge ], [ %6, %do.end18.i.for.inc.i_crit_edge ], [ %6, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %6, %for.body.i.for.inc.i_crit_edge ]
  %30 = ptrtoint ptr %t.058.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %t.0.i = load ptr, ptr %t.058.i, align 4
  %cmp6.not.i = icmp eq ptr %t.0.i, @transaction_queues
  br i1 %cmp6.not.i, label %handle_resp_for_kernel.exit.loopexit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

handle_resp_for_kernel.exit.loopexit:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %rcode to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %29, ptr %rcode, align 4
  br label %handle_resp_for_kernel.exit

handle_resp_for_kernel.exit:                      ; preds = %handle_resp_for_kernel.exit.loopexit, %if.then6.handle_resp_for_kernel.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @transaction_queues_lock, i32 noundef %call2.i) #5
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @snd_efw_resp_buf_debug to i32))
  %32 = load i8, ptr @snd_efw_resp_buf_debug, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not = icmp eq i8 %32, 0
  br i1 %tobool.not, label %handle_resp_for_kernel.exit.end_crit_edge, label %if.then7

handle_resp_for_kernel.exit.end_crit_edge:        ; preds = %handle_resp_for_kernel.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.then7:                                         ; preds = %handle_resp_for_kernel.exit
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @handle_resp_for_user(ptr noundef %card, i32 noundef %generation, i32 noundef %source, ptr noundef %data, i32 noundef %length, ptr noundef nonnull %dummy)
  br label %end

if.else9:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @handle_resp_for_user(ptr noundef %card, i32 noundef %generation, i32 noundef %source, ptr noundef %data, i32 noundef %length, ptr noundef nonnull %rcode)
  br label %end

end:                                              ; preds = %if.else9, %if.then7, %handle_resp_for_kernel.exit.end_crit_edge, %if.then2, %if.then
  %33 = ptrtoint ptr %rcode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rcode, align 4
  tail call void @fw_send_response(ptr noundef %card, ptr noundef %request, i32 noundef %34) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rcode) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_resp_for_user(ptr noundef readnone %card, i32 noundef %generation, i32 noundef %source, ptr nocapture noundef readonly %data, i32 noundef %length, ptr nocapture noundef writeonly %rcode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @instances_lock) #5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.030 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr @instances, i32 0, i32 %i.030
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %unit = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %card2 = getelementptr i8, ptr %5, i32 -4
  %6 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card2, align 4
  %cmp3.not = icmp eq ptr %7, %card
  br i1 %cmp3.not, label %lor.lhs.false, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end
  %generation4 = getelementptr i8, ptr %5, i32 -12
  %8 = ptrtoint ptr %generation4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %generation4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %generation)
  %cmp5.not = icmp eq i32 %9, %generation
  br i1 %cmp5.not, label %do.end, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end:                                           ; preds = %lor.lhs.false
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !38
  %node_id = getelementptr i8, ptr %5, i32 -16
  %10 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %node_id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %source)
  %cmp11.not = icmp eq i32 %11, %source
  br i1 %cmp11.not, label %if.end16, label %do.end.for.inc_crit_edge

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %do.end.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.end_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end16:                                         ; preds = %do.end
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data, align 4
  %mul.i = shl i32 %13, 2
  %14 = tail call i32 @llvm.umin.i32(i32 %mul.i, i32 %length) #5
  %lock.i = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #5
  %push_ptr.i = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 31
  %15 = ptrtoint ptr %push_ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %push_ptr.i, align 8
  %pull_ptr.i = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 30
  %17 = ptrtoint ptr %pull_ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pull_ptr.i, align 4
  %cmp2.i = icmp ult ptr %16, %18
  br i1 %cmp2.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %sub.ptr.lhs.cast.i = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %if.end.i

if.else.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snd_efw_resp_buf_size to i32))
  %19 = load i32, ptr @snd_efw_resp_buf_size, align 4
  %sub.ptr.lhs.cast7.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast8.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub9.neg.i = sub i32 %sub.ptr.rhs.cast8.i, %sub.ptr.lhs.cast7.i
  %sub.i = add i32 %sub.ptr.sub9.neg.i, %19
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %capacity.0.i = phi i32 [ %sub.ptr.sub.i, %if.then.i ], [ %sub.i, %if.else.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %capacity.0.i, i32 %14)
  %cmp10.i = icmp ult i32 %capacity.0.i, %14
  br i1 %cmp10.i, label %if.end.i.copy_resp_to_buf.exit_crit_edge, label %while.cond.preheader.i

if.end.i.copy_resp_to_buf.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %copy_resp_to_buf.exit

while.cond.preheader.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp13.not70.i = icmp eq i32 %14, 0
  br i1 %cmp13.not70.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %resp_buf.i = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 29
  br label %while.body.i

while.body.i:                                     ; preds = %if.end34.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %data.addr.072.i = phi ptr [ %data, %while.body.lr.ph.i ], [ %add.ptr36.i, %if.end34.i.while.body.i_crit_edge ]
  %length.addr.071.i = phi i32 [ %14, %while.body.lr.ph.i ], [ %sub35.i, %if.end34.i.while.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snd_efw_resp_buf_size to i32))
  %20 = load i32, ptr @snd_efw_resp_buf_size, align 4
  %21 = ptrtoint ptr %push_ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %push_ptr.i, align 8
  %23 = ptrtoint ptr %resp_buf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %resp_buf.i, align 8
  %sub.ptr.lhs.cast15.i = ptrtoint ptr %22 to i32
  %sub.ptr.rhs.cast16.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub17.neg.i = sub i32 %20, %sub.ptr.lhs.cast15.i
  %sub18.i = add i32 %sub.ptr.sub17.neg.i, %sub.ptr.rhs.cast16.i
  %25 = tail call i32 @llvm.umin.i32(i32 %length.addr.071.i, i32 %sub18.i) #5
  %26 = call ptr @memcpy(ptr %22, ptr %data.addr.072.i, i32 %25)
  %27 = ptrtoint ptr %push_ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %push_ptr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %28, i32 %25
  store ptr %add.ptr.i, ptr %push_ptr.i, align 8
  %29 = ptrtoint ptr %resp_buf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %resp_buf.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snd_efw_resp_buf_size to i32))
  %31 = load i32, ptr @snd_efw_resp_buf_size, align 4
  %add.ptr29.i = getelementptr i8, ptr %30, i32 %31
  %cmp30.not.i = icmp ult ptr %add.ptr.i, %add.ptr29.i
  br i1 %cmp30.not.i, label %while.body.i.if.end34.i_crit_edge, label %if.then31.i

while.body.i.if.end34.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34.i

if.then31.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %idx.neg.i = sub i32 0, %31
  %add.ptr33.i = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg.i
  %32 = ptrtoint ptr %push_ptr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr33.i, ptr %push_ptr.i, align 8
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then31.i, %while.body.i.if.end34.i_crit_edge
  %sub35.i = sub i32 %length.addr.071.i, %25
  %add.ptr36.i = getelementptr i8, ptr %data.addr.072.i, i32 %25
  %cmp13.not.i = icmp eq i32 %sub35.i, 0
  br i1 %cmp13.not.i, label %if.end34.i.while.end.i_crit_edge, label %if.end34.i.while.body.i_crit_edge

if.end34.i.while.body.i_crit_edge:                ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end34.i.while.end.i_crit_edge:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %if.end34.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %hwdep_wait.i = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 28
  tail call void @__wake_up(ptr noundef %hwdep_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %copy_resp_to_buf.exit

copy_resp_to_buf.exit:                            ; preds = %while.end.i, %if.end.i.copy_resp_to_buf.exit_crit_edge
  %storemerge.i = phi i32 [ 0, %while.end.i ], [ 4, %if.end.i.copy_resp_to_buf.exit_crit_edge ]
  %33 = ptrtoint ptr %rcode to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %storemerge.i, ptr %rcode, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #5
  br label %end

end:                                              ; preds = %copy_resp_to_buf.exit, %for.inc.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @instances_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_send_response(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !14, !16, !17, !19, !21, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @snd_efw_transaction_run.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../sound/firewire/fireworks/fireworks_transaction.c", i32 83, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../sound/firewire/fireworks/fireworks_transaction.c", i32 95, i32 3}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../sound/firewire/fireworks/fireworks_transaction.c", i32 104, i32 4}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @snd_efw_transaction_run._entry, !6, !"_entry", i1 false, i1 false}
!11 = !{ptr @snd_efw_transaction_run._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @snd_efw_transaction_register.resp_register_region, !13, !"resp_register_region", i1 false, i1 false}
!13 = !{!"../sound/firewire/fireworks/fireworks_transaction.c", i32 311, i32 40}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/firewire/fireworks/fireworks_transaction.c", i32 43, i32 8}
!16 = !{ptr @transaction_queues_lock, !15, !"transaction_queues_lock", i1 false, i1 false}
!17 = !{ptr @transaction_queues, !18, !"transaction_queues", i1 false, i1 false}
!18 = !{!"../sound/firewire/fireworks/fireworks_transaction.c", i32 44, i32 8}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/firewire/fireworks/fireworks_transaction.c", i32 40, i32 8}
!21 = !{ptr @instances_lock, !20, !"instances_lock", i1 false, i1 false}
!22 = !{ptr @instances, !23, !"instances", i1 false, i1 false}
!23 = !{!"../sound/firewire/fireworks/fireworks_transaction.c", i32 41, i32 24}
!24 = !{ptr @resp_register_handler, !25, !"resp_register_handler", i1 false, i1 false}
!25 = !{!"../sound/firewire/fireworks/fireworks_transaction.c", i32 304, i32 34}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 2000, i32 1}
!36 = !{i64 2154548407}
!37 = !{i8 0, i8 2}
!38 = !{i64 2154544619}
