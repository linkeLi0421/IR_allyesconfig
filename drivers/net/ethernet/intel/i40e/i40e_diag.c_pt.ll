; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/i40e/i40e_diag.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/i40e/i40e_diag.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i40e_diag_reg_test_info = type { i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i40e_hw = type { ptr, ptr, %struct.i40e_phy_info, %struct.i40e_mac_info, %struct.i40e_bus_info, %struct.i40e_nvm_info, %struct.i40e_fc_info, i16, i16, i16, i16, i8, i8, i8, %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities, i16, i8, i16, i16, i16, i16, i16, %struct.i40e_adminq_info, i32, %struct.i40e_aq_desc, %struct.i40e_aq_desc, %struct.i40e_virt_mem, i8, i16, %struct.i40e_hmc_info, i16, %struct.i40e_dcbx_config, %struct.i40e_dcbx_config, %struct.i40e_dcbx_config, i64, i16, i16, i16, i32, [16 x i8] }
%struct.i40e_phy_info = type { %struct.i40e_link_status, %struct.i40e_link_status, i8, i32, i64 }
%struct.i40e_link_status = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, [3 x i8] }
%struct.i40e_mac_info = type { i32, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i16 }
%struct.i40e_bus_info = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.i40e_nvm_info = type { i64, i32, i16, i8, i16, i32, i32 }
%struct.i40e_fc_info = type { i32, i32 }
%struct.i40e_hw_capabilities = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, [30 x i8], [30 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i64 }
%struct.i40e_adminq_info = type { %struct.i40e_adminq_ring, %struct.i40e_adminq_ring, i32, i16, i16, i16, i16, i16, i16, i32, i16, i16, %struct.mutex, %struct.mutex, i32, i32 }
%struct.i40e_adminq_ring = type { %struct.i40e_virt_mem, %struct.i40e_dma_mem, %struct.i40e_virt_mem, %union.anon, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct.i40e_dma_mem = type { ptr, i32, i32 }
%union.anon = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.i40e_aq_desc = type { i16, i16, i16, i16, i32, i32, %union.anon.2 }
%union.anon.2 = type { %struct.anon }
%struct.anon = type { i32, i32, i32, i32 }
%struct.i40e_virt_mem = type { ptr, i32 }
%struct.i40e_hmc_info = type { i32, i8, i16, ptr, %struct.i40e_virt_mem, %struct.i40e_hmc_sd_table }
%struct.i40e_hmc_sd_table = type { %struct.i40e_virt_mem, i32, i32, ptr }
%struct.i40e_dcbx_config = type { i8, i8, i32, i32, %struct.i40e_dcb_ets_config, %struct.i40e_dcb_ets_config, %struct.i40e_dcb_pfc_config, [32 x %struct.i40e_dcb_app_priority_table] }
%struct.i40e_dcb_ets_config = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8] }
%struct.i40e_dcb_pfc_config = type { i8, i8, i8, i8 }
%struct.i40e_dcb_app_priority_table = type { i8, i8, i16 }

