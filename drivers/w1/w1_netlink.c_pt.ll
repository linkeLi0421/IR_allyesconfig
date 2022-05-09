; ModuleID = '/llk/IR_all_yes/drivers/w1/w1_netlink.c_pt.bc'
source_filename = "../drivers/w1/w1_netlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.146 = type { %struct.cn_msg, %struct.w1_netlink_msg }
%struct.cn_msg = type { %struct.cb_id, i32, i32, i16, i16, [0 x i8] }
%struct.cb_id = type { i32, i32 }
%struct.w1_netlink_msg = type { i8, i8, i16, %union.anon.145, [0 x i8] }
%union.anon.145 = type { %struct.w1_mst }
%struct.w1_mst = type { i32, i32 }
%struct.w1_master = type { %struct.list_head, ptr, [32 x i8], %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i64, %struct.atomic_t, ptr, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, ptr, %struct.device, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.anon.147 = type { %struct.cn_msg, %struct.w1_netlink_msg }
%struct.netlink_skb_parms = type { %struct.scm_creds, i32, i32, i32, ptr, i8, i32 }
%struct.scm_creds = type { i32, %struct.kuid_t, %struct.kgid_t }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.w1_netlink_cmd = type { i8, i8, i16, [0 x i8] }
%struct.w1_cb_block = type { %struct.atomic_t, i32, i16, ptr, ptr, ptr, ptr, ptr, %struct.cn_msg }
%struct.w1_cb_node = type { %struct.w1_async_cmd, ptr, ptr, ptr, ptr }
%struct.w1_async_cmd = type { %struct.list_head, ptr }
%struct.w1_slave = type { ptr, [32 x i8], %struct.list_head, %struct.w1_reg_num, %struct.atomic_t, i32, i32, ptr, ptr, ptr, %struct.device, ptr }
%struct.w1_reg_num = type { i64 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"w1\00", [29 x i8] zeroinitializer }, align 32
@w1_cn_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015%s: cn: %x.%x, wrong type: %u, len: %u.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"w1_cn_callback\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/w1/w1_netlink.c\00", [40 x i8] zeroinitializer }, align 32
@w1_cn_callback._entry_ptr = internal global ptr @w1_cn_callback._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@w1_mlock = external dso_local global %struct.mutex, align 4
@w1_masters = external dso_local global %struct.list_head, align 4
@w1_process_command_slave.__UNIQUE_ID_ddebug457 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 0, i8 98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wire\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"w1_process_command_slave\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: %02x.%012llx.%02x: cmd=%02x, len=%u.\0A\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 8]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 5]
@__sancov_gen_cov_switch_values.8 = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 7]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 4]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 717, i32 33 }
@___asan_gen_.14 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 664, i32 4 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [27 x i8] c"../drivers/w1/w1_netlink.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 390, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @w1_cn_callback._entry, ptr @w1_cn_callback._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_cn_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @w1_netlink_send(ptr nocapture noundef %dev, ptr nocapture noundef readonly %msg) local_unnamed_addr #0 align 64 {
entry:
  %packet = alloca %struct.anon.146, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %packet) #8
  %0 = getelementptr inbounds %struct.cb_id, ptr %packet, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cn_msg, ptr %packet, i32 0, i32 1
  %2 = getelementptr inbounds %struct.cn_msg, ptr %packet, i32 0, i32 3
  %3 = getelementptr inbounds %struct.anon.146, ptr %packet, i32 0, i32 1
  %4 = getelementptr inbounds %struct.anon.146, ptr %packet, i32 0, i32 1, i32 2
  %5 = getelementptr inbounds i8, ptr %packet, i32 12
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %5, align 4
  %7 = ptrtoint ptr %packet to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %packet, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %0, align 4
  %seq = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 25
  %9 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %seq, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %seq, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %1, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 12, ptr %2, align 4
  %13 = call ptr @memcpy(ptr %3, ptr %msg, i32 12)
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %4, align 2
  %call = call i32 @cn_netlink_send(ptr noundef nonnull %packet, i32 noundef 0, i32 noundef 0, i32 noundef 3264) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %packet) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cn_netlink_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @w1_init_netlink() local_unnamed_addr #0 align 64 {
entry:
  %w1_id = alloca %struct.cb_id, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %w1_id) #8
  %0 = ptrtoint ptr %w1_id to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 12884901889, ptr %w1_id, align 8
  %call = call i32 @cn_add_callback(ptr noundef nonnull %w1_id, ptr noundef nonnull @.str, ptr noundef nonnull @w1_cn_callback) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %w1_id) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cn_add_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w1_cn_callback(ptr noundef %cn, ptr nocapture noundef readonly %nsp) #0 align 64 {
entry:
  %packet.i275 = alloca %struct.anon.147, align 4
  %packet.i265 = alloca %struct.anon.147, align 4
  %packet.i = alloca %struct.anon.147, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.cn_msg, ptr %cn, i32 1
  %flags = getelementptr inbounds %struct.cn_msg, ptr %cn, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %tobool.not = icmp ult i16 %1, 2
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %portid = getelementptr inbounds %struct.netlink_skb_parms, ptr %nsp, i32 0, i32 1
  %2 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %portid, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %packet.i) #8
  %4 = getelementptr inbounds %struct.cn_msg, ptr %packet.i, i32 0, i32 3
  %5 = getelementptr inbounds %struct.anon.147, ptr %packet.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.anon.147, ptr %packet.i, i32 0, i32 1, i32 1
  %7 = getelementptr inbounds %struct.anon.147, ptr %packet.i, i32 0, i32 1, i32 2
  %8 = call ptr @memcpy(ptr %packet.i, ptr %cn, i32 20)
  %9 = call ptr @memcpy(ptr %5, ptr %add.ptr, i32 12)
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 12, ptr %4, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %7, align 2
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 22, ptr %6, align 1
  %call.i = call i32 @cn_netlink_send(ptr noundef nonnull %packet.i, i32 noundef %3, i32 noundef 0, i32 noundef 3264) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %packet.i) #8
  br label %cleanup164

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.cn_msg, ptr %cn, i32 0, i32 3
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool2.not314 = icmp eq i16 %14, 0
  br i1 %tobool2.not314, label %if.end.if.end70_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.if.end70_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

while.body:                                       ; preds = %if.end18.while.body_crit_edge, %if.end.while.body_crit_edge
  %msg.0319 = phi ptr [ %add.ptr27, %if.end18.while.body_crit_edge ], [ %add.ptr, %if.end.while.body_crit_edge ]
  %node_count.0318 = phi i32 [ %node_count.1, %if.end18.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %msg_len.0317 = phi i16 [ %sub, %if.end18.while.body_crit_edge ], [ %14, %if.end.while.body_crit_edge ]
  %cmd_count.0316 = phi i32 [ %cmd_count.4, %if.end18.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %slave_len.0315 = phi i16 [ %slave_len.2, %if.end18.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %conv1 = zext i16 %msg_len.0317 to i32
  %len4 = getelementptr inbounds %struct.w1_netlink_msg, ptr %msg.0319, i32 0, i32 2
  %15 = ptrtoint ptr %len4 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %len4, align 2
  %conv5 = zext i16 %16 to i32
  %add = add nuw nsw i32 %conv5, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv1)
  %cmp = icmp ugt i32 %add, %conv1
  br i1 %cmp, label %while.body.while.end_crit_edge, label %if.end9

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end9:                                          ; preds = %while.body
  %17 = ptrtoint ptr %msg.0319 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %msg.0319, align 4
  %19 = and i8 %18, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %19)
  %switch = icmp eq i8 %19, 4
  br i1 %switch, label %if.then17, label %if.end9.if.end18_crit_edge

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then17:                                        ; preds = %if.end9
  %inc = add i32 %node_count.0318, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not41.i = icmp eq i16 %16, 0
  br i1 %tobool.not41.i, label %if.then17.if.end18_crit_edge, label %while.body.preheader.i

if.then17.if.end18_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

while.body.preheader.i:                           ; preds = %if.then17
  %data.i = getelementptr inbounds %struct.w1_netlink_msg, ptr %msg.0319, i32 0, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %sw.epilog.i.while.body.i_crit_edge, %while.body.preheader.i
  %cmd_count.1 = phi i32 [ %cmd_count.0316, %while.body.preheader.i ], [ %inc7.i, %sw.epilog.i.while.body.i_crit_edge ]
  %slave_list.044.i = phi i32 [ 0, %while.body.preheader.i ], [ %slave_list.1.i, %sw.epilog.i.while.body.i_crit_edge ]
  %mlen.043.i = phi i16 [ %16, %while.body.preheader.i ], [ %sub.i, %sw.epilog.i.while.body.i_crit_edge ]
  %cmd.042.i = phi ptr [ %data.i, %while.body.preheader.i ], [ %add.ptr.i, %sw.epilog.i.while.body.i_crit_edge ]
  %len2.i = getelementptr inbounds %struct.w1_netlink_cmd, ptr %cmd.042.i, i32 0, i32 2
  %20 = ptrtoint ptr %len2.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %len2.i, align 2
  %conv.i = zext i16 %21 to i32
  %add.i = add nuw nsw i32 %conv.i, 4
  %conv3.i = zext i16 %mlen.043.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv3.i)
  %cmp.i = icmp ugt i32 %add.i, %conv3.i
  br i1 %cmp.i, label %while.body.i.while.end.i_crit_edge, label %if.end.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end.i:                                         ; preds = %while.body.i
  %22 = ptrtoint ptr %cmd.042.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cmd.042.i, align 2
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i8 %23, label %if.end.i.sw.epilog.i_crit_edge [
    i8 2, label %if.end.i.sw.bb.i_crit_edge
    i8 3, label %if.end.i.sw.bb.i_crit_edge342
    i8 8, label %if.end.i.sw.bb.i_crit_edge343
  ]

if.end.i.sw.bb.i_crit_edge343:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge342:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge342, %if.end.i.sw.bb.i_crit_edge343
  %inc.i = add i32 %slave_list.044.i, 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %if.end.i.sw.epilog.i_crit_edge
  %slave_list.1.i = phi i32 [ %slave_list.044.i, %if.end.i.sw.epilog.i_crit_edge ], [ %inc.i, %sw.bb.i ]
  %inc7.i = add i32 %cmd_count.1, 1
  %add10.i = add i16 %21, 4
  %conv12.i = zext i16 %add10.i to i32
  %add.ptr.i = getelementptr i8, ptr %cmd.042.i, i32 %conv12.i
  %sub.i = sub i16 %mlen.043.i, %add10.i
  %tobool.not.i = icmp eq i16 %sub.i, 0
  br i1 %tobool.not.i, label %sw.epilog.i.while.end.i_crit_edge, label %sw.epilog.i.while.body.i_crit_edge

sw.epilog.i.while.body.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

sw.epilog.i.while.end.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %sw.epilog.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  %cmd_count.2 = phi i32 [ %cmd_count.1, %while.body.i.while.end.i_crit_edge ], [ %inc7.i, %sw.epilog.i.while.end.i_crit_edge ]
  %slave_list.0.lcssa.i = phi i32 [ %slave_list.044.i, %while.body.i.while.end.i_crit_edge ], [ %slave_list.1.i, %sw.epilog.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slave_list.0.lcssa.i)
  %tobool16.not.i = icmp eq i32 %slave_list.0.lcssa.i, 0
  br i1 %tobool16.not.i, label %while.end.i.if.end18_crit_edge, label %if.then17.i

