; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/apm/xgene/xgene_enet_cle.c_pt.bc'
source_filename = "../drivers/net/ethernet/apm/xgene/xgene_enet_cle.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xgene_cle_ops = type { ptr }
%struct.xgene_cle_ptree_ewdn = type { i8, i8, i8, i8, i8, i8, i16, i8, [6 x %struct.xgene_cle_ptree_branch] }
%struct.xgene_cle_ptree_branch = type { i8, i16, i8, i8, i8, i16, i8, i16, i16 }
%struct.xgene_cle_dbptr = type { i8, i8, i8, i16, i8, i8, i8, i64, i8, i8, i64, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.xgene_cle_ptree_kn = type { i8, i8, [32 x %struct.xgene_cle_ptree_key] }
%struct.xgene_cle_ptree_key = type { i8, i16 }
%struct.xgene_enet_pdata = type { ptr, ptr, i32, ptr, ptr, i32, [8 x ptr], [8 x ptr], [8 x i16], [8 x i16], ptr, i32, i32, [16 x i32], i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.xgene_enet_cle, ptr, i64, i64, %struct.spinlock, ptr, %struct.spinlock, ptr, ptr, ptr, %struct.delayed_work, i32, i8, i8, i8, i16, [4 x i32], [4 x i32], %struct.spinlock, i8, i8, i8, ptr, i8, i32, i8, i8 }
%struct.xgene_enet_cle = type { ptr, %struct.xgene_cle_ptree, i32, i32, i32, i32, i32 }
%struct.xgene_cle_ptree = type { ptr, ptr, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.xgene_enet_desc_ring = type { ptr, i16, i16, i16, i16, i16, i16, i16, [16 x i8], i32, [6 x i32], ptr, ptr, i32, i32, ptr, i16, i16, i32, i8, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.napi_struct, %union.anon.144, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.144 = type { ptr }

@xgene_cle3in_ops = dso_local constant { %struct.xgene_cle_ops, [28 x i8] } { %struct.xgene_cle_ops { ptr @xgene_enet_cle_init }, [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RSS initialization failed\0A\00", [37 x i8] zeroinitializer }, align 32
@xgene_init_ptree_dn = internal constant { [6 x %struct.xgene_cle_ptree_ewdn], [132 x i8] } { [6 x %struct.xgene_cle_ptree_ewdn] [%struct.xgene_cle_ptree_ewdn { i8 2, i8 0, i8 1, i8 0, i8 0, i8 0, i16 0, i8 2, [6 x %struct.xgene_cle_ptree_branch] [%struct.xgene_cle_ptree_branch { i8 1, i16 22, i8 0, i8 0, i8 0, i16 1, i8 0, i16 8, i16 0 }, %struct.xgene_cle_ptree_branch { i8 0, i16 262, i8 0, i8 0, i8 0, i16 5, i8 0, i16 0, i16 -1 }, %struct.xgene_cle_ptree_branch zeroinitializer, %struct.xgene_cle_ptree_branch zeroinitializer, %struct.xgene_cle_ptree_branch zeroinitializer, %struct.xgene_cle_ptree_branch zeroinitializer] }, %struct.xgene_cle_ptree_ewdn { i8 2, i8 0, i8 1, i8 0, i8 0, i8 0, i16 0, i8 3, [6 x %struct.xgene_cle_ptree_branch] [%struct.xgene_cle_ptree_branch { i8 1, i16 26, i8 0, i8 0, i8 0, i16 2, i8 0, i16 1536, i16 255 }, %struct.xgene_cle_ptree_branch { i8 1, i16 26, i8 0, i8 0, i8 0, i16 3, i8 0, i16 4352, i16 255 }, %struct.xgene_cle_ptree_branch { i8 0, i16 26, i8 0, i8 0, i8 0, i16 4, i8 0, i16 0, i16 -1 }, %struct.xgene_cle_ptree_branch zeroinitializer, %struct.xgene_cle_ptree_branch zeroinitializer, %struct.xgene_cle_ptree_branch zeroinitializer] }, %struct.xgene_cle_ptree_ewdn { i8 2, i8 0, i8 1, i8 0, i8 0, i8 3, i16 0, i8 6, [6 x %struct.xgene_cle_ptree_branch] [%struct.xgene_cle_ptree_branch { i8 0, i16 28, i8 0, i8 0, i8 0, i16 2, i8 1, i16 0, i16 -1 }, %struct.xgene_cle_ptree_branch { i8 0, i16 30, i8 0, i8 0, i8 0, i16 2, i8 2, i16 0, i16 -1 }, %struct.xgene_cle_ptree_branch { i8 0, i16 32, i8 0, i8 0, i8 0, i16 2, i8 3, i16 0, i16 -1 }, %struct.xgene_cle_ptree_branch { i8 0, i16 34, i8 0, i8 0, i8 0, i16 2, i8 4, i16 0, i16 -1 }, %struct.xgene_cle_ptree_branch { i8 0, i16 36, i8 0, i8 0, i8 0, i16 2, i8 5, i16 0, i16 -1 }, %struct.xgene_cle_ptree_branch { i8 0, i16 256, i8 0, i8 0, i8 0, i16 5, i8 0, i16 0, i16 -1 }] }, %struct.xgene_cle_ptree_ewdn { i8 2, i8 0, i8 1, i8 0, i8 0, i8 3, i16 0, i8 6, [6 x %struct.xgene_cle_ptree_branch] [%struct.xgene_cle_ptree_branch { i8 0, i16 28, i8 0, i8 0, i8 0, i16 3, i8 1, i16 0, i16 -1 }, %struct.xgene_cle_ptree_branch { i8 0, i16 30, i8 0, i8 0, i8 0, i16 3, i8 2, i16 0, i16 -1 }, %struct.xgene_cle_ptree_branch { i8 0, i16 32, i8 0, i8 0, i8 0, i16 3, i8 3, i16 0, i16 -1 }, %struct.xgene_cle_ptree_branch { i8 0, i16 34, i8 0, i8 0, i8 0, i16 3, i8 4, i16 0, i16 -1 }, %struct.xgene_cle_ptree_branch { i8 0, i16 36, i8 0, i8 0, i8 0, i16 3, i8 5, i16 0, i16 -1 }, %struct.xgene_cle_ptree_branch { i8 0, i16 258, i8 0, i8 0, i8 0, i16 5, i8 0, i16 0, i16 -1 }] }, %struct.xgene_cle_ptree_ewdn { i8 2, i8 0, i8 1, i8 0, i8 0, i8 3, i16 0, i8 6, [6 x %struct.xgene_cle_ptree_branch] [%struct.xgene_cle_ptree_branch { i8 0, i16 28, i8 0, i8 0, i8 0, i16 4, i8 1, i16 0, i16 -1 }, %struct.xgene_cle_ptree_branch { i8 0, i16 30, i8 0, i8 0, i8 0, i16 4, i8 2, i16 0, i16 -1 }, %struct.xgene_cle_ptree_branch { i8 0, i16 32, i8 0, i8 0, i8 0, i16 4, i8 3, i16 0, i16 -1 }, %struct.xgene_cle_ptree_branch { i8 0, i16 34, i8 0, i8 0, i8 0, i16 4, i8 4, i16 0, i16 -1 }, %struct.xgene_cle_ptree_branch { i8 0, i16 36, i8 0, i8 0, i8 0, i16 4, i8 5, i16 0, i16 -1 }, %struct.xgene_cle_ptree_branch { i8 0, i16 260, i8 0, i8 0, i8 0, i16 5, i8 0, i16 0, i16 -1 }] }, %struct.xgene_cle_ptree_ewdn { i8 2, i8 1, i8 1, i8 0, i8 0, i8 0, i16 0, i8 1, [6 x %struct.xgene_cle_ptree_branch] [%struct.xgene_cle_ptree_branch { i8 0, i16 0, i8 0, i8 0, i8 0, i16 6, i8 0, i16 0, i16 -1 }, %struct.xgene_cle_ptree_branch zeroinitializer, %struct.xgene_cle_ptree_branch zeroinitializer, %struct.xgene_cle_ptree_branch zeroinitializer, %struct.xgene_cle_ptree_branch zeroinitializer, %struct.xgene_cle_ptree_branch zeroinitializer] }], [132 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"xgene_cle3in_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 820, i32 28 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 778, i32 27 }
@___asan_gen_.7 = private unnamed_addr constant [20 x i8] c"xgene_init_ptree_dn\00", align 1
@___asan_gen_.8 = private constant [51 x i8] c"../drivers/net/ethernet/apm/xgene/xgene_enet_cle.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 196, i32 42 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @xgene_cle3in_ops, ptr @.str, ptr @xgene_init_ptree_dn], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_cle3in_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_init_ptree_dn to i32), i32 636, i32 768, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_enet_cle_init(ptr nocapture noundef %pdata) #0 align 64 {
entry:
  %buf.i1.i = alloca [17 x i32], align 4
  %buf.i.i = alloca [17 x i32], align 4
  %secret_key_ipv4.i.i.i = alloca [4 x i32], align 4
  %idt_reg.i.i = alloca i32, align 4
  %sband.i.i = alloca i32, align 4
  %dbptr = alloca [3 x %struct.xgene_cle_dbptr], align 8
  %kn = alloca %struct.xgene_cle_ptree_kn, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cle = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %dbptr) #5
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %kn) #5
  %phy_mode = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 27
  %0 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %1)
  %cmp.not = icmp eq i32 %1, 15
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ptree1 = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 29, i32 1
  %start_pkt = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 29, i32 1, i32 5
  %2 = ptrtoint ptr %start_pkt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 12, ptr %start_pkt, align 4
  %parsers.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 29, i32 3
  %3 = ptrtoint ptr %parsers.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %parsers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp34.not.i = icmp eq i32 %4, 0
  br i1 %cmp34.not.i, label %if.end.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %5 = ptrtoint ptr %cle to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cle, align 4
  %active_parser.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 29, i32 2
  %add.ptr.i = getelementptr i8, ptr %6, i32 316
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.035.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %active_parser.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %active_parser.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp3.not.i = icmp eq i32 %8, 3
  %i.0..i = select i1 %cmp3.not.i, i32 %i.035.i, i32 %8
  %offset.0.i = shl i32 %i.0..i, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %add.ptr6.i = getelementptr i8, ptr %add.ptr.i, i32 %offset.0.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 50331648) #5, !srcloc !16
  %inc.i = add nuw i32 %i.035.i, 1
  %9 = ptrtoint ptr %parsers.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %parsers.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %10
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sband.i.i) #5
  %11 = ptrtoint ptr %sband.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 475208784, ptr %sband.i.i, align 4
  %call.i.i = call fastcc i32 @xgene_cle_dram_wr(ptr noundef %cle, ptr noundef nonnull %sband.i.i, i8 noundef zeroext 1, i32 noundef 64, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %xgene_cle_set_rss_sband.exit.i, label %xgene_cle_set_rss_sband.exit.thread.i

xgene_cle_set_rss_sband.exit.thread.i:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sband.i.i) #5
  br label %if.then2

xgene_cle_set_rss_sband.exit.i:                   ; preds = %for.end.i
  %12 = ptrtoint ptr %sband.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 470162518, ptr %sband.i.i, align 4
  %call10.i.i = call fastcc i32 @xgene_cle_dram_wr(ptr noundef %cle, ptr noundef nonnull %sband.i.i, i8 noundef zeroext 1, i32 noundef 65, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sband.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool.not.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool.not.i, label %if.end8.i, label %xgene_cle_set_rss_sband.exit.i.if.then2_crit_edge

xgene_cle_set_rss_sband.exit.i.if.then2_crit_edge: ; preds = %xgene_cle_set_rss_sband.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

if.end8.i:                                        ; preds = %xgene_cle_set_rss_sband.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idt_reg.i.i) #5
  %rxq_cnt.i.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 14
  %enet_id.i.i.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 5
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %if.end.i29.i
  %inc.i.i = add nuw nsw i32 %i.054.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 128
  br i1 %exitcond.not.i.i, label %xgene_cle_setup_rss.exit, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end8.i
  %i.054.i.i = phi i32 [ 0, %if.end8.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %13 = ptrtoint ptr %rxq_cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rxq_cnt.i.i, align 4
  %conv.i.i = zext i8 %14 to i32
  %rem.i.i = urem i32 %i.054.i.i, %conv.i.i
  %arrayidx.i.i = getelementptr %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 7, i32 %rem.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 4
  %buf_pool.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %buf_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf_pool.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %id.i.i, align 4
  %21 = and i16 %20, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp.i.not.i.i.i = icmp eq i16 %21, 0
  %narrow51.i.i = select i1 %cmp.i.not.i.i.i, i16 0, i16 %20
  %conv1.i.i = zext i16 %narrow51.i.i to i32
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %16, align 8
  %rm.i.i.i = getelementptr i8, ptr %23, i32 2548
  %24 = ptrtoint ptr %rm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rm.i.i.i, align 4
  %num.i.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %16, i32 0, i32 2
  %26 = ptrtoint ptr %num.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num.i.i.i, align 2
  %.tr.i.i.i = trunc i32 %25 to i16
  %28 = shl i16 %.tr.i.i.i, 10
  %conv3.i.i.i = or i16 %28, %27
  %page_pool.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %16, i32 0, i32 28
  %29 = ptrtoint ptr %page_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %page_pool.i.i, align 8
  %tobool.not.i28.i = icmp eq ptr %30, null
  br i1 %tobool.not.i28.i, label %for.body.i.i.if.end.i29.i_crit_edge, label %if.then.i.i

for.body.i.i.if.end.i29.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i29.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %id11.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %id11.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %id11.i.i, align 4
  %33 = and i16 %32, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp.i.not.i47.i.i = icmp eq i16 %33, 0
  %34 = and i16 %32, 63
  %narrow52.i.i = add nuw nsw i16 %34, 224
  %35 = and i16 %narrow52.i.i, 255
  %narrow53.i.i = select i1 %cmp.i.not.i47.i.i, i16 0, i16 %35
  %conv13.i.i = zext i16 %narrow53.i.i to i32
  br label %if.end.i29.i

if.end.i29.i:                                     ; preds = %if.then.i.i, %for.body.i.i.if.end.i29.i_crit_edge
  %nfpsel.0.i.i = phi i32 [ %conv13.i.i, %if.then.i.i ], [ 0, %for.body.i.i.if.end.i29.i_crit_edge ]
  %36 = ptrtoint ptr %enet_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %enet_id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp.i.i.i = icmp eq i32 %37, 1
  %38 = and i16 %conv3.i.i.i, 4095
  %39 = zext i16 %38 to i32
  %40 = shl nuw nsw i32 %conv1.i.i, 12
  %..i.i.i = select i1 %cmp.i.i.i, i32 61440, i32 126976
  %.36.i.i.i = select i1 %cmp.i.i.i, i32 16, i32 17
  %.37.i.i.i = select i1 %cmp.i.i.i, i32 983040, i32 4063232
  %41 = and i32 %..i.i.i, %40
  %or1128.i.i.i = or i32 %41, %39
  %42 = shl nuw nsw i32 %nfpsel.0.i.i, %.36.i.i.i
  %43 = and i32 %42, %.37.i.i.i
  %or1429.i.i.i = or i32 %or1128.i.i.i, %43
  %44 = ptrtoint ptr %idt_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or1429.i.i.i, ptr %idt_reg.i.i, align 4
  %call14.i.i = call fastcc i32 @xgene_cle_dram_wr(ptr noundef %cle, ptr noundef nonnull %idt_reg.i.i, i8 noundef zeroext 1, i32 noundef %i.054.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %for.cond.i.i, label %xgene_cle_setup_rss.exit.thread107

xgene_cle_setup_rss.exit.thread107:               ; preds = %if.end.i29.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idt_reg.i.i) #5
  br label %if.then2

xgene_cle_setup_rss.exit:                         ; preds = %for.cond.i.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %secret_key_ipv4.i.i.i) #5
  %45 = call ptr @memset(ptr %secret_key_ipv4.i.i.i, i32 255, i32 16)
  call void @get_random_bytes(ptr noundef nonnull %secret_key_ipv4.i.i.i, i32 noundef 16) #5
  %call.i.i.i = call fastcc i32 @xgene_cle_dram_wr(ptr noundef %cle, ptr noundef nonnull %secret_key_ipv4.i.i.i, i8 noundef zeroext 4, i32 noundef 0, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %secret_key_ipv4.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idt_reg.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not, label %if.end3, label %xgene_cle_setup_rss.exit.if.then2_crit_edge

xgene_cle_setup_rss.exit.if.then2_crit_edge:      ; preds = %xgene_cle_setup_rss.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

if.then2:                                         ; preds = %xgene_cle_setup_rss.exit.if.then2_crit_edge, %xgene_cle_setup_rss.exit.thread107, %xgene_cle_set_rss_sband.exit.i.if.then2_crit_edge, %xgene_cle_set_rss_sband.exit.thread.i
  %retval.0.i106 = phi i32 [ %call.i.i.i, %xgene_cle_setup_rss.exit.if.then2_crit_edge ], [ %call14.i.i, %xgene_cle_setup_rss.exit.thread107 ], [ %call.i.i, %xgene_cle_set_rss_sband.exit.thread.i ], [ %call10.i.i, %xgene_cle_set_rss_sband.exit.i.if.then2_crit_edge ]
  %46 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdata, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %47, ptr noundef nonnull @.str) #8
  br label %cleanup

if.end3:                                          ; preds = %xgene_cle_setup_rss.exit
  %rx_ring = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 7
  %48 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rx_ring, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 8
  %rm.i = getelementptr i8, ptr %51, i32 2548
  %52 = ptrtoint ptr %rm.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rm.i, align 4
  %num.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %49, i32 0, i32 2
  %54 = ptrtoint ptr %num.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %num.i, align 2
  %.tr.i = trunc i32 %53 to i16
  %56 = shl i16 %.tr.i, 10
  %conv3.i = or i16 %56, %55
  %buf_pool = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %49, i32 0, i32 27
  %57 = ptrtoint ptr %buf_pool to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buf_pool, align 4
  %id = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %id, align 4
  %61 = and i16 %60, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %cmp.i.not.i = icmp eq i16 %61, 0
  %62 = trunc i16 %60 to i8
  %conv1.i.i79 = and i8 %62, 63
  %sub.i = add nsw i8 %conv1.i.i79, -32
  %retval.0.i80 = select i1 %cmp.i.not.i, i8 0, i8 %sub.i
  %page_pool = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %49, i32 0, i32 28
  %63 = ptrtoint ptr %page_pool to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %page_pool, align 8
  %tobool13.not = icmp eq ptr %64, null
  br i1 %tobool13.not, label %if.end3.if.end23_crit_edge, label %if.then14

if.end3.if.end23_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then14:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %id18 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %id18 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %id18, align 4
  %67 = and i16 %66, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %cmp.i.not.i81 = icmp eq i16 %67, 0
  %68 = trunc i16 %66 to i8
  %conv1.i.i82 = and i8 %68, 63
  %sub.i83 = add nsw i8 %conv1.i.i82, -32
  %retval.0.i84 = select i1 %cmp.i.not.i81, i8 0, i8 %sub.i83
  br label %if.end23

if.end23:                                         ; preds = %if.then14, %if.end3.if.end23_crit_edge
  %def_nxtfpsel.0 = phi i8 [ %retval.0.i84, %if.then14 ], [ 0, %if.end3.if.end23_crit_edge ]
  %69 = call ptr @memset(ptr %dbptr, i32 0, i32 192)
  %fpsel = getelementptr inbounds [3 x %struct.xgene_cle_dbptr], ptr %dbptr, i32 0, i32 2, i32 14
  %70 = ptrtoint ptr %fpsel to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %retval.0.i80, ptr %fpsel, align 4
  %nxtfpsel = getelementptr inbounds [3 x %struct.xgene_cle_dbptr], ptr %dbptr, i32 0, i32 2, i32 13
  %71 = ptrtoint ptr %nxtfpsel to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %def_nxtfpsel.0, ptr %nxtfpsel, align 1
  %dstqid = getelementptr inbounds [3 x %struct.xgene_cle_dbptr], ptr %dbptr, i32 0, i32 2, i32 15
  %72 = ptrtoint ptr %dstqid to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv3.i, ptr %dstqid, align 2
  %cle_priority = getelementptr inbounds [3 x %struct.xgene_cle_dbptr], ptr %dbptr, i32 0, i32 2, i32 16
  %73 = ptrtoint ptr %cle_priority to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %cle_priority, align 8
  %fpsel33 = getelementptr inbounds [3 x %struct.xgene_cle_dbptr], ptr %dbptr, i32 0, i32 1, i32 14
  %74 = ptrtoint ptr %fpsel33 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %retval.0.i80, ptr %fpsel33, align 4
  %nxtfpsel36 = getelementptr inbounds [3 x %struct.xgene_cle_dbptr], ptr %dbptr, i32 0, i32 1, i32 13
  %75 = ptrtoint ptr %nxtfpsel36 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %def_nxtfpsel.0, ptr %nxtfpsel36, align 1
  %dstqid39 = getelementptr inbounds [3 x %struct.xgene_cle_dbptr], ptr %dbptr, i32 0, i32 1, i32 15
  %76 = ptrtoint ptr %dstqid39 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv3.i, ptr %dstqid39, align 2
  %cle_priority41 = getelementptr inbounds [3 x %struct.xgene_cle_dbptr], ptr %dbptr, i32 0, i32 1, i32 16
  %77 = ptrtoint ptr %cle_priority41 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 7, ptr %cle_priority41, align 8
  %78 = ptrtoint ptr %parsers.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %parsers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp2.not.i = icmp eq i32 %79, 0
  br i1 %cmp2.not.i, label %if.end23.xgene_cle_setup_def_dbptr.exit_crit_edge, label %for.body.lr.ph.i88

if.end23.xgene_cle_setup_def_dbptr.exit_crit_edge: ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgene_cle_setup_def_dbptr.exit

for.body.lr.ph.i88:                               ; preds = %if.end23
  %80 = ptrtoint ptr %cle_priority41 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %cle_priority41, align 8
  %82 = shl i8 %81, 5
  %shl2.i9.i.i = zext i8 %82 to i32
  %83 = ptrtoint ptr %dstqid39 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %dstqid39, align 2
  %85 = lshr i16 %84, 7
  %86 = and i16 %85, 31
  %and.i7.i.i = zext i16 %86 to i32
  %or17.i.i = or i32 %and.i7.i.i, %shl2.i9.i.i
  %87 = ptrtoint ptr %nxtfpsel36 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %nxtfpsel36, align 1
  %89 = and i8 %88, 15
  %and.i3.i.i = zext i8 %89 to i32
  %shl2.i4.i.i = shl nuw nsw i32 %and.i3.i.i, 17
  %90 = ptrtoint ptr %fpsel33 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %fpsel33, align 4
  %92 = and i8 %91, 15
  %and.i1.i.i = zext i8 %92 to i32
  %shl2.i2.i.i = shl nuw nsw i32 %and.i1.i.i, 21
  %or.i.i = or i32 %shl2.i2.i.i, %shl2.i4.i.i
  %and.i5.i.i = zext i16 %84 to i32
  %shl2.i6.i.i = shl i32 %and.i5.i.i, 25
  %or8.i.i = or i32 %or.i.i, %shl2.i6.i.i
  %93 = ptrtoint ptr %cle to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cle, align 4
  %active_parser.i86 = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 29, i32 2
  %add.ptr.i87 = getelementptr i8, ptr %94, i32 268
  %add.ptr13.i = getelementptr i8, ptr %94, i32 264
  %95 = call i32 @llvm.bswap.i32(i32 %or8.i.i) #5
  %96 = shl nuw i32 %or17.i.i, 24
  br label %for.body.i94

for.body.i94:                                     ; preds = %for.body.i94.for.body.i94_crit_edge, %for.body.lr.ph.i88
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i88 ], [ %inc16.i, %for.body.i94.for.body.i94_crit_edge ]
  %97 = ptrtoint ptr %active_parser.i86 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %active_parser.i86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %98)
  %cmp3.not.i89 = icmp eq i32 %98, 3
  %i.0..i90 = select i1 %cmp3.not.i89, i32 %i.03.i, i32 %98
  %offset.0.i91 = shl i32 %i.0..i90, 9
  %add.ptr6.i92 = getelementptr i8, ptr %add.ptr.i87, i32 %offset.0.i91
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i92, i32 0) #5, !srcloc !16
  %add.ptr11.1.i = getelementptr i8, ptr %add.ptr6.i92, i32 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.1.i, i32 0) #5, !srcloc !16
  %add.ptr11.2.i = getelementptr i8, ptr %add.ptr6.i92, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.2.i, i32 0) #5, !srcloc !16
  %add.ptr11.3.i = getelementptr i8, ptr %add.ptr6.i92, i32 12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.3.i, i32 0) #5, !srcloc !16
  %add.ptr11.4.i = getelementptr i8, ptr %add.ptr6.i92, i32 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.4.i, i32 %95) #5, !srcloc !16
  %add.ptr11.5.i = getelementptr i8, ptr %add.ptr6.i92, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.5.i, i32 %96) #5, !srcloc !16
  %add.ptr14.i = getelementptr i8, ptr %add.ptr13.i, i32 %offset.0.i91
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 35389440) #5, !srcloc !16
  %inc16.i = add nuw i32 %i.03.i, 1
  %99 = ptrtoint ptr %parsers.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %parsers.i, align 4
  %cmp.i93 = icmp ult i32 %inc16.i, %100
  br i1 %cmp.i93, label %for.body.i94.for.body.i94_crit_edge, label %for.body.i94.xgene_cle_setup_def_dbptr.exit_crit_edge