@i40e_reg_list = dso_local global { [12 x %struct.i40e_diag_reg_test_info], [32 x i8] } { [12 x %struct.i40e_diag_reg_test_info] [%struct.i40e_diag_reg_test_info { i32 1064960, i32 65471, i32 1, i32 4 }, %struct.i40e_diag_reg_test_info { i32 229376, i32 4095, i32 3, i32 128 }, %struct.i40e_diag_reg_test_info { i32 196608, i32 4095, i32 1, i32 4 }, %struct.i40e_diag_reg_test_info { i32 198656, i32 4095, i32 1, i32 4 }, %struct.i40e_diag_reg_test_info { i32 200704, i32 4095, i32 1, i32 4 }, %struct.i40e_diag_reg_test_info { i32 230400, i32 12, i32 1, i32 0 }, %struct.i40e_diag_reg_test_info { i32 230656, i32 8191, i32 1, i32 0 }, %struct.i40e_diag_reg_test_info { i32 217088, i32 2047, i32 1, i32 4 }, %struct.i40e_diag_reg_test_info { i32 245760, i32 255, i32 1, i32 4 }, %struct.i40e_diag_reg_test_info { i32 237568, i32 255, i32 1, i32 4 }, %struct.i40e_diag_reg_test_info { i32 231424, i32 -135135232, i32 1, i32 0 }, %struct.i40e_diag_reg_test_info zeroinitializer], [32 x i8] zeroinitializer }, align 32
@i40e_diag_reg_pattern_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 30, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\016i40e %02x:%02x.%x %s: reg pattern test failed - reg 0x%08x pat 0x%08x val 0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"i40e_diag_reg_pattern_test\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/intel/i40e/i40e_diag.c\00", [52 x i8] zeroinitializer }, align 32
@i40e_diag_reg_pattern_test._entry_ptr = internal global ptr @i40e_diag_reg_pattern_test._entry, section ".printk_index", align 4
@i40e_diag_reg_pattern_test._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 40, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\016i40e %02x:%02x.%x %s: reg restore test failed - reg 0x%08x orig_val 0x%08x val 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@i40e_diag_reg_pattern_test._entry_ptr.5 = internal global ptr @i40e_diag_reg_pattern_test._entry.3, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 196608, i64 198656, i64 200704, i64 237568, i64 245760]
@___asan_gen_.6 = private unnamed_addr constant [14 x i8] c"i40e_reg_list\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 47, i32 32 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 28, i32 4 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [47 x i8] c"../drivers/net/ethernet/intel/i40e/i40e_diag.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 38, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @i40e_diag_reg_pattern_test._entry, ptr @i40e_diag_reg_pattern_test._entry.3, ptr @i40e_diag_reg_pattern_test._entry_ptr, ptr @i40e_diag_reg_pattern_test._entry_ptr.5, ptr @i40e_reg_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_reg_list to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_diag_reg_pattern_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_diag_reg_pattern_test._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_diag_reg_test(ptr noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @i40e_reg_list, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not80.not = icmp eq i32 %0, 0
  br i1 %cmp.not80.not, label %entry.for.end51_crit_edge, label %for.body.lr.ph

entry.for.end51_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end51

for.body.lr.ph:                                   ; preds = %entry
  %num_tx_qp = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 15, i32 36
  %num_msix_vectors = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 15, i32 38
  %debug_mask.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 39
  %bus_id.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 6
  %device.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 4
  %func.i = getelementptr inbounds %struct.i40e_hw, ptr %hw, i32 0, i32 4, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc49.for.body_crit_edge, %for.body.lr.ph
  %1 = phi i32 [ %0, %for.body.lr.ph ], [ %75, %for.inc49.for.body_crit_edge ]
  %arrayidx85 = phi ptr [ @i40e_reg_list, %for.body.lr.ph ], [ %arrayidx, %for.inc49.for.body_crit_edge ]
  %i.081 = phi i32 [ 0, %for.body.lr.ph ], [ %inc50, %for.inc49.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1064960, i32 %1)
  %cmp3 = icmp eq i32 %1, 1064960
  br i1 %cmp3, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %2 = ptrtoint ptr %num_tx_qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tx_qp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4.not = icmp eq i32 %3, 0
  br i1 %cmp4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %elements = getelementptr [12 x %struct.i40e_diag_reg_test_info], ptr @i40e_reg_list, i32 0, i32 %i.081, i32 2
  %4 = ptrtoint ptr %elements to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %elements, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %5 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx85, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.end.if.end34_crit_edge [
    i32 196608, label %if.end.land.lhs.true26_crit_edge
    i32 198656, label %if.end.land.lhs.true26_crit_edge125
    i32 200704, label %if.end.land.lhs.true26_crit_edge126
    i32 245760, label %if.end.land.lhs.true26_crit_edge127
    i32 237568, label %if.end.land.lhs.true26_crit_edge128
  ]

if.end.land.lhs.true26_crit_edge128:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true26

if.end.land.lhs.true26_crit_edge127:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true26

if.end.land.lhs.true26_crit_edge126:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true26

if.end.land.lhs.true26_crit_edge125:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true26

if.end.land.lhs.true26_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true26

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

land.lhs.true26:                                  ; preds = %if.end.land.lhs.true26_crit_edge, %if.end.land.lhs.true26_crit_edge125, %if.end.land.lhs.true26_crit_edge126, %if.end.land.lhs.true26_crit_edge127, %if.end.land.lhs.true26_crit_edge128
  %8 = ptrtoint ptr %num_msix_vectors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_msix_vectors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp28.not = icmp eq i32 %9, 0
  br i1 %cmp28.not, label %land.lhs.true26.if.end34_crit_edge, label %if.then29

land.lhs.true26.if.end34_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then29:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add i32 %9, -1
  %elements33 = getelementptr [12 x %struct.i40e_diag_reg_test_info], ptr @i40e_reg_list, i32 0, i32 %i.081, i32 2
  %10 = ptrtoint ptr %elements33 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %elements33, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %land.lhs.true26.if.end34_crit_edge, %if.end.if.end34_crit_edge
  %mask36 = getelementptr [12 x %struct.i40e_diag_reg_test_info], ptr @i40e_reg_list, i32 0, i32 %i.081, i32 1
  %11 = ptrtoint ptr %mask36 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask36, align 4
  %elements39 = getelementptr [12 x %struct.i40e_diag_reg_test_info], ptr @i40e_reg_list, i32 0, i32 %i.081, i32 2
  %13 = ptrtoint ptr %elements39 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %elements39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp4077.not = icmp eq i32 %14, 0
  br i1 %cmp4077.not, label %if.end34.for.inc49_crit_edge, label %for.body45.lr.ph

if.end34.for.inc49_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49

for.body45.lr.ph:                                 ; preds = %if.end34
  %stride = getelementptr [12 x %struct.i40e_diag_reg_test_info], ptr @i40e_reg_list, i32 0, i32 %i.081, i32 3
  %and.i = and i32 %12, 1515870810
  %15 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  %and.1.i = and i32 %12, -1515870811
  %16 = tail call i32 @llvm.bswap.i32(i32 %and.1.i) #5
  %17 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  br label %for.body45

for.body45:                                       ; preds = %i40e_diag_reg_pattern_test.exit.for.body45_crit_edge, %for.body45.lr.ph
  %j.079 = phi i32 [ 0, %for.body45.lr.ph ], [ %inc, %i40e_diag_reg_pattern_test.exit.for.body45_crit_edge ]
  %18 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx85, align 4
  %20 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stride, align 4
  %mul = mul i32 %21, %j.079
  %add = add i32 %mul, %19
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %23, i32 %add
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 8
  %add.ptr3.i = getelementptr i8, ptr %26, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %15) #5, !srcloc !26
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 8
  %add.ptr7.i = getelementptr i8, ptr %28, i32 %add
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #5, !srcloc !23
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  %and11.i = and i32 %30, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %and11.i, i32 %and.i)
  %cmp13.not.i = icmp eq i32 %and11.i, %and.i
  br i1 %cmp13.not.i, label %for.cond.i, label %for.body45.do.body14.i_crit_edge

