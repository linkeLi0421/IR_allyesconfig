; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/quantenna/qtnfmac/shm_ipc.c_pt.bc'
source_filename = "../drivers/net/wireless/quantenna/qtnfmac/shm_ipc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qtnf_shm_ipc = type { ptr, i32, i32, i32, i32, i8, %struct.qtnf_shm_ipc_int, %struct.qtnf_shm_ipc_rx_callback, ptr, ptr, %struct.work_struct, %struct.completion }
%struct.qtnf_shm_ipc_int = type { ptr, ptr }
%struct.qtnf_shm_ipc_rx_callback = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.qtnf_shm_ipc_region_header = type <{ i32, i16 }>
%struct.qtnf_shm_ipc_region = type { %union.qtnf_shm_ipc_region_headroom, [4064 x i8] }
%union.qtnf_shm_ipc_region_headroom = type { [32 x i8] }

@qtnf_shm_ipc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&ipc->irq_work)\00", [62 x i8] zeroinitializer }, align 32
@qtnf_shm_ipc_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013qtnfmac shm_ipc: %s: TX ACK timeout\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qtnf_shm_ipc_send\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/quantenna/qtnfmac/shm_ipc.c\00", [47 x i8] zeroinitializer }, align 32
@qtnf_shm_ipc_send._entry_ptr = internal global ptr @qtnf_shm_ipc_send._entry, section ".printk_index", align 4
@qtnf_shm_handle_new_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 30, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013qtnfmac shm_ipc: %s: wrong rx packet size: %zu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qtnf_shm_handle_new_data\00", [39 x i8] zeroinitializer }, align 32
@qtnf_shm_handle_new_data._entry_ptr = internal global ptr @qtnf_shm_handle_new_data._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 112, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 155, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private constant [52 x i8] c"../drivers/net/wireless/quantenna/qtnfmac/shm_ipc.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 30, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 87, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @qtnf_shm_handle_new_data._entry, ptr @qtnf_shm_handle_new_data._entry_ptr, ptr @qtnf_shm_ipc_send._entry, ptr @qtnf_shm_ipc_send._entry_ptr, ptr @qtnf_shm_ipc_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @init_completion.__key, ptr @.str.6], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_shm_ipc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_shm_ipc_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_shm_handle_new_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_shm_ipc_init(ptr noundef %ipc, i32 noundef %direction, ptr noundef %shm_region, ptr noundef %workqueue, ptr nocapture noundef readonly %interrupt, ptr nocapture noundef readonly %rx_callback) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ipc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %shm_region, ptr %ipc, align 4
  %direction4 = getelementptr inbounds %struct.qtnf_shm_ipc, ptr %ipc, i32 0, i32 1
  %1 = ptrtoint ptr %direction4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %direction, ptr %direction4, align 4
  %interrupt5 = getelementptr inbounds %struct.qtnf_shm_ipc, ptr %ipc, i32 0, i32 6
  %2 = ptrtoint ptr %interrupt to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %interrupt, align 4
  %4 = ptrtoint ptr %interrupt5 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %3, ptr %interrupt5, align 4
  %rx_callback6 = getelementptr inbounds %struct.qtnf_shm_ipc, ptr %ipc, i32 0, i32 7
  %5 = ptrtoint ptr %rx_callback to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %rx_callback, align 4
  %7 = ptrtoint ptr %rx_callback6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %6, ptr %rx_callback6, align 4
  %tx_packet_count = getelementptr inbounds %struct.qtnf_shm_ipc, ptr %ipc, i32 0, i32 2
  %8 = ptrtoint ptr %tx_packet_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tx_packet_count, align 4
  %rx_packet_count = getelementptr inbounds %struct.qtnf_shm_ipc, ptr %ipc, i32 0, i32 3
  %9 = ptrtoint ptr %rx_packet_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %rx_packet_count, align 4
  %workqueue7 = getelementptr inbounds %struct.qtnf_shm_ipc, ptr %ipc, i32 0, i32 9
  %10 = ptrtoint ptr %workqueue7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %workqueue, ptr %workqueue7, align 4
  %waiting_for_ack = getelementptr inbounds %struct.qtnf_shm_ipc, ptr %ipc, i32 0, i32 5
  %11 = ptrtoint ptr %waiting_for_ack to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %waiting_for_ack, align 4
  %tx_timeout_count = getelementptr inbounds %struct.qtnf_shm_ipc, ptr %ipc, i32 0, i32 4
  %12 = ptrtoint ptr %tx_timeout_count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %tx_timeout_count, align 4
  %13 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %direction, label %entry.return_crit_edge [
    i32 1, label %entry.do.body10_crit_edge
    i32 2, label %sw.bb8
  ]

entry.do.body10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body10

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body10