for.body.i94.xgene_cle_setup_def_dbptr.exit_crit_edge: ; preds = %for.body.i94
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgene_cle_setup_def_dbptr.exit

for.body.i94.for.body.i94_crit_edge:              ; preds = %for.body.i94
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i94

xgene_cle_setup_def_dbptr.exit:                   ; preds = %for.body.i94.xgene_cle_setup_def_dbptr.exit_crit_edge, %if.end23.xgene_cle_setup_def_dbptr.exit_crit_edge
  %drop = getelementptr inbounds %struct.xgene_cle_dbptr, ptr %dbptr, i32 0, i32 4
  %101 = ptrtoint ptr %drop to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %drop, align 2
  %102 = getelementptr inbounds i8, ptr %kn, i32 2
  %103 = call ptr @memset(ptr %102, i32 0, i32 128)
  %104 = ptrtoint ptr %kn to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %kn, align 2
  %num_keys = getelementptr inbounds %struct.xgene_cle_ptree_kn, ptr %kn, i32 0, i32 1
  %105 = ptrtoint ptr %num_keys to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %num_keys, align 1
  %result_pointer = getelementptr inbounds %struct.xgene_cle_ptree_kn, ptr %kn, i32 0, i32 2, i32 0, i32 1
  %106 = ptrtoint ptr %result_pointer to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 2, ptr %result_pointer, align 2
  %107 = ptrtoint ptr %ptree1 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %kn, ptr %ptree1, align 4
  %dbptr49 = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 29, i32 1, i32 1
  %108 = ptrtoint ptr %dbptr49 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %dbptr, ptr %dbptr49, align 4
  %num_kn = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 29, i32 1, i32 2
  %109 = ptrtoint ptr %num_kn to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 1, ptr %num_kn, align 4
  %num_dbptr = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 29, i32 1, i32 3
  %110 = ptrtoint ptr %num_dbptr to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 3, ptr %num_dbptr, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %buf.i.i) #5
  %111 = getelementptr inbounds i8, ptr %buf.i.i, i32 4
  %112 = call ptr @memset(ptr %111, i32 0, i32 64)
  %jump_bytes.i.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 29, i32 6
  %start_node.i.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 29, i32 1, i32 4
  br label %for.body.i.i96

