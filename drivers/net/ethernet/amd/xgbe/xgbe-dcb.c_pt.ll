; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/amd/xgbe/xgbe-dcb.c_pt.bc'
source_filename = "../drivers/net/ethernet/amd/xgbe/xgbe-dcb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dcbnl_rtnl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ieee_ets = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8] }
%struct.ieee_pfc = type { i8, i8, i8, i16, [8 x i64], [8 x i64] }

@xgbe_dcbnl_ops = internal constant { %struct.dcbnl_rtnl_ops, [60 x i8] } { %struct.dcbnl_rtnl_ops { ptr @xgbe_dcb_ieee_getets, ptr @xgbe_dcb_ieee_setets, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgbe_dcb_ieee_getpfc, ptr @xgbe_dcb_ieee_setpfc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgbe_dcb_getdcbx, ptr @xgbe_dcb_setdcbx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@xgbe_dcb_ieee_setets.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"amd_xgbe\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xgbe_dcb_ieee_setets\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/amd/xgbe/xgbe-dcb.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"TC%u: tx_bw=%hhu, rx_bw=%hhu, tsa=%hhu\0A\00", [56 x i8] zeroinitializer }, align 32
@xgbe_dcb_ieee_setets.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PRIO%u: TC=%hhu\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unsupported TSA algorithm (%hhu)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"exceeded number of supported traffic classes\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"sum of ETS algorithm weights is not 100 (%u)\0A\00", [50 x i8] zeroinitializer }, align 32
@xgbe_dcb_ieee_setpfc.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xgbe_dcb_ieee_setpfc\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cap=%hhu, en=%#hhx, mbc=%hhu, delay=%hhu\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"PFC requested for unsupported traffic class\0A\00", [51 x i8] zeroinitializer }, align 32
@xgbe_dcb_setdcbx.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xgbe_dcb_setdcbx\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DCBX=%#hhx\0A\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@___asan_gen_.13 = private unnamed_addr constant [15 x i8] c"xgbe_dcbnl_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 278, i32 36 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 154, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 158, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 173, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 182, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 189, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 232, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 238, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [44 x i8] c"../drivers/net/ethernet/amd/xgbe/xgbe-dcb.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 267, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @xgbe_dcbnl_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_dcbnl_ops to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @xgbe_get_dcbnl_ops() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @xgbe_dcbnl_ops
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xgbe_dcb_ieee_getets(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ets) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tc_cnt = getelementptr i8, ptr %netdev, i32 6988
  %0 = ptrtoint ptr %tc_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tc_cnt, align 4
  %conv = trunc i32 %1 to i8
  %ets_cap = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 1
  %2 = ptrtoint ptr %ets_cap to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %ets_cap, align 1
  %ets1 = getelementptr i8, ptr %netdev, i32 6712
  %3 = ptrtoint ptr %ets1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ets1, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cbs = getelementptr inbounds %struct.ieee_ets, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %cbs to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cbs, align 1
  %cbs3 = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 2
  %7 = ptrtoint ptr %cbs3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %cbs3, align 1
  %tc_tx_bw = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 3
  %8 = ptrtoint ptr %ets1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ets1, align 8
  %tc_tx_bw5 = getelementptr inbounds %struct.ieee_ets, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %tc_tx_bw5 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %tc_tx_bw5, align 1
  %12 = ptrtoint ptr %tc_tx_bw to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %tc_tx_bw, align 1
  %tc_tsa = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 5
  %13 = load ptr, ptr %ets1, align 8
  %tc_tsa9 = getelementptr inbounds %struct.ieee_ets, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %tc_tsa9 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %tc_tsa9, align 1
  %16 = ptrtoint ptr %tc_tsa to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 %15, ptr %tc_tsa, align 1
  %prio_tc = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 6
  %17 = load ptr, ptr %ets1, align 8
  %prio_tc13 = getelementptr inbounds %struct.ieee_ets, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %prio_tc13 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %prio_tc13, align 1
  %20 = ptrtoint ptr %prio_tc to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %prio_tc, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_dcb_ieee_setets(ptr noundef %netdev, ptr nocapture noundef readonly %ets) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %msg_enable = getelementptr i8, ptr %netdev, i32 7116
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %entry
  %i.0196 = phi i32 [ 0, %entry ], [ %inc, %for.inc.do.body_crit_edge ]
  %tc_ets.0195 = phi i32 [ 0, %entry ], [ %tc_ets.1, %for.inc.do.body_crit_edge ]
  %tc_ets_weight.0194 = phi i32 [ 0, %entry ], [ %tc_ets_weight.1, %for.inc.do.body_crit_edge ]
  %max_tc.0193 = phi i8 [ 0, %entry ], [ %max_tc.1, %for.inc.do.body_crit_edge ]
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.body14_crit_edge, label %do.body1

do.body.do.body14_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14

do.body1:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_dcb_ieee_setets.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_dcb_ieee_setets, %if.then6)) #6
          to label %do.body14 [label %if.then6], !srcloc !36

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 %i.0196
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %arrayidx7 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 4, i32 %i.0196
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %5 to i32
  %arrayidx9 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 %i.0196
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_dcb_ieee_setets.__UNIQUE_ID_ddebug351, ptr noundef %netdev, ptr noundef nonnull @.str.3, i32 noundef %i.0196, i32 noundef %conv, i32 noundef %conv8, i32 noundef %conv10) #6
  br label %do.body14