while.end.i.if.end18_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then17.i:                                      ; preds = %while.end.i
  %id.i = getelementptr inbounds %struct.w1_netlink_msg, ptr %msg.0319, i32 0, i32 3
  %25 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id.i, align 4
  %call.i264 = tail call ptr @w1_search_master_id(i32 noundef %26) #8
  %tobool19.not.i = icmp eq ptr %call.i264, null
  br i1 %tobool19.not.i, label %if.then17.i.if.end18_crit_edge, label %if.then20.i

if.then17.i.if.end18_crit_edge:                   ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then20.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = shl i32 %slave_list.0.lcssa.i, 3
  %slave_count.i = getelementptr inbounds %struct.w1_master, ptr %call.i264, i32 0, i32 7
  %27 = ptrtoint ptr %slave_count.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %slave_count.i, align 4
  %max_slave_count.i = getelementptr inbounds %struct.w1_master, ptr %call.i264, i32 0, i32 6
  %29 = ptrtoint ptr %max_slave_count.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_slave_count.i, align 8
  %add21.i = add i32 %30, %28
  %mul22.i = mul i32 %mul.i, %add21.i
  %31 = trunc i32 %mul22.i to i16
  %conv25.i = add i16 %slave_len.0315, %31
  %refcnt.i = getelementptr inbounds %struct.w1_master, ptr %call.i264, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #8
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #8, !srcloc !22
  br label %if.end18

if.end18:                                         ; preds = %if.then20.i, %if.then17.i.if.end18_crit_edge, %while.end.i.if.end18_crit_edge, %if.then17.if.end18_crit_edge, %if.end9.if.end18_crit_edge
  %slave_len.2 = phi i16 [ %slave_len.0315, %if.end9.if.end18_crit_edge ], [ %slave_len.0315, %if.then17.if.end18_crit_edge ], [ %slave_len.0315, %while.end.i.if.end18_crit_edge ], [ %slave_len.0315, %if.then17.i.if.end18_crit_edge ], [ %conv25.i, %if.then20.i ]
  %cmd_count.4 = phi i32 [ %cmd_count.0316, %if.end9.if.end18_crit_edge ], [ %cmd_count.0316, %if.then17.if.end18_crit_edge ], [ %cmd_count.2, %while.end.i.if.end18_crit_edge ], [ %cmd_count.2, %if.then17.i.if.end18_crit_edge ], [ %cmd_count.2, %if.then20.i ]
  %node_count.1 = phi i32 [ %node_count.0318, %if.end9.if.end18_crit_edge ], [ %inc, %if.then17.if.end18_crit_edge ], [ %inc, %while.end.i.if.end18_crit_edge ], [ %inc, %if.then17.i.if.end18_crit_edge ], [ %inc, %if.then20.i ]
  %33 = ptrtoint ptr %len4 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %len4, align 2
  %conv20 = zext i16 %34 to i32
  %add21.neg = add i16 %msg_len.0317, -12
  %sub = sub i16 %add21.neg, %34
  %add.ptr24 = getelementptr i8, ptr %msg.0319, i32 12
  %add.ptr27 = getelementptr i8, ptr %add.ptr24, i32 %conv20
  %tobool2.not = icmp eq i16 %sub, 0
  br i1 %tobool2.not, label %if.end18.while.end_crit_edge, label %if.end18.while.body_crit_edge

if.end18.while.body_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end18.while.end_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end18.while.end_crit_edge, %while.body.while.end_crit_edge
  %slave_len.0.lcssa.ph = phi i16 [ %slave_len.2, %if.end18.while.end_crit_edge ], [ %slave_len.0315, %while.body.while.end_crit_edge ]
  %cmd_count.0.lcssa.ph = phi i32 [ %cmd_count.4, %if.end18.while.end_crit_edge ], [ %cmd_count.0316, %while.body.while.end_crit_edge ]
  %node_count.0.lcssa.ph = phi i32 [ %node_count.1, %if.end18.while.end_crit_edge ], [ %node_count.0318, %while.body.while.end_crit_edge ]
  %35 = xor i1 %cmp, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %node_count.0.lcssa.ph)
  %tobool29.not = icmp eq i32 %node_count.0.lcssa.ph, 0
  br i1 %tobool29.not, label %while.end.if.end70_crit_edge, label %if.then30

while.end.if.end70_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then30:                                        ; preds = %while.end
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %len, align 4
  %conv32 = zext i16 %37 to i32
  %add33 = add nuw nsw i32 %conv32, 20
  %conv34 = zext i16 %slave_len.0.lcssa.ph to i32
  %add35 = add nuw nsw i32 %add33, %conv34
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %flags, align 2
  %40 = and i16 %39, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool39.not = icmp eq i16 %40, 0
  %mul41 = mul i32 %cmd_count.0.lcssa.ph, 72
  %add42 = select i1 %tobool39.not, i32 0, i32 %mul41
  %reply_size.0 = add i32 %add35, %add42
  %41 = tail call i32 @llvm.smin.i32(i32 %reply_size.0, i32 16384)
  %mul49 = mul i32 %node_count.0.lcssa.ph, 28
  %add50 = add i32 %mul49, 92
  %add51 = add i32 %add50, %conv32
  %add52 = add i32 %add51, %41
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add52, i32 noundef 3520) #11
  %tobool53.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool53.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %portid55 = getelementptr inbounds %struct.netlink_skb_parms, ptr %nsp, i32 0, i32 1
  %42 = ptrtoint ptr %portid55 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %portid55, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %packet.i265) #8
  %44 = getelementptr inbounds %struct.cn_msg, ptr %packet.i265, i32 0, i32 3
  %45 = getelementptr inbounds %struct.anon.147, ptr %packet.i265, i32 0, i32 1
  %46 = getelementptr inbounds %struct.anon.147, ptr %packet.i265, i32 0, i32 1, i32 1
  %47 = getelementptr inbounds %struct.anon.147, ptr %packet.i265, i32 0, i32 1, i32 2
  %48 = call ptr @memcpy(ptr %packet.i265, ptr %cn, i32 20)
  %49 = call ptr @memcpy(ptr %45, ptr %add.ptr, i32 12)
  %50 = ptrtoint ptr %44 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 12, ptr %44, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %47, align 2
  %52 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 12, ptr %46, align 1
  %call.i266 = call i32 @cn_netlink_send(ptr noundef nonnull %packet.i265, i32 noundef %43, i32 noundef 0, i32 noundef 3264) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %packet.i265) #8
  br label %cleanup164

cleanup:                                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i, i32 noundef 4) #8
  %53 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 1, ptr %call9.i.i, align 128
  %portid57 = getelementptr inbounds %struct.netlink_skb_parms, ptr %nsp, i32 0, i32 1
  %54 = ptrtoint ptr %portid57 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %portid57, align 4
  %portid58 = getelementptr inbounds %struct.w1_cb_block, ptr %call9.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %portid58 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %portid58, align 4
  %request_cn = getelementptr inbounds %struct.w1_cb_block, ptr %call9.i.i, i32 0, i32 8
  %57 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %len, align 4
  %conv60 = zext i16 %58 to i32
  %add61 = add nuw nsw i32 %conv60, 20
  %59 = call ptr @memcpy(ptr %request_cn, ptr %cn, i32 %add61)
  %data = getelementptr inbounds %struct.w1_cb_block, ptr %call9.i.i, i32 1
  %add.ptr65 = getelementptr i8, ptr %data, i32 %conv60
  %conv66 = trunc i32 %41 to i16
  %maxlen = getelementptr inbounds %struct.w1_cb_block, ptr %call9.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %maxlen to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv66, ptr %maxlen, align 8
  %add.ptr67 = getelementptr %struct.w1_cb_node, ptr %add.ptr65, i32 %node_count.0.lcssa.ph
  %first_cn = getelementptr inbounds %struct.w1_cb_block, ptr %call9.i.i, i32 0, i32 3
  %61 = ptrtoint ptr %first_cn to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr67, ptr %first_cn, align 4
  %62 = call ptr @memset(ptr %add.ptr67, i32 0, i32 20)
  br label %if.end70

if.end70:                                         ; preds = %cleanup, %while.end.if.end70_crit_edge, %if.end.if.end70_crit_edge
  %tobool76.not329341 = phi i1 [ %35, %cleanup ], [ %35, %while.end.if.end70_crit_edge ], [ true, %if.end.if.end70_crit_edge ]
  %block.0 = phi ptr [ %call9.i.i, %cleanup ], [ null, %while.end.if.end70_crit_edge ], [ null, %if.end.if.end70_crit_edge ]
  %node.1 = phi ptr [ %add.ptr65, %cleanup ], [ null, %while.end.if.end70_crit_edge ], [ null, %if.end.if.end70_crit_edge ]
  %63 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool74.not328 = icmp ne i16 %64, 0
  %or.cond330 = and i1 %tobool74.not328, %tobool76.not329341
  br i1 %or.cond330, label %while.body79.lr.ph, label %if.end70.while.end160_crit_edge

if.end70.while.end160_crit_edge:                  ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end160

while.body79.lr.ph:                               ; preds = %if.end70
  %request_cn134 = getelementptr inbounds %struct.w1_cb_block, ptr %block.0, i32 0, i32 8
  %sub.ptr.rhs.cast = ptrtoint ptr %cn to i32
  %val = getelementptr inbounds %struct.cb_id, ptr %cn, i32 0, i32 1
  %portid93 = getelementptr inbounds %struct.netlink_skb_parms, ptr %nsp, i32 0, i32 1
  %seq.i = getelementptr inbounds %struct.cn_msg, ptr %cn, i32 0, i32 1
  %65 = getelementptr inbounds %struct.cn_msg, ptr %packet.i275, i32 0, i32 3
  %66 = getelementptr inbounds %struct.anon.147, ptr %packet.i275, i32 0, i32 1
  %67 = getelementptr inbounds %struct.anon.147, ptr %packet.i275, i32 0, i32 1, i32 1
  %68 = getelementptr inbounds %struct.anon.147, ptr %packet.i275, i32 0, i32 1, i32 2
  br label %while.body79

while.body79:                                     ; preds = %while.cond72.while.body79_crit_edge, %while.body79.lr.ph
  %msg.1334 = phi ptr [ %add.ptr, %while.body79.lr.ph ], [ %add.ptr155, %while.cond72.while.body79_crit_edge ]
  %node.2332 = phi ptr [ %node.1, %while.body79.lr.ph ], [ %node.3302311, %while.cond72.while.body79_crit_edge ]
  %msg_len.1331 = phi i16 [ %64, %while.body79.lr.ph ], [ %sub150312, %while.cond72.while.body79_crit_edge ]
  %conv73 = zext i16 %msg_len.1331 to i32
  %len80 = getelementptr inbounds %struct.w1_netlink_msg, ptr %msg.1334, i32 0, i32 2
  %69 = ptrtoint ptr %len80 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %len80, align 2
  %conv81 = zext i16 %70 to i32
  %add82 = add nuw nsw i32 %conv81, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add82, i32 %conv73)
  %cmp84 = icmp ugt i32 %add82, %conv73
  br i1 %cmp84, label %while.body79.while.end160_crit_edge, label %if.end87

