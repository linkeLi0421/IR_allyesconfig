; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/fw/init.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/fw/init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.5 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iwl_fw_runtime = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [33 x %struct.iwl_fw_paging], i16, i16, i32, %struct.iwl_fwrt_shared_mem_cfg, %struct.anon.130, %struct.anon.135, i8 }
%struct.iwl_fw_paging = type { i32, ptr, i32, i32 }
%struct.iwl_fwrt_shared_mem_cfg = type { i32, i32, [2 x %struct.anon.129], i32, i32, i32, [6 x i32] }
%struct.anon.129 = type { [15 x i32], i32 }
%struct.anon.130 = type { [5 x %struct.iwl_fwrt_wk_data], i32, i8, [27 x i32], ptr, [2 x i32], i32, %struct.iwl_txf_iter_data, %struct.anon.134 }
%struct.iwl_fwrt_wk_data = type { i8, %struct.delayed_work, %struct.iwl_fwrt_dump_data }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.iwl_fwrt_dump_data = type { %union.anon.131 }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type { ptr, ptr }
%struct.iwl_txf_iter_data = type { i32, i32, i32, i8 }
%struct.anon.134 = type { i8, i8, i32, i32, i32, i32 }
%struct.anon.135 = type { %struct.delayed_work, i32, i64 }
%struct.iwl_trans = type { i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, [52 x i8], [3 x i32], i8, i8, i8, i8, i8, ptr, i32, i8, %struct.wait_queue_head, i8, i32, ptr, ptr, [50 x i8], ptr, %struct.lockdep_map, %struct.iwl_trans_debug, %struct.iwl_self_init_dram, i32, ptr, %struct.iwl_trans_txqs, [0 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.iwl_trans_debug = type { i8, i8, ptr, [32 x ptr], ptr, [2 x i32], i32, [2 x i32], [2 x i32], i32, i32, i32, [5 x %struct.iwl_fw_ini_allocation_tlv], [5 x %struct.iwl_fw_mon], %struct.iwl_dram_data, i8, i32, i64, [64 x ptr], %struct.list_head, [27 x %struct.iwl_dbg_tlv_time_point_data], %struct.list_head, i32, i32, i8, i32 }
%struct.iwl_fw_ini_allocation_tlv = type { %struct.iwl_fw_ini_header, i32, i32, i32, i32, i32 }
%struct.iwl_fw_ini_header = type { i32, i32 }
%struct.iwl_fw_mon = type { i32, ptr }
%struct.iwl_dram_data = type { i32, ptr, i32 }
%struct.iwl_dbg_tlv_time_point_data = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.iwl_self_init_dram = type { ptr, i32, ptr, i32 }
%struct.iwl_trans_txqs = type { [16 x i32], [16 x i32], [512 x ptr], ptr, i32, i8, i8, i8, ptr, %struct.anon.127, %struct.anon.128, %struct.iwl_dma_ptr }
%struct.anon.127 = type { i8, i8, i32 }
%struct.anon.128 = type { i8, i16, i8 }
%struct.iwl_dma_ptr = type { i32, ptr, i32 }
%struct.iwl_soc_configuration_cmd = type { i32, i32 }
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.iwl_trans_rxq_dma_data = type { i64, i32, i64, i64 }
%struct.iwl_rfh_queue_config = type { i8, [3 x i8], [0 x %struct.iwl_rfh_queue_data] }
%struct.iwl_rfh_queue_data = type <{ i8, i8, i16, i64, i64, i64, i32 }>
%struct.iwl_trans_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@iwl_fw_runtime_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&(&fwrt->dump.wks[i].wk)->work)\00", [46 x i8] zeroinitializer }, align 32
@iwl_fw_runtime_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&(&fwrt->dump.wks[i].wk)->timer\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intel/iwlwifi/fw/init.c\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set soc latency: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to configure RX queues: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@iwl_trans_get_rxq_dma_data.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/intel/iwlwifi/iwl-trans.h\00", [49 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 36, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 86, i32 7 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 100, i32 3 }
@___asan_gen_.26 = private constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/fw/init.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 156, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [50 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-trans.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 1206, i32 6 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @iwl_fw_runtime_init.__key, ptr @.str, ptr @iwl_fw_runtime_init.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_fw_runtime_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_fw_runtime_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_fw_runtime_init(ptr noundef %fwrt, ptr noundef %trans, ptr noundef %fw, ptr noundef %ops, ptr noundef %ops_ctx, ptr noundef %sanitize_ops, ptr noundef %sanitize_ctx, ptr noundef %dbgfs_dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %fwrt, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 1576)
  %2 = ptrtoint ptr %fwrt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %trans, ptr %fwrt, align 8
  %fw2 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 1
  %3 = ptrtoint ptr %fw2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fw, ptr %fw2, align 4
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %dev3 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %dev3, align 8
  %dump = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12
  %conf = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 2
  %7 = ptrtoint ptr %conf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %conf, align 4
  %ops4 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 3
  %8 = ptrtoint ptr %ops4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ops, ptr %ops4, align 4
  %sanitize_ops5 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 5
  %9 = ptrtoint ptr %sanitize_ops5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %sanitize_ops, ptr %sanitize_ops5, align 4
  %sanitize_ctx6 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 6
  %10 = ptrtoint ptr %sanitize_ctx6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sanitize_ctx, ptr %sanitize_ctx6, align 8
  %ops_ctx7 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 4
  %11 = ptrtoint ptr %ops_ctx7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ops_ctx, ptr %ops_ctx7, align 8
  %12 = ptrtoint ptr %dump to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %dump, align 8
  %wk = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 0, i32 1
  tail call void @__init_work(ptr noundef %wk, i32 noundef 0) #5
  %13 = ptrtoint ptr %wk to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %wk, align 4
  %lockdep_map = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 0, i32 1, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @iwl_fw_runtime_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry28 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %entry28 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry28, ptr %entry28, align 4
  %prev.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 0, i32 1, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry28, ptr %prev.i, align 4
  %func = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @iwl_fw_error_dump_wk, ptr %func, align 4
  %timer = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 0, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @iwl_fw_runtime_init.__key.1) #5
  %arrayidx.1 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %arrayidx.1, align 8
  %wk.1 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 1, i32 1
  tail call void @__init_work(ptr noundef %wk.1, i32 noundef 0) #5
  %18 = ptrtoint ptr %wk.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %wk.1, align 4
  %lockdep_map.1 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 1, i32 1, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.1, ptr noundef nonnull @.str, ptr noundef nonnull @iwl_fw_runtime_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry28.1 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 1, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %entry28.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry28.1, ptr %entry28.1, align 4
  %prev.i.1 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 1, i32 1, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entry28.1, ptr %prev.i.1, align 4
  %func.1 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 1, i32 1, i32 0, i32 2
  %21 = ptrtoint ptr %func.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @iwl_fw_error_dump_wk, ptr %func.1, align 4
  %timer.1 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 1, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %timer.1, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @iwl_fw_runtime_init.__key.1) #5
  %arrayidx.2 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 2
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 2, ptr %arrayidx.2, align 8
  %wk.2 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 2, i32 1
  tail call void @__init_work(ptr noundef %wk.2, i32 noundef 0) #5
  %23 = ptrtoint ptr %wk.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -64, ptr %wk.2, align 4
  %lockdep_map.2 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 2, i32 1, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.2, ptr noundef nonnull @.str, ptr noundef nonnull @iwl_fw_runtime_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry28.2 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 2, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %entry28.2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry28.2, ptr %entry28.2, align 4
  %prev.i.2 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 2, i32 1, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i.2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry28.2, ptr %prev.i.2, align 4
  %func.2 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 2, i32 1, i32 0, i32 2
  %26 = ptrtoint ptr %func.2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @iwl_fw_error_dump_wk, ptr %func.2, align 4
  %timer.2 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 2, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %timer.2, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @iwl_fw_runtime_init.__key.1) #5
  %arrayidx.3 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 3
  %27 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 3, ptr %arrayidx.3, align 8
  %wk.3 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 3, i32 1
  tail call void @__init_work(ptr noundef %wk.3, i32 noundef 0) #5
  %28 = ptrtoint ptr %wk.3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -64, ptr %wk.3, align 4
  %lockdep_map.3 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 3, i32 1, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.3, ptr noundef nonnull @.str, ptr noundef nonnull @iwl_fw_runtime_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry28.3 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 3, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %entry28.3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %entry28.3, ptr %entry28.3, align 4
  %prev.i.3 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 3, i32 1, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %prev.i.3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %entry28.3, ptr %prev.i.3, align 4
  %func.3 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 3, i32 1, i32 0, i32 2
  %31 = ptrtoint ptr %func.3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @iwl_fw_error_dump_wk, ptr %func.3, align 4
  %timer.3 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 3, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %timer.3, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @iwl_fw_runtime_init.__key.1) #5
  %arrayidx.4 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 4
  %32 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 4, ptr %arrayidx.4, align 8
  %wk.4 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 4, i32 1
  tail call void @__init_work(ptr noundef %wk.4, i32 noundef 0) #5
  %33 = ptrtoint ptr %wk.4 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -64, ptr %wk.4, align 4
  %lockdep_map.4 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 4, i32 1, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.4, ptr noundef nonnull @.str, ptr noundef nonnull @iwl_fw_runtime_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry28.4 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 4, i32 1, i32 0, i32 1
  %34 = ptrtoint ptr %entry28.4 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %entry28.4, ptr %entry28.4, align 4
  %prev.i.4 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 4, i32 1, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %prev.i.4 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %entry28.4, ptr %prev.i.4, align 4
  %func.4 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 4, i32 1, i32 0, i32 2
  %36 = ptrtoint ptr %func.4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @iwl_fw_error_dump_wk, ptr %func.4, align 4
  %timer.4 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 0, i32 4, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %timer.4, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @iwl_fw_runtime_init.__key.1) #5
  tail call void @iwl_fwrt_dbgfs_register(ptr noundef %fwrt, ptr noundef %dbgfs_dir) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_fw_error_dump_wk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_fwrt_dbgfs_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_fw_runtime_suspend(ptr noundef %fwrt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %timestamp.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 13
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %timestamp.i) #5
  tail call void @_iwl_dbg_tlv_time_point(ptr noundef %fwrt, i32 noundef 16, ptr noundef null, i1 noundef zeroext false) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_fw_runtime_resume(ptr noundef %fwrt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_iwl_dbg_tlv_time_point(ptr noundef %fwrt, i32 noundef 17, ptr noundef null, i1 noundef zeroext false) #5
  %delay.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 13, i32 1
  %0 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.iwl_fw_resume_timestamp.exit_crit_edge, label %if.end.i

entry.iwl_fw_resume_timestamp.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_fw_resume_timestamp.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %timestamp.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 13
  %call.i = tail call i32 @round_jiffies_relative(i32 noundef %1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %timestamp.i, i32 noundef %call.i) #5
  br label %iwl_fw_resume_timestamp.exit

iwl_fw_resume_timestamp.exit:                     ; preds = %if.end.i, %entry.iwl_fw_resume_timestamp.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_set_soc_latency(ptr nocapture noundef readonly %fwrt) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_soc_configuration_cmd, align 8
  %hcmd = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #5
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %cmd, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hcmd) #5
  %1 = getelementptr inbounds i8, ptr %hcmd, i32 32
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !23
  %3 = ptrtoint ptr %hcmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cmd, ptr %hcmd, align 4
  %arrayinit.cur.ptr = getelementptr inbounds ptr, ptr %hcmd, i32 1
  %id = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 5
  %4 = call ptr @memset(ptr %arrayinit.cur.ptr, i32 0, i32 20)
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 513, ptr %id, align 4
  %len = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 8, ptr %len, align 4
  %arrayinit.start3 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %arrayinit.start3 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %arrayinit.start3, align 2
  %arrayinit.end4 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 7
  %8 = ptrtoint ptr %arrayinit.end4 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %arrayinit.end4, align 4
  %9 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fwrt, align 8
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %trans_cfg, align 4
  %integrated = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %integrated to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load = load i16, ptr %integrated, align 4
  %14 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not = icmp eq i16 %14, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end19_crit_edge