for.body45.do.body14.i_crit_edge:                 ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body14.i

for.cond.i:                                       ; preds = %for.body45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %31 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw, align 8
  %add.ptr3.1.i = getelementptr i8, ptr %32, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.1.i, i32 %16) #5, !srcloc !26
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 8
  %add.ptr7.1.i = getelementptr i8, ptr %34, i32 %add
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.1.i) #5, !srcloc !23
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  %and11.1.i = and i32 %36, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %and11.1.i, i32 %and.1.i)
  %cmp13.not.1.i = icmp eq i32 %and11.1.i, %and.1.i
  br i1 %cmp13.not.1.i, label %for.cond.1.i, label %for.cond.i.do.body14.i_crit_edge

for.cond.i.do.body14.i_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body14.i

for.cond.1.i:                                     ; preds = %for.cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %37 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw, align 8
  %add.ptr3.2.i = getelementptr i8, ptr %38, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.2.i, i32 0) #5, !srcloc !26
  %39 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw, align 8
  %add.ptr7.2.i = getelementptr i8, ptr %40, i32 %add
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.2.i) #5, !srcloc !23
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  %and11.2.i = and i32 %42, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.2.i)
  %cmp13.not.2.i = icmp eq i32 %and11.2.i, 0
  br i1 %cmp13.not.2.i, label %for.cond.2.i, label %for.cond.1.i.do.body14.i_crit_edge

