; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/fw/smem.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/fw/smem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
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
%struct.hlist_node = type { ptr, ptr }
%struct.iwl_fwrt_dump_data = type { %union.anon.131 }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type { ptr, ptr }
%struct.iwl_txf_iter_data = type { i32, i32, i32, i8 }
%struct.anon.134 = type { i8, i8, i32, i32, i32, i32 }
%struct.anon.135 = type { %struct.delayed_work, i32, i64 }
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
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
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }
%struct.iwl_shared_mem_lmac_cfg = type { i32, [15 x i32], i32, i32 }

@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intel/iwlwifi/fw/smem.c\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Could not send the SMEM command: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.iwl_get_shared_mem_conf = private unnamed_addr constant [24 x i8] c"iwl_get_shared_mem_conf\00", align 1
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"SHARED MEM CFG: got memory offsets/sizes\0A\00", [54 x i8] zeroinitializer }, align 32
@iwl_parse_shared_mem_22000.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967164]
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 99, i32 3 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/fw/smem.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 110, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_get_shared_mem_conf(ptr noundef %fwrt) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd) #4
  %0 = call ptr @memset(ptr %cmd, i32 0, i32 36)
  %1 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd, i32 0, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %1, align 4
  %fw = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 1
  %3 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw, align 4
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %4, i32 0, i32 5, i32 8, i32 2
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i, align 4
  %7 = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not = icmp eq i32 %7, 0
  %spec.select = select i1 %tobool.i.not, i32 37, i32 512
  %8 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 5
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select, ptr %8, align 4
  %10 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fwrt, align 8
  %call3 = call i32 @iwl_trans_send_cmd(ptr noundef %11, ptr noundef nonnull %cmd) #4
  %12 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call3, label %do.end [
    i32 0, label %if.end26
    i32 -132, label %entry.cleanup_crit_edge
  ], !prof !17

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %call3) #4
  br label %cleanup

if.end26:                                         ; preds = %entry
  %resp_pkt = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 1
  %13 = ptrtoint ptr %resp_pkt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %resp_pkt, align 4
  %15 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fwrt, align 8
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %20)
  %cmp28 = icmp ugt i32 %20, 17
  br i1 %cmp28, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.end26
  %lmac_num1.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %14, i32 5
  %21 = ptrtoint ptr %lmac_num1.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %lmac_num1.i, align 1
  %23 = call i32 @llvm.bswap.i32(i32 %22) #4
  %24 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fw, align 4
  %call.i = call zeroext i8 @iwl_fw_lookup_notif_ver(ptr noundef %25, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp.i = icmp ugt i32 %23, 3
  br i1 %cmp.i, label %do.end.i, label %if.end22.i, !prof !18

do.end.i:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 20, i32 noundef 9, ptr noundef null) #4
  br label %do.end35

if.end22.i:                                       ; preds = %if.then29
  %smem_cfg.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11
  %26 = ptrtoint ptr %smem_cfg.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %smem_cfg.i, align 4
  %num_txfifo_entries.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 1
  %27 = ptrtoint ptr %num_txfifo_entries.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 15, ptr %num_txfifo_entries.i, align 4
  %rxfifo2_size.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %14, i32 3, i32 1
  %28 = ptrtoint ptr %rxfifo2_size.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %rxfifo2_size.i, align 1
  %30 = call i32 @llvm.bswap.i32(i32 %29) #4
  %rxfifo2_size25.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 3
  %31 = ptrtoint ptr %rxfifo2_size25.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %rxfifo2_size25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %call.i)
  %cmp26.i = icmp ugt i8 %call.i, 3
  br i1 %cmp26.i, label %land.lhs.true.i, label %if.end22.i.if.end85.i_crit_edge

if.end22.i.if.end85.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end85.i

land.lhs.true.i:                                  ; preds = %if.end22.i
  %32 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %14, align 1
  %34 = and i32 %33, -12648448
  %35 = call i32 @llvm.bswap.i32(i32 %34) #4
  %sub.i.i = add nsw i32 %35, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 260, i32 %sub.i.i)
  %cmp29.i = icmp ult i32 %sub.i.i, 260
  br i1 %cmp29.i, label %land.rhs.i, label %if.then82.critedge.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %.b132.i = load i1, ptr @iwl_parse_shared_mem_22000.__already_done, align 1
  br i1 %.b132.i, label %land.rhs.i.if.end85.i_crit_edge, label %if.then46.i, !prof !19