entry.do.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16777216, ptr %cmd, align 8
  br label %do.end19

do.end19:                                         ; preds = %if.then, %entry.do.end19_crit_edge
  %16 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trans_cfg, align 4
  %ltr_delay = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %ltr_delay to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load22 = load i16, ptr %ltr_delay, align 4
  %19 = and i16 %bf.load22, 384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp.not = icmp eq i16 %19, 0
  br i1 %cmp.not, label %do.end19.if.end70_crit_edge, label %land.lhs.true

do.end19.if.end70_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

land.lhs.true:                                    ; preds = %do.end19
  %20 = and i16 %bf.load22, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool33.not = icmp eq i16 %20, 0
  br i1 %tobool33.not, label %do.end46, label %if.then60.critedge, !prof !24

do.end46:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 86, i32 noundef 9, ptr noundef null) #5
  br label %if.end70

if.then60.critedge:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %bf.lshr65 = lshr i16 %bf.load22, 7
  %bf.clear66 = and i16 %bf.lshr65, 3
  %bf.cast67 = zext i16 %bf.clear66 to i32
  %21 = shl nuw nsw i32 %bf.cast67, 26
  %22 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cmd, align 8
  %or = or i32 %23, %21
  store i32 %or, ptr %cmd, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.then60.critedge, %do.end46, %do.end19.if.end70_crit_edge
  %fw = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 1
  %24 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fw, align 4
  %call71 = call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %25, i8 noundef zeroext 1, i8 noundef zeroext 13, i8 noundef zeroext 99) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call71)
  %cmp72 = icmp ugt i8 %call71, 1
  br i1 %cmp72, label %land.lhs.true74, label %if.end70.if.end85_crit_edge

