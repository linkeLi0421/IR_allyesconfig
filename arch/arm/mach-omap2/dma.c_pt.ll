; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/dma.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_dma_reg = type { i16, i8, i8 }
%struct.omap_dma_dev_attr = type { i32, i16, i16 }
%struct.omap_system_dma_plat_info = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.dma_slave_map = type { ptr, ptr, ptr }

@reg_map = internal constant { [53 x %struct.omap_dma_reg], [44 x i8] } { [53 x %struct.omap_dma_reg] [%struct.omap_dma_reg { i16 120, i8 0, i8 3 }, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg { i16 100, i8 0, i8 3 }, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg { i16 108, i8 0, i8 3 }, %struct.omap_dma_reg { i16 112, i8 0, i8 3 }, %struct.omap_dma_reg { i16 116, i8 0, i8 3 }, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg { i16 0, i8 0, i8 3 }, %struct.omap_dma_reg { i16 8, i8 0, i8 3 }, %struct.omap_dma_reg { i16 12, i8 0, i8 3 }, %struct.omap_dma_reg { i16 16, i8 0, i8 3 }, %struct.omap_dma_reg { i16 20, i8 0, i8 3 }, %struct.omap_dma_reg { i16 24, i8 0, i8 3 }, %struct.omap_dma_reg { i16 28, i8 0, i8 3 }, %struct.omap_dma_reg { i16 32, i8 0, i8 3 }, %struct.omap_dma_reg { i16 36, i8 0, i8 3 }, %struct.omap_dma_reg { i16 40, i8 0, i8 3 }, %struct.omap_dma_reg { i16 44, i8 0, i8 3 }, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg { i16 144, i8 96, i8 3 }, %struct.omap_dma_reg { i16 128, i8 96, i8 3 }, %struct.omap_dma_reg { i16 136, i8 96, i8 3 }, %struct.omap_dma_reg { i16 140, i8 96, i8 3 }, %struct.omap_dma_reg { i16 148, i8 96, i8 3 }, %struct.omap_dma_reg { i16 152, i8 96, i8 3 }, %struct.omap_dma_reg { i16 168, i8 96, i8 3 }, %struct.omap_dma_reg { i16 164, i8 96, i8 3 }, %struct.omap_dma_reg { i16 180, i8 96, i8 3 }, %struct.omap_dma_reg { i16 184, i8 96, i8 3 }, %struct.omap_dma_reg { i16 172, i8 96, i8 3 }, %struct.omap_dma_reg { i16 176, i8 96, i8 3 }, %struct.omap_dma_reg { i16 132, i8 96, i8 3 }, %struct.omap_dma_reg { i16 156, i8 96, i8 3 }, %struct.omap_dma_reg { i16 160, i8 96, i8 3 }, %struct.omap_dma_reg { i16 196, i8 96, i8 3 }, %struct.omap_dma_reg { i16 188, i8 96, i8 3 }, %struct.omap_dma_reg { i16 192, i8 96, i8 3 }, %struct.omap_dma_reg { i16 208, i8 96, i8 3 }, %struct.omap_dma_reg { i16 212, i8 96, i8 3 }, %struct.omap_dma_reg { i16 216, i8 96, i8 3 }], [44 x i8] zeroinitializer }, align 32
@dma_attr = internal global { %struct.omap_dma_dev_attr, [24 x i8] } { %struct.omap_dma_dev_attr { i32 31, i16 32, i16 0 }, [24 x i8] zeroinitializer }, align 32
@dma_plat_info = dso_local global { %struct.omap_system_dma_plat_info, [52 x i8] } { %struct.omap_system_dma_plat_info { ptr @reg_map, i32 96, ptr @dma_attr, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_dma__232_205___omap2_system_dma_init3 = internal global ptr @__omap2_system_dma_init, section ".initcall3.init", align 4
@omap24xx_sdma_dt_map = internal constant { [6 x %struct.dma_slave_map], [56 x i8] } { [6 x %struct.dma_slave_map] [%struct.dma_slave_map { ptr @.str, ptr @.str.1, ptr @.compoundliteral }, %struct.dma_slave_map { ptr @.str, ptr @.str.2, ptr @.compoundliteral.3 }, %struct.dma_slave_map { ptr @.str, ptr @.str.4, ptr @.compoundliteral.5 }, %struct.dma_slave_map { ptr @.str, ptr @.str.6, ptr @.compoundliteral.7 }, %struct.dma_slave_map { ptr @.str, ptr @.str.8, ptr @.compoundliteral.9 }, %struct.dma_slave_map { ptr @.str, ptr @.str.10, ptr @.compoundliteral.11 }], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"musb-hdrc.1.auto\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dmareq0\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 2], [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dmareq1\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 3], [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dmareq2\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 14], [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dmareq3\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 15], [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dmareq4\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 16], [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dmareq5\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 64], [28 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [8 x i8] c"reg_map\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 34, i32 34 }
@___asan_gen_.15 = private unnamed_addr constant [9 x i8] c"dma_attr\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 174, i32 33 }
@___asan_gen_.18 = private unnamed_addr constant [14 x i8] c"dma_plat_info\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 180, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant [21 x i8] c"omap24xx_sdma_dt_map\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 164, i32 35 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 166, i32 4 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 166, i32 24 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 167, i32 24 }
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 168, i32 24 }
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 169, i32 24 }
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 170, i32 24 }
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [29 x i8] c"../arch/arm/mach-omap2/dma.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 171, i32 24 }
@___asan_gen_.50 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@llvm.compiler.used = appending global [19 x ptr] [ptr @__initcall__kmod_dma__232_205___omap2_system_dma_init3, ptr @__omap2_system_dma_init, ptr @reg_map, ptr @dma_attr, ptr @dma_plat_info, ptr @omap24xx_sdma_dt_map, ptr @.str, ptr @.str.1, ptr @.compoundliteral, ptr @.str.2, ptr @.compoundliteral.3, ptr @.str.4, ptr @.compoundliteral.5, ptr @.str.6, ptr @.compoundliteral.7, ptr @.str.8, ptr @.compoundliteral.9, ptr @.str.10, ptr @.compoundliteral.11], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_map to i32), i32 212, i32 256, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_attr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_plat_info to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap24xx_sdma_dt_map to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @__omap2_system_dma_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call fastcc void @omap2_system_dma_init() #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap2_system_dma_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @omap_rev() #2
  %shr.mask.i.i = and i32 %call.i.i, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 606076928, i32 %shr.mask.i.i)
  %cmp.i.not.i = icmp eq i32 %shr.mask.i.i, 606076928
  br i1 %cmp.i.not.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %call.i33.i = tail call i32 @omap_rev() #2
  %shr.mask.i34.i = and i32 %call.i33.i, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 607125504, i32 %shr.mask.i34.i)
  %cmp.i35.not.i = icmp eq i32 %shr.mask.i34.i, 607125504
  br i1 %cmp.i35.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @omap_type() #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 607125540, i32 %call3.i)
  %cmp.i = icmp eq i32 %call3.i, 607125540
  br i1 %cmp.i, label %land.lhs.true.i.if.then.i_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge
  %errata.0.i = phi i32 [ 7, %if.then.i ], [ 4, %land.lhs.true.i.if.end.i_crit_edge ], [ 4, %lor.lhs.false.i.if.end.i_crit_edge ]
  %call.i37.i = tail call i32 @omap_rev() #2
  %and.i.i = and i32 %call.i37.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %and.i.i)
  %cmp.i38.not.i = icmp eq i32 %and.i.i, 52
  %or9.i = or i32 %errata.0.i, 8
  %spec.select.i = select i1 %cmp.i38.not.i, i32 %or9.i, i32 %errata.0.i
  %call11.i = tail call i32 @omap_type() #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 875561012, i32 %call11.i)
  %cmp12.i = icmp eq i32 %call11.i, 875561012
  %or14.i = or i32 %spec.select.i, 16
  %errata.2.i = select i1 %cmp12.i, i32 %or14.i, i32 %spec.select.i
  %or16.i = or i32 %errata.2.i, 32
  %call.i40.i = tail call i32 @omap_rev() #2
  %and.i41.i = and i32 %call.i40.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %and.i41.i)
  %cmp.i42.not.i = icmp eq i32 %and.i41.i, 52
  br i1 %cmp.i42.not.i, label %land.lhs.true19.i, label %if.end.i.configure_dma_errata.exit_crit_edge