land.rhs.i.if.end85.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end85.i

if.then46.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @iwl_parse_shared_mem_22000.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 29, i32 noundef 9, ptr noundef null) #4
  br label %if.end85.i

if.then82.critedge.i:                             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %rxfifo2_control_size.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %14, i32 33
  %36 = ptrtoint ptr %rxfifo2_control_size.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %rxfifo2_control_size.i, align 1
  %38 = call i32 @llvm.bswap.i32(i32 %37) #4
  %rxfifo2_control_size84.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 4
  %39 = ptrtoint ptr %rxfifo2_control_size84.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %rxfifo2_control_size84.i, align 4
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then82.critedge.i, %if.then46.i, %land.rhs.i.if.end85.i_crit_edge, %if.end22.i.if.end85.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp86135.not.i = icmp eq i32 %22, 0
  br i1 %cmp86135.not.i, label %if.end85.i.do.end35_crit_edge, label %for.body.lr.ph.i

if.end85.i.do.end35_crit_edge:                    ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end35

for.body.lr.ph.i:                                 ; preds = %if.end85.i
  %lmac_smem.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %14, i32 5, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %lmac.0136.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc103.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx95.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 %lmac.0136.i
  %arrayidx92.i = getelementptr [3 x %struct.iwl_shared_mem_lmac_cfg], ptr %lmac_smem.i, i32 0, i32 %lmac.0136.i, i32 1, i32 0
  %40 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %arrayidx92.i, align 1
  %42 = call i32 @llvm.bswap.i32(i32 %41) #4
  %43 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx95.i, align 4
  %arrayidx92.1.i = getelementptr [3 x %struct.iwl_shared_mem_lmac_cfg], ptr %lmac_smem.i, i32 0, i32 %lmac.0136.i, i32 1, i32 1
  %44 = ptrtoint ptr %arrayidx92.1.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %arrayidx92.1.i, align 1
  %46 = call i32 @llvm.bswap.i32(i32 %45) #4
  %arrayidx97.1.i = getelementptr [15 x i32], ptr %arrayidx95.i, i32 0, i32 1
  %47 = ptrtoint ptr %arrayidx97.1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx97.1.i, align 4
  %arrayidx92.2.i = getelementptr [3 x %struct.iwl_shared_mem_lmac_cfg], ptr %lmac_smem.i, i32 0, i32 %lmac.0136.i, i32 1, i32 2
  %48 = ptrtoint ptr %arrayidx92.2.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %arrayidx92.2.i, align 1
  %50 = call i32 @llvm.bswap.i32(i32 %49) #4
  %arrayidx97.2.i = getelementptr [15 x i32], ptr %arrayidx95.i, i32 0, i32 2
  %51 = ptrtoint ptr %arrayidx97.2.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx97.2.i, align 4
  %arrayidx92.3.i = getelementptr [3 x %struct.iwl_shared_mem_lmac_cfg], ptr %lmac_smem.i, i32 0, i32 %lmac.0136.i, i32 1, i32 3
  %52 = ptrtoint ptr %arrayidx92.3.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %arrayidx92.3.i, align 1
  %54 = call i32 @llvm.bswap.i32(i32 %53) #4
  %arrayidx97.3.i = getelementptr [15 x i32], ptr %arrayidx95.i, i32 0, i32 3
  %55 = ptrtoint ptr %arrayidx97.3.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx97.3.i, align 4
  %arrayidx92.4.i = getelementptr [3 x %struct.iwl_shared_mem_lmac_cfg], ptr %lmac_smem.i, i32 0, i32 %lmac.0136.i, i32 1, i32 4
  %56 = ptrtoint ptr %arrayidx92.4.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %arrayidx92.4.i, align 1
  %58 = call i32 @llvm.bswap.i32(i32 %57) #4
  %arrayidx97.4.i = getelementptr [15 x i32], ptr %arrayidx95.i, i32 0, i32 4
  %59 = ptrtoint ptr %arrayidx97.4.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %arrayidx97.4.i, align 4
  %arrayidx92.5.i = getelementptr [3 x %struct.iwl_shared_mem_lmac_cfg], ptr %lmac_smem.i, i32 0, i32 %lmac.0136.i, i32 1, i32 5
  %60 = ptrtoint ptr %arrayidx92.5.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %arrayidx92.5.i, align 1
  %62 = call i32 @llvm.bswap.i32(i32 %61) #4
  %arrayidx97.5.i = getelementptr [15 x i32], ptr %arrayidx95.i, i32 0, i32 5
  %63 = ptrtoint ptr %arrayidx97.5.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %arrayidx97.5.i, align 4
  %arrayidx92.6.i = getelementptr [3 x %struct.iwl_shared_mem_lmac_cfg], ptr %lmac_smem.i, i32 0, i32 %lmac.0136.i, i32 1, i32 6
  %64 = ptrtoint ptr %arrayidx92.6.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %arrayidx92.6.i, align 1
  %66 = call i32 @llvm.bswap.i32(i32 %65) #4
  %arrayidx97.6.i = getelementptr [15 x i32], ptr %arrayidx95.i, i32 0, i32 6
  %67 = ptrtoint ptr %arrayidx97.6.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %arrayidx97.6.i, align 4
  %arrayidx92.7.i = getelementptr [3 x %struct.iwl_shared_mem_lmac_cfg], ptr %lmac_smem.i, i32 0, i32 %lmac.0136.i, i32 1, i32 7
  %68 = ptrtoint ptr %arrayidx92.7.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %arrayidx92.7.i, align 1
  %70 = call i32 @llvm.bswap.i32(i32 %69) #4
  %arrayidx97.7.i = getelementptr [15 x i32], ptr %arrayidx95.i, i32 0, i32 7
  %71 = ptrtoint ptr %arrayidx97.7.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %arrayidx97.7.i, align 4
  %arrayidx92.8.i = getelementptr [3 x %struct.iwl_shared_mem_lmac_cfg], ptr %lmac_smem.i, i32 0, i32 %lmac.0136.i, i32 1, i32 8
  %72 = ptrtoint ptr %arrayidx92.8.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %arrayidx92.8.i, align 1
  %74 = call i32 @llvm.bswap.i32(i32 %73) #4
  %arrayidx97.8.i = getelementptr [15 x i32], ptr %arrayidx95.i, i32 0, i32 8
  %75 = ptrtoint ptr %arrayidx97.8.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %arrayidx97.8.i, align 4
  %arrayidx92.9.i = getelementptr [3 x %struct.iwl_shared_mem_lmac_cfg], ptr %lmac_smem.i, i32 0, i32 %lmac.0136.i, i32 1, i32 9
  %76 = ptrtoint ptr %arrayidx92.9.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %arrayidx92.9.i, align 1
  %78 = call i32 @llvm.bswap.i32(i32 %77) #4
  %arrayidx97.9.i = getelementptr [15 x i32], ptr %arrayidx95.i, i32 0, i32 9
  %79 = ptrtoint ptr %arrayidx97.9.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %arrayidx97.9.i, align 4
  %arrayidx92.10.i = getelementptr [3 x %struct.iwl_shared_mem_lmac_cfg], ptr %lmac_smem.i, i32 0, i32 %lmac.0136.i, i32 1, i32 10
  %80 = ptrtoint ptr %arrayidx92.10.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %arrayidx92.10.i, align 1
  %82 = call i32 @llvm.bswap.i32(i32 %81) #4
  %arrayidx97.10.i = getelementptr [15 x i32], ptr %arrayidx95.i, i32 0, i32 10
  %83 = ptrtoint ptr %arrayidx97.10.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %arrayidx97.10.i, align 4
  %arrayidx92.11.i = getelementptr [3 x %struct.iwl_shared_mem_lmac_cfg], ptr %lmac_smem.i, i32 0, i32 %lmac.0136.i, i32 1, i32 11
  %84 = ptrtoint ptr %arrayidx92.11.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %arrayidx92.11.i, align 1
  %86 = call i32 @llvm.bswap.i32(i32 %85) #4
  %arrayidx97.11.i = getelementptr [15 x i32], ptr %arrayidx95.i, i32 0, i32 11
  %87 = ptrtoint ptr %arrayidx97.11.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %arrayidx97.11.i, align 4
  %arrayidx92.12.i = getelementptr [3 x %struct.iwl_shared_mem_lmac_cfg], ptr %lmac_smem.i, i32 0, i32 %lmac.0136.i, i32 1, i32 12
  %88 = ptrtoint ptr %arrayidx92.12.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %arrayidx92.12.i, align 1
  %90 = call i32 @llvm.bswap.i32(i32 %89) #4
  %arrayidx97.12.i = getelementptr [15 x i32], ptr %arrayidx95.i, i32 0, i32 12
  %91 = ptrtoint ptr %arrayidx97.12.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %arrayidx97.12.i, align 4
  %arrayidx92.13.i = getelementptr [3 x %struct.iwl_shared_mem_lmac_cfg], ptr %lmac_smem.i, i32 0, i32 %lmac.0136.i, i32 1, i32 13
  %92 = ptrtoint ptr %arrayidx92.13.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %arrayidx92.13.i, align 1
  %94 = call i32 @llvm.bswap.i32(i32 %93) #4
  %arrayidx97.13.i = getelementptr [15 x i32], ptr %arrayidx95.i, i32 0, i32 13
  %95 = ptrtoint ptr %arrayidx97.13.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %arrayidx97.13.i, align 4
  %arrayidx92.14.i = getelementptr [3 x %struct.iwl_shared_mem_lmac_cfg], ptr %lmac_smem.i, i32 0, i32 %lmac.0136.i, i32 1, i32 14
  %96 = ptrtoint ptr %arrayidx92.14.i to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %97 = load i32, ptr %arrayidx92.14.i, align 1
  %98 = call i32 @llvm.bswap.i32(i32 %97) #4
  %arrayidx97.14.i = getelementptr [15 x i32], ptr %arrayidx95.i, i32 0, i32 14
  %99 = ptrtoint ptr %arrayidx97.14.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %arrayidx97.14.i, align 4
  %rxfifo1_size.i = getelementptr [3 x %struct.iwl_shared_mem_lmac_cfg], ptr %lmac_smem.i, i32 0, i32 %lmac.0136.i, i32 3
  %100 = ptrtoint ptr %rxfifo1_size.i to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %101 = load i32, ptr %rxfifo1_size.i, align 1
  %102 = call i32 @llvm.bswap.i32(i32 %101) #4
  %rxfifo1_size101.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 %lmac.0136.i, i32 1
  %103 = ptrtoint ptr %rxfifo1_size101.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %rxfifo1_size101.i, align 4
  %inc103.i = add nuw nsw i32 %lmac.0136.i, 1
  %exitcond.not.i = icmp eq i32 %inc103.i, %23
  br i1 %exitcond.not.i, label %for.body.i.do.end35_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i.do.end35_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end35