do.body14:                                        ; preds = %if.then6, %do.body1, %do.body.do.body14_crit_edge
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 4
  %and16 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body14.do.end39_crit_edge, label %do.body19

do.body14.do.end39_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end39

do.body19:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_dcb_ieee_setets.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_dcb_ieee_setets, %if.then31)) #6
          to label %do.end39 [label %if.then31], !srcloc !36

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx32 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 %i.0196
  %10 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_dcb_ieee_setets.__UNIQUE_ID_ddebug352, ptr noundef %netdev, ptr noundef nonnull @.str.4, i32 noundef %i.0196, i32 noundef %conv33) #6
  br label %do.end39

do.end39:                                         ; preds = %if.then31, %do.body19, %do.body14.do.end39_crit_edge
  %arrayidx41 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 %i.0196
  %12 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx41, align 1
  %14 = tail call i8 @llvm.umax.i8(i8 %max_tc.0193, i8 %13)
  %arrayidx51 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 %i.0196
  %15 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool53.not = icmp eq i8 %16, 0
  br i1 %tobool53.not, label %lor.lhs.false, label %do.end39.if.then58_crit_edge

do.end39.if.then58_crit_edge:                     ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then58

lor.lhs.false:                                    ; preds = %do.end39
  %arrayidx55 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 %i.0196
  %17 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx55, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool57.not = icmp eq i8 %18, 0
  br i1 %tobool57.not, label %lor.lhs.false.if.end72_crit_edge, label %lor.lhs.false.if.then58_crit_edge

lor.lhs.false.if.then58_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then58

lor.lhs.false.if.end72_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then58:                                        ; preds = %lor.lhs.false.if.then58_crit_edge, %do.end39.if.then58_crit_edge
  %conv61 = zext i8 %14 to i32
  %19 = tail call i32 @llvm.umax.i32(i32 %i.0196, i32 %conv61)
  %conv71 = trunc i32 %19 to i8
  br label %if.end72

if.end72:                                         ; preds = %if.then58, %lor.lhs.false.if.end72_crit_edge
  %max_tc.1 = phi i8 [ %conv71, %if.then58 ], [ %14, %lor.lhs.false.if.end72_crit_edge ]
  %arrayidx74 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 %i.0196
  %20 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx74, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i8 %21, label %do.body79 [
    i8 0, label %if.end72.for.inc_crit_edge
    i8 2, label %sw.bb
  ]

if.end72.for.inc_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb:                                            ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %conv78 = zext i8 %16 to i32
  %add = add i32 %tc_ets_weight.0194, %conv78
  br label %for.inc

do.body79:                                        ; preds = %if.end72
  %23 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_enable, align 4
  %and81 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %do.body79.cleanup_crit_edge, label %if.then83

do.body79.cleanup_crit_edge:                      ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then83:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #8
  %conv75.le = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.5, i32 noundef %conv75.le) #9
  br label %cleanup

for.inc:                                          ; preds = %sw.bb, %if.end72.for.inc_crit_edge
  %tc_ets_weight.1 = phi i32 [ %add, %sw.bb ], [ %tc_ets_weight.0194, %if.end72.for.inc_crit_edge ]
  %tc_ets.1 = phi i32 [ 1, %sw.bb ], [ %tc_ets.0195, %if.end72.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0196, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.end:                                          ; preds = %for.inc
  %conv90 = zext i8 %max_tc.1 to i32
  %tc_cnt = getelementptr i8, ptr %netdev, i32 6988
  %25 = ptrtoint ptr %tc_cnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tc_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %conv90)
  %cmp91.not = icmp ugt i32 %26, %conv90
  br i1 %cmp91.not, label %if.end102, label %do.body94