if.end70.if.end85_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

land.lhs.true74:                                  ; preds = %if.end70
  %26 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fwrt, align 8
  %trans_cfg76 = getelementptr inbounds %struct.iwl_trans, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %trans_cfg76 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %trans_cfg76, align 4
  %low_latency_xtal = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %low_latency_xtal to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load77 = load i16, ptr %low_latency_xtal, align 4
  %31 = and i16 %bf.load77, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool81.not = icmp eq i16 %31, 0
  br i1 %tobool81.not, label %land.lhs.true74.if.end85_crit_edge, label %if.then82

land.lhs.true74.if.end85_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

if.then82:                                        ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cmd, align 8
  %or84 = or i32 %33, 33554432
  store i32 %or84, ptr %cmd, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %land.lhs.true74.if.end85_crit_edge, %if.end70.if.end85_crit_edge
  %34 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fwrt, align 8
  %trans_cfg87 = getelementptr inbounds %struct.iwl_trans, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %trans_cfg87 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %trans_cfg87, align 4
  %xtal_latency = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %xtal_latency to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %xtal_latency, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39)
  %latency = getelementptr inbounds %struct.iwl_soc_configuration_cmd, ptr %cmd, i32 0, i32 1
  %41 = ptrtoint ptr %latency to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %latency, align 4
  %call89 = call i32 @iwl_trans_send_cmd(ptr noundef %35, ptr noundef nonnull %hcmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end85.if.end98_crit_edge, label %do.end95

if.end85.if.end98_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98

do.end95:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %43, i32 noundef 0, ptr noundef nonnull @.str.4, i32 noundef %call89) #5
  br label %if.end98