if.else30:                                        ; preds = %if.end26
  %smem_cfg.i49 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11
  %104 = ptrtoint ptr %smem_cfg.i49 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 1, ptr %smem_cfg.i49, align 4
  %num_txfifo_entries.i50 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 1
  %105 = ptrtoint ptr %num_txfifo_entries.i50 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 8, ptr %num_txfifo_entries.i50, align 4
  %txfifo_size.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %14, i32 3, i32 1
  %lmac.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2
  %106 = ptrtoint ptr %txfifo_size.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %txfifo_size.i, align 1
  %108 = call i32 @llvm.bswap.i32(i32 %107) #4
  %109 = ptrtoint ptr %lmac.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %lmac.i, align 4
  %arrayidx.1.i = getelementptr %struct.iwl_rx_packet, ptr %14, i32 4
  %110 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %arrayidx.1.i, align 1
  %112 = call i32 @llvm.bswap.i32(i32 %111) #4
  %arrayidx5.1.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 0, i32 0, i32 1
  %113 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %arrayidx5.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.iwl_rx_packet, ptr %14, i32 4, i32 1
  %114 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_loadN_noabort(i32 %114, i32 4)
  %115 = load i32, ptr %arrayidx.2.i, align 1
  %116 = call i32 @llvm.bswap.i32(i32 %115) #4
  %arrayidx5.2.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 0, i32 0, i32 2
  %117 = ptrtoint ptr %arrayidx5.2.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %arrayidx5.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.iwl_rx_packet, ptr %14, i32 5
  %118 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %arrayidx.3.i, align 1
  %120 = call i32 @llvm.bswap.i32(i32 %119) #4
  %arrayidx5.3.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 0, i32 0, i32 3
  %121 = ptrtoint ptr %arrayidx5.3.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %arrayidx5.3.i, align 4
  %arrayidx.4.i = getelementptr %struct.iwl_rx_packet, ptr %14, i32 5, i32 1
  %122 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %arrayidx.4.i, align 1
  %124 = call i32 @llvm.bswap.i32(i32 %123) #4
  %arrayidx5.4.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 0, i32 0, i32 4
  %125 = ptrtoint ptr %arrayidx5.4.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %arrayidx5.4.i, align 4
  %arrayidx.5.i = getelementptr %struct.iwl_rx_packet, ptr %14, i32 6
  %126 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_loadN_noabort(i32 %126, i32 4)
  %127 = load i32, ptr %arrayidx.5.i, align 1
  %128 = call i32 @llvm.bswap.i32(i32 %127) #4
  %arrayidx5.5.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 0, i32 0, i32 5
  %129 = ptrtoint ptr %arrayidx5.5.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %arrayidx5.5.i, align 4
  %arrayidx.6.i = getelementptr %struct.iwl_rx_packet, ptr %14, i32 6, i32 1
  %130 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_loadN_noabort(i32 %130, i32 4)
  %131 = load i32, ptr %arrayidx.6.i, align 1
  %132 = call i32 @llvm.bswap.i32(i32 %131) #4
  %arrayidx5.6.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 0, i32 0, i32 6
  %133 = ptrtoint ptr %arrayidx5.6.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %arrayidx5.6.i, align 4
  %arrayidx.7.i = getelementptr %struct.iwl_rx_packet, ptr %14, i32 7
  %134 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_loadN_noabort(i32 %134, i32 4)
  %135 = load i32, ptr %arrayidx.7.i, align 1
  %136 = call i32 @llvm.bswap.i32(i32 %135) #4
  %arrayidx5.7.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 0, i32 0, i32 7
  %137 = ptrtoint ptr %arrayidx5.7.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %arrayidx5.7.i, align 4
  %rxfifo_size.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %14, i32 7, i32 1
  %138 = ptrtoint ptr %rxfifo_size.i to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %139 = load i32, ptr %rxfifo_size.i, align 1
  %140 = call i32 @llvm.bswap.i32(i32 %139) #4
  %rxfifo1_size.i51 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 2, i32 0, i32 1
  %141 = ptrtoint ptr %rxfifo1_size.i51 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %rxfifo1_size.i51, align 4
  %arrayidx11.i = getelementptr %struct.iwl_rx_packet, ptr %14, i32 8
  %142 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_loadN_noabort(i32 %142, i32 4)
  %143 = load i32, ptr %arrayidx11.i, align 1
  %144 = call i32 @llvm.bswap.i32(i32 %143) #4
  %rxfifo2_size.i52 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 3
  %145 = ptrtoint ptr %rxfifo2_size.i52 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %rxfifo2_size.i52, align 4
  %146 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %fw, align 4
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %147, i32 0, i32 5, i32 8, i32 2
  %148 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %150 = and i32 %149, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool.i.not.i = icmp eq i32 %150, 0
  br i1 %tobool.i.not.i, label %if.else30.do.end35_crit_edge, label %do.end.i54