for.body.i.i96:                                   ; preds = %for.inc.i.i.for.body.i.i96_crit_edge, %xgene_cle_setup_def_dbptr.exit
  %i.06.i.i = phi i32 [ 0, %xgene_cle_setup_def_dbptr.exit ], [ %inc.i.i100, %for.inc.i.i.for.body.i.i96_crit_edge ]
  %arrayidx.i.i95 = getelementptr %struct.xgene_cle_ptree_ewdn, ptr @xgene_init_ptree_dn, i32 %i.06.i.i
  %113 = ptrtoint ptr %jump_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %jump_bytes.i.i, align 4
  %115 = ptrtoint ptr %arrayidx.i.i95 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx.i.i95, align 2
  %117 = and i8 %116, 3
  %last_node.i.i.i = getelementptr %struct.xgene_cle_ptree_ewdn, ptr @xgene_init_ptree_dn, i32 %i.06.i.i, i32 1
  %118 = ptrtoint ptr %last_node.i.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %last_node.i.i.i, align 1, !range !18
  %120 = shl nuw nsw i8 %119, 2
  %or118.i.i.i = or i8 %120, %117
  %hdr_len_store.i.i.i = getelementptr %struct.xgene_cle_ptree_ewdn, ptr @xgene_init_ptree_dn, i32 %i.06.i.i, i32 2
  %121 = ptrtoint ptr %hdr_len_store.i.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %hdr_len_store.i.i.i, align 2, !range !18
  %123 = shl nuw nsw i8 %122, 3
  %or6119.i.i.i = or i8 %or118.i.i.i, %123
  %hdr_extn.i.i.i = getelementptr %struct.xgene_cle_ptree_ewdn, ptr @xgene_init_ptree_dn, i32 %i.06.i.i, i32 3
  %124 = ptrtoint ptr %hdr_extn.i.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %hdr_extn.i.i.i, align 1
  %126 = shl i8 %125, 4
  %127 = and i8 %126, 48
  %or9120.i.i.i = or i8 %127, %or6119.i.i.i
  %byte_store.i.i.i = getelementptr %struct.xgene_cle_ptree_ewdn, ptr @xgene_init_ptree_dn, i32 %i.06.i.i, i32 4
  %128 = ptrtoint ptr %byte_store.i.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %byte_store.i.i.i, align 2
  %130 = shl i8 %129, 6
  %or12121.i.i.i = or i8 %or9120.i.i.i, %130
  %or12.i.i.i = zext i8 %or12121.i.i.i to i32
  %search_byte_store.i.i.i = getelementptr %struct.xgene_cle_ptree_ewdn, ptr @xgene_init_ptree_dn, i32 %i.06.i.i, i32 5
  %131 = ptrtoint ptr %search_byte_store.i.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %search_byte_store.i.i.i, align 1
  %133 = and i8 %132, 3
  %and.i98.i.i.i = zext i8 %133 to i32
  %shl2.i99.i.i.i = shl nuw nsw i32 %and.i98.i.i.i, 8
  %or15.i.i.i = or i32 %shl2.i99.i.i.i, %or12.i.i.i
  %result_pointer.i.i.i = getelementptr %struct.xgene_cle_ptree_ewdn, ptr @xgene_init_ptree_dn, i32 %i.06.i.i, i32 6
  %134 = ptrtoint ptr %result_pointer.i.i.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %result_pointer.i.i.i, align 2
  %136 = and i16 %135, 4095
  %and.i100.i.i.i = zext i16 %136 to i32
  %shl2.i101.i.i.i = shl nuw nsw i32 %and.i100.i.i.i, 12
  %or18.i.i.i = or i32 %or15.i.i.i, %shl2.i101.i.i.i
  %137 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %or18.i.i.i, ptr %buf.i.i, align 4
  %num_branches.i.i.i = getelementptr %struct.xgene_cle_ptree_ewdn, ptr @xgene_init_ptree_dn, i32 %i.06.i.i, i32 7
  %138 = ptrtoint ptr %num_branches.i.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %num_branches.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %cmp123.not.i.i.i = icmp eq i8 %139, 0
  br i1 %cmp123.not.i.i.i, label %for.body.i.i96.xgene_cle_dn_to_hw.exit.i.i_crit_edge, label %for.body.i.preheader.i.i