for.cond.1.i.do.body14.i_crit_edge:               ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body14.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %43 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw, align 8
  %add.ptr3.3.i = getelementptr i8, ptr %44, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.3.i, i32 %17) #5, !srcloc !26
  %45 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw, align 8
  %add.ptr7.3.i = getelementptr i8, ptr %46, i32 %add
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.3.i) #5, !srcloc !23
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  %and11.3.i = and i32 %48, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %and11.3.i, i32 %12)
  %cmp13.not.3.i = icmp eq i32 %and11.3.i, %12
  br i1 %cmp13.not.3.i, label %for.cond.3.i, label %for.cond.2.i.do.body14.i_crit_edge

for.cond.2.i.do.body14.i_crit_edge:               ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body14.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %49 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw, align 8
  %add.ptr33.i = getelementptr i8, ptr %50, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 %24) #5, !srcloc !26
  %51 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw, align 8
  %add.ptr37.i = getelementptr i8, ptr %52, i32 %add
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.i) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %24)
  %cmp41.not.i = icmp eq i32 %53, %24
  br i1 %cmp41.not.i, label %i40e_diag_reg_pattern_test.exit, label %do.body44.i

do.body14.i:                                      ; preds = %for.cond.2.i.do.body14.i_crit_edge, %for.cond.1.i.do.body14.i_crit_edge, %for.cond.i.do.body14.i_crit_edge, %for.body45.do.body14.i_crit_edge
  %.lcssa103.i = phi i32 [ 1515870810, %for.body45.do.body14.i_crit_edge ], [ -1515870811, %for.cond.i.do.body14.i_crit_edge ], [ 0, %for.cond.1.i.do.body14.i_crit_edge ], [ -1, %for.cond.2.i.do.body14.i_crit_edge ]
  %.lcssa.i = phi i32 [ %30, %for.body45.do.body14.i_crit_edge ], [ %36, %for.cond.i.do.body14.i_crit_edge ], [ %42, %for.cond.1.i.do.body14.i_crit_edge ], [ %48, %for.cond.2.i.do.body14.i_crit_edge ]
  %54 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %debug_mask.i, align 8
  %and15.i = and i32 %55, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool.not.i, label %do.body14.i.for.end51_crit_edge, label %do.end19.i

do.body14.i.for.end51_crit_edge:                  ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end51

do.end19.i:                                       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %bus_id.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %bus_id.i, align 2
  %conv.i = zext i16 %57 to i32
  %58 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %device.i, align 2
  %conv22.i = zext i16 %59 to i32
  %60 = ptrtoint ptr %func.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %func.i, align 4
  %conv24.i = zext i16 %61 to i32
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv.i, i32 noundef %conv22.i, i32 noundef %conv24.i, ptr noundef nonnull @.str.1, i32 noundef %add, i32 noundef %.lcssa103.i, i32 noundef %.lcssa.i) #8
  br label %for.end51

do.body44.i:                                      ; preds = %for.cond.3.i
  %62 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %debug_mask.i, align 8
  %and46.i = and i32 %63, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %do.body44.i.for.end51_crit_edge, label %do.end51.i

do.body44.i.for.end51_crit_edge:                  ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end51