while.body79.while.end160_crit_edge:              ; preds = %while.body79
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end160

if.end87:                                         ; preds = %while.body79
  %71 = ptrtoint ptr %msg.1334 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %msg.1334, align 4
  %conv89 = zext i8 %72 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %72)
  %cmp90 = icmp eq i8 %72, 6
  br i1 %cmp90, label %if.then92, label %if.end95

if.then92:                                        ; preds = %if.end87
  %73 = ptrtoint ptr %portid93 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %portid93, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %75 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i267 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %75, i32 noundef 3264, i32 noundef 4096) #12
  %tobool.not.i268 = icmp eq ptr %call7.i.i267, null
  br i1 %tobool.not.i268, label %if.then92.if.end145_crit_edge, label %if.end.i272

if.then92.if.end145_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

if.end.i272:                                      ; preds = %if.then92
  %76 = ptrtoint ptr %call7.i.i267 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 3, ptr %call7.i.i267, align 8
  %val.i = getelementptr inbounds %struct.cb_id, ptr %call7.i.i267, i32 0, i32 1
  %77 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %val.i, align 4
  %78 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %seq.i, align 4
  %seq3.i = getelementptr inbounds %struct.cn_msg, ptr %call7.i.i267, i32 0, i32 1
  %80 = ptrtoint ptr %seq3.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %seq3.i, align 8
  %add.i269 = add i32 %79, 1
  %ack.i = getelementptr inbounds %struct.cn_msg, ptr %call7.i.i267, i32 0, i32 2
  %81 = ptrtoint ptr %ack.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add.i269, ptr %ack.i, align 4
  %len.i270 = getelementptr inbounds %struct.cn_msg, ptr %call7.i.i267, i32 0, i32 3
  %82 = ptrtoint ptr %len.i270 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 12, ptr %len.i270, align 8
  %data.i271 = getelementptr inbounds %struct.cn_msg, ptr %call7.i.i267, i32 0, i32 5
  %83 = ptrtoint ptr %data.i271 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 6, ptr %data.i271, align 4
  %status.i = getelementptr inbounds %struct.w1_netlink_msg, ptr %data.i271, i32 0, i32 1
  %84 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %status.i, align 1
  %len5.i = getelementptr inbounds %struct.w1_netlink_msg, ptr %data.i271, i32 0, i32 2
  %85 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 0, ptr %len5.i, align 2
  %data6.i = getelementptr inbounds %struct.cn_msg, ptr %call7.i.i267, i32 1, i32 2
  call void @mutex_lock_nested(ptr noundef nonnull @w1_mlock, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @w1_masters to i32))
  %dev.059.i = load ptr, ptr @w1_masters, align 4
  %cmp.not60.i = icmp eq ptr %dev.059.i, @w1_masters
  br i1 %cmp.not60.i, label %if.end.i272.for.end.i_crit_edge, label %for.body.preheader.i

if.end.i272.for.end.i_crit_edge:                  ; preds = %if.end.i272
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end.i272
  %86 = ptrtoint ptr %len.i270 to i32
  call void @__asan_load2_noabort(i32 %86)
  %.pr.i = load i16, ptr %len.i270, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end18.i.for.body.i_crit_edge, %for.body.preheader.i
  %87 = phi i16 [ %.pr.i, %for.body.preheader.i ], [ %add26.i, %if.end18.i.for.body.i_crit_edge ]
  %dev.062.i = phi ptr [ %dev.059.i, %for.body.preheader.i ], [ %dev.0.i, %if.end18.i.for.body.i_crit_edge ]
  %id.061.i = phi ptr [ %data6.i, %for.body.preheader.i ], [ %incdec.ptr.i, %if.end18.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 4072, i16 %87)
  %cmp10.i = icmp ugt i16 %87, 4072
  br i1 %cmp10.i, label %if.then12.i, label %for.body.i.if.end18.i_crit_edge

for.body.i.if.end18.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.then12.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i = call i32 @cn_netlink_send(ptr noundef nonnull %call7.i.i267, i32 noundef %74, i32 noundef 0, i32 noundef 3264) #8
  %88 = ptrtoint ptr %len.i270 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 12, ptr %len.i270, align 8
  %89 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 0, ptr %len5.i, align 2
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then12.i, %for.body.i.if.end18.i_crit_edge
  %id.1.i = phi ptr [ %data6.i, %if.then12.i ], [ %id.061.i, %for.body.i.if.end18.i_crit_edge ]
  %id19.i = getelementptr inbounds %struct.w1_master, ptr %dev.062.i, i32 0, i32 11
  %90 = ptrtoint ptr %id19.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %id19.i, align 4
  %92 = ptrtoint ptr %id.1.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %id.1.i, align 4
  %93 = ptrtoint ptr %len5.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %len5.i, align 2
  %add22.i = add i16 %94, 4
  store i16 %add22.i, ptr %len5.i, align 2
  %95 = ptrtoint ptr %len.i270 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %len.i270, align 8
  %add26.i = add i16 %96, 4
  store i16 %add26.i, ptr %len.i270, align 8
  %incdec.ptr.i = getelementptr i32, ptr %id.1.i, i32 1
  %97 = ptrtoint ptr %dev.062.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %dev.0.i = load ptr, ptr %dev.062.i, align 4
  %cmp.not.i = icmp eq ptr %dev.0.i, @w1_masters
  br i1 %cmp.not.i, label %if.end18.i.for.end.i_crit_edge, label %if.end18.i.for.body.i_crit_edge

if.end18.i.for.body.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end18.i.for.end.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %if.end18.i.for.end.i_crit_edge, %if.end.i272.for.end.i_crit_edge
  %call32.i = call i32 @cn_netlink_send(ptr noundef nonnull %call7.i.i267, i32 noundef %74, i32 noundef 0, i32 noundef 3264) #8
  call void @mutex_unlock(ptr noundef nonnull @w1_mlock) #8
  call void @kfree(ptr noundef nonnull %call7.i.i267) #8
  br label %while.cond72

if.end95:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool97.not = icmp eq i16 %70, 0
  br i1 %tobool97.not, label %if.end95.if.end145_crit_edge, label %if.end99

if.end95.if.end145_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

if.end99:                                         ; preds = %if.end95
  %98 = zext i8 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %72, label %do.end [
    i8 4, label %if.then104
    i8 5, label %if.then111
  ]

if.then104:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  %id = getelementptr inbounds %struct.w1_netlink_msg, ptr %msg.1334, i32 0, i32 3
  %99 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %id, align 4
  %call106 = call ptr @w1_search_master_id(i32 noundef %100) #8
  br label %if.end128

if.then111:                                       ; preds = %if.end99
  %id112 = getelementptr inbounds %struct.w1_netlink_msg, ptr %msg.1334, i32 0, i32 3
  %call114 = call ptr @w1_search_slave(ptr noundef %id112) #8
  %tobool115.not = icmp eq ptr %call114, null
  br i1 %tobool115.not, label %if.then111.if.end145_crit_edge, label %if.then116

if.then111.if.end145_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

if.then116:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  %master = getelementptr inbounds %struct.w1_slave, ptr %call114, i32 0, i32 7
  %101 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %master, align 4
  br label %if.end128

do.end:                                           ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %cn to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cn, align 4
  %105 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %val, align 4
  %call126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %104, i32 noundef %106, i32 noundef %conv89, i32 noundef %conv81) #13
  br label %if.end145

if.end128:                                        ; preds = %if.then116, %if.then104
  %dev.0 = phi ptr [ %call106, %if.then104 ], [ %102, %if.then116 ]
  %sl.0 = phi ptr [ null, %if.then104 ], [ %call114, %if.then116 ]
  %tobool129.not = icmp eq ptr %dev.0, null
  br i1 %tobool129.not, label %if.end128.if.end145_crit_edge, label %if.end131

if.end128.if.end145_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

if.end131:                                        ; preds = %if.end128
  %call.i.i263 = call zeroext i1 @__kasan_check_write(ptr noundef %block.0, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %block.0, i32 1, i32 3, i32 1) #8
  %107 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %block.0, ptr %block.0, i32 1, ptr elementtype(i32) %block.0) #8, !srcloc !23
  %cb = getelementptr inbounds %struct.w1_async_cmd, ptr %node.2332, i32 0, i32 1
  %108 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @w1_process_cb, ptr %cb, align 4
  %block133 = getelementptr inbounds %struct.w1_cb_node, ptr %node.2332, i32 0, i32 1
  %109 = ptrtoint ptr %block133 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %block.0, ptr %block133, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %msg.1334 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr135 = getelementptr i8, ptr %request_cn134, i32 %sub.ptr.sub
  %msg136 = getelementptr inbounds %struct.w1_cb_node, ptr %node.2332, i32 0, i32 2
  %110 = ptrtoint ptr %msg136 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %add.ptr135, ptr %msg136, align 4
  %sl137 = getelementptr inbounds %struct.w1_cb_node, ptr %node.2332, i32 0, i32 3
  %111 = ptrtoint ptr %sl137 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %sl.0, ptr %sl137, align 4
  %dev138 = getelementptr inbounds %struct.w1_cb_node, ptr %node.2332, i32 0, i32 4
  %112 = ptrtoint ptr %dev138 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %dev.0, ptr %dev138, align 4
  %list_mutex = getelementptr inbounds %struct.w1_master, ptr %dev.0, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %list_mutex, i32 noundef 0) #8
  %async_list = getelementptr inbounds %struct.w1_master, ptr %dev.0, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.w1_master, ptr %dev.0, i32 0, i32 5, i32 1
  %113 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %prev.i, align 4
  %call.i.i273 = call zeroext i1 @__list_add_valid(ptr noundef %node.2332, ptr noundef %114, ptr noundef %async_list) #8
  br i1 %call.i.i273, label %if.end.i.i274, label %if.end131.list_add_tail.exit_crit_edge

if.end131.list_add_tail.exit_crit_edge:           ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i274:                                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  %115 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %node.2332, ptr %prev.i, align 4
  %116 = ptrtoint ptr %node.2332 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %async_list, ptr %node.2332, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %node.2332, i32 0, i32 1
  %117 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %114, ptr %prev3.i.i, align 4
  %118 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %node.2332, ptr %114, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i274, %if.end131.list_add_tail.exit_crit_edge
  %thread = getelementptr inbounds %struct.w1_master, ptr %dev.0, i32 0, i32 19
  %119 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %thread, align 4
  %call140 = call i32 @wake_up_process(ptr noundef %120) #8
  call void @mutex_unlock(ptr noundef %list_mutex) #8
  %incdec.ptr = getelementptr %struct.w1_cb_node, ptr %node.2332, i32 1
  br label %while.cond72