for.body.i.i96.xgene_cle_dn_to_hw.exit.i.i_crit_edge: ; preds = %for.body.i.i96
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgene_cle_dn_to_hw.exit.i.i

for.body.i.preheader.i.i:                         ; preds = %for.body.i.i96
  %conv20.i.i.i = zext i8 %139 to i32
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.preheader.i.i
  %j.0125.i.i.i = phi i32 [ %inc63.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 1, %for.body.i.preheader.i.i ]
  %i.0124.i.i.i = phi i32 [ %inc65.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.i.preheader.i.i ]
  %arrayidx22.i.i.i = getelementptr %struct.xgene_cle_ptree_ewdn, ptr @xgene_init_ptree_dn, i32 %i.06.i.i, i32 8, i32 %i.0124.i.i.i
  %next_packet_pointer.i.i.i = getelementptr %struct.xgene_cle_ptree_ewdn, ptr @xgene_init_ptree_dn, i32 %i.06.i.i, i32 8, i32 %i.0124.i.i.i, i32 1
  %140 = ptrtoint ptr %next_packet_pointer.i.i.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %next_packet_pointer.i.i.i, align 2
  %conv23.i.i.i = zext i16 %141 to i32
  %jump_rel.i.i.i = getelementptr %struct.xgene_cle_ptree_ewdn, ptr @xgene_init_ptree_dn, i32 %i.06.i.i, i32 8, i32 %i.0124.i.i.i, i32 3
  %142 = ptrtoint ptr %jump_rel.i.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %jump_rel.i.i.i, align 1, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %cmp26.i.i.i = icmp eq i8 %143, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %141)
  %cmp28.i.i.i = icmp ult i16 %141, 256
  %or.cond.i.i.i = select i1 %cmp26.i.i.i, i1 %cmp28.i.i.i, i1 false
  %add.i.i.i = select i1 %or.cond.i.i.i, i32 %114, i32 0
  %npp.0.i.i.i = add i32 %add.i.i.i, %conv23.i.i.i
  %144 = ptrtoint ptr %arrayidx22.i.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx22.i.i.i, align 2, !range !18
  %146 = zext i8 %145 to i32
  %147 = shl i32 %npp.0.i.i.i, 1
  %148 = and i32 %147, 1022
  %or35.i.i.i = or i32 %148, %146
  %jump_bw.i.i.i = getelementptr %struct.xgene_cle_ptree_ewdn, ptr @xgene_init_ptree_dn, i32 %i.06.i.i, i32 8, i32 %i.0124.i.i.i, i32 2
  %149 = ptrtoint ptr %jump_bw.i.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %jump_bw.i.i.i, align 2, !range !18
  %151 = zext i8 %150 to i32
  %shl2.i106.i.i.i = shl nuw nsw i32 %151, 10
  %or39.i.i.i = or i32 %or35.i.i.i, %shl2.i106.i.i.i
  %152 = zext i8 %143 to i32
  %shl2.i108.i.i.i = shl nuw nsw i32 %152, 11
  %or44.i.i.i = or i32 %or39.i.i.i, %shl2.i108.i.i.i
  %operation.i.i.i = getelementptr %struct.xgene_cle_ptree_ewdn, ptr @xgene_init_ptree_dn, i32 %i.06.i.i, i32 8, i32 %i.0124.i.i.i, i32 4
  %153 = ptrtoint ptr %operation.i.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %operation.i.i.i, align 2
  %155 = and i8 %154, 7
  %and.i109.i.i.i = zext i8 %155 to i32
  %shl2.i110.i.i.i = shl nuw nsw i32 %and.i109.i.i.i, 12
  %or47.i.i.i = or i32 %or44.i.i.i, %shl2.i110.i.i.i
  %next_node.i.i.i = getelementptr %struct.xgene_cle_ptree_ewdn, ptr @xgene_init_ptree_dn, i32 %i.06.i.i, i32 8, i32 %i.0124.i.i.i, i32 5
  %156 = ptrtoint ptr %next_node.i.i.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %next_node.i.i.i, align 2
  %158 = and i16 %157, 511
  %and.i111.i.i.i = zext i16 %158 to i32
  %shl2.i112.i.i.i = shl nuw nsw i32 %and.i111.i.i.i, 15
  %or50.i.i.i = or i32 %or47.i.i.i, %shl2.i112.i.i.i
  %next_branch.i.i.i = getelementptr %struct.xgene_cle_ptree_ewdn, ptr @xgene_init_ptree_dn, i32 %i.06.i.i, i32 8, i32 %i.0124.i.i.i, i32 6
  %159 = ptrtoint ptr %next_branch.i.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %next_branch.i.i.i, align 2
  %161 = and i8 %160, 31
  %and.i113.i.i.i = zext i8 %161 to i32
  %shl2.i114.i.i.i = shl nuw nsw i32 %and.i113.i.i.i, 24
  %or53.i.i.i = or i32 %or50.i.i.i, %shl2.i114.i.i.i
  %inc55.i.i.i = add nuw nsw i32 %j.0125.i.i.i, 1
  %arrayidx56.i.i.i = getelementptr i32, ptr %buf.i.i, i32 %j.0125.i.i.i
  %162 = ptrtoint ptr %arrayidx56.i.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %or53.i.i.i, ptr %arrayidx56.i.i.i, align 4
  %data.i.i.i = getelementptr %struct.xgene_cle_ptree_ewdn, ptr @xgene_init_ptree_dn, i32 %i.06.i.i, i32 8, i32 %i.0124.i.i.i, i32 7
  %163 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %data.i.i.i, align 2
  %conv57.i.i.i = zext i16 %164 to i32
  %mask.i.i.i = getelementptr %struct.xgene_cle_ptree_ewdn, ptr @xgene_init_ptree_dn, i32 %i.06.i.i, i32 8, i32 %i.0124.i.i.i, i32 8
  %165 = ptrtoint ptr %mask.i.i.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %mask.i.i.i, align 2
  %conv59.i.i.i = zext i16 %166 to i32
  %shl2.i117.i.i.i = shl nuw i32 %conv59.i.i.i, 16
  %or61.i.i.i = or i32 %shl2.i117.i.i.i, %conv57.i.i.i
  %inc63.i.i.i = add nuw nsw i32 %j.0125.i.i.i, 2
  %arrayidx64.i.i.i = getelementptr i32, ptr %buf.i.i, i32 %inc55.i.i.i
  %167 = ptrtoint ptr %arrayidx64.i.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %or61.i.i.i, ptr %arrayidx64.i.i.i, align 4
  %inc65.i.i.i = add nuw nsw i32 %i.0124.i.i.i, 1
  %exitcond.not.i.i97 = icmp eq i32 %inc65.i.i.i, %conv20.i.i.i
  br i1 %exitcond.not.i.i97, label %for.body.i.i.i.xgene_cle_dn_to_hw.exit.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