if.end98:                                         ; preds = %do.end95, %if.end85.if.end98_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hcmd) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #5
  ret i32 %call89
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_trans_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_configure_rxq(ptr nocapture noundef readonly %fwrt) local_unnamed_addr #0 align 64 {
entry:
  %hcmd = alloca %struct.iwl_host_cmd, align 4
  %data = alloca %struct.iwl_trans_rxq_dma_data, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hcmd) #5
  %0 = getelementptr inbounds i8, ptr %hcmd, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 32)
  %2 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %hcmd, i32 0, i32 5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1293, ptr %2, align 4
  %4 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %hcmd, i32 0, i32 7
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %4, align 4
  %6 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fwrt, align 8
  %num_rx_queues = getelementptr inbounds %struct.iwl_trans, ptr %7, i32 0, i32 25
  %8 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_rx_queues, align 8
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp = icmp eq i8 %9, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %13)
  %cmp3 = icmp ult i32 %13, 18
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %sub = add nsw i32 %conv, -1
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sub, i32 32) #5
  %15 = extractvalue { i32, i1 } %14, 1
  %16 = extractvalue { i32, i1 } %14, 0
  %17 = or i32 %16, 4
  %retval.0.i = select i1 %15, i32 -1, i32 %17
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end6.cleanup_crit_edge, label %if.end12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %conv13 = trunc i32 %sub to i8
  %18 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv13, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp1577 = icmp ugt i8 %9, 1
  br i1 %cmp1577, label %for.body.lr.ph, label %if.end12.for.end_crit_edge

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end12
  %urbd_stts_wrptr = getelementptr inbounds %struct.iwl_trans_rxq_dma_data, ptr %data, i32 0, i32 2
  %ur_bd_cb = getelementptr inbounds %struct.iwl_trans_rxq_dma_data, ptr %data, i32 0, i32 3
  %fr_bd_wid = getelementptr inbounds %struct.iwl_trans_rxq_dma_data, ptr %data, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %iwl_trans_get_rxq_dma_data.exit.for.body_crit_edge, %for.body.lr.ph
  %i.078 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %iwl_trans_get_rxq_dma_data.exit.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %data) #5
  %19 = call ptr @memset(ptr %data, i32 255, i32 32)
  %add = add nuw nsw i32 %i.078, 1
  %conv17 = trunc i32 %add to i8
  %arrayidx = getelementptr %struct.iwl_rfh_queue_config, ptr %call9.i.i, i32 0, i32 2, i32 %i.078
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv17, ptr %arrayidx, align 4
  %21 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fwrt, align 8
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  %rxq_dma_data.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %24, i32 0, i32 15
  %25 = ptrtoint ptr %rxq_dma_data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rxq_dma_data.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %for.body
  %.b1.i = load i1, ptr @iwl_trans_get_rxq_dma_data.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.iwl_trans_get_rxq_dma_data.exit_crit_edge, label %if.then.i, !prof !25