if.end145:                                        ; preds = %if.end128.if.end145_crit_edge, %do.end, %if.then111.if.end145_crit_edge, %if.end95.if.end145_crit_edge, %if.then92.if.end145_crit_edge
  %cmp156 = phi i32 [ 0, %if.then111.if.end145_crit_edge ], [ -12, %if.then92.if.end145_crit_edge ], [ 0, %if.end128.if.end145_crit_edge ], [ -71, %if.end95.if.end145_crit_edge ], [ -71, %do.end ]
  %err.2.ph.neg = phi i8 [ 19, %if.then111.if.end145_crit_edge ], [ 12, %if.then92.if.end145_crit_edge ], [ 19, %if.end128.if.end145_crit_edge ], [ 71, %if.end95.if.end145_crit_edge ], [ 71, %do.end ]
  %121 = ptrtoint ptr %portid93 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %portid93, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %packet.i275) #8
  %123 = call ptr @memcpy(ptr %packet.i275, ptr %cn, i32 20)
  %124 = call ptr @memcpy(ptr %66, ptr %msg.1334, i32 12)
  %125 = ptrtoint ptr %65 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 12, ptr %65, align 4
  %126 = ptrtoint ptr %68 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 0, ptr %68, align 2
  %127 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %err.2.ph.neg, ptr %67, align 1
  %call.i277 = call i32 @cn_netlink_send(ptr noundef nonnull %packet.i275, i32 noundef %122, i32 noundef 0, i32 noundef 3264) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %packet.i275) #8
  br label %while.cond72

while.cond72:                                     ; preds = %if.end145, %list_add_tail.exit, %for.end.i
  %node.3302311 = phi ptr [ %node.2332, %if.end145 ], [ %node.2332, %for.end.i ], [ %incdec.ptr, %list_add_tail.exit ]
  %128 = phi i32 [ %cmp156, %if.end145 ], [ 0, %for.end.i ], [ 0, %list_add_tail.exit ]
  %129 = ptrtoint ptr %len80 to i32
  call void @__asan_load2_noabort(i32 %129)
  %.sink = load i16, ptr %len80, align 2
  %conv147 = zext i16 %.sink to i32
  %add.ptr152 = getelementptr i8, ptr %msg.1334, i32 12
  %add.ptr155 = getelementptr i8, ptr %add.ptr152, i32 %conv147
  %add148306.pn.neg = add i16 %msg_len.1331, -12
  %sub150312 = sub i16 %add148306.pn.neg, %.sink
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub150312)
  %tobool74.not = icmp ne i16 %sub150312, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool76.not = icmp eq i32 %128, 0
  %or.cond = and i1 %tobool74.not, %tobool76.not
  br i1 %or.cond, label %while.cond72.while.body79_crit_edge, label %while.cond72.while.end160_crit_edge

while.cond72.while.end160_crit_edge:              ; preds = %while.cond72
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end160

while.cond72.while.body79_crit_edge:              ; preds = %while.cond72
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body79

while.end160:                                     ; preds = %while.cond72.while.end160_crit_edge, %while.body79.while.end160_crit_edge, %if.end70.while.end160_crit_edge
  %tobool161.not = icmp eq ptr %block.0, null
  br i1 %tobool161.not, label %while.end160.cleanup164_crit_edge, label %if.then162

while.end160.cleanup164_crit_edge:                ; preds = %while.end160
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup164

if.then162:                                       ; preds = %while.end160
  %call.i.i.i278 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %block.0, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !24
  call void @llvm.prefetch.p0(ptr nonnull %block.0, i32 1, i32 3, i32 1) #8
  %130 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %block.0, ptr nonnull %block.0, i32 1, ptr nonnull elementtype(i32) %block.0) #8, !srcloc !25
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %130, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i279 = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i279, label %if.then.i, label %if.then162.cleanup164_crit_edge

if.then162.cleanup164_crit_edge:                  ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup164

if.then.i:                                        ; preds = %if.then162
  %cn.i.i = getelementptr inbounds %struct.w1_cb_block, ptr %block.0, i32 0, i32 4
  %131 = ptrtoint ptr %cn.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cn.i.i, align 16
  %tobool.not.i.i = icmp eq ptr %132, null
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i281_crit_edge, label %w1_reply_len.exit.i

if.then.i.if.end.i281_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i281

w1_reply_len.exit.i:                              ; preds = %if.then.i
  %first_cn.i.i = getelementptr inbounds %struct.w1_cb_block, ptr %block.0, i32 0, i32 3
  %133 = ptrtoint ptr %first_cn.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %first_cn.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %132 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %134 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %len.i.i = getelementptr inbounds %struct.cn_msg, ptr %132, i32 0, i32 3
  %135 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %len.i.i, align 4
  %137 = trunc i32 %sub.ptr.sub.i.i to i16
  %conv3.i.i = add i16 %136, %137
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv3.i.i)
  %tobool.not.i280 = icmp eq i16 %conv3.i.i, 0
  br i1 %tobool.not.i280, label %w1_reply_len.exit.i.if.end.i281_crit_edge, label %if.then2.i

w1_reply_len.exit.i.if.end.i281_crit_edge:        ; preds = %w1_reply_len.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i281

if.then2.i:                                       ; preds = %w1_reply_len.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %portid.i = getelementptr inbounds %struct.w1_cb_block, ptr %block.0, i32 0, i32 1
  %138 = ptrtoint ptr %portid.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %portid.i, align 4
  %call3.i = call i32 @cn_netlink_send_mult(ptr noundef %134, i16 noundef zeroext %conv3.i.i, i32 noundef %139, i32 noundef 0, i32 noundef 3264) #8
  br label %if.end.i281

if.end.i281:                                      ; preds = %if.then2.i, %w1_reply_len.exit.i.if.end.i281_crit_edge, %if.then.i.if.end.i281_crit_edge
  call void @kfree(ptr noundef nonnull %block.0) #8
  br label %cleanup164

cleanup164:                                       ; preds = %if.end.i281, %if.then162.cleanup164_crit_edge, %while.end160.cleanup164_crit_edge, %cleanup.thread, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @w1_fini_netlink() local_unnamed_addr #0 align 64 {
entry:
  %w1_id = alloca %struct.cb_id, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %w1_id) #8
  %0 = ptrtoint ptr %w1_id to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 12884901889, ptr %w1_id, align 8
  call void @cn_del_callback(ptr noundef nonnull %w1_id) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %w1_id) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cn_del_callback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @w1_search_master_id(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @w1_search_slave(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w1_process_cb(ptr noundef %dev, ptr noundef %async_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msg = getelementptr inbounds %struct.w1_cb_node, ptr %async_cmd, i32 0, i32 2
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 4
  %len = getelementptr inbounds %struct.w1_netlink_msg, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %len, align 2
  %sl2 = getelementptr inbounds %struct.w1_cb_node, ptr %async_cmd, i32 0, i32 3
  %4 = ptrtoint ptr %sl2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sl2, align 4
  %data = getelementptr inbounds %struct.w1_netlink_msg, ptr %1, i32 0, i32 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #8
  %block = getelementptr inbounds %struct.w1_cb_node, ptr %async_cmd, i32 0, i32 1
  %6 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %block, align 4
  %priv = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 15
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %priv, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @w1_reset_select_slave(ptr noundef nonnull %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool4.not, i32 0, i32 -19
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %err.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %msg, align 4
  %11 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %block, align 4
  %cur_msg = getelementptr inbounds %struct.w1_cb_block, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %cur_msg to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %cur_msg, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool7.not101 = icmp ne i16 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool8.not102 = icmp eq i32 %err.0, 0
  %or.cond103 = select i1 %tobool7.not101, i1 %tobool8.not102, i1 false
  br i1 %or.cond103, label %while.body.lr.ph, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %master.i = getelementptr inbounds %struct.w1_slave, ptr %5, i32 0, i32 7
  %reg_num.i = getelementptr inbounds %struct.w1_slave, ptr %5, i32 0, i32 3
  %mutex.i = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 20
  %list_mutex.i.i = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 3
  %slist.i.i = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %w1_netlink_check_send.exit.while.body_crit_edge, %while.body.lr.ph
  %cmd.0105 = phi ptr [ %data, %while.body.lr.ph ], [ %add.ptr28, %w1_netlink_check_send.exit.while.body_crit_edge ]
  %mlen.0104 = phi i16 [ %3, %while.body.lr.ph ], [ %sub, %w1_netlink_check_send.exit.while.body_crit_edge ]
  %conv = zext i16 %mlen.0104 to i32
  %len9 = getelementptr inbounds %struct.w1_netlink_cmd, ptr %cmd.0105, i32 0, i32 2
  %14 = ptrtoint ptr %len9 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %len9, align 2
  %conv10 = zext i16 %15 to i32
  %add = add nuw nsw i32 %conv10, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp = icmp ugt i32 %add, %conv
  br i1 %cmp, label %while.body.if.then34_crit_edge, label %if.end14

while.body.if.then34_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

if.end14:                                         ; preds = %while.body
  br i1 %tobool.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w1_process_command_slave.__UNIQUE_ID_ddebug457, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w1_process_cb, %if.then.i)) #8
          to label %w1_process_command_slave.exit [label %if.then.i], !srcloc !27

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %master.i, align 4
  %dev.i = getelementptr inbounds %struct.w1_master, ptr %17, i32 0, i32 23
  %18 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %bf.load.i = load i64, ptr %reg_num.i, align 8
  %19 = trunc i64 %bf.load.i to i32
  %conv.i = and i32 %19, 255
  %bf.lshr.i = lshr i64 %bf.load.i, 8
  %bf.clear5.i = and i64 %bf.lshr.i, 281474976710655
  %bf.lshr8.i = lshr i64 %bf.load.i, 56
  %conv9.i = trunc i64 %bf.lshr8.i to i32
  %20 = ptrtoint ptr %cmd.0105 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cmd.0105, align 2
  %conv11.i = zext i8 %21 to i32
  %22 = ptrtoint ptr %len9 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %len9, align 2
  %conv12.i = zext i16 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w1_process_command_slave.__UNIQUE_ID_ddebug457, ptr noundef %dev.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef %conv.i, i64 noundef %bf.clear5.i, i32 noundef %conv9.i, i32 noundef %conv11.i, i32 noundef %conv12.i) #8
  br label %w1_process_command_slave.exit

w1_process_command_slave.exit:                    ; preds = %if.then.i, %if.then16
  %24 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %master.i, align 4
  %call14.i = tail call fastcc i32 @w1_process_command_io(ptr noundef %25, ptr noundef %cmd.0105) #8
  br label %if.end19

if.else:                                          ; preds = %if.end14
  %26 = ptrtoint ptr %cmd.0105 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %cmd.0105, align 2
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %27, label %if.else.if.end19_crit_edge [
    i8 2, label %if.else.sw.bb.i_crit_edge
    i8 3, label %if.else.sw.bb.i_crit_edge114
    i8 8, label %if.else.sw.bb.i_crit_edge115
    i8 0, label %if.else.sw.bb2.i_crit_edge
    i8 1, label %if.else.sw.bb2.i_crit_edge116
    i8 4, label %if.else.sw.bb2.i_crit_edge117
    i8 5, label %sw.bb4.i
    i8 6, label %if.else.sw.bb6.i_crit_edge
    i8 7, label %if.else.sw.bb6.i_crit_edge118
  ]

if.else.sw.bb6.i_crit_edge118:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6.i

if.else.sw.bb6.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6.i

if.else.sw.bb2.i_crit_edge117:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i

if.else.sw.bb2.i_crit_edge116:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i

if.else.sw.bb2.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i

if.else.sw.bb.i_crit_edge115:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.else.sw.bb.i_crit_edge114:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.else.sw.bb.i_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

sw.bb.i:                                          ; preds = %if.else.sw.bb.i_crit_edge, %if.else.sw.bb.i_crit_edge114, %if.else.sw.bb.i_crit_edge115
  tail call void @mutex_unlock(ptr noundef %bus_mutex) #8
  %29 = ptrtoint ptr %len9 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %len9, align 2
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 4
  tail call fastcc void @w1_netlink_queue_cmd(ptr noundef %31, ptr noundef %cmd.0105) #8
  %32 = ptrtoint ptr %cmd.0105 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %cmd.0105, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %33)
  %cmp.i.i = icmp eq i8 %33, 8
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %sw.bb.i
  tail call void @mutex_lock_nested(ptr noundef %list_mutex.i.i, i32 noundef 0) #8
  %34 = ptrtoint ptr %slist.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn1.i.i = load ptr, ptr %slist.i.i, align 4
  %cmp3.not2.i.i = icmp eq ptr %.pn1.i.i, %slist.i.i
  br i1 %cmp3.not2.i.i, label %if.then.i.i.for.end.i.i_crit_edge, label %if.then.i.i.for.body.i.i_crit_edge