do.body10:                                        ; preds = %sw.bb8, %entry.do.body10_crit_edge
  %qtnf_shm_ipc_irq_outbound_handler.sink = phi ptr [ @qtnf_shm_ipc_irq_inbound_handler, %sw.bb8 ], [ @qtnf_shm_ipc_irq_outbound_handler, %entry.do.body10_crit_edge ]
  %irq_handler = getelementptr inbounds %struct.qtnf_shm_ipc, ptr %ipc, i32 0, i32 8
  %14 = ptrtoint ptr %irq_handler to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %qtnf_shm_ipc_irq_outbound_handler.sink, ptr %irq_handler, align 4
  %irq_work = getelementptr inbounds %struct.qtnf_shm_ipc, ptr %ipc, i32 0, i32 10
  tail call void @__init_work(ptr noundef %irq_work, i32 noundef 0) #4
  %15 = ptrtoint ptr %irq_work to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %irq_work, align 4
  %lockdep_map = getelementptr inbounds %struct.qtnf_shm_ipc, ptr %ipc, i32 0, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @qtnf_shm_ipc_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry14 = getelementptr inbounds %struct.qtnf_shm_ipc, ptr %ipc, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %entry14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry14, ptr %entry14, align 4
  %prev.i = getelementptr inbounds %struct.qtnf_shm_ipc, ptr %ipc, i32 0, i32 10, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry14, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.qtnf_shm_ipc, ptr %ipc, i32 0, i32 10, i32 2
  %18 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @qtnf_shm_ipc_irq_work, ptr %func, align 4
  %tx_completion = getelementptr inbounds %struct.qtnf_shm_ipc, ptr %ipc, i32 0, i32 11
  %19 = ptrtoint ptr %tx_completion to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %tx_completion, align 4
  %wait.i = getelementptr inbounds %struct.qtnf_shm_ipc, ptr %ipc, i32 0, i32 11, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @init_completion.__key) #4
  br label %return

return:                                           ; preds = %do.body10, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.body10 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtnf_shm_ipc_irq_outbound_handler(ptr noundef %ipc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %waiting_for_ack = getelementptr inbounds %struct.qtnf_shm_ipc, ptr %ipc, i32 0, i32 5
  %0 = ptrtoint ptr %waiting_for_ack to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %waiting_for_ack, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %ipc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ipc, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  %5 = and i32 %4, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.body10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %waiting_for_ack to i32
  call void @__asan_store1_noabort(i32 %6)
  store volatile i8 0, ptr %waiting_for_ack, align 4
  %tx_completion = getelementptr inbounds %struct.qtnf_shm_ipc, ptr %ipc, i32 0, i32 11
  tail call void @complete(ptr noundef %tx_completion) #4
  br label %cleanup

cleanup:                                          ; preds = %do.body10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtnf_shm_ipc_irq_inbound_handler(ptr noundef %ipc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ipc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipc, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %workqueue = getelementptr inbounds %struct.qtnf_shm_ipc, ptr %ipc, i32 0, i32 9
  %4 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %workqueue, align 4
  %irq_work = getelementptr inbounds %struct.qtnf_shm_ipc, ptr %ipc, i32 0, i32 10
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %irq_work) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtnf_shm_ipc_irq_work(ptr nocapture noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -48
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not2 = icmp eq i32 %3, 0
  br i1 %tobool.i.not2, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %rx_packet_count.i = getelementptr i8, ptr %work, i32 -36
  %rx_callback.i = getelementptr i8, ptr %work, i32 -16
  %arg.i = getelementptr i8, ptr %work, i32 -12
  %interrupt.i = getelementptr i8, ptr %work, i32 -24
  %arg30.i = getelementptr i8, ptr %work, i32 -20
  br label %while.body

while.body:                                       ; preds = %qtnf_shm_handle_new_data.exit.while.body_crit_edge, %while.body.lr.ph
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %data_len.i = getelementptr inbounds %struct.qtnf_shm_ipc_region_header, ptr %5, i32 0, i32 1
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %data_len.i) #4, !srcloc !30
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  %conv.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp.i = icmp eq i16 %6, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 4064, i16 %7)
  %cmp3.i = icmp ugt i16 %7, 4064
  %spec.select.i = select i1 %cmp.i, i1 true, i1 %cmp3.i, !prof !32
  br i1 %spec.select.i, label %do.end.i, label %if.then15.critedge.i, !prof !32

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %conv.i) #7
  br label %qtnf_shm_handle_new_data.exit

if.then15.critedge.i:                             ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %rx_packet_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_packet_count.i, align 4
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %rx_packet_count.i, align 4
  %10 = ptrtoint ptr %rx_callback.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_callback.i, align 4
  %12 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arg.i, align 4
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  %data.i = getelementptr inbounds %struct.qtnf_shm_ipc_region, ptr %15, i32 0, i32 1
  tail call void %11(ptr noundef %13, ptr noundef %data.i, i32 noundef %conv.i) #4
  br label %qtnf_shm_handle_new_data.exit