if.end.i.configure_dma_errata.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %configure_dma_errata.exit

land.lhs.true19.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %call20.i = tail call i32 @omap_type() #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call20.i)
  %cmp21.not.i = icmp eq i32 %call20.i, 3
  %or23.i = or i32 %errata.2.i, 96
  %spec.select32.i = select i1 %cmp21.not.i, i32 %or16.i, i32 %or23.i
  br label %configure_dma_errata.exit

configure_dma_errata.exit:                        ; preds = %land.lhs.true19.i, %if.end.i.configure_dma_errata.exit_crit_edge
  %errata.3.i = phi i32 [ %or16.i, %if.end.i.configure_dma_errata.exit_crit_edge ], [ %spec.select32.i, %land.lhs.true19.i ]
  store i32 %errata.3.i, ptr getelementptr inbounds (%struct.omap_system_dma_plat_info, ptr @dma_plat_info, i32 0, i32 3), align 4
  %call.i = tail call i32 @omap_rev() #2
  %and.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %and.i)
  %cmp.i1.not = icmp eq i32 %and.i, 36
  br i1 %cmp.i1.not, label %if.then, label %configure_dma_errata.exit.if.end_crit_edge

configure_dma_errata.exit.if.end_crit_edge:       ; preds = %configure_dma_errata.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %configure_dma_errata.exit
  call void @__sanitizer_cov_trace_pc() #4
  store ptr @omap24xx_sdma_dt_map, ptr getelementptr inbounds (%struct.omap_system_dma_plat_info, ptr @dma_plat_info, i32 0, i32 9), align 4
  store i32 6, ptr getelementptr inbounds (%struct.omap_system_dma_plat_info, ptr @dma_plat_info, i32 0, i32 10), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %configure_dma_errata.exit.if.end_crit_edge
  %call.i2 = tail call i32 @omap_rev() #2
  %shr.mask.i = and i32 %call.i2, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 606076928, i32 %shr.mask.i)
  %cmp.i3.not = icmp eq i32 %shr.mask.i, 606076928
  br i1 %cmp.i3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %0 = load i32, ptr @dma_attr, align 4
  %or = or i32 %0, 32
  store i32 %or, ptr @dma_attr, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %call.i5 = tail call i32 @omap_rev() #2
  %and.i6 = and i32 %call.i5, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %and.i6)
  %cmp.i7.not = icmp eq i32 %and.i6, 52
  br i1 %cmp.i7.not, label %land.lhs.true, label %if.end5.if.end11_crit_edge

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end5
  %call8 = tail call i32 @omap_type() #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call8)
  %cmp.not = icmp eq i32 %call8, 3
  br i1 %cmp.not, label %land.lhs.true.if.end11_crit_edge, label %if.then9

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end11

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  %1 = load i32, ptr @dma_attr, align 4
  %or10 = or i32 %1, 32768
  store i32 %or10, ptr @dma_attr, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %land.lhs.true.if.end11_crit_edge, %if.end5.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_type() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }
attributes #5 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @dma_plat_info, !1, !"dma_plat_info", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/dma.c", i32 180, i32 34}
!2 = !{ptr @__initcall__kmod_dma__232_205___omap2_system_dma_init3, !3, !"__initcall__kmod_dma__232_205___omap2_system_dma_init3", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/dma.c", i32 205, i32 1}
!4 = !{ptr @reg_map, !5, !"reg_map", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/dma.c", i32 34, i32 34}
!6 = !{ptr @dma_attr, !7, !"dma_attr", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/dma.c", i32 174, i32 33}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/dma.c", i32 166, i32 4}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/dma.c", i32 166, i32 24}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/dma.c", i32 167, i32 24}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/dma.c", i32 168, i32 24}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-omap2/dma.c", i32 169, i32 24}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-omap2/dma.c", i32 170, i32 24}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-omap2/dma.c", i32 171, i32 24}
!22 = !{ptr @omap24xx_sdma_dt_map, !23, !"omap24xx_sdma_dt_map", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-omap2/dma.c", i32 164, i32 35}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