if.then.i.i.for.body.i.i_crit_edge:               ; preds = %if.then.i.i
  br label %for.body.i.i

if.then.i.i.for.end.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i.i.for.body.i.i_crit_edge
  %.pn3.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %.pn1.i.i, %if.then.i.i.for.body.i.i_crit_edge ]
  %reg_num.i.i = getelementptr i8, ptr %.pn3.i.i, i32 12
  %35 = ptrtoint ptr %reg_num.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %rn.0.copyload.i.i = load i64, ptr %reg_num.i.i, align 8
  tail call fastcc void @w1_send_slave(ptr noundef %dev, i64 noundef %rn.0.copyload.i.i) #8
  %36 = ptrtoint ptr %.pn3.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn.i.i = load ptr, ptr %.pn3.i.i, align 4
  %cmp3.not.i.i = icmp eq ptr %.pn.i.i, %slist.i.i
  br i1 %cmp3.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.then.i.i.for.end.i.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %list_mutex.i.i) #8
  br label %w1_get_slaves.exit.i

if.else.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %33)
  %cmp13.i.i = icmp eq i8 %33, 3
  %conv15.i.i = select i1 %cmp13.i.i, i8 -20, i8 -16
  tail call void @w1_search_process_cb(ptr noundef %dev, i8 noundef zeroext %conv15.i.i, ptr noundef nonnull @w1_found_send_slave) #8
  br label %w1_get_slaves.exit.i

w1_get_slaves.exit.i:                             ; preds = %if.else.i.i, %for.end.i.i
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #8
  br label %if.end19

sw.bb2.i:                                         ; preds = %if.else.sw.bb2.i_crit_edge, %if.else.sw.bb2.i_crit_edge116, %if.else.sw.bb2.i_crit_edge117
  %call3.i = tail call fastcc i32 @w1_process_command_io(ptr noundef %dev, ptr noundef %cmd.0105) #8
  br label %if.end19

sw.bb4.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = tail call i32 @w1_reset_bus(ptr noundef %dev) #8
  br label %if.end19

sw.bb6.i:                                         ; preds = %if.else.sw.bb6.i_crit_edge, %if.else.sw.bb6.i_crit_edge118
  tail call void @mutex_unlock(ptr noundef %bus_mutex) #8
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #8
  %37 = ptrtoint ptr %len9 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %len9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %38)
  %cmp.not.i.i = icmp eq i16 %38, 8
  br i1 %cmp.not.i.i, label %if.end.i.i, label %sw.bb6.i.w1_process_command_addremove.exit.i_crit_edge

sw.bb6.i.w1_process_command_addremove.exit.i_crit_edge: ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_process_command_addremove.exit.i

if.end.i.i:                                       ; preds = %sw.bb6.i
  %data.i.i = getelementptr inbounds %struct.w1_netlink_cmd, ptr %cmd.0105, i32 0, i32 3
  %call.i.i85 = tail call ptr @w1_slave_search_device(ptr noundef %dev, ptr noundef %data.i.i) #8
  %39 = ptrtoint ptr %cmd.0105 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %cmd.0105, align 2
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %40, label %if.end.i.i.w1_process_command_addremove.exit.i_crit_edge [
    i8 6, label %sw.bb.i.i
    i8 7, label %sw.bb7.i.i
  ]

if.end.i.i.w1_process_command_addremove.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_process_command_addremove.exit.i

sw.bb.i.i:                                        ; preds = %if.end.i.i
  %tobool.not.i.i = icmp eq ptr %call.i.i85, null
  br i1 %tobool.not.i.i, label %if.else.i24.i, label %sw.bb.i.i.w1_process_command_addremove.exit.i_crit_edge

sw.bb.i.i.w1_process_command_addremove.exit.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_process_command_addremove.exit.i

if.else.i24.i:                                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i.i = tail call i32 @w1_attach_slave_device(ptr noundef %dev, ptr noundef %data.i.i) #8
  br label %w1_process_command_addremove.exit.i

sw.bb7.i.i:                                       ; preds = %if.end.i.i
  %tobool8.not.i.i = icmp eq ptr %call.i.i85, null
  br i1 %tobool8.not.i.i, label %sw.bb7.i.i.w1_process_command_addremove.exit.i_crit_edge, label %if.then9.i.i

sw.bb7.i.i.w1_process_command_addremove.exit.i_crit_edge: ; preds = %sw.bb7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_process_command_addremove.exit.i

if.then9.i.i:                                     ; preds = %sw.bb7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call10.i.i = tail call i32 @w1_slave_detach(ptr noundef nonnull %call.i.i85) #8
  br label %w1_process_command_addremove.exit.i

w1_process_command_addremove.exit.i:              ; preds = %if.then9.i.i, %sw.bb7.i.i.w1_process_command_addremove.exit.i_crit_edge, %if.else.i24.i, %sw.bb.i.i.w1_process_command_addremove.exit.i_crit_edge, %if.end.i.i.w1_process_command_addremove.exit.i_crit_edge, %sw.bb6.i.w1_process_command_addremove.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -22, %sw.bb6.i.w1_process_command_addremove.exit.i_crit_edge ], [ 0, %if.then9.i.i ], [ %call5.i.i, %if.else.i24.i ], [ -22, %sw.bb.i.i.w1_process_command_addremove.exit.i_crit_edge ], [ -22, %sw.bb7.i.i.w1_process_command_addremove.exit.i_crit_edge ], [ -22, %if.end.i.i.w1_process_command_addremove.exit.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #8
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #8
  br label %if.end19

if.end19:                                         ; preds = %w1_process_command_addremove.exit.i, %sw.bb4.i, %sw.bb2.i, %w1_get_slaves.exit.i, %if.else.if.end19_crit_edge, %w1_process_command_slave.exit
  %err.2 = phi i32 [ %call14.i, %w1_process_command_slave.exit ], [ %retval.0.i.i, %w1_process_command_addremove.exit.i ], [ %call5.i, %sw.bb4.i ], [ %call3.i, %sw.bb2.i ], [ 0, %w1_get_slaves.exit.i ], [ -22, %if.else.if.end19_crit_edge ]
  %42 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %block, align 4
  %flags.i = getelementptr inbounds %struct.w1_cb_block, ptr %43, i32 0, i32 8, i32 4
  %44 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %flags.i, align 2
  %46 = and i16 %45, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool.not.i = icmp eq i16 %46, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end19.w1_netlink_check_send.exit_crit_edge

if.end19.w1_netlink_check_send.exit_crit_edge:    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_netlink_check_send.exit

land.lhs.true.i:                                  ; preds = %if.end19
  %cn.i = getelementptr inbounds %struct.w1_cb_block, ptr %43, i32 0, i32 4
  %47 = ptrtoint ptr %cn.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cn.i, align 4
  %tobool1.not.i = icmp eq ptr %48, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.w1_netlink_check_send.exit_crit_edge, label %w1_reply_make_space.exit.i

land.lhs.true.i.w1_netlink_check_send.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_netlink_check_send.exit

w1_reply_make_space.exit.i:                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %first_cn.i.i.i = getelementptr inbounds %struct.w1_cb_block, ptr %43, i32 0, i32 3
  %49 = ptrtoint ptr %first_cn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %first_cn.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %48 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %50 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %len.i.i.i = getelementptr inbounds %struct.cn_msg, ptr %48, i32 0, i32 3
  %51 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %len.i.i.i, align 4
  %53 = trunc i32 %sub.ptr.sub.i.i.i to i16
  %conv3.i.i.i = add i16 %52, %53
  %portid.i.i = getelementptr inbounds %struct.w1_cb_block, ptr %43, i32 0, i32 1
  %54 = ptrtoint ptr %portid.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %portid.i.i, align 4
  %call4.i.i = tail call i32 @cn_netlink_send_mult(ptr noundef %50, i16 noundef zeroext %conv3.i.i.i, i32 noundef %55, i32 noundef 0, i32 noundef 3264) #8
  %56 = ptrtoint ptr %first_cn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %first_cn.i.i.i, align 4
  %len6.i.i = getelementptr inbounds %struct.cn_msg, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %len6.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %len6.i.i, align 4
  %59 = ptrtoint ptr %cn.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %cn.i, align 4
  %msg.i.i = getelementptr inbounds %struct.w1_cb_block, ptr %43, i32 0, i32 5
  %60 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %msg.i.i, align 4
  %cmd.i.i = getelementptr inbounds %struct.w1_cb_block, ptr %43, i32 0, i32 6
  %61 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %cmd.i.i, align 4
  br label %w1_netlink_check_send.exit

w1_netlink_check_send.exit:                       ; preds = %w1_reply_make_space.exit.i, %land.lhs.true.i.w1_netlink_check_send.exit_crit_edge, %if.end19.w1_netlink_check_send.exit_crit_edge
  %62 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %block, align 4
  %64 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %msg, align 4
  tail call fastcc void @w1_netlink_queue_status(ptr noundef %63, ptr noundef %65, ptr noundef %cmd.0105, i32 noundef %err.2)
  %66 = ptrtoint ptr %len9 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %len9, align 2
  %add25 = add i16 %67, 4
  %conv27 = zext i16 %add25 to i32
  %add.ptr28 = getelementptr i8, ptr %cmd.0105, i32 %conv27
  %sub = sub i16 %mlen.0104, %add25
  %tobool7.not.not = icmp eq i16 %sub, 0
  br i1 %tobool7.not.not, label %w1_netlink_check_send.exit.while.end_crit_edge, label %w1_netlink_check_send.exit.while.body_crit_edge

w1_netlink_check_send.exit.while.body_crit_edge:  ; preds = %w1_netlink_check_send.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

w1_netlink_check_send.exit.while.end_crit_edge:   ; preds = %w1_netlink_check_send.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %w1_netlink_check_send.exit.while.end_crit_edge, %if.end.while.end_crit_edge
  %err.1.lcssa = phi i32 [ %err.0, %if.end.while.end_crit_edge ], [ 0, %w1_netlink_check_send.exit.while.end_crit_edge ]
  %cmd.0.lcssa = phi ptr [ %data, %if.end.while.end_crit_edge ], [ %add.ptr28, %w1_netlink_check_send.exit.while.end_crit_edge ]
  %tobool32.not = icmp ne ptr %cmd.0.lcssa, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.lcssa)
  %tobool33.not = icmp eq i32 %err.1.lcssa, 0
  %or.cond84 = select i1 %tobool32.not, i1 %tobool33.not, i1 false
  br i1 %or.cond84, label %while.end.if.end37_crit_edge, label %while.end.if.then34_crit_edge