qtnf_shm_handle_new_data.exit:                    ; preds = %if.then15.critedge.i, %do.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 33554432) #4, !srcloc !34
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %17 = ptrtoint ptr %interrupt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %interrupt.i, align 4
  %19 = ptrtoint ptr %arg30.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arg30.i, align 4
  tail call void %18(ptr noundef %20) #4
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  %24 = and i32 %23, 16777216
  %tobool.i.not = icmp eq i32 %24, 0
  br i1 %tobool.i.not, label %qtnf_shm_handle_new_data.exit.while.end_crit_edge, label %qtnf_shm_handle_new_data.exit.while.body_crit_edge

qtnf_shm_handle_new_data.exit.while.body_crit_edge: ; preds = %qtnf_shm_handle_new_data.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

qtnf_shm_handle_new_data.exit.while.end_crit_edge: ; preds = %qtnf_shm_handle_new_data.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %qtnf_shm_handle_new_data.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qtnf_shm_ipc_free(ptr noundef %ipc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_completion = getelementptr inbounds %struct.qtnf_shm_ipc, ptr %ipc, i32 0, i32 11
  tail call void @complete_all(ptr noundef %tx_completion) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_shm_ipc_send(ptr noundef %ipc, ptr noundef %buf, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4064, i32 %size)
  %cmp = icmp ugt i32 %size, 4064
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !32

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ipc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipc, align 4
  %tx_packet_count = getelementptr inbounds %struct.qtnf_shm_ipc, ptr %ipc, i32 0, i32 2
  %2 = ptrtoint ptr %tx_packet_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_packet_count, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %tx_packet_count, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %conv = trunc i32 %size to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %data_len = getelementptr inbounds %struct.qtnf_shm_ipc_region_header, ptr %1, i32 0, i32 1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %data_len, i16 %4) #4, !srcloc !37
  %5 = ptrtoint ptr %ipc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ipc, align 4
  %data = getelementptr inbounds %struct.qtnf_shm_ipc_region, ptr %6, i32 0, i32 1
  tail call void @mmiocpy(ptr noundef %data, ptr noundef %buf, i32 noundef %size) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !38
  %waiting_for_ack = getelementptr inbounds %struct.qtnf_shm_ipc, ptr %ipc, i32 0, i32 5
  %7 = ptrtoint ptr %waiting_for_ack to i32
  call void @__asan_store1_noabort(i32 %7)
  store volatile i8 1, ptr %waiting_for_ack, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 16777216) #4, !srcloc !34
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  %interrupt = getelementptr inbounds %struct.qtnf_shm_ipc, ptr %ipc, i32 0, i32 6
  %9 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %interrupt, align 4
  %arg = getelementptr inbounds %struct.qtnf_shm_ipc, ptr %ipc, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arg, align 4
  tail call void %10(ptr noundef %12) #4
  %tx_completion = getelementptr inbounds %struct.qtnf_shm_ipc, ptr %ipc, i32 0, i32 11
  %call21 = tail call i32 @wait_for_completion_timeout(ptr noundef %tx_completion, i32 noundef 200) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.end.do.body35_crit_edge

if.end.do.body35_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body35

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %tx_timeout_count = getelementptr inbounds %struct.qtnf_shm_ipc, ptr %ipc, i32 0, i32 4
  %13 = ptrtoint ptr %tx_timeout_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_timeout_count, align 4
  %inc24 = add i32 %14, 1
  store i32 %inc24, ptr %tx_timeout_count, align 4
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  br label %do.body35

do.body35:                                        ; preds = %if.then23, %if.end.do.body35_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.do.body35_crit_edge ], [ -110, %if.then23 ]
  %15 = ptrtoint ptr %waiting_for_ack to i32
  call void @__asan_store1_noabort(i32 %15)
  store volatile i8 0, ptr %waiting_for_ack, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body35, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.body35 ], [ -7, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !13, !14, !16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @qtnf_shm_ipc_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/quantenna/qtnfmac/shm_ipc.c", i32 112, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/quantenna/qtnfmac/shm_ipc.c", i32 155, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @qtnf_shm_ipc_send._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @qtnf_shm_ipc_send._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/quantenna/qtnfmac/shm_ipc.c", i32 30, i32 3}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @qtnf_shm_handle_new_data._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @qtnf_shm_handle_new_data._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @init_completion.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../include/linux/completion.h", i32 87, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i64 687597}
!27 = !{i64 2149551053}
!28 = !{i64 2149547459}
!29 = !{i64 2149542319}
!30 = !{i64 686759}
!31 = !{i64 2149542825}
!32 = !{!"branch_weights", i32 1, i32 2000}
!33 = !{i64 2149544980}
!34 = !{i64 687179}
!35 = !{i64 2149545690}
!36 = !{i64 2149557556}
!37 = !{i64 686559}
!38 = !{i64 2149557893}
!39 = !{i64 2149560323}
!40 = !{i64 2149560557}
!41 = !{i64 2149561282}