do.body94:                                        ; preds = %for.end
  %27 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg_enable, align 4
  %and96 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %do.body94.cleanup_crit_edge, label %if.then98

do.body94.cleanup_crit_edge:                      ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then98:                                        ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end102:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tc_ets.1)
  %tobool103.not = icmp eq i32 %tc_ets.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %tc_ets_weight.1)
  %cmp104.not = icmp eq i32 %tc_ets_weight.1, 100
  %or.cond = select i1 %tobool103.not, i1 true, i1 %cmp104.not
  br i1 %or.cond, label %if.end115, label %do.body107

do.body107:                                       ; preds = %if.end102
  %29 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %msg_enable, align 4
  %and109 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %do.body107.cleanup_crit_edge, label %if.then111

do.body107.cleanup_crit_edge:                     ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then111:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.7, i32 noundef %tc_ets_weight.1) #9
  br label %cleanup

if.end115:                                        ; preds = %if.end102
  %ets116 = getelementptr i8, ptr %netdev, i32 6712
  %31 = ptrtoint ptr %ets116 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ets116, align 8
  %tobool117.not = icmp eq ptr %32, null
  br i1 %tobool117.not, label %if.then118, label %if.end115.if.end125_crit_edge

if.end115.if.end125_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end125

if.then118:                                       ; preds = %if.end115
  %dev = getelementptr i8, ptr %netdev, i32 2320
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %34, i32 noundef 59, i32 noundef 3520) #6
  %35 = ptrtoint ptr %ets116 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %ets116, align 8
  %tobool122.not = icmp eq ptr %call.i, null
  br i1 %tobool122.not, label %if.then118.cleanup_crit_edge, label %if.then118.if.end125_crit_edge

if.then118.if.end125_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end125

if.then118.cleanup_crit_edge:                     ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end125:                                        ; preds = %if.then118.if.end125_crit_edge, %if.end115.if.end125_crit_edge
  %add127 = add i8 %max_tc.1, 1
  %num_tcs = getelementptr i8, ptr %netdev, i32 6884
  %36 = ptrtoint ptr %num_tcs to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %add127, ptr %num_tcs, align 4
  %37 = ptrtoint ptr %ets116 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ets116, align 8
  %39 = call ptr @memcpy(ptr %38, ptr %ets, i32 59)
  %config_dcb_tc = getelementptr i8, ptr %netdev, i32 3016
  %40 = ptrtoint ptr %config_dcb_tc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %config_dcb_tc, align 4
  tail call void %41(ptr noundef %add.ptr.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end125, %if.then118.cleanup_crit_edge, %if.then111, %do.body107.cleanup_crit_edge, %if.then98, %do.body94.cleanup_crit_edge, %if.then83, %do.body79.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end125 ], [ -22, %if.then83 ], [ -22, %do.body79.cleanup_crit_edge ], [ -22, %if.then98 ], [ -22, %do.body94.cleanup_crit_edge ], [ -22, %if.then111 ], [ -22, %do.body107.cleanup_crit_edge ], [ -12, %if.then118.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xgbe_dcb_ieee_getpfc(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %pfc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tc_cnt = getelementptr i8, ptr %netdev, i32 6988
  %0 = ptrtoint ptr %tc_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tc_cnt, align 4
  %conv = trunc i32 %1 to i8
  %2 = ptrtoint ptr %pfc to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %pfc, align 8
  %pfc1 = getelementptr i8, ptr %netdev, i32 6716
  %3 = ptrtoint ptr %pfc1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pfc1, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pfc_en = getelementptr inbounds %struct.ieee_pfc, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pfc_en, align 1
  %pfc_en3 = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 1
  %7 = ptrtoint ptr %pfc_en3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %pfc_en3, align 1
  %8 = ptrtoint ptr %pfc1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pfc1, align 4
  %mbc = getelementptr inbounds %struct.ieee_pfc, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %mbc to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mbc, align 2
  %mbc5 = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 2
  %12 = ptrtoint ptr %mbc5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %mbc5, align 2
  %13 = load ptr, ptr %pfc1, align 4
  %delay = getelementptr inbounds %struct.ieee_pfc, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %delay to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %delay, align 4
  %delay7 = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 3
  %16 = ptrtoint ptr %delay7 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %delay7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_dcb_ieee_setpfc(ptr noundef %netdev, ptr nocapture noundef readonly %pfc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %msg_enable = getelementptr i8, ptr %netdev, i32 7116
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.body1

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_dcb_ieee_setpfc.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_dcb_ieee_setpfc, %if.then6)) #6
          to label %do.end12 [label %if.then6], !srcloc !36

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %pfc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pfc, align 8
  %conv = zext i8 %3 to i32
  %pfc_en = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 1
  %4 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pfc_en, align 1
  %conv7 = zext i8 %5 to i32
  %mbc = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 2
  %6 = ptrtoint ptr %mbc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mbc, align 2
  %conv8 = zext i8 %7 to i32
  %delay = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 3
  %8 = ptrtoint ptr %delay to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %delay, align 4
  %conv9 = zext i16 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_dcb_ieee_setpfc.__UNIQUE_ID_ddebug357, ptr noundef %netdev, ptr noundef nonnull @.str.9, i32 noundef %conv, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %conv9) #6
  br label %do.end12