while.end.if.then34_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

while.end.if.end37_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then34:                                        ; preds = %while.end.if.then34_crit_edge, %while.body.if.then34_crit_edge
  %cmd.099 = phi ptr [ %cmd.0.lcssa, %while.end.if.then34_crit_edge ], [ %cmd.0105, %while.body.if.then34_crit_edge ]
  %err.397 = phi i32 [ %err.1.lcssa, %while.end.if.then34_crit_edge ], [ -7, %while.body.if.then34_crit_edge ]
  %68 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %block, align 4
  %70 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %msg, align 4
  tail call fastcc void @w1_netlink_queue_status(ptr noundef %69, ptr noundef %71, ptr noundef %cmd.099, i32 noundef %err.397)
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %while.end.if.end37_crit_edge
  br i1 %tobool.not, label %if.else41, label %if.then39

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %call40 = tail call i32 @w1_unref_slave(ptr noundef nonnull %5) #8
  br label %if.end42

if.else41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %refcnt = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #8
  %72 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #8, !srcloc !22
  br label %if.end42

if.end42:                                         ; preds = %if.else41, %if.then39
  %73 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %priv, align 4
  tail call void @mutex_unlock(ptr noundef %bus_mutex) #8
  %list_mutex = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %list_mutex, i32 noundef 0) #8
  %call.i.i86 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %async_cmd) #8
  br i1 %call.i.i86, label %if.end.i.i87, label %if.end42.list_del.exit_crit_edge

if.end42.list_del.exit_crit_edge:                 ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i87:                                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %async_cmd, i32 0, i32 1
  %74 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev.i.i, align 4
  %76 = ptrtoint ptr %async_cmd to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %async_cmd, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev1.i.i.i, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %77, ptr %75, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i87, %if.end42.list_del.exit_crit_edge
  %80 = ptrtoint ptr %async_cmd to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr inttoptr (i32 256 to ptr), ptr %async_cmd, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %async_cmd, i32 0, i32 1
  %81 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %list_mutex) #8
  %82 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %block, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %83, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !24
  tail call void @llvm.prefetch.p0(ptr %83, i32 1, i32 3, i32 1) #8
  %84 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %83, ptr %83, i32 1, ptr elementtype(i32) %83) #8, !srcloc !25
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %84, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i, label %if.then.i89, label %list_del.exit.w1_unref_block.exit_crit_edge

list_del.exit.w1_unref_block.exit_crit_edge:      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_unref_block.exit

if.then.i89:                                      ; preds = %list_del.exit
  %cn.i.i = getelementptr inbounds %struct.w1_cb_block, ptr %83, i32 0, i32 4
  %85 = ptrtoint ptr %cn.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cn.i.i, align 4
  %tobool.not.i.i88 = icmp eq ptr %86, null
  br i1 %tobool.not.i.i88, label %if.then.i89.if.end.i_crit_edge, label %w1_reply_len.exit.i

if.then.i89.if.end.i_crit_edge:                   ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

w1_reply_len.exit.i:                              ; preds = %if.then.i89
  %first_cn.i.i = getelementptr inbounds %struct.w1_cb_block, ptr %83, i32 0, i32 3
  %87 = ptrtoint ptr %first_cn.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %first_cn.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %86 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %88 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %len.i.i90 = getelementptr inbounds %struct.cn_msg, ptr %86, i32 0, i32 3
  %89 = ptrtoint ptr %len.i.i90 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %len.i.i90, align 4
  %91 = trunc i32 %sub.ptr.sub.i.i to i16
  %conv3.i.i = add i16 %90, %91
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv3.i.i)
  %tobool.not.i91 = icmp eq i16 %conv3.i.i, 0
  br i1 %tobool.not.i91, label %w1_reply_len.exit.i.if.end.i_crit_edge, label %if.then2.i

w1_reply_len.exit.i.if.end.i_crit_edge:           ; preds = %w1_reply_len.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then2.i:                                       ; preds = %w1_reply_len.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %portid.i = getelementptr inbounds %struct.w1_cb_block, ptr %83, i32 0, i32 1
  %92 = ptrtoint ptr %portid.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %portid.i, align 4
  %call3.i92 = tail call i32 @cn_netlink_send_mult(ptr noundef %88, i16 noundef zeroext %conv3.i.i, i32 noundef %93, i32 noundef 0, i32 noundef 3264) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %w1_reply_len.exit.i.if.end.i_crit_edge, %if.then.i89.if.end.i_crit_edge
  tail call void @kfree(ptr noundef %83) #8
  br label %w1_unref_block.exit

w1_unref_block.exit:                              ; preds = %if.end.i, %list_del.exit.w1_unref_block.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_reset_select_slave(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @w1_netlink_queue_status(ptr nocapture noundef %block, ptr nocapture noundef readonly %req_msg, ptr noundef readonly %req_cmd, i32 noundef %error) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cn.i.i = getelementptr inbounds %struct.w1_cb_block, ptr %block, i32 0, i32 4
  %0 = ptrtoint ptr %cn.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cn.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.w1_reply_len.exit.i_crit_edge, label %if.end.i.i

entry.w1_reply_len.exit.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_reply_len.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %first_cn.i.i = getelementptr inbounds %struct.w1_cb_block, ptr %block, i32 0, i32 3
  %2 = ptrtoint ptr %first_cn.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %first_cn.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %len.i.i = getelementptr inbounds %struct.cn_msg, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %len.i.i, align 4
  %6 = trunc i32 %sub.ptr.sub.i.i to i16
  %conv3.i.i = add i16 %5, %6
  br label %w1_reply_len.exit.i

w1_reply_len.exit.i:                              ; preds = %if.end.i.i, %entry.w1_reply_len.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ %conv3.i.i, %if.end.i.i ], [ 0, %entry.w1_reply_len.exit.i_crit_edge ]
  %conv.i = zext i16 %retval.0.i.i to i32
  %add.i = add nuw nsw i32 %conv.i, 36
  %maxlen.i = getelementptr inbounds %struct.w1_cb_block, ptr %block, i32 0, i32 2
  %7 = ptrtoint ptr %maxlen.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %maxlen.i, align 4
  %conv2.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv2.i)
  %cmp.not.i = icmp ult i32 %add.i, %conv2.i
  br i1 %cmp.not.i, label %w1_reply_make_space.exit, label %w1_reply_make_space.exit.thread

w1_reply_make_space.exit.thread:                  ; preds = %w1_reply_len.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %first_cn.i = getelementptr inbounds %struct.w1_cb_block, ptr %block, i32 0, i32 3
  %9 = ptrtoint ptr %first_cn.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %first_cn.i, align 4
  %portid.i = getelementptr inbounds %struct.w1_cb_block, ptr %block, i32 0, i32 1
  %11 = ptrtoint ptr %portid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %portid.i, align 4
  %call4.i = tail call i32 @cn_netlink_send_mult(ptr noundef %10, i16 noundef zeroext %retval.0.i.i, i32 noundef %12, i32 noundef 0, i32 noundef 3264) #8
  %13 = ptrtoint ptr %first_cn.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %first_cn.i, align 4
  %len6.i = getelementptr inbounds %struct.cn_msg, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %len6.i, align 4
  %cmd.i = getelementptr inbounds %struct.w1_cb_block, ptr %block, i32 0, i32 6
  %16 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %cmd.i, align 4
  %ack36 = getelementptr inbounds %struct.w1_cb_block, ptr %block, i32 0, i32 8, i32 2
  %17 = ptrtoint ptr %ack36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ack36, align 4
  br label %if.else16.i

w1_reply_make_space.exit:                         ; preds = %w1_reply_len.exit.i
  %19 = ptrtoint ptr %cn.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load ptr, ptr %cn.i.i, align 4
  %ack = getelementptr inbounds %struct.w1_cb_block, ptr %block, i32 0, i32 8, i32 2
  %20 = ptrtoint ptr %ack to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ack, align 4
  %tobool.not.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i, label %w1_reply_make_space.exit.if.else16.i_crit_edge, label %land.lhs.true.i

w1_reply_make_space.exit.if.else16.i_crit_edge:   ; preds = %w1_reply_make_space.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else16.i

land.lhs.true.i:                                  ; preds = %w1_reply_make_space.exit
  %ack2.i = getelementptr inbounds %struct.cn_msg, ptr %.pr, i32 0, i32 2
  %22 = ptrtoint ptr %ack2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ack2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %21)
  %cmp.i = icmp eq i32 %23, %21
  %data.i = getelementptr inbounds %struct.cn_msg, ptr %.pr, i32 0, i32 5
  %len.i = getelementptr inbounds %struct.cn_msg, ptr %.pr, i32 0, i32 3
  %24 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %len.i, align 4
  %conv.i30 = zext i16 %25 to i32
  %add.ptr.i = getelementptr i8, ptr %data.i, i32 %conv.i30
  br i1 %cmp.i, label %land.lhs.true.i.w1_netlink_setup_msg.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i.w1_netlink_setup_msg.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_netlink_setup_msg.exit

if.else16.i:                                      ; preds = %w1_reply_make_space.exit.if.else16.i_crit_edge, %w1_reply_make_space.exit.thread
  %26 = phi i32 [ %18, %w1_reply_make_space.exit.thread ], [ %21, %w1_reply_make_space.exit.if.else16.i_crit_edge ]
  %first_cn.i31 = getelementptr inbounds %struct.w1_cb_block, ptr %block, i32 0, i32 3
  %27 = ptrtoint ptr %first_cn.i31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %first_cn.i31, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else16.i, %land.lhs.true.i.if.end.i_crit_edge
  %29 = phi i32 [ %26, %if.else16.i ], [ %21, %land.lhs.true.i.if.end.i_crit_edge ]
  %storemerge.i = phi ptr [ %28, %if.else16.i ], [ %add.ptr.i, %land.lhs.true.i.if.end.i_crit_edge ]
  %30 = ptrtoint ptr %cn.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %storemerge.i, ptr %cn.i.i, align 4
  %request_cn.i = getelementptr inbounds %struct.w1_cb_block, ptr %block, i32 0, i32 8
  %31 = call ptr @memcpy(ptr %storemerge.i, ptr %request_cn.i, i32 20)
  %32 = load ptr, ptr %cn.i.i, align 4
  %len20.i = getelementptr inbounds %struct.cn_msg, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %len20.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %len20.i, align 4
  %34 = load ptr, ptr %cn.i.i, align 4
  %ack22.i = getelementptr inbounds %struct.cn_msg, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %ack22.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %29, ptr %ack22.i, align 4
  %36 = load ptr, ptr %cn.i.i, align 4
  %data24.i = getelementptr inbounds %struct.cn_msg, ptr %36, i32 0, i32 5
  br label %w1_netlink_setup_msg.exit