for.body.i.i.i.xgene_cle_dn_to_hw.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgene_cle_dn_to_hw.exit.i.i

xgene_cle_dn_to_hw.exit.i.i:                      ; preds = %for.body.i.i.i.xgene_cle_dn_to_hw.exit.i.i_crit_edge, %for.body.i.i96.xgene_cle_dn_to_hw.exit.i.i_crit_edge
  %168 = ptrtoint ptr %start_node.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %start_node.i.i, align 4
  %add.i.i = add i32 %169, %i.06.i.i
  %call.i.i98 = call fastcc i32 @xgene_cle_dram_wr(ptr noundef %cle, ptr noundef nonnull %buf.i.i, i8 noundef zeroext 17, i32 noundef %add.i.i, i32 noundef 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i98)
  %tobool.not.i.i99 = icmp eq i32 %call.i.i98, 0
  br i1 %tobool.not.i.i99, label %for.inc.i.i, label %xgene_cle_dn_to_hw.exit.i.i.xgene_cle_setup_node.exit.i_crit_edge

xgene_cle_dn_to_hw.exit.i.i.xgene_cle_setup_node.exit.i_crit_edge: ; preds = %xgene_cle_dn_to_hw.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgene_cle_setup_node.exit.i

for.inc.i.i:                                      ; preds = %xgene_cle_dn_to_hw.exit.i.i
  %inc.i.i100 = add nuw nsw i32 %i.06.i.i, 1
  %exitcond14.not.i.i = icmp eq i32 %inc.i.i100, 6
  br i1 %exitcond14.not.i.i, label %for.end.i.i101, label %for.inc.i.i.for.body.i.i96_crit_edge

for.inc.i.i.for.body.i.i96_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i96