do.end51.i:                                       ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #7
  %64 = tail call i32 @llvm.bswap.i32(i32 %53) #5
  %65 = tail call i32 @llvm.bswap.i32(i32 %24) #5
  %66 = ptrtoint ptr %bus_id.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %bus_id.i, align 2
  %conv55.i = zext i16 %67 to i32
  %68 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %device.i, align 2
  %conv58.i = zext i16 %69 to i32
  %70 = ptrtoint ptr %func.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %func.i, align 4
  %conv61.i = zext i16 %71 to i32
  %call62.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv55.i, i32 noundef %conv58.i, i32 noundef %conv61.i, ptr noundef nonnull @.str.1, i32 noundef %add, i32 noundef %65, i32 noundef %64) #8
  br label %for.end51

i40e_diag_reg_pattern_test.exit:                  ; preds = %for.cond.3.i
  %inc = add nuw i32 %j.079, 1
  %72 = ptrtoint ptr %elements39 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %elements39, align 4
  %cmp40 = icmp ult i32 %inc, %73
  br i1 %cmp40, label %i40e_diag_reg_pattern_test.exit.for.body45_crit_edge, label %i40e_diag_reg_pattern_test.exit.for.inc49_crit_edge

i40e_diag_reg_pattern_test.exit.for.inc49_crit_edge: ; preds = %i40e_diag_reg_pattern_test.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49

i40e_diag_reg_pattern_test.exit.for.body45_crit_edge: ; preds = %i40e_diag_reg_pattern_test.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body45

for.inc49:                                        ; preds = %i40e_diag_reg_pattern_test.exit.for.inc49_crit_edge, %if.end34.for.inc49_crit_edge
  %inc50 = add i32 %i.081, 1
  %arrayidx = getelementptr [12 x %struct.i40e_diag_reg_test_info], ptr @i40e_reg_list, i32 0, i32 %inc50
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx, align 4
  %cmp.not.not = icmp eq i32 %75, 0
  br i1 %cmp.not.not, label %for.inc49.for.end51_crit_edge, label %for.inc49.for.body_crit_edge

for.inc49.for.body_crit_edge:                     ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc49.for.end51_crit_edge:                    ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end51

for.end51:                                        ; preds = %for.inc49.for.end51_crit_edge, %do.end51.i, %do.body44.i.for.end51_crit_edge, %do.end19.i, %do.body14.i.for.end51_crit_edge, %entry.for.end51_crit_edge
  %ret_code.0.lcssa = phi i32 [ 0, %entry.for.end51_crit_edge ], [ -62, %do.end51.i ], [ -62, %do.body44.i.for.end51_crit_edge ], [ -62, %do.end19.i ], [ -62, %do.body14.i.for.end51_crit_edge ], [ 0, %for.inc49.for.end51_crit_edge ]
  ret i32 %ret_code.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_diag_eeprom_test(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %reg_val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_val) #5
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg_val, align 2, !annotation !30
  %call = call i32 @i40e_read_nvm_word(ptr noundef %hw, i16 noundef zeroext 0, ptr noundef nonnull %reg_val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %1 = ptrtoint ptr %reg_val to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %reg_val, align 2
  %3 = and i16 %2, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %3)
  %cmp = icmp eq i16 %3, 64
  br i1 %cmp, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = call i32 @i40e_validate_nvm_checksum(ptr noundef %hw, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then ], [ -62, %land.lhs.true.cleanup_crit_edge ], [ -62, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_read_nvm_word(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_validate_nvm_checksum(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @i40e_reg_list, !1, !"i40e_reg_list", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/i40e/i40e_diag.c", i32 47, i32 32}
!2 = distinct !{null, !3, !"patterns", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/i40e/i40e_diag.c", i32 16, i32 19}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/i40e/i40e_diag.c", i32 28, i32 4}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @i40e_diag_reg_pattern_test._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @i40e_diag_reg_pattern_test._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/i40e/i40e_diag.c", i32 38, i32 3}
!12 = !{ptr @i40e_diag_reg_pattern_test._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @i40e_diag_reg_pattern_test._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 6077164}
!24 = !{i64 2157739575}
!25 = !{i64 2157740222}
!26 = !{i64 6076746}
!27 = !{i64 2157740999}
!28 = !{i64 2157743863}
!29 = !{i64 2157744628}
!30 = !{!"auto-init"}