w1_netlink_setup_msg.exit:                        ; preds = %if.end.i, %land.lhs.true.i.w1_netlink_setup_msg.exit_crit_edge
  %data24.sink.i = phi ptr [ %data24.i, %if.end.i ], [ %add.ptr.i, %land.lhs.true.i.w1_netlink_setup_msg.exit_crit_edge ]
  %msg26.i = getelementptr inbounds %struct.w1_cb_block, ptr %block, i32 0, i32 5
  %37 = ptrtoint ptr %msg26.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %data24.sink.i, ptr %msg26.i, align 4
  %38 = call ptr @memcpy(ptr %data24.sink.i, ptr %req_msg, i32 12)
  %39 = ptrtoint ptr %cn.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cn.i.i, align 4
  %len = getelementptr inbounds %struct.cn_msg, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %len, align 4
  %add = add i16 %42, 12
  store i16 %add, ptr %len, align 4
  %43 = load ptr, ptr %msg26.i, align 4
  %len3 = getelementptr inbounds %struct.w1_netlink_msg, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %len3 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %len3, align 2
  %45 = trunc i32 %error to i8
  %conv4 = sub i8 0, %45
  %46 = load ptr, ptr %msg26.i, align 4
  %status = getelementptr inbounds %struct.w1_netlink_msg, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv4, ptr %status, align 1
  %tobool.not = icmp eq ptr %req_cmd, null
  br i1 %tobool.not, label %w1_netlink_setup_msg.exit.if.end_crit_edge, label %if.then

w1_netlink_setup_msg.exit.if.end_crit_edge:       ; preds = %w1_netlink_setup_msg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %w1_netlink_setup_msg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %msg26.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %msg26.i, align 4
  %data = getelementptr inbounds %struct.w1_netlink_msg, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %req_cmd to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %req_cmd, align 2
  %52 = ptrtoint ptr %data to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %51, ptr %data, align 2
  %53 = ptrtoint ptr %cn.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cn.i.i, align 4
  %len8 = getelementptr inbounds %struct.cn_msg, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %len8 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %len8, align 4
  %add10 = add i16 %56, 4
  store i16 %add10, ptr %len8, align 4
  %57 = load ptr, ptr %msg26.i, align 4
  %len13 = getelementptr inbounds %struct.w1_netlink_msg, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %len13 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %len13, align 2
  %add15 = add i16 %59, 4
  store i16 %add15, ptr %len13, align 2
  %len17 = getelementptr inbounds %struct.w1_netlink_msg, ptr %49, i32 1, i32 2
  %60 = ptrtoint ptr %len17 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %len17, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %w1_netlink_setup_msg.exit.if.end_crit_edge
  %flags.i = getelementptr inbounds %struct.w1_cb_block, ptr %block, i32 0, i32 8, i32 4
  %61 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %flags.i, align 2
  %63 = and i16 %62, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool.not.i32 = icmp eq i16 %63, 0
  br i1 %tobool.not.i32, label %land.lhs.true.i34, label %if.end.w1_netlink_check_send.exit_crit_edge

if.end.w1_netlink_check_send.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_netlink_check_send.exit

land.lhs.true.i34:                                ; preds = %if.end
  %64 = ptrtoint ptr %cn.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cn.i.i, align 4
  %tobool1.not.i = icmp eq ptr %65, null
  br i1 %tobool1.not.i, label %land.lhs.true.i34.w1_netlink_check_send.exit_crit_edge, label %w1_reply_make_space.exit.i

land.lhs.true.i34.w1_netlink_check_send.exit_crit_edge: ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_netlink_check_send.exit

w1_reply_make_space.exit.i:                       ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #10
  %first_cn.i.i.i = getelementptr inbounds %struct.w1_cb_block, ptr %block, i32 0, i32 3
  %66 = ptrtoint ptr %first_cn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %first_cn.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %65 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %67 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %len.i.i.i = getelementptr inbounds %struct.cn_msg, ptr %65, i32 0, i32 3
  %68 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %len.i.i.i, align 4
  %70 = trunc i32 %sub.ptr.sub.i.i.i to i16
  %conv3.i.i.i = add i16 %69, %70
  %portid.i.i = getelementptr inbounds %struct.w1_cb_block, ptr %block, i32 0, i32 1
  %71 = ptrtoint ptr %portid.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %portid.i.i, align 4
  %call4.i.i = tail call i32 @cn_netlink_send_mult(ptr noundef %67, i16 noundef zeroext %conv3.i.i.i, i32 noundef %72, i32 noundef 0, i32 noundef 3264) #8
  %73 = ptrtoint ptr %first_cn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %first_cn.i.i.i, align 4
  %len6.i.i = getelementptr inbounds %struct.cn_msg, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %len6.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 0, ptr %len6.i.i, align 4
  %76 = ptrtoint ptr %cn.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %cn.i.i, align 4
  %77 = ptrtoint ptr %msg26.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %msg26.i, align 4
  %cmd.i.i = getelementptr inbounds %struct.w1_cb_block, ptr %block, i32 0, i32 6
  %78 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %cmd.i.i, align 4
  br label %w1_netlink_check_send.exit

w1_netlink_check_send.exit:                       ; preds = %w1_reply_make_space.exit.i, %land.lhs.true.i34.w1_netlink_check_send.exit_crit_edge, %if.end.w1_netlink_check_send.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_unref_slave(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @w1_process_command_io(ptr noundef %dev, ptr noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmd, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 4, label %sw.bb
    i8 0, label %sw.bb3
    i8 1, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.w1_netlink_cmd, ptr %cmd, i32 0, i32 3
  %len = getelementptr inbounds %struct.w1_netlink_cmd, ptr %cmd, i32 0, i32 2
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %len, align 2
  %conv2 = zext i16 %4 to i32
  tail call void @w1_touch_block(ptr noundef %dev, ptr noundef %data, i32 noundef %conv2) #8
  %priv = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 15
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  tail call fastcc void @w1_netlink_queue_cmd(ptr noundef %6, ptr noundef %cmd)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %data4 = getelementptr inbounds %struct.w1_netlink_cmd, ptr %cmd, i32 0, i32 3
  %len6 = getelementptr inbounds %struct.w1_netlink_cmd, ptr %cmd, i32 0, i32 2
  %7 = ptrtoint ptr %len6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %len6, align 2
  %conv7 = zext i16 %8 to i32
  %call = tail call zeroext i8 @w1_read_block(ptr noundef %dev, ptr noundef %data4, i32 noundef %conv7) #8
  %priv8 = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 15
  %9 = ptrtoint ptr %priv8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv8, align 4
  tail call fastcc void @w1_netlink_queue_cmd(ptr noundef %10, ptr noundef %cmd)
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %data10 = getelementptr inbounds %struct.w1_netlink_cmd, ptr %cmd, i32 0, i32 3
  %len12 = getelementptr inbounds %struct.w1_netlink_cmd, ptr %cmd, i32 0, i32 2
  %11 = ptrtoint ptr %len12 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %len12, align 2
  %conv13 = zext i16 %12 to i32
  tail call void @w1_write_block(ptr noundef %dev, ptr noundef %data10, i32 noundef %conv13) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %sw.bb9 ], [ 0, %sw.bb3 ], [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_touch_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @w1_netlink_queue_cmd(ptr nocapture noundef %block, ptr noundef readonly %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.w1_netlink_cmd, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %len, align 2
  %add = add i16 %1, 36
  %cn.i.i = getelementptr inbounds %struct.w1_cb_block, ptr %block, i32 0, i32 4
  %2 = ptrtoint ptr %cn.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cn.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.w1_reply_len.exit.i_crit_edge, label %if.end.i.i

entry.w1_reply_len.exit.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_reply_len.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %first_cn.i.i = getelementptr inbounds %struct.w1_cb_block, ptr %block, i32 0, i32 3
  %4 = ptrtoint ptr %first_cn.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %first_cn.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %len.i.i = getelementptr inbounds %struct.cn_msg, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %len.i.i, align 4
  %8 = trunc i32 %sub.ptr.sub.i.i to i16
  %conv3.i.i = add i16 %7, %8
  br label %w1_reply_len.exit.i

w1_reply_len.exit.i:                              ; preds = %if.end.i.i, %entry.w1_reply_len.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ %conv3.i.i, %if.end.i.i ], [ 0, %entry.w1_reply_len.exit.i_crit_edge ]
  %conv.i = zext i16 %retval.0.i.i to i32
  %conv1.i = zext i16 %add to i32
  %add.i = add nuw nsw i32 %conv.i, %conv1.i
  %maxlen.i = getelementptr inbounds %struct.w1_cb_block, ptr %block, i32 0, i32 2
  %9 = ptrtoint ptr %maxlen.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %maxlen.i, align 4
  %conv2.i = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv2.i)
  %cmp.not.i = icmp ult i32 %add.i, %conv2.i
  br i1 %cmp.not.i, label %w1_reply_make_space.exit, label %w1_reply_make_space.exit.thread

w1_reply_make_space.exit.thread:                  ; preds = %w1_reply_len.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %first_cn.i = getelementptr inbounds %struct.w1_cb_block, ptr %block, i32 0, i32 3
  %11 = ptrtoint ptr %first_cn.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %first_cn.i, align 4
  %portid.i = getelementptr inbounds %struct.w1_cb_block, ptr %block, i32 0, i32 1
  %13 = ptrtoint ptr %portid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %portid.i, align 4
  %call4.i = tail call i32 @cn_netlink_send_mult(ptr noundef %12, i16 noundef zeroext %retval.0.i.i, i32 noundef %14, i32 noundef 0, i32 noundef 3264) #8
  %15 = ptrtoint ptr %first_cn.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %first_cn.i, align 4
  %len6.i = getelementptr inbounds %struct.cn_msg, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %len6.i, align 4
  %cmd.i = getelementptr inbounds %struct.w1_cb_block, ptr %block, i32 0, i32 6
  %18 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %cmd.i, align 4
  %seq46 = getelementptr inbounds %struct.w1_cb_block, ptr %block, i32 0, i32 8, i32 1
  %19 = ptrtoint ptr %seq46 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %seq46, align 4
  %add247 = add i32 %20, 1
  br label %if.else16.i

w1_reply_make_space.exit:                         ; preds = %w1_reply_len.exit.i
  %21 = ptrtoint ptr %cn.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load ptr, ptr %cn.i.i, align 4
  %seq = getelementptr inbounds %struct.w1_cb_block, ptr %block, i32 0, i32 8, i32 1
  %22 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %seq, align 4
  %add2 = add i32 %23, 1
  %tobool.not.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i, label %w1_reply_make_space.exit.if.else16.i_crit_edge, label %land.lhs.true.i

w1_reply_make_space.exit.if.else16.i_crit_edge:   ; preds = %w1_reply_make_space.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else16.i

land.lhs.true.i:                                  ; preds = %w1_reply_make_space.exit
  %ack2.i = getelementptr inbounds %struct.cn_msg, ptr %.pr, i32 0, i32 2
  %24 = ptrtoint ptr %ack2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ack2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %add2)
  %cmp.i = icmp eq i32 %25, %add2
  %data.i = getelementptr inbounds %struct.cn_msg, ptr %.pr, i32 0, i32 5
  %len.i = getelementptr inbounds %struct.cn_msg, ptr %.pr, i32 0, i32 3
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %len.i, align 4
  %conv.i44 = zext i16 %27 to i32
  %add.ptr.i = getelementptr i8, ptr %data.i, i32 %conv.i44
  br i1 %cmp.i, label %land.lhs.true.i.w1_netlink_setup_msg.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i.w1_netlink_setup_msg.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_netlink_setup_msg.exit