for.end.i.i101:                                   ; preds = %for.inc.i.i
  %170 = call ptr @memset(ptr %111, i32 0, i32 64)
  %171 = ptrtoint ptr %num_kn to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %num_kn, align 4
  %173 = add i32 %172, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %173)
  %cmp89.i.i = icmp ult i32 %173, -7
  br i1 %cmp89.i.i, label %for.end.i.i101.for.body9.i.i_crit_edge, label %for.end.i.i101.if.end.i_crit_edge

for.end.i.i101.if.end.i_crit_edge:                ; preds = %for.end.i.i101
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

for.end.i.i101.for.body9.i.i_crit_edge:           ; preds = %for.end.i.i101
  br label %for.body9.i.i

for.cond6.i.i:                                    ; preds = %xgene_cle_kn_to_hw.exit.i.i
  %inc20.i.i = add nuw i32 %j.010.i.i, 1
  %174 = ptrtoint ptr %num_kn to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %num_kn, align 4
  %add7.i.i = add i32 %175, 6
  %cmp8.i.i = icmp ult i32 %inc20.i.i, %add7.i.i
  br i1 %cmp8.i.i, label %for.cond6.i.i.for.body9.i.i_crit_edge, label %for.cond6.i.i.if.end.i_crit_edge

for.cond6.i.i.if.end.i_crit_edge:                 ; preds = %for.cond6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

for.cond6.i.i.for.body9.i.i_crit_edge:            ; preds = %for.cond6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body9.i.i

for.body9.i.i:                                    ; preds = %for.cond6.i.i.for.body9.i.i_crit_edge, %for.end.i.i101.for.body9.i.i_crit_edge
  %j.010.i.i = phi i32 [ %inc20.i.i, %for.cond6.i.i.for.body9.i.i_crit_edge ], [ 6, %for.end.i.i101.for.body9.i.i_crit_edge ]
  %sub.i.i = add i32 %j.010.i.i, -6
  %176 = ptrtoint ptr %kn to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %kn, align 2
  %178 = and i8 %177, 3
  %conv1.i.i.i = zext i8 %178 to i32
  %179 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %conv1.i.i.i, ptr %buf.i.i, align 4
  %num_keys.i.i.i = getelementptr %struct.xgene_cle_ptree_kn, ptr %kn, i32 %sub.i.i, i32 1
  %180 = ptrtoint ptr %num_keys.i.i.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %num_keys.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %cmp42.not.i.i.i = icmp eq i8 %181, 0
  br i1 %cmp42.not.i.i.i, label %for.body9.i.i.xgene_cle_kn_to_hw.exit.i.i_crit_edge, label %for.body.i2.preheader.i.i

for.body9.i.i.xgene_cle_kn_to_hw.exit.i.i_crit_edge: ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgene_cle_kn_to_hw.exit.i.i

for.body.i2.preheader.i.i:                        ; preds = %for.body9.i.i
  %conv2.i.i.i = zext i8 %181 to i32
  br label %for.body.i2.i.i

for.body.i2.i.i:                                  ; preds = %if.end.i.i.i.for.body.i2.i.i_crit_edge, %for.body.i2.preheader.i.i
  %j.045.i.i.i = phi i32 [ %j.1.i.i.i, %if.end.i.i.i.for.body.i2.i.i_crit_edge ], [ 1, %for.body.i2.preheader.i.i ]
  %i.043.i.i.i = phi i32 [ %inc23.i.i.i, %if.end.i.i.i.for.body.i2.i.i_crit_edge ], [ 0, %for.body.i2.preheader.i.i ]
  %arrayidx5.i.i.i = getelementptr %struct.xgene_cle_ptree_kn, ptr %kn, i32 %sub.i.i, i32 2, i32 %i.043.i.i.i
  %rem.i.i.i = and i32 %i.043.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %rem.i.i.i, 0
  %182 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx5.i.i.i, align 2
  %184 = and i8 %183, 7
  %and.i36.i.i.i = zext i8 %184 to i32
  %result_pointer.i1.i.i = getelementptr %struct.xgene_cle_ptree_kn, ptr %kn, i32 %sub.i.i, i32 2, i32 %i.043.i.i.i, i32 1
  %185 = ptrtoint ptr %result_pointer.i1.i.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %result_pointer.i1.i.i, align 2
  %187 = shl i16 %186, 3
  %188 = and i16 %187, 8184
  %shl2.i.i.i.i = zext i16 %188 to i32
  %or.i.i.i = or i32 %shl2.i.i.i.i, %and.i36.i.i.i
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx11.i.i.i = getelementptr i32, ptr %buf.i.i, i32 %j.045.i.i.i
  %189 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %or.i.i.i, ptr %arrayidx11.i.i.i, align 4
  br label %if.end.i.i.i

if.else.i.i.i:                                    ; preds = %for.body.i2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i.i.i = shl nuw nsw i32 %or.i.i.i, 16
  %inc20.i.i.i = add i32 %j.045.i.i.i, 1
  %arrayidx21.i.i.i = getelementptr i32, ptr %buf.i.i, i32 %j.045.i.i.i
  %190 = ptrtoint ptr %arrayidx21.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx21.i.i.i, align 4
  %or22.i.i.i = or i32 %191, %shl.i.i.i
  store i32 %or22.i.i.i, ptr %arrayidx21.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i.i, %if.then.i.i.i
  %j.1.i.i.i = phi i32 [ %inc20.i.i.i, %if.else.i.i.i ], [ %j.045.i.i.i, %if.then.i.i.i ]
  %inc23.i.i.i = add nuw nsw i32 %i.043.i.i.i, 1
  %exitcond15.not.i.i = icmp eq i32 %inc23.i.i.i, %conv2.i.i.i
  br i1 %exitcond15.not.i.i, label %if.end.i.i.i.xgene_cle_kn_to_hw.exit.i.i_crit_edge, label %if.end.i.i.i.for.body.i2.i.i_crit_edge

if.end.i.i.i.for.body.i2.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i2.i.i

if.end.i.i.i.xgene_cle_kn_to_hw.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgene_cle_kn_to_hw.exit.i.i

xgene_cle_kn_to_hw.exit.i.i:                      ; preds = %if.end.i.i.i.xgene_cle_kn_to_hw.exit.i.i_crit_edge, %for.body9.i.i.xgene_cle_kn_to_hw.exit.i.i_crit_edge
  %192 = ptrtoint ptr %start_node.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %start_node.i.i, align 4
  %add14.i.i = add i32 %193, %j.010.i.i
  %call15.i.i = call fastcc i32 @xgene_cle_dram_wr(ptr noundef %cle, ptr noundef nonnull %buf.i.i, i8 noundef zeroext 17, i32 noundef %add14.i.i, i32 noundef 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %for.cond6.i.i, label %xgene_cle_kn_to_hw.exit.i.i.xgene_cle_setup_node.exit.i_crit_edge

xgene_cle_kn_to_hw.exit.i.i.xgene_cle_setup_node.exit.i_crit_edge: ; preds = %xgene_cle_kn_to_hw.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgene_cle_setup_node.exit.i

xgene_cle_setup_node.exit.i:                      ; preds = %xgene_cle_kn_to_hw.exit.i.i.xgene_cle_setup_node.exit.i_crit_edge, %xgene_cle_dn_to_hw.exit.i.i.xgene_cle_setup_node.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call15.i.i, %xgene_cle_kn_to_hw.exit.i.i.xgene_cle_setup_node.exit.i_crit_edge ], [ %call.i.i98, %xgene_cle_dn_to_hw.exit.i.i.xgene_cle_setup_node.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %buf.i.i) #5
  br label %cleanup

if.end.i:                                         ; preds = %for.cond6.i.i.if.end.i_crit_edge, %for.end.i.i101.if.end.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %buf.i.i) #5
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %buf.i1.i) #5
  %194 = getelementptr inbounds i8, ptr %buf.i1.i, i32 4
  %195 = call ptr @memset(ptr %194, i32 0, i32 64)
  %196 = ptrtoint ptr %num_dbptr to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %num_dbptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %cmp1.not.i.i = icmp eq i32 %197, 0
  br i1 %cmp1.not.i.i, label %if.end.i.if.end4.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %arrayidx10.i.i.i = getelementptr inbounds i32, ptr %buf.i1.i, i32 4
  %arrayidx19.i.i.i = getelementptr inbounds i32, ptr %buf.i1.i, i32 5
  %start_dbptr.i.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 29, i32 1, i32 6
  br label %for.body.i8.i