do.end12:                                         ; preds = %if.then6, %do.body1, %entry.do.end12_crit_edge
  %pfc_en13 = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 1
  %10 = ptrtoint ptr %pfc_en13 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pfc_en13, align 1
  %conv14 = zext i8 %11 to i32
  %tc_cnt = getelementptr i8, ptr %netdev, i32 6988
  %12 = ptrtoint ptr %tc_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tc_cnt, align 4
  %notmask = shl nsw i32 -1, %13
  %and15 = and i32 %notmask, %conv14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end26, label %do.body18

do.body18:                                        ; preds = %do.end12
  %14 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable, align 4
  %and20 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body18.cleanup_crit_edge, label %if.then22

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then22:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end26:                                         ; preds = %do.end12
  %pfc27 = getelementptr i8, ptr %netdev, i32 6716
  %16 = ptrtoint ptr %pfc27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pfc27, align 4
  %tobool28.not = icmp eq ptr %17, null
  br i1 %tobool28.not, label %if.then29, label %if.end26.if.end36_crit_edge

if.end26.if.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then29:                                        ; preds = %if.end26
  %dev = getelementptr i8, ptr %netdev, i32 2320
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %19, i32 noundef 136, i32 noundef 3520) #6
  %20 = ptrtoint ptr %pfc27 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %pfc27, align 4
  %tobool33.not = icmp eq ptr %call.i, null
  br i1 %tobool33.not, label %if.then29.cleanup_crit_edge, label %if.then29.if.end36_crit_edge

if.then29.if.end36_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %if.then29.if.end36_crit_edge, %if.end26.if.end36_crit_edge
  %21 = ptrtoint ptr %pfc27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pfc27, align 4
  %23 = call ptr @memcpy(ptr %22, ptr %pfc, i32 136)
  %config_dcb_pfc = getelementptr i8, ptr %netdev, i32 3020
  %24 = ptrtoint ptr %config_dcb_pfc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %config_dcb_pfc, align 4
  tail call void %25(ptr noundef %add.ptr.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then29.cleanup_crit_edge, %if.then22, %do.body18.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36 ], [ -22, %if.then22 ], [ -22, %do.body18.cleanup_crit_edge ], [ -12, %if.then29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @xgbe_dcb_getdcbx(ptr nocapture noundef readnone %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @xgbe_dcb_setdcbx(ptr noundef %netdev, i8 noundef zeroext %dcbx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 7116
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body2

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_dcb_setdcbx.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_dcb_setdcbx, %if.then7)) #6
          to label %do.end10 [label %if.then7], !srcloc !36

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %dcbx to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_dcb_setdcbx.__UNIQUE_ID_ddebug358, ptr noundef %netdev, ptr noundef nonnull @.str.12, i32 noundef %conv) #6
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body2, %entry.do.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %dcbx)
  %2 = icmp ne i8 %dcbx, 9
  %retval.0 = zext i1 %2 to i8
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !15, !17, !19, !20, !21, !23, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @xgbe_dcbnl_ops, !1, !"xgbe_dcbnl_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dcb.c", i32 278, i32 36}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dcb.c", i32 154, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @xgbe_dcb_ieee_setets.__UNIQUE_ID_ddebug351, !3, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dcb.c", i32 158, i32 3}
!10 = !{ptr @xgbe_dcb_ieee_setets.__UNIQUE_ID_ddebug352, !9, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dcb.c", i32 173, i32 4}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dcb.c", i32 182, i32 3}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dcb.c", i32 189, i32 3}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dcb.c", i32 232, i32 2}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @xgbe_dcb_ieee_setpfc.__UNIQUE_ID_ddebug357, !18, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dcb.c", i32 238, i32 3}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dcb.c", i32 267, i32 2}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @xgbe_dcb_setdcbx.__UNIQUE_ID_ddebug358, !24, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 2149048020, i64 2149048025, i64 2149048038, i64 2149048082, i64 2149048116, i64 2149048137}