if.else30.do.end35_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end35

do.end.i54:                                       ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #6
  %internal_txfifo_addr.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %14, i32 10
  %151 = ptrtoint ptr %internal_txfifo_addr.i to i32
  call void @__asan_loadN_noabort(i32 %151, i32 4)
  %152 = load i32, ptr %internal_txfifo_addr.i, align 1
  %153 = call i32 @llvm.bswap.i32(i32 %152) #4
  %internal_txfifo_addr14.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 5
  %154 = ptrtoint ptr %internal_txfifo_addr14.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %internal_txfifo_addr14.i, align 4
  %internal_txfifo_size.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %14, i32 10, i32 1
  %155 = ptrtoint ptr %internal_txfifo_size.i to i32
  call void @__asan_loadN_noabort(i32 %155, i32 4)
  %156 = load i32, ptr %internal_txfifo_size.i, align 1
  %157 = call i32 @llvm.bswap.i32(i32 %156) #4
  %arrayidx21.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 6, i32 0
  %158 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %arrayidx21.i, align 4
  %arrayidx18.1.i = getelementptr %struct.iwl_rx_packet, ptr %14, i32 11
  %159 = ptrtoint ptr %arrayidx18.1.i to i32
  call void @__asan_loadN_noabort(i32 %159, i32 4)
  %160 = load i32, ptr %arrayidx18.1.i, align 1
  %161 = call i32 @llvm.bswap.i32(i32 %160) #4
  %arrayidx21.1.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 6, i32 1
  %162 = ptrtoint ptr %arrayidx21.1.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %arrayidx21.1.i, align 4
  %arrayidx18.2.i = getelementptr %struct.iwl_rx_packet, ptr %14, i32 11, i32 1
  %163 = ptrtoint ptr %arrayidx18.2.i to i32
  call void @__asan_loadN_noabort(i32 %163, i32 4)
  %164 = load i32, ptr %arrayidx18.2.i, align 1
  %165 = call i32 @llvm.bswap.i32(i32 %164) #4
  %arrayidx21.2.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 6, i32 2
  %166 = ptrtoint ptr %arrayidx21.2.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %arrayidx21.2.i, align 4
  %arrayidx18.3.i = getelementptr %struct.iwl_rx_packet, ptr %14, i32 12
  %167 = ptrtoint ptr %arrayidx18.3.i to i32
  call void @__asan_loadN_noabort(i32 %167, i32 4)
  %168 = load i32, ptr %arrayidx18.3.i, align 1
  %169 = call i32 @llvm.bswap.i32(i32 %168) #4
  %arrayidx21.3.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 6, i32 3
  %170 = ptrtoint ptr %arrayidx21.3.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %arrayidx21.3.i, align 4
  %arrayidx18.4.i = getelementptr %struct.iwl_rx_packet, ptr %14, i32 12, i32 1
  %171 = ptrtoint ptr %arrayidx18.4.i to i32
  call void @__asan_loadN_noabort(i32 %171, i32 4)
  %172 = load i32, ptr %arrayidx18.4.i, align 1
  %173 = call i32 @llvm.bswap.i32(i32 %172) #4
  %arrayidx21.4.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 6, i32 4
  %174 = ptrtoint ptr %arrayidx21.4.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %arrayidx21.4.i, align 4
  %arrayidx18.5.i = getelementptr %struct.iwl_rx_packet, ptr %14, i32 13
  %175 = ptrtoint ptr %arrayidx18.5.i to i32
  call void @__asan_loadN_noabort(i32 %175, i32 4)
  %176 = load i32, ptr %arrayidx18.5.i, align 1
  %177 = call i32 @llvm.bswap.i32(i32 %176) #4
  %arrayidx21.5.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 11, i32 6, i32 5
  %178 = ptrtoint ptr %arrayidx21.5.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %arrayidx21.5.i, align 4
  br label %do.end35

do.end35:                                         ; preds = %do.end.i54, %if.else30.do.end35_crit_edge, %for.body.i.do.end35_crit_edge, %if.end85.i.do.end35_crit_edge, %do.end.i
  %dev = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %179 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dev, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %180, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_get_shared_mem_conf, ptr noundef nonnull @.str.2) #4
  %_rx_page_addr.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 2
  %181 = ptrtoint ptr %_rx_page_addr.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %_rx_page_addr.i, align 4
  %_rx_page_order.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 3
  %183 = ptrtoint ptr %_rx_page_order.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %_rx_page_order.i, align 4
  call void @free_pages(i32 noundef %182, i32 noundef %184) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_trans_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_fw_lookup_notif_ver(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/smem.c", i32 99, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.iwl_get_shared_mem_conf, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/smem.c", i32 110, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/smem.c", i32 29, i32 7}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{!"branch_weights", i32 2000, i32 1}