for.cond.i.i102:                                  ; preds = %for.body.i8.i
  %inc.i2.i = add nuw i32 %i.02.i.i, 1
  %198 = ptrtoint ptr %num_dbptr to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %num_dbptr, align 4
  %cmp.i.i = icmp ult i32 %inc.i2.i, %199
  br i1 %cmp.i.i, label %for.cond.i.i102.for.body.i8.i_crit_edge, label %for.cond.i.i102.if.end4.i_crit_edge

for.cond.i.i102.if.end4.i_crit_edge:              ; preds = %for.cond.i.i102
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

for.cond.i.i102.for.body.i8.i_crit_edge:          ; preds = %for.cond.i.i102
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i8.i

for.body.i8.i:                                    ; preds = %for.cond.i.i102.for.body.i8.i_crit_edge, %for.body.lr.ph.i.i
  %i.02.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i2.i, %for.cond.i.i102.for.body.i8.i_crit_edge ]
  %200 = ptrtoint ptr %dbptr49 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %dbptr49, align 4
  %drop.i.i.i = getelementptr %struct.xgene_cle_dbptr, ptr %201, i32 %i.02.i.i, i32 4
  %202 = ptrtoint ptr %drop.i.i.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %drop.i.i.i, align 2
  %204 = and i8 %203, 1
  %and.i.i.i.i = zext i8 %204 to i32
  %shl2.i.i.i3.i = shl nuw nsw i32 %and.i.i.i.i, 28
  %205 = ptrtoint ptr %buf.i1.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %shl2.i.i.i3.i, ptr %buf.i1.i, align 4
  %fpsel.i.i.i = getelementptr %struct.xgene_cle_dbptr, ptr %201, i32 %i.02.i.i, i32 14
  %206 = ptrtoint ptr %fpsel.i.i.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %fpsel.i.i.i, align 4
  %208 = and i8 %207, 15
  %and.i1.i.i.i = zext i8 %208 to i32
  %shl2.i2.i.i.i = shl nuw nsw i32 %and.i1.i.i.i, 21
  %nxtfpsel.i.i.i = getelementptr %struct.xgene_cle_dbptr, ptr %201, i32 %i.02.i.i, i32 13
  %209 = ptrtoint ptr %nxtfpsel.i.i.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %nxtfpsel.i.i.i, align 1
  %211 = and i8 %210, 15
  %and.i3.i.i.i = zext i8 %211 to i32
  %shl2.i4.i.i.i = shl nuw nsw i32 %and.i3.i.i.i, 17
  %or.i.i4.i = or i32 %shl2.i4.i.i.i, %shl2.i2.i.i.i
  %dstqid.i.i.i = getelementptr %struct.xgene_cle_dbptr, ptr %201, i32 %i.02.i.i, i32 15
  %212 = ptrtoint ptr %dstqid.i.i.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %dstqid.i.i.i, align 2
  %and.i5.i.i.i = zext i16 %213 to i32
  %shl2.i6.i.i.i = shl i32 %and.i5.i.i.i, 25
  %or8.i.i.i = or i32 %or.i.i4.i, %shl2.i6.i.i.i
  %214 = ptrtoint ptr %arrayidx10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %or8.i.i.i, ptr %arrayidx10.i.i.i, align 4
  %215 = lshr i16 %213, 7
  %216 = and i16 %215, 31
  %and.i7.i.i.i = zext i16 %216 to i32
  %cle_priority.i.i.i = getelementptr %struct.xgene_cle_dbptr, ptr %201, i32 %i.02.i.i, i32 16
  %217 = ptrtoint ptr %cle_priority.i.i.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %cle_priority.i.i.i, align 8
  %219 = shl i8 %218, 5
  %shl2.i9.i.i.i = zext i8 %219 to i32
  %or17.i.i.i = or i32 %shl2.i9.i.i.i, %and.i7.i.i.i
  %220 = ptrtoint ptr %arrayidx19.i.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %or17.i.i.i, ptr %arrayidx19.i.i.i, align 4
  %221 = ptrtoint ptr %start_dbptr.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %start_dbptr.i.i, align 4
  %add.i5.i = add i32 %222, %i.02.i.i
  %call.i6.i = call fastcc i32 @xgene_cle_dram_wr(ptr noundef %cle, ptr noundef nonnull %buf.i1.i, i8 noundef zeroext 6, i32 noundef %add.i5.i, i32 noundef 14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i)
  %tobool.not.i7.i = icmp eq i32 %call.i6.i, 0
  br i1 %tobool.not.i7.i, label %for.cond.i.i102, label %xgene_cle_setup_dbptr.exit.i

xgene_cle_setup_dbptr.exit.i:                     ; preds = %for.body.i8.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %buf.i1.i) #5
  br label %cleanup

if.end4.i:                                        ; preds = %for.cond.i.i102.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %buf.i1.i) #5
  %223 = ptrtoint ptr %cle to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %cle, align 4
  %225 = ptrtoint ptr %jump_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %jump_bytes.i.i, align 4
  %227 = ptrtoint ptr %start_pkt to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %start_pkt, align 4
  %add.i11.i = add i32 %228, %226
  store i32 %add.i11.i, ptr %start_pkt, align 4
  %229 = ptrtoint ptr %parsers.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %parsers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %cmp1.not.i12.i = icmp eq i32 %230, 0
  br i1 %cmp1.not.i12.i, label %if.end4.i.cleanup_crit_edge, label %for.body.lr.ph.i14.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph.i14.i:                             ; preds = %if.end4.i
  %active_parser.i.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 29, i32 2
  br label %for.body.i18.i

for.body.i18.i:                                   ; preds = %for.body.i18.i.for.body.i18.i_crit_edge, %for.body.lr.ph.i14.i
  %i.02.i15.i = phi i32 [ 0, %for.body.lr.ph.i14.i ], [ %inc.i16.i, %for.body.i18.i.for.body.i18.i_crit_edge ]
  %231 = ptrtoint ptr %active_parser.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %active_parser.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %232)
  %cmp3.not.i.i = icmp eq i32 %232, 3
  %i.0..i.i = select i1 %cmp3.not.i.i, i32 %i.02.i15.i, i32 %232
  %mul.pn.i.i = shl i32 %i.0..i.i, 9
  %addr.0.i.i = getelementptr i8, ptr %224, i32 %mul.pn.i.i
  %233 = ptrtoint ptr %start_node.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %start_node.i.i, align 4
  %and.i.i = and i32 %234, 16383
  %add.ptr7.i.i = getelementptr i8, ptr %addr.0.i.i, i32 256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @arm_heavy_mb() #5
  %235 = call i32 @llvm.bswap.i32(i32 %and.i.i) #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 %235) #5, !srcloc !16
  %236 = ptrtoint ptr %start_pkt to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %start_pkt, align 4
  %and9.i.i = and i32 %237, 511
  %add.ptr10.i.i = getelementptr i8, ptr %addr.0.i.i, i32 260
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @arm_heavy_mb() #5
  %238 = call i32 @llvm.bswap.i32(i32 %and9.i.i) #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i, i32 %238) #5, !srcloc !16
  %inc.i16.i = add nuw i32 %i.02.i15.i, 1
  %239 = ptrtoint ptr %parsers.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %parsers.i, align 4
  %cmp.i17.i = icmp ult i32 %inc.i16.i, %240
  br i1 %cmp.i17.i, label %for.body.i18.i.for.body.i18.i_crit_edge, label %for.body.i18.i.cleanup_crit_edge

for.body.i18.i.cleanup_crit_edge:                 ; preds = %for.body.i18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i18.i.for.body.i18.i_crit_edge:          ; preds = %for.body.i18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i18.i