land.rhs.i.iwl_trans_get_rxq_dma_data.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_trans_get_rxq_dma_data.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @iwl_trans_get_rxq_dma_data.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1206, i32 noundef 9, ptr noundef null) #5
  br label %iwl_trans_get_rxq_dma_data.exit

if.end39.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = call i32 %26(ptr noundef %22, i32 noundef %add, ptr noundef nonnull %data) #5
  br label %iwl_trans_get_rxq_dma_data.exit

iwl_trans_get_rxq_dma_data.exit:                  ; preds = %if.end39.i, %if.then.i, %land.rhs.i.iwl_trans_get_rxq_dma_data.exit_crit_edge
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %data, align 8
  %29 = call i64 @llvm.bswap.i64(i64 %28)
  %fr_bd_cb24 = getelementptr %struct.iwl_rfh_queue_config, ptr %call9.i.i, i32 0, i32 2, i32 %i.078, i32 4
  %30 = ptrtoint ptr %fr_bd_cb24 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %fr_bd_cb24, align 16
  %31 = ptrtoint ptr %urbd_stts_wrptr to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %urbd_stts_wrptr, align 8
  %33 = call i64 @llvm.bswap.i64(i64 %32)
  %urbd_stts_wrptr27 = getelementptr %struct.iwl_rfh_queue_config, ptr %call9.i.i, i32 0, i32 2, i32 %i.078, i32 3
  %34 = ptrtoint ptr %urbd_stts_wrptr27 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %urbd_stts_wrptr27, align 8
  %35 = ptrtoint ptr %ur_bd_cb to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %ur_bd_cb, align 8
  %37 = call i64 @llvm.bswap.i64(i64 %36)
  %ur_bd_cb30 = getelementptr %struct.iwl_rfh_queue_config, ptr %call9.i.i, i32 0, i32 2, i32 %i.078, i32 5
  %38 = ptrtoint ptr %ur_bd_cb30 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %ur_bd_cb30, align 8
  %39 = ptrtoint ptr %fr_bd_wid to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fr_bd_wid, align 8
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  %fr_bd_wid33 = getelementptr %struct.iwl_rfh_queue_config, ptr %call9.i.i, i32 0, i32 2, i32 %i.078, i32 6
  %42 = ptrtoint ptr %fr_bd_wid33 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %fr_bd_wid33, align 32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %data) #5
  %exitcond.not = icmp eq i32 %add, %sub
  br i1 %exitcond.not, label %iwl_trans_get_rxq_dma_data.exit.for.end_crit_edge, label %iwl_trans_get_rxq_dma_data.exit.for.body_crit_edge

iwl_trans_get_rxq_dma_data.exit.for.body_crit_edge: ; preds = %iwl_trans_get_rxq_dma_data.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

iwl_trans_get_rxq_dma_data.exit.for.end_crit_edge: ; preds = %iwl_trans_get_rxq_dma_data.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %iwl_trans_get_rxq_dma_data.exit.for.end_crit_edge, %if.end12.for.end_crit_edge
  %43 = ptrtoint ptr %hcmd to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call9.i.i, ptr %hcmd, align 4
  %conv36 = trunc i32 %retval.0.i to i16
  %len = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 6
  %44 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv36, ptr %len, align 4
  %45 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fwrt, align 8
  %call39 = call i32 @iwl_trans_send_cmd(ptr noundef %46, ptr noundef nonnull %hcmd) #5
  call void @kfree(ptr noundef nonnull %call9.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %for.end.cleanup_crit_edge, label %do.end

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %48, i32 noundef 0, ptr noundef nonnull @.str.5, i32 noundef %call39) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ %call39, %do.end ], [ 0, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hcmd) #5
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_iwl_dbg_tlv_time_point(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !9, !11, !13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @iwl_fw_runtime_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/init.c", i32 36, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @iwl_fw_runtime_init.__key.1, !1, !"__key", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/init.c", i32 86, i32 7}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/init.c", i32 100, i32 3}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/init.c", i32 156, i32 3}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-trans.h", i32 1206, i32 6}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"auto-init"}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{!"branch_weights", i32 2000, i32 1}