if.else16.i:                                      ; preds = %w1_reply_make_space.exit.if.else16.i_crit_edge, %w1_reply_make_space.exit.thread
  %add250 = phi i32 [ %add247, %w1_reply_make_space.exit.thread ], [ %add2, %w1_reply_make_space.exit.if.else16.i_crit_edge ]
  %first_cn.i45 = getelementptr inbounds %struct.w1_cb_block, ptr %block, i32 0, i32 3
  %28 = ptrtoint ptr %first_cn.i45 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %first_cn.i45, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else16.i, %land.lhs.true.i.if.end.i_crit_edge
  %add249 = phi i32 [ %add250, %if.else16.i ], [ %add2, %land.lhs.true.i.if.end.i_crit_edge ]
  %storemerge.i = phi ptr [ %29, %if.else16.i ], [ %add.ptr.i, %land.lhs.true.i.if.end.i_crit_edge ]
  %30 = ptrtoint ptr %cn.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %storemerge.i, ptr %cn.i.i, align 4
  %request_cn.i = getelementptr inbounds %struct.w1_cb_block, ptr %block, i32 0, i32 8
  %31 = call ptr @memcpy(ptr %storemerge.i, ptr %request_cn.i, i32 20)
  %32 = load ptr, ptr %cn.i.i, align 4
  %len20.i = getelementptr inbounds %struct.cn_msg, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %len20.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %len20.i, align 4
  %34 = load ptr, ptr %cn.i.i, align 4
  %ack22.i = getelementptr inbounds %struct.cn_msg, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %ack22.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add249, ptr %ack22.i, align 4
  %36 = load ptr, ptr %cn.i.i, align 4
  %data24.i = getelementptr inbounds %struct.cn_msg, ptr %36, i32 0, i32 5
  br label %w1_netlink_setup_msg.exit

w1_netlink_setup_msg.exit:                        ; preds = %if.end.i, %land.lhs.true.i.w1_netlink_setup_msg.exit_crit_edge
  %data24.sink.i = phi ptr [ %data24.i, %if.end.i ], [ %add.ptr.i, %land.lhs.true.i.w1_netlink_setup_msg.exit_crit_edge ]
  %msg26.i = getelementptr inbounds %struct.w1_cb_block, ptr %block, i32 0, i32 5
  %37 = ptrtoint ptr %msg26.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %data24.sink.i, ptr %msg26.i, align 4
  %cur_msg = getelementptr inbounds %struct.w1_cb_block, ptr %block, i32 0, i32 7
  %38 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cur_msg, align 4
  %40 = call ptr @memcpy(ptr %data24.sink.i, ptr %39, i32 12)
  %41 = ptrtoint ptr %cn.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cn.i.i, align 4
  %len3 = getelementptr inbounds %struct.cn_msg, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %len3 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %len3, align 4
  %add5 = add i16 %44, 12
  store i16 %add5, ptr %len3, align 4
  %45 = load ptr, ptr %msg26.i, align 4
  %len8 = getelementptr inbounds %struct.w1_netlink_msg, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %len8 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %len8, align 2
  %47 = load ptr, ptr %msg26.i, align 4
  %data = getelementptr inbounds %struct.w1_netlink_msg, ptr %47, i32 0, i32 4
  %cmd10 = getelementptr inbounds %struct.w1_cb_block, ptr %block, i32 0, i32 6
  %48 = ptrtoint ptr %cmd10 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %data, ptr %cmd10, align 4
  %49 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %len, align 2
  %conv12 = zext i16 %50 to i32
  %add13 = add nuw nsw i32 %conv12, 4
  %cmp.not = icmp eq ptr %data, %cmd
  br i1 %cmp.not, label %w1_netlink_setup_msg.exit.if.end_crit_edge, label %if.then

w1_netlink_setup_msg.exit.if.end_crit_edge:       ; preds = %w1_netlink_setup_msg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %w1_netlink_setup_msg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %51 = call ptr @memcpy(ptr %data, ptr %cmd, i32 %add13)
  br label %if.end

if.end:                                           ; preds = %if.then, %w1_netlink_setup_msg.exit.if.end_crit_edge
  %52 = ptrtoint ptr %cn.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cn.i.i, align 4
  %len18 = getelementptr inbounds %struct.cn_msg, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %len18 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %len18, align 4
  %56 = trunc i32 %add13 to i16
  %conv21 = add i16 %55, %56
  store i16 %conv21, ptr %len18, align 4
  %57 = ptrtoint ptr %msg26.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %msg26.i, align 4
  %len23 = getelementptr inbounds %struct.w1_netlink_msg, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %len23 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %len23, align 2
  %conv26 = add i16 %60, %56
  store i16 %conv26, ptr %len23, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_read_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cn_netlink_send_mult(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_reset_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @w1_send_slave(ptr nocapture noundef readonly %dev, i64 noundef %rn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %cmd = getelementptr inbounds %struct.w1_cb_block, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd, align 4
  %cn.i.i = getelementptr inbounds %struct.w1_cb_block, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %cn.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cn.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %entry.w1_reply_len.exit.i_crit_edge, label %if.end.i.i

entry.w1_reply_len.exit.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_reply_len.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %first_cn.i.i = getelementptr inbounds %struct.w1_cb_block, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %first_cn.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %first_cn.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %len.i.i = getelementptr inbounds %struct.cn_msg, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %len.i.i, align 4
  %10 = trunc i32 %sub.ptr.sub.i.i to i16
  %conv3.i.i = add i16 %9, %10
  br label %w1_reply_len.exit.i

w1_reply_len.exit.i:                              ; preds = %if.end.i.i, %entry.w1_reply_len.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ %conv3.i.i, %if.end.i.i ], [ 0, %entry.w1_reply_len.exit.i_crit_edge ]
  %conv.i = zext i16 %retval.0.i.i to i32
  %add.i = add nuw nsw i32 %conv.i, 8
  %maxlen.i = getelementptr inbounds %struct.w1_cb_block, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %maxlen.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %maxlen.i, align 4
  %conv2.i = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv2.i)
  %cmp.not.i = icmp ult i32 %add.i, %conv2.i
  br i1 %cmp.not.i, label %w1_reply_make_space.exit, label %w1_reply_make_space.exit.thread

w1_reply_make_space.exit.thread:                  ; preds = %w1_reply_len.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %first_cn.i = getelementptr inbounds %struct.w1_cb_block, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %first_cn.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %first_cn.i, align 4
  %portid.i = getelementptr inbounds %struct.w1_cb_block, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %portid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %portid.i, align 4
  %call4.i = tail call i32 @cn_netlink_send_mult(ptr noundef %14, i16 noundef zeroext %retval.0.i.i, i32 noundef %16, i32 noundef 0, i32 noundef 3264) #8
  %17 = ptrtoint ptr %first_cn.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %first_cn.i, align 4
  %len6.i = getelementptr inbounds %struct.cn_msg, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %len6.i, align 4
  %20 = ptrtoint ptr %cn.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %cn.i.i, align 4
  %msg.i = getelementptr inbounds %struct.w1_cb_block, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %msg.i, align 4
  %22 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %cmd, align 4
  br label %if.then

w1_reply_make_space.exit:                         ; preds = %w1_reply_len.exit.i
  %23 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load ptr, ptr %cmd, align 4
  %tobool.not = icmp eq ptr %.pr, null
  br i1 %tobool.not, label %w1_reply_make_space.exit.if.then_crit_edge, label %w1_reply_make_space.exit.if.end_crit_edge

w1_reply_make_space.exit.if.end_crit_edge:        ; preds = %w1_reply_make_space.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

w1_reply_make_space.exit.if.then_crit_edge:       ; preds = %w1_reply_make_space.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %w1_reply_make_space.exit.if.then_crit_edge, %w1_reply_make_space.exit.thread
  %len = getelementptr inbounds %struct.w1_netlink_cmd, ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %len, align 2
  tail call fastcc void @w1_netlink_queue_cmd(ptr noundef %1, ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %w1_reply_make_space.exit.if.end_crit_edge
  %25 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cmd, align 4
  %data3 = getelementptr inbounds %struct.w1_netlink_cmd, ptr %26, i32 0, i32 3
  %len5 = getelementptr inbounds %struct.w1_netlink_cmd, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %len5 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %len5, align 2
  %conv = zext i16 %28 to i32
  %add.ptr = getelementptr i8, ptr %data3, i32 %conv
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %rn, ptr %add.ptr, align 8
  %30 = ptrtoint ptr %cn.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cn.i.i, align 4
  %len6 = getelementptr inbounds %struct.cn_msg, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %len6 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %len6, align 4
  %add = add i16 %33, 8
  store i16 %add, ptr %len6, align 4
  %msg = getelementptr inbounds %struct.w1_cb_block, ptr %1, i32 0, i32 5
  %34 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %msg, align 4
  %len9 = getelementptr inbounds %struct.w1_netlink_msg, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %len9 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %len9, align 2
  %add11 = add i16 %37, 8
  store i16 %add11, ptr %len9, align 2
  %38 = load ptr, ptr %cmd, align 4
  %len14 = getelementptr inbounds %struct.w1_netlink_cmd, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %len14 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %len14, align 2
  %add16 = add i16 %40, 8
  store i16 %add16, ptr %len14, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_search_process_cb(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w1_found_send_slave(ptr noundef %dev, i64 noundef %rn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @w1_slave_found(ptr noundef %dev, i64 noundef %rn) #8
  tail call fastcc void @w1_send_slave(ptr noundef %dev, i64 noundef %rn)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_slave_found(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @w1_slave_search_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_attach_slave_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_slave_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/w1/w1_netlink.c", i32 717, i32 33}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/w1/w1_netlink.c", i32 664, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @w1_cn_callback._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @w1_cn_callback._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/w1/w1_netlink.c", i32 390, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @w1_process_command_slave.__UNIQUE_ID_ddebug457, !9, !"__UNIQUE_ID_ddebug457", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 2148600321, i64 2148600347, i64 2148600376, i64 2148600410, i64 2148600441, i64 2148600464}
!23 = !{i64 2148597856, i64 2148597882, i64 2148597911, i64 2148597945, i64 2148597976, i64 2148597999}
!24 = !{i64 2148686332}
!25 = !{i64 2148601041, i64 2148601073, i64 2148601102, i64 2148601136, i64 2148601167, i64 2148601190}
!26 = !{i64 2148686561}
!27 = !{i64 2148218582, i64 2148218587, i64 2148218600, i64 2148218644, i64 2148218678, i64 2148218699}