cleanup:                                          ; preds = %for.body.i18.i.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %xgene_cle_setup_dbptr.exit.i, %xgene_cle_setup_node.exit.i, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i106, %if.then2 ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i.i, %xgene_cle_setup_node.exit.i ], [ %call.i6.i, %xgene_cle_setup_dbptr.exit.i ], [ 0, %if.end4.i.cleanup_crit_edge ], [ 0, %for.body.i18.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %kn) #5
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %dbptr) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgene_cle_dram_wr(ptr nocapture noundef readonly %cle, ptr nocapture noundef readonly %data, i8 noundef zeroext %nregs, i32 noundef %index, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %active_parser = getelementptr inbounds %struct.xgene_enet_cle, ptr %cle, i32 0, i32 2
  %0 = ptrtoint ptr %active_parser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active_parser, align 4
  %2 = ptrtoint ptr %cle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %type)
  %cmp = icmp ugt i32 %type, 11
  br i1 %cmp, label %entry.for.body.lr.ph_crit_edge, label %cond.end

entry.for.body.lr.ph_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.lr.ph

cond.end:                                         ; preds = %entry
  %parsers = getelementptr inbounds %struct.xgene_enet_cle, ptr %cle, i32 0, i32 3
  %4 = ptrtoint ptr %parsers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %parsers, align 4
  %phi.cast1 = and i32 %5, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.cast1)
  %cmp36.not = icmp eq i32 %phi.cast1, 0
  br i1 %cmp36.not, label %cond.end.for.end25_crit_edge, label %cond.end.for.body.lr.ph_crit_edge

cond.end.for.body.lr.ph_crit_edge:                ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.lr.ph

cond.end.for.end25_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end25

for.body.lr.ph:                                   ; preds = %cond.end.for.body.lr.ph_crit_edge, %entry.for.body.lr.ph_crit_edge
  %cond11 = phi i32 [ %phi.cast1, %cond.end.for.body.lr.ph_crit_edge ], [ 1, %entry.for.body.lr.ph_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp8.not = icmp eq i32 %1, 3
  %or.cond = select i1 %cmp, i1 true, i1 %cmp8.not
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %conv13 = zext i8 %nregs to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %nregs)
  %cmp144.not = icmp eq i8 %nregs, 0
  %add.ptr17 = getelementptr i8, ptr %3, i32 16
  %add.ptr20 = getelementptr i8, ptr %3, i32 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc23.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc24, %for.inc23.for.body_crit_edge ]
  %port.0.in = select i1 %or.cond, i32 %i.07, i32 %1
  %conv11 = shl i32 %port.0.in, 2
  %add = add i32 %conv11, %type
  %shl = shl i32 %add, 28
  %or = or i32 %shl, %index
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #5, !srcloc !16
  br i1 %cmp144.not, label %for.body.for.end_crit_edge, label %for.body.for.body16_crit_edge

for.body.for.body16_crit_edge:                    ; preds = %for.body
  br label %for.body16

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %for.body.for.body16_crit_edge
  %j.05 = phi i32 [ %inc, %for.body16.for.body16_crit_edge ], [ 0, %for.body.for.body16_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %j.05
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %mul18 = shl i32 %j.05, 2
  %add.ptr19 = getelementptr i8, ptr %add.ptr17, i32 %mul18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %9) #5, !srcloc !16
  %inc = add nuw nsw i32 %j.05, 1
  %exitcond.not = icmp eq i32 %inc, %conv13
  br i1 %exitcond.not, label %for.body16.for.end_crit_edge, label %for.body16.for.body16_crit_edge

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body16

for.body16.for.end_crit_edge:                     ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body16.for.end_crit_edge, %for.body.for.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 16777216) #5, !srcloc !16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not.i = icmp eq i32 %11, 0
  br i1 %tobool1.not.i, label %if.end.i, label %for.end.for.inc23_crit_edge

for.end.for.inc23_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc23

if.end.i:                                         ; preds = %for.end
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool1.not.1.i = icmp eq i32 %13, 0
  br i1 %tobool1.not.1.i, label %if.end.1.i, label %if.end.i.for.inc23_crit_edge

if.end.i.for.inc23_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc23

if.end.1.i:                                       ; preds = %if.end.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not.2.i = icmp eq i32 %15, 0
  br i1 %tobool1.not.2.i, label %if.end.2.i, label %if.end.1.i.for.inc23_crit_edge

if.end.1.i.for.inc23_crit_edge:                   ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc23

if.end.2.i:                                       ; preds = %if.end.1.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool1.not.3.i = icmp eq i32 %17, 0
  br i1 %tobool1.not.3.i, label %if.end.3.i, label %if.end.2.i.for.inc23_crit_edge

if.end.2.i.for.inc23_crit_edge:                   ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc23

if.end.3.i:                                       ; preds = %if.end.2.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool1.not.4.i = icmp eq i32 %19, 0
  br i1 %tobool1.not.4.i, label %if.end.4.i, label %if.end.3.i.for.inc23_crit_edge

if.end.3.i.for.inc23_crit_edge:                   ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc23

if.end.4.i:                                       ; preds = %if.end.3.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %21 = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool1.not.5.i = icmp eq i32 %21, 0
  br i1 %tobool1.not.5.i, label %if.end.5.i, label %if.end.4.i.for.inc23_crit_edge

if.end.4.i.for.inc23_crit_edge:                   ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc23

if.end.5.i:                                       ; preds = %if.end.4.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool1.not.6.i = icmp eq i32 %23, 0
  br i1 %tobool1.not.6.i, label %if.end.6.i, label %if.end.5.i.for.inc23_crit_edge

if.end.5.i.for.inc23_crit_edge:                   ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc23

if.end.6.i:                                       ; preds = %if.end.5.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %25 = and i32 %24, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool1.not.7.i = icmp eq i32 %25, 0
  br i1 %tobool1.not.7.i, label %if.end.7.i, label %if.end.6.i.for.inc23_crit_edge

if.end.6.i.for.inc23_crit_edge:                   ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc23

if.end.7.i:                                       ; preds = %if.end.6.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %27 = and i32 %26, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool1.not.8.i = icmp eq i32 %27, 0
  br i1 %tobool1.not.8.i, label %if.end.8.i, label %if.end.7.i.for.inc23_crit_edge

if.end.7.i.for.inc23_crit_edge:                   ; preds = %if.end.7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc23

if.end.8.i:                                       ; preds = %if.end.7.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %29 = and i32 %28, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool1.not.9.i = icmp eq i32 %29, 0
  br i1 %tobool1.not.9.i, label %xgene_cle_poll_cmd_done.exit, label %if.end.8.i.for.inc23_crit_edge

if.end.8.i.for.inc23_crit_edge:                   ; preds = %if.end.8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc23

xgene_cle_poll_cmd_done.exit:                     ; preds = %if.end.8.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  br label %for.end25

for.inc23:                                        ; preds = %if.end.8.i.for.inc23_crit_edge, %if.end.7.i.for.inc23_crit_edge, %if.end.6.i.for.inc23_crit_edge, %if.end.5.i.for.inc23_crit_edge, %if.end.4.i.for.inc23_crit_edge, %if.end.3.i.for.inc23_crit_edge, %if.end.2.i.for.inc23_crit_edge, %if.end.1.i.for.inc23_crit_edge, %if.end.i.for.inc23_crit_edge, %for.end.for.inc23_crit_edge
  %inc24 = add nuw nsw i32 %i.07, 1
  %exitcond8.not = icmp eq i32 %inc24, %cond11
  br i1 %exitcond8.not, label %for.inc23.for.end25_crit_edge, label %for.inc23.for.body_crit_edge

for.inc23.for.body_crit_edge:                     ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc23.for.end25_crit_edge:                    ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end25

for.end25:                                        ; preds = %for.inc23.for.end25_crit_edge, %xgene_cle_poll_cmd_done.exit, %cond.end.for.end25_crit_edge
  %ret.1 = phi i32 [ -16, %xgene_cle_poll_cmd_done.exit ], [ 0, %cond.end.for.end25_crit_edge ], [ 0, %for.inc23.for.end25_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare ptr @memset(ptr, i32, i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @xgene_cle3in_ops, !1, !"xgene_cle3in_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_cle.c", i32 820, i32 28}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_cle.c", i32 778, i32 27}
!4 = !{ptr @xgene_init_ptree_dn, !5, !"xgene_init_ptree_dn", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_cle.c", i32 196, i32 42}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 2158680740}
!16 = !{i64 6720289}
!17 = !{i64 2154254921}
!18 = !{i8 0, i8 2}
!19 = !{i64 6720707}
!20 = !{i64 2154253566}
