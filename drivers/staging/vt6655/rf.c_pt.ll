; ModuleID = '/llk/IR_all_yes/drivers/staging/vt6655/rf.c_pt.bc'
source_filename = "../drivers/staging/vt6655/rf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vnt_private = type { ptr, ptr, ptr, i32, i32, i16, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.spinlock, [2 x i32], [2 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, [2 x ptr], %struct.vnt_options, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, [6 x i8], i8, i32, i8, i32, i32, i8, i8, i8, i8, ptr, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i32, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i32, i8, i16, i8, i8, i8, i32, i8, i8, [4 x i8], [4 x i32], i8, i8, i32, i8, i8, i8, i8, i8, [15 x i8], [57 x i8], [15 x i8], [57 x i8], [57 x i8], [57 x i8], i8, i8, i8, i8, [256 x i8], i16, i16, %struct.work_struct, %struct.ieee80211_low_level_stats }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.vnt_options = type { i32, i32, [2 x i32], i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }

@al2230_init_table = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 66556089, i32 53686713, i32 27263673, i32 16774073, i32 369849, i32 256755129, i32 134592185, i32 21415865, i32 428217, i32 67353017, i32 14400185, i32 629689, i32 199228601, i32 3513, i32 5771193], [36 x i8] zeroinitializer }, align 32
@al7230_init_table = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 3641529, i32 322122169, i32 -2078281031, i32 1071621049, i32 2144830649, i32 -2144643655, i32 1454323385, i32 -838727751, i32 1857816761, i32 572242361, i32 -536868167, i32 134421433, i32 670905, i32 -583, i32 3769, i32 448434105], [32 x i8] zeroinitializer }, align 32
@al7230_channel_table0 = internal constant { [56 x i32], [32 x i8] } { [56 x i32] [i32 3641529, i32 3641529, i32 3641529, i32 3641529, i32 3645625, i32 3645625, i32 3645625, i32 3645625, i32 3649721, i32 3649721, i32 3649721, i32 3649721, i32 3653817, i32 3653817, i32 267722937, i32 267722937, i32 267722937, i32 267722937, i32 267722937, i32 267722937, i32 267727033, i32 267727033, i32 267731129, i32 267731129, i32 267731129, i32 267731129, i32 267731129, i32 267735225, i32 267739321, i32 267739321, i32 267743417, i32 267743417, i32 267743417, i32 267743417, i32 267743417, i32 267743417, i32 267747513, i32 267747513, i32 267747513, i32 267751609, i32 267763897, i32 267763897, i32 267763897, i32 267767993, i32 267767993, i32 267767993, i32 267772089, i32 267772089, i32 267772089, i32 267776185, i32 267776185, i32 267780281, i32 267780281, i32 267780281, i32 267784377, i32 267784377], [32 x i8] zeroinitializer }, align 32
@al7230_channel_table1 = internal constant { [56 x i32], [32 x i8] } { [56 x i32] [i32 322122169, i32 456339897, i32 53686713, i32 187904441, i32 322122169, i32 456339897, i32 53686713, i32 187904441, i32 322122169, i32 456339897, i32 53686713, i32 187904441, i32 322122169, i32 107372985, i32 492130745, i32 441, i32 44736953, i32 134218169, i32 178954681, i32 223695289, i32 357913017, i32 441, i32 492130745, i32 441, i32 44736953, i32 134218169, i32 178954681, i32 357913017, i32 89477561, i32 178954681, i32 268435897, i32 357913017, i32 447390137, i32 441, i32 89477561, i32 178954681, i32 357913017, i32 441, i32 178954681, i32 357913017, i32 357913017, i32 441, i32 178954681, i32 357913017, i32 441, i32 178954681, i32 357913017, i32 441, i32 178954681, i32 357913017, i32 441, i32 402653625, i32 44736953, i32 223695289, i32 402653625, i32 44736953], [32 x i8] zeroinitializer }, align 32
@al7230_channel_table2 = internal constant { [56 x i32], [32 x i8] } { [56 x i32] [i32 2144830649, i32 2144830649, i32 2144830649, i32 2144830649, i32 2144830649, i32 2144830649, i32 2144830649, i32 2144830649, i32 2144830649, i32 2144830649, i32 2144830649, i32 2144830649, i32 2144830649, i32 2144830649, i32 2010612921, i32 1742177465, i32 2010612921, i32 2010612921, i32 2010612921, i32 2010612921, i32 2010612921, i32 1742177465, i32 2010612921, i32 1742177465, i32 2010612921, i32 2010612921, i32 2010612921, i32 2010612921, i32 2010612921, i32 2010612921, i32 2010612921, i32 2010612921, i32 2010612921, i32 1742177465, i32 2010612921, i32 2010612921, i32 2010612921, i32 1742177465, i32 2010612921, i32 2010612921, i32 2010612921, i32 1742177465, i32 2010612921, i32 2010612921, i32 1742177465, i32 2010612921, i32 2010612921, i32 1742177465, i32 2010612921, i32 2010612921, i32 1742177465, i32 2010612921, i32 2010612921, i32 2010612921, i32 2010612921, i32 2010612921], [32 x i8] zeroinitializer }, align 32
@al2230_power_table = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 67373497, i32 67377593, i32 67381689, i32 67385785, i32 67389881, i32 67393977, i32 67398073, i32 67402169, i32 67406265, i32 67410361, i32 67414457, i32 67418553, i32 67422649, i32 67426745, i32 67430841, i32 67434937, i32 67439033, i32 67443129, i32 67447225, i32 67451321, i32 67455417, i32 67459513, i32 67463609, i32 67467705, i32 67471801, i32 67475897, i32 67479993, i32 67484089, i32 67488185, i32 67492281, i32 67496377, i32 67500473, i32 67504569, i32 67508665, i32 67512761, i32 67516857, i32 67520953, i32 67525049, i32 67529145, i32 67533241, i32 67537337, i32 67541433, i32 67545529, i32 67549625, i32 67553721, i32 67557817, i32 67561913, i32 67566009, i32 67570105, i32 67574201, i32 67578297, i32 67582393, i32 67586489, i32 67590585, i32 67594681, i32 67598777, i32 67602873, i32 67606969, i32 67611065, i32 67615161, i32 67619257, i32 67623353, i32 67627449, i32 67631545], [64 x i8] zeroinitializer }, align 32
@__const.RFvRSSITodBm.abyAIROHARF = private unnamed_addr constant [4 x i8] c"\00\12\00(", align 1
@al2230_channel_table0 = internal constant { <{ [14 x i32], [42 x i32] }>, [32 x i8] } { <{ [14 x i32], [42 x i32] }> <{ [14 x i32] [i32 66556089, i32 66556089, i32 65507513, i32 65507513, i32 66560185, i32 66560185, i32 65511609, i32 65511609, i32 66564281, i32 66564281, i32 65515705, i32 65515705, i32 66568377, i32 65519801], [42 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@al2230_channel_table1 = internal constant { <{ [14 x i32], [42 x i32] }>, [32 x i8] } { <{ [14 x i32], [42 x i32] }> <{ [14 x i32] [i32 53686713, i32 187904441, i32 53686713, i32 187904441, i32 53686713, i32 187904441, i32 53686713, i32 187904441, i32 53686713, i32 187904441, i32 53686713, i32 187904441, i32 53686713, i32 107372985], [42 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 10, i64 14, i64 126]
@__sancov_gen_cov_switch_values.3 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 10, i64 14, i64 126]
@__sancov_gen_cov_switch_values.4 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 10, i64 14, i64 126]
@__sancov_gen_cov_switch_values.5 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 10, i64 14]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 10, i64 14]
@___asan_gen_.8 = private unnamed_addr constant [18 x i8] c"al2230_init_table\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 36, i32 28 }
@___asan_gen_.11 = private unnamed_addr constant [18 x i8] c"al7230_init_table\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 158, i32 28 }
@___asan_gen_.14 = private unnamed_addr constant [22 x i8] c"al7230_channel_table0\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 198, i32 28 }
@___asan_gen_.17 = private unnamed_addr constant [22 x i8] c"al7230_channel_table1\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 265, i32 28 }
@___asan_gen_.20 = private unnamed_addr constant [22 x i8] c"al7230_channel_table2\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 330, i32 28 }
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"al2230_power_table\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 88, i32 22 }
@___asan_gen_.26 = private unnamed_addr constant [22 x i8] c"al2230_channel_table0\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 54, i32 28 }
@___asan_gen_.29 = private unnamed_addr constant [22 x i8] c"al2230_channel_table1\00", align 1
@___asan_gen_.30 = private constant [31 x i8] c"../drivers/staging/vt6655/rf.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 71, i32 28 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @al2230_init_table, ptr @al7230_init_table, ptr @al7230_channel_table0, ptr @al7230_channel_table1, ptr @al7230_channel_table2, ptr @al2230_power_table, ptr @al2230_channel_table0, ptr @al2230_channel_table1], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @al2230_init_table to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @al7230_init_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @al7230_channel_table0 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @al7230_channel_table1 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @al7230_channel_table2 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @al2230_power_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @al2230_channel_table0 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @al2230_channel_table1 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @IFRFbWriteEmbedded(ptr nocapture noundef readonly %priv, i32 noundef %dwData) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %dwData) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #4, !srcloc !28
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %ww.013 = phi i16 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %4 = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i16 %ww.013, 1
  %cmp = icmp ult i16 %ww.013, -17
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %ww.0.lcssa = phi i16 [ %ww.013, %for.body.for.end_crit_edge ], [ -16, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa)
  %cmp4 = icmp ne i16 %ww.0.lcssa, -16
  ret i1 %cmp4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @RFbInit(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %byRFType = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 37
  %0 = ptrtoint ptr %byRFType to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %byRFType, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %sw.default [
    i8 3, label %entry.sw.bb_crit_edge
    i8 14, label %entry.sw.bb_crit_edge22
    i8 10, label %sw.bb1
    i8 126, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.bb_crit_edge22:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge22
  %max_pwr_level = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 38
  %3 = ptrtoint ptr %max_pwr_level to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 64, ptr %max_pwr_level, align 2
  %port_offset.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %4 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #4, !srcloc !32
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %7 = or i16 %6, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %7) #4, !srcloc !36
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %9 = and i16 %8, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %9) #4, !srcloc !36
  %10 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port_offset.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1182329337) #4, !srcloc !28
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %sw.bb
  %ww.013.i.i = phi i16 [ 0, %sw.bb ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %13 = and i32 %12, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  %inc.i.i = add nuw i16 %ww.013.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -17, i16 %ww.013.i.i)
  %cmp.i.i = icmp ult i16 %ww.013.i.i, -17
  %or.cond.i = select i1 %tobool.not.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.body.i_crit_edge

for.body.i.i.for.body.i_crit_edge:                ; preds = %for.body.i.i
  br label %for.body.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.body.i:                                       ; preds = %IFRFbWriteEmbedded.exit97.i.for.body.i_crit_edge, %for.body.i.i.for.body.i_crit_edge
  %ii.0132.i = phi i32 [ %inc.i, %IFRFbWriteEmbedded.exit97.i.for.body.i_crit_edge ], [ 0, %for.body.i.i.for.body.i_crit_edge ]
  %ret.0.off0131.i = phi i32 [ %and18.i, %IFRFbWriteEmbedded.exit97.i.for.body.i_crit_edge ], [ 1, %for.body.i.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [15 x i32], ptr @al2230_init_table, i32 0, i32 %ii.0132.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %16 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %port_offset.i, align 4
  %add.ptr.i88.i = getelementptr i8, ptr %17, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %18 = tail call i32 @llvm.bswap.i32(i32 %15) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88.i, i32 %18) #4, !srcloc !28
  br label %for.body.i91.i

for.body.i91.i:                                   ; preds = %for.inc.i94.i.for.body.i91.i_crit_edge, %for.body.i
  %ww.013.i89.i = phi i16 [ 0, %for.body.i ], [ %inc.i92.i, %for.inc.i94.i.for.body.i91.i_crit_edge ]
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88.i) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %20 = and i32 %19, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i90.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i90.i, label %for.inc.i94.i, label %for.body.i91.i.IFRFbWriteEmbedded.exit97.i_crit_edge

for.body.i91.i.IFRFbWriteEmbedded.exit97.i_crit_edge: ; preds = %for.body.i91.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit97.i

for.inc.i94.i:                                    ; preds = %for.body.i91.i
  %inc.i92.i = add nuw i16 %ww.013.i89.i, 1
  %cmp.i93.i = icmp ult i16 %ww.013.i89.i, -17
  br i1 %cmp.i93.i, label %for.inc.i94.i.for.body.i91.i_crit_edge, label %for.inc.i94.i.IFRFbWriteEmbedded.exit97.i_crit_edge

for.inc.i94.i.IFRFbWriteEmbedded.exit97.i_crit_edge: ; preds = %for.inc.i94.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit97.i

for.inc.i94.i.for.body.i91.i_crit_edge:           ; preds = %for.inc.i94.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i91.i

IFRFbWriteEmbedded.exit97.i:                      ; preds = %for.inc.i94.i.IFRFbWriteEmbedded.exit97.i_crit_edge, %for.body.i91.i.IFRFbWriteEmbedded.exit97.i_crit_edge
  %ww.0.lcssa.i95.i = phi i16 [ %ww.013.i89.i, %for.body.i91.i.IFRFbWriteEmbedded.exit97.i_crit_edge ], [ -16, %for.inc.i94.i.IFRFbWriteEmbedded.exit97.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i95.i)
  %cmp4.i96.i = icmp ne i16 %ww.0.lcssa.i95.i, -16
  %conv16.i = zext i1 %cmp4.i96.i to i32
  %and18.i = and i32 %ret.0.off0131.i, %conv16.i
  %inc.i = add nuw nsw i32 %ii.0132.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %for.end.i, label %IFRFbWriteEmbedded.exit97.i.for.body.i_crit_edge

IFRFbWriteEmbedded.exit97.i.for.body.i_crit_edge: ; preds = %IFRFbWriteEmbedded.exit97.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %IFRFbWriteEmbedded.exit97.i
  tail call void @MACvTimer0MicroSDelay(ptr noundef %priv, i32 noundef 30) #4
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %22 = or i16 %21, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %22) #4, !srcloc !36
  tail call void @MACvTimer0MicroSDelay(ptr noundef %priv, i32 noundef 150) #4
  %23 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port_offset.i, align 4
  %add.ptr.i99.i = getelementptr i8, ptr %24, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99.i, i32 -1190144000) #4, !srcloc !28
  br label %for.body.i102.i

for.body.i102.i:                                  ; preds = %for.inc.i105.i.for.body.i102.i_crit_edge, %for.end.i
  %ww.013.i100.i = phi i16 [ 0, %for.end.i ], [ %inc.i103.i, %for.inc.i105.i.for.body.i102.i_crit_edge ]
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99.i) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %26 = and i32 %25, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i101.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i101.i, label %for.inc.i105.i, label %for.body.i102.i.IFRFbWriteEmbedded.exit108.i_crit_edge

for.body.i102.i.IFRFbWriteEmbedded.exit108.i_crit_edge: ; preds = %for.body.i102.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit108.i

for.inc.i105.i:                                   ; preds = %for.body.i102.i
  %inc.i103.i = add nuw i16 %ww.013.i100.i, 1
  %cmp.i104.i = icmp ult i16 %ww.013.i100.i, -17
  br i1 %cmp.i104.i, label %for.inc.i105.i.for.body.i102.i_crit_edge, label %for.inc.i105.i.IFRFbWriteEmbedded.exit108.i_crit_edge

for.inc.i105.i.IFRFbWriteEmbedded.exit108.i_crit_edge: ; preds = %for.inc.i105.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit108.i

for.inc.i105.i.for.body.i102.i_crit_edge:         ; preds = %for.inc.i105.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i102.i

IFRFbWriteEmbedded.exit108.i:                     ; preds = %for.inc.i105.i.IFRFbWriteEmbedded.exit108.i_crit_edge, %for.body.i102.i.IFRFbWriteEmbedded.exit108.i_crit_edge
  %ww.0.lcssa.i106.i = phi i16 [ %ww.013.i100.i, %for.body.i102.i.IFRFbWriteEmbedded.exit108.i_crit_edge ], [ -16, %for.inc.i105.i.IFRFbWriteEmbedded.exit108.i_crit_edge ]
  tail call void @MACvTimer0MicroSDelay(ptr noundef %priv, i32 noundef 30) #4
  %27 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %port_offset.i, align 4
  %add.ptr.i110.i = getelementptr i8, ptr %28, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110.i, i32 -1190168576) #4, !srcloc !28
  br label %for.body.i113.i

for.body.i113.i:                                  ; preds = %for.inc.i116.i.for.body.i113.i_crit_edge, %IFRFbWriteEmbedded.exit108.i
  %ww.013.i111.i = phi i16 [ 0, %IFRFbWriteEmbedded.exit108.i ], [ %inc.i114.i, %for.inc.i116.i.for.body.i113.i_crit_edge ]
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i110.i) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %30 = and i32 %29, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i112.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i112.i, label %for.inc.i116.i, label %for.body.i113.i.IFRFbWriteEmbedded.exit119.i_crit_edge

for.body.i113.i.IFRFbWriteEmbedded.exit119.i_crit_edge: ; preds = %for.body.i113.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit119.i

for.inc.i116.i:                                   ; preds = %for.body.i113.i
  %inc.i114.i = add nuw i16 %ww.013.i111.i, 1
  %cmp.i115.i = icmp ult i16 %ww.013.i111.i, -17
  br i1 %cmp.i115.i, label %for.inc.i116.i.for.body.i113.i_crit_edge, label %for.inc.i116.i.IFRFbWriteEmbedded.exit119.i_crit_edge

for.inc.i116.i.IFRFbWriteEmbedded.exit119.i_crit_edge: ; preds = %for.inc.i116.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit119.i

for.inc.i116.i.for.body.i113.i_crit_edge:         ; preds = %for.inc.i116.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i113.i

IFRFbWriteEmbedded.exit119.i:                     ; preds = %for.inc.i116.i.IFRFbWriteEmbedded.exit119.i_crit_edge, %for.body.i113.i.IFRFbWriteEmbedded.exit119.i_crit_edge
  %ww.0.lcssa.i117.i = phi i16 [ %ww.013.i111.i, %for.body.i113.i.IFRFbWriteEmbedded.exit119.i_crit_edge ], [ -16, %for.inc.i116.i.IFRFbWriteEmbedded.exit119.i_crit_edge ]
  tail call void @MACvTimer0MicroSDelay(ptr noundef %priv, i32 noundef 30) #4
  %31 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %port_offset.i, align 4
  %add.ptr.i121.i = getelementptr i8, ptr %32, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121.i, i32 -1190176768) #4, !srcloc !28
  br label %for.body.i124.i

for.body.i124.i:                                  ; preds = %for.inc.i127.i.for.body.i124.i_crit_edge, %IFRFbWriteEmbedded.exit119.i
  %ww.013.i122.i = phi i16 [ 0, %IFRFbWriteEmbedded.exit119.i ], [ %inc.i125.i, %for.inc.i127.i.for.body.i124.i_crit_edge ]
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i121.i) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %34 = and i32 %33, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i123.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i123.i, label %for.inc.i127.i, label %for.body.i124.i.RFbAL2230Init.exit_crit_edge

for.body.i124.i.RFbAL2230Init.exit_crit_edge:     ; preds = %for.body.i124.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %RFbAL2230Init.exit

for.inc.i127.i:                                   ; preds = %for.body.i124.i
  %inc.i125.i = add nuw i16 %ww.013.i122.i, 1
  %cmp.i126.i = icmp ult i16 %ww.013.i122.i, -17
  br i1 %cmp.i126.i, label %for.inc.i127.i.for.body.i124.i_crit_edge, label %for.inc.i127.i.RFbAL2230Init.exit_crit_edge

for.inc.i127.i.RFbAL2230Init.exit_crit_edge:      ; preds = %for.inc.i127.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %RFbAL2230Init.exit

for.inc.i127.i.for.body.i124.i_crit_edge:         ; preds = %for.inc.i127.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i124.i

RFbAL2230Init.exit:                               ; preds = %for.inc.i127.i.RFbAL2230Init.exit_crit_edge, %for.body.i124.i.RFbAL2230Init.exit_crit_edge
  %ww.0.lcssa.i128.i = phi i16 [ %ww.013.i122.i, %for.body.i124.i.RFbAL2230Init.exit_crit_edge ], [ -16, %for.inc.i127.i.RFbAL2230Init.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i106.i)
  %cmp4.i107.i = icmp ne i16 %ww.0.lcssa.i106.i, -16
  %conv31.i = zext i1 %cmp4.i107.i to i32
  %and34.i = and i32 %and18.i, %conv31.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i117.i)
  %cmp4.i118.i = icmp ne i16 %ww.0.lcssa.i117.i, -16
  %conv38.i = zext i1 %cmp4.i118.i to i32
  %and41.i = and i32 %and34.i, %conv38.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i128.i)
  %cmp4.i129.i = icmp ne i16 %ww.0.lcssa.i128.i, -16
  %conv45.i = zext i1 %cmp4.i129.i to i32
  %and48.i = and i32 %and41.i, %conv45.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.i = icmp ne i32 %and48.i, 0
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %36 = or i16 %35, 1283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %36) #4, !srcloc !36
  %add.ptr61.i = getelementptr i8, ptr %5, i32 98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr61.i, i8 -64) #4, !srcloc !32
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %max_pwr_level2 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 38
  %37 = ptrtoint ptr %max_pwr_level2 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 64, ptr %max_pwr_level2, align 2
  %port_offset.i10 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %38 = ptrtoint ptr %port_offset.i10 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %port_offset.i10, align 4
  %add.ptr.i11 = getelementptr i8, ptr %39, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i11, i8 0) #4, !srcloc !32
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i11) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %41 = or i16 %40, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i11, i16 %41) #4, !srcloc !36
  tail call void @bb_power_save_mode_off(ptr noundef %priv) #4
  br label %for.body.i14

for.body.i14:                                     ; preds = %IFRFbWriteEmbedded.exit.i.for.body.i14_crit_edge, %sw.bb1
  %ii.0108.i = phi i32 [ 0, %sw.bb1 ], [ %inc.i20, %IFRFbWriteEmbedded.exit.i.for.body.i14_crit_edge ]
  %ret.0.off0107.i = phi i32 [ 1, %sw.bb1 ], [ %and.i, %IFRFbWriteEmbedded.exit.i.for.body.i14_crit_edge ]
  %arrayidx.i12 = getelementptr [16 x i32], ptr @al7230_init_table, i32 0, i32 %ii.0108.i
  %42 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i12, align 4
  %44 = ptrtoint ptr %port_offset.i10 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %port_offset.i10, align 4
  %add.ptr.i.i13 = getelementptr i8, ptr %45, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %46 = tail call i32 @llvm.bswap.i32(i32 %43) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i13, i32 %46) #4, !srcloc !28
  br label %for.body.i.i17

for.body.i.i17:                                   ; preds = %for.inc.i.i.for.body.i.i17_crit_edge, %for.body.i14
  %ww.013.i.i15 = phi i16 [ 0, %for.body.i14 ], [ %inc.i.i18, %for.inc.i.i.for.body.i.i17_crit_edge ]
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %48 = and i32 %47, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i.i16 = icmp eq i32 %48, 0
  br i1 %tobool.not.i.i16, label %for.inc.i.i, label %for.body.i.i17.IFRFbWriteEmbedded.exit.i_crit_edge

for.body.i.i17.IFRFbWriteEmbedded.exit.i_crit_edge: ; preds = %for.body.i.i17
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i17
  %inc.i.i18 = add nuw i16 %ww.013.i.i15, 1
  %cmp.i.i19 = icmp ult i16 %ww.013.i.i15, -17
  br i1 %cmp.i.i19, label %for.inc.i.i.for.body.i.i17_crit_edge, label %for.inc.i.i.IFRFbWriteEmbedded.exit.i_crit_edge

for.inc.i.i.IFRFbWriteEmbedded.exit.i_crit_edge:  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit.i

for.inc.i.i.for.body.i.i17_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i17

IFRFbWriteEmbedded.exit.i:                        ; preds = %for.inc.i.i.IFRFbWriteEmbedded.exit.i_crit_edge, %for.body.i.i17.IFRFbWriteEmbedded.exit.i_crit_edge
  %ww.0.lcssa.i.i = phi i16 [ %ww.013.i.i15, %for.body.i.i17.IFRFbWriteEmbedded.exit.i_crit_edge ], [ -16, %for.inc.i.i.IFRFbWriteEmbedded.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i.i)
  %cmp4.i.i = icmp ne i16 %ww.0.lcssa.i.i, -16
  %conv6.i = zext i1 %cmp4.i.i to i32
  %and.i = and i32 %ret.0.off0107.i, %conv6.i
  %inc.i20 = add nuw nsw i32 %ii.0108.i, 1
  %exitcond.not.i21 = icmp eq i32 %inc.i20, 16
  br i1 %exitcond.not.i21, label %do.body9.i, label %IFRFbWriteEmbedded.exit.i.for.body.i14_crit_edge

IFRFbWriteEmbedded.exit.i.for.body.i14_crit_edge: ; preds = %IFRFbWriteEmbedded.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i14

do.body9.i:                                       ; preds = %IFRFbWriteEmbedded.exit.i
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i11) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %50 = or i16 %49, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i11, i16 %50) #4, !srcloc !36
  tail call void @MACvTimer0MicroSDelay(ptr noundef %priv, i32 noundef 150) #4
  %51 = ptrtoint ptr %port_offset.i10 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %port_offset.i10, align 4
  %add.ptr.i75.i = getelementptr i8, ptr %52, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75.i, i32 -1181762918) #4, !srcloc !28
  br label %for.body.i78.i

for.body.i78.i:                                   ; preds = %for.inc.i81.i.for.body.i78.i_crit_edge, %do.body9.i
  %ww.013.i76.i = phi i16 [ 0, %do.body9.i ], [ %inc.i79.i, %for.inc.i81.i.for.body.i78.i_crit_edge ]
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75.i) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %54 = and i32 %53, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i77.i = icmp eq i32 %54, 0
  br i1 %tobool.not.i77.i, label %for.inc.i81.i, label %for.body.i78.i.IFRFbWriteEmbedded.exit84.i_crit_edge

for.body.i78.i.IFRFbWriteEmbedded.exit84.i_crit_edge: ; preds = %for.body.i78.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit84.i

for.inc.i81.i:                                    ; preds = %for.body.i78.i
  %inc.i79.i = add nuw i16 %ww.013.i76.i, 1
  %cmp.i80.i = icmp ult i16 %ww.013.i76.i, -17
  br i1 %cmp.i80.i, label %for.inc.i81.i.for.body.i78.i_crit_edge, label %for.inc.i81.i.IFRFbWriteEmbedded.exit84.i_crit_edge

for.inc.i81.i.IFRFbWriteEmbedded.exit84.i_crit_edge: ; preds = %for.inc.i81.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit84.i

for.inc.i81.i.for.body.i78.i_crit_edge:           ; preds = %for.inc.i81.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i78.i

IFRFbWriteEmbedded.exit84.i:                      ; preds = %for.inc.i81.i.IFRFbWriteEmbedded.exit84.i_crit_edge, %for.body.i78.i.IFRFbWriteEmbedded.exit84.i_crit_edge
  %ww.0.lcssa.i82.i = phi i16 [ %ww.013.i76.i, %for.body.i78.i.IFRFbWriteEmbedded.exit84.i_crit_edge ], [ -16, %for.inc.i81.i.IFRFbWriteEmbedded.exit84.i_crit_edge ]
  tail call void @MACvTimer0MicroSDelay(ptr noundef %priv, i32 noundef 30) #4
  %55 = ptrtoint ptr %port_offset.i10 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %port_offset.i10, align 4
  %add.ptr.i86.i = getelementptr i8, ptr %56, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86.i, i32 -1181763014) #4, !srcloc !28
  br label %for.body.i89.i

for.body.i89.i:                                   ; preds = %for.inc.i92.i.for.body.i89.i_crit_edge, %IFRFbWriteEmbedded.exit84.i
  %ww.013.i87.i = phi i16 [ 0, %IFRFbWriteEmbedded.exit84.i ], [ %inc.i90.i, %for.inc.i92.i.for.body.i89.i_crit_edge ]
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i86.i) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %58 = and i32 %57, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i88.i = icmp eq i32 %58, 0
  br i1 %tobool.not.i88.i, label %for.inc.i92.i, label %for.body.i89.i.IFRFbWriteEmbedded.exit95.i_crit_edge

for.body.i89.i.IFRFbWriteEmbedded.exit95.i_crit_edge: ; preds = %for.body.i89.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit95.i

for.inc.i92.i:                                    ; preds = %for.body.i89.i
  %inc.i90.i = add nuw i16 %ww.013.i87.i, 1
  %cmp.i91.i = icmp ult i16 %ww.013.i87.i, -17
  br i1 %cmp.i91.i, label %for.inc.i92.i.for.body.i89.i_crit_edge, label %for.inc.i92.i.IFRFbWriteEmbedded.exit95.i_crit_edge

for.inc.i92.i.IFRFbWriteEmbedded.exit95.i_crit_edge: ; preds = %for.inc.i92.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit95.i

for.inc.i92.i.for.body.i89.i_crit_edge:           ; preds = %for.inc.i92.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i89.i

IFRFbWriteEmbedded.exit95.i:                      ; preds = %for.inc.i92.i.IFRFbWriteEmbedded.exit95.i_crit_edge, %for.body.i89.i.IFRFbWriteEmbedded.exit95.i_crit_edge
  %ww.0.lcssa.i93.i = phi i16 [ %ww.013.i87.i, %for.body.i89.i.IFRFbWriteEmbedded.exit95.i_crit_edge ], [ -16, %for.inc.i92.i.IFRFbWriteEmbedded.exit95.i_crit_edge ]
  tail call void @MACvTimer0MicroSDelay(ptr noundef %priv, i32 noundef 30) #4
  %59 = ptrtoint ptr %port_offset.i10 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %port_offset.i10, align 4
  %add.ptr.i97.i = getelementptr i8, ptr %60, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97.i, i32 -1181763046) #4, !srcloc !28
  br label %for.body.i100.i

for.body.i100.i:                                  ; preds = %for.inc.i103.i.for.body.i100.i_crit_edge, %IFRFbWriteEmbedded.exit95.i
  %ww.013.i98.i = phi i16 [ 0, %IFRFbWriteEmbedded.exit95.i ], [ %inc.i101.i, %for.inc.i103.i.for.body.i100.i_crit_edge ]
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97.i) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %62 = and i32 %61, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i99.i = icmp eq i32 %62, 0
  br i1 %tobool.not.i99.i, label %for.inc.i103.i, label %for.body.i100.i.s_bAL7230Init.exit_crit_edge

for.body.i100.i.s_bAL7230Init.exit_crit_edge:     ; preds = %for.body.i100.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %s_bAL7230Init.exit

for.inc.i103.i:                                   ; preds = %for.body.i100.i
  %inc.i101.i = add nuw i16 %ww.013.i98.i, 1
  %cmp.i102.i = icmp ult i16 %ww.013.i98.i, -17
  br i1 %cmp.i102.i, label %for.inc.i103.i.for.body.i100.i_crit_edge, label %for.inc.i103.i.s_bAL7230Init.exit_crit_edge

for.inc.i103.i.s_bAL7230Init.exit_crit_edge:      ; preds = %for.inc.i103.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %s_bAL7230Init.exit

for.inc.i103.i.for.body.i100.i_crit_edge:         ; preds = %for.inc.i103.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i100.i

s_bAL7230Init.exit:                               ; preds = %for.inc.i103.i.s_bAL7230Init.exit_crit_edge, %for.body.i100.i.s_bAL7230Init.exit_crit_edge
  %ww.0.lcssa.i104.i = phi i16 [ %ww.013.i98.i, %for.body.i100.i.s_bAL7230Init.exit_crit_edge ], [ -16, %for.inc.i103.i.s_bAL7230Init.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i82.i)
  %cmp4.i83.i = icmp ne i16 %ww.0.lcssa.i82.i, -16
  %conv20.i = zext i1 %cmp4.i83.i to i32
  %and23.i = and i32 %and.i, %conv20.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i93.i)
  %cmp4.i94.i = icmp ne i16 %ww.0.lcssa.i93.i, -16
  %conv27.i = zext i1 %cmp4.i94.i to i32
  %and30.i = and i32 %and23.i, %conv27.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i104.i)
  %cmp4.i105.i = icmp ne i16 %ww.0.lcssa.i104.i, -16
  %conv34.i = zext i1 %cmp4.i105.i to i32
  %and37.i = and i32 %and30.i, %conv34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.i = icmp ne i32 %and37.i, 0
  %63 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i11) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %64 = or i16 %63, 1283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i11, i16 %64) #4, !srcloc !36
  tail call void @bb_power_save_mode_on(ptr noundef %priv) #4
  %add.ptr50.i = getelementptr i8, ptr %39, i32 98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr50.i, i8 -64) #4, !srcloc !32
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %s_bAL7230Init.exit, %RFbAL2230Init.exit, %entry.sw.epilog_crit_edge
  %ret.0.shrunk = phi i1 [ false, %sw.default ], [ %tobool38.i, %s_bAL7230Init.exit ], [ %tobool49.i, %RFbAL2230Init.exit ], [ true, %entry.sw.epilog_crit_edge ]
  ret i1 %ret.0.shrunk
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @RFbSelectChannel(ptr noundef %priv, i8 noundef zeroext %byRFType, i16 noundef zeroext %byChannel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %byRFType to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %byRFType, label %sw.default [
    i8 3, label %entry.sw.bb_crit_edge
    i8 14, label %entry.sw.bb_crit_edge23
    i8 10, label %sw.bb2
    i8 126, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.bb_crit_edge23:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge23
  %conv1 = trunc i16 %byChannel to i8
  %port_offset.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %1 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port_offset.i, align 4
  %conv1.mask = and i16 %byChannel, 255
  %conv.i = zext i16 %conv1.mask to i32
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx.i = getelementptr [56 x i32], ptr @al2230_channel_table0, i32 0, i32 %sub.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #4, !srcloc !28
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %sw.bb
  %ww.013.i.i = phi i16 [ 0, %sw.bb ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %7 = and i32 %6, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %for.body.i.i.IFRFbWriteEmbedded.exit.i_crit_edge

for.body.i.i.IFRFbWriteEmbedded.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i16 %ww.013.i.i, 1
  %cmp.i.i = icmp ult i16 %ww.013.i.i, -17
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.IFRFbWriteEmbedded.exit.i_crit_edge

for.inc.i.i.IFRFbWriteEmbedded.exit.i_crit_edge:  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

IFRFbWriteEmbedded.exit.i:                        ; preds = %for.inc.i.i.IFRFbWriteEmbedded.exit.i_crit_edge, %for.body.i.i.IFRFbWriteEmbedded.exit.i_crit_edge
  %ww.0.lcssa.i.i = phi i16 [ %ww.013.i.i, %for.body.i.i.IFRFbWriteEmbedded.exit.i_crit_edge ], [ -16, %for.inc.i.i.IFRFbWriteEmbedded.exit.i_crit_edge ]
  %arrayidx6.i = getelementptr [56 x i32], ptr @al2230_channel_table1, i32 0, i32 %sub.i
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6.i, align 4
  %10 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port_offset.i, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %11, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %12 = tail call i32 @llvm.bswap.i32(i32 %9) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 %12) #4, !srcloc !28
  br label %for.body.i35.i

for.body.i35.i:                                   ; preds = %for.inc.i38.i.for.body.i35.i_crit_edge, %IFRFbWriteEmbedded.exit.i
  %ww.013.i33.i = phi i16 [ 0, %IFRFbWriteEmbedded.exit.i ], [ %inc.i36.i, %for.inc.i38.i.for.body.i35.i_crit_edge ]
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32.i) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %14 = and i32 %13, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i34.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i34.i, label %for.inc.i38.i, label %for.body.i35.i.RFbAL2230SelectChannel.exit_crit_edge

for.body.i35.i.RFbAL2230SelectChannel.exit_crit_edge: ; preds = %for.body.i35.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %RFbAL2230SelectChannel.exit

for.inc.i38.i:                                    ; preds = %for.body.i35.i
  %inc.i36.i = add nuw i16 %ww.013.i33.i, 1
  %cmp.i37.i = icmp ult i16 %ww.013.i33.i, -17
  br i1 %cmp.i37.i, label %for.inc.i38.i.for.body.i35.i_crit_edge, label %for.inc.i38.i.RFbAL2230SelectChannel.exit_crit_edge

for.inc.i38.i.RFbAL2230SelectChannel.exit_crit_edge: ; preds = %for.inc.i38.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %RFbAL2230SelectChannel.exit

for.inc.i38.i.for.body.i35.i_crit_edge:           ; preds = %for.inc.i38.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i35.i

RFbAL2230SelectChannel.exit:                      ; preds = %for.inc.i38.i.RFbAL2230SelectChannel.exit_crit_edge, %for.body.i35.i.RFbAL2230SelectChannel.exit_crit_edge
  %ww.0.lcssa.i39.i = phi i16 [ %ww.013.i33.i, %for.body.i35.i.RFbAL2230SelectChannel.exit_crit_edge ], [ -16, %for.inc.i38.i.RFbAL2230SelectChannel.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i.i)
  %cmp4.i.i = icmp ne i16 %ww.0.lcssa.i.i, -16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i39.i)
  %cmp4.i40.i = icmp ne i16 %ww.0.lcssa.i39.i, -16
  %and1130.i = and i1 %cmp4.i.i, %cmp4.i40.i
  %and15.i = and i8 %conv1, 127
  %add.ptr.i = getelementptr i8, ptr %2, i32 109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %and15.i) #4, !srcloc !32
  tail call void @MACvTimer0MicroSDelay(ptr noundef %priv, i32 noundef 200) #4
  %or.i = or i8 %conv1, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %or.i) #4, !srcloc !32
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %conv3 = trunc i16 %byChannel to i8
  %port_offset.i9 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %15 = ptrtoint ptr %port_offset.i9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port_offset.i9, align 4
  %add.ptr.i10 = getelementptr i8, ptr %16, i32 120
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i10) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %18 = and i16 %17, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10, i16 %18) #4, !srcloc !36
  %conv3.mask = and i16 %byChannel, 255
  %conv3.i = zext i16 %conv3.mask to i32
  %sub.i11 = add nsw i32 %conv3.i, -1
  %arrayidx.i12 = getelementptr [56 x i32], ptr @al7230_channel_table0, i32 0, i32 %sub.i11
  %19 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i12, align 4
  %21 = ptrtoint ptr %port_offset.i9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port_offset.i9, align 4
  %add.ptr.i.i13 = getelementptr i8, ptr %22, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %23 = tail call i32 @llvm.bswap.i32(i32 %20) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i13, i32 %23) #4, !srcloc !28
  br label %for.body.i.i16

for.body.i.i16:                                   ; preds = %for.inc.i.i19.for.body.i.i16_crit_edge, %sw.bb2
  %ww.013.i.i14 = phi i16 [ 0, %sw.bb2 ], [ %inc.i.i17, %for.inc.i.i19.for.body.i.i16_crit_edge ]
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %25 = and i32 %24, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i15 = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i15, label %for.inc.i.i19, label %for.body.i.i16.IFRFbWriteEmbedded.exit.i21_crit_edge

for.body.i.i16.IFRFbWriteEmbedded.exit.i21_crit_edge: ; preds = %for.body.i.i16
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit.i21

for.inc.i.i19:                                    ; preds = %for.body.i.i16
  %inc.i.i17 = add nuw i16 %ww.013.i.i14, 1
  %cmp.i.i18 = icmp ult i16 %ww.013.i.i14, -17
  br i1 %cmp.i.i18, label %for.inc.i.i19.for.body.i.i16_crit_edge, label %for.inc.i.i19.IFRFbWriteEmbedded.exit.i21_crit_edge

for.inc.i.i19.IFRFbWriteEmbedded.exit.i21_crit_edge: ; preds = %for.inc.i.i19
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit.i21

for.inc.i.i19.for.body.i.i16_crit_edge:           ; preds = %for.inc.i.i19
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i16

IFRFbWriteEmbedded.exit.i21:                      ; preds = %for.inc.i.i19.IFRFbWriteEmbedded.exit.i21_crit_edge, %for.body.i.i16.IFRFbWriteEmbedded.exit.i21_crit_edge
  %ww.0.lcssa.i.i20 = phi i16 [ %ww.013.i.i14, %for.body.i.i16.IFRFbWriteEmbedded.exit.i21_crit_edge ], [ -16, %for.inc.i.i19.IFRFbWriteEmbedded.exit.i21_crit_edge ]
  %arrayidx11.i = getelementptr [56 x i32], ptr @al7230_channel_table1, i32 0, i32 %sub.i11
  %26 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx11.i, align 4
  %28 = ptrtoint ptr %port_offset.i9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port_offset.i9, align 4
  %add.ptr.i66.i = getelementptr i8, ptr %29, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %30 = tail call i32 @llvm.bswap.i32(i32 %27) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66.i, i32 %30) #4, !srcloc !28
  br label %for.body.i69.i

for.body.i69.i:                                   ; preds = %for.inc.i72.i.for.body.i69.i_crit_edge, %IFRFbWriteEmbedded.exit.i21
  %ww.013.i67.i = phi i16 [ 0, %IFRFbWriteEmbedded.exit.i21 ], [ %inc.i70.i, %for.inc.i72.i.for.body.i69.i_crit_edge ]
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66.i) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %32 = and i32 %31, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i68.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i68.i, label %for.inc.i72.i, label %for.body.i69.i.IFRFbWriteEmbedded.exit75.i_crit_edge

for.body.i69.i.IFRFbWriteEmbedded.exit75.i_crit_edge: ; preds = %for.body.i69.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit75.i

for.inc.i72.i:                                    ; preds = %for.body.i69.i
  %inc.i70.i = add nuw i16 %ww.013.i67.i, 1
  %cmp.i71.i = icmp ult i16 %ww.013.i67.i, -17
  br i1 %cmp.i71.i, label %for.inc.i72.i.for.body.i69.i_crit_edge, label %for.inc.i72.i.IFRFbWriteEmbedded.exit75.i_crit_edge

for.inc.i72.i.IFRFbWriteEmbedded.exit75.i_crit_edge: ; preds = %for.inc.i72.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit75.i

for.inc.i72.i.for.body.i69.i_crit_edge:           ; preds = %for.inc.i72.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i69.i

IFRFbWriteEmbedded.exit75.i:                      ; preds = %for.inc.i72.i.IFRFbWriteEmbedded.exit75.i_crit_edge, %for.body.i69.i.IFRFbWriteEmbedded.exit75.i_crit_edge
  %ww.0.lcssa.i73.i = phi i16 [ %ww.013.i67.i, %for.body.i69.i.IFRFbWriteEmbedded.exit75.i_crit_edge ], [ -16, %for.inc.i72.i.IFRFbWriteEmbedded.exit75.i_crit_edge ]
  %arrayidx21.i = getelementptr [56 x i32], ptr @al7230_channel_table2, i32 0, i32 %sub.i11
  %33 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx21.i, align 4
  %35 = ptrtoint ptr %port_offset.i9 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %port_offset.i9, align 4
  %add.ptr.i77.i = getelementptr i8, ptr %36, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %37 = tail call i32 @llvm.bswap.i32(i32 %34) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77.i, i32 %37) #4, !srcloc !28
  br label %for.body.i80.i

for.body.i80.i:                                   ; preds = %for.inc.i83.i.for.body.i80.i_crit_edge, %IFRFbWriteEmbedded.exit75.i
  %ww.013.i78.i = phi i16 [ 0, %IFRFbWriteEmbedded.exit75.i ], [ %inc.i81.i, %for.inc.i83.i.for.body.i80.i_crit_edge ]
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i77.i) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %39 = and i32 %38, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i79.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i79.i, label %for.inc.i83.i, label %for.body.i80.i.s_bAL7230SelectChannel.exit_crit_edge

for.body.i80.i.s_bAL7230SelectChannel.exit_crit_edge: ; preds = %for.body.i80.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %s_bAL7230SelectChannel.exit

for.inc.i83.i:                                    ; preds = %for.body.i80.i
  %inc.i81.i = add nuw i16 %ww.013.i78.i, 1
  %cmp.i82.i = icmp ult i16 %ww.013.i78.i, -17
  br i1 %cmp.i82.i, label %for.inc.i83.i.for.body.i80.i_crit_edge, label %for.inc.i83.i.s_bAL7230SelectChannel.exit_crit_edge

for.inc.i83.i.s_bAL7230SelectChannel.exit_crit_edge: ; preds = %for.inc.i83.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %s_bAL7230SelectChannel.exit

for.inc.i83.i.for.body.i80.i_crit_edge:           ; preds = %for.inc.i83.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i80.i

s_bAL7230SelectChannel.exit:                      ; preds = %for.inc.i83.i.s_bAL7230SelectChannel.exit_crit_edge, %for.body.i80.i.s_bAL7230SelectChannel.exit_crit_edge
  %ww.0.lcssa.i84.i = phi i16 [ %ww.013.i78.i, %for.body.i80.i.s_bAL7230SelectChannel.exit_crit_edge ], [ -16, %for.inc.i83.i.s_bAL7230SelectChannel.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i.i20)
  %cmp4.i.i22 = icmp ne i16 %ww.0.lcssa.i.i20, -16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i73.i)
  %cmp4.i74.i = icmp ne i16 %ww.0.lcssa.i73.i, -16
  %and1663.i = and i1 %cmp4.i.i22, %cmp4.i74.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i84.i)
  %cmp4.i85.i = icmp ne i16 %ww.0.lcssa.i84.i, -16
  %and2664.i = and i1 %and1663.i, %cmp4.i85.i
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i10) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %41 = or i16 %40, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10, i16 %41) #4, !srcloc !36
  %and39.i = and i8 %conv3, 127
  %add.ptr41.i = getelementptr i8, ptr %16, i32 109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr41.i, i8 %and39.i) #4, !srcloc !32
  tail call void @MACvTimer0MicroSDelay(ptr noundef %priv, i32 noundef 200) #4
  %or43.i = or i8 %conv3, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr41.i, i8 %or43.i) #4, !srcloc !32
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %s_bAL7230SelectChannel.exit, %RFbAL2230SelectChannel.exit, %entry.sw.epilog_crit_edge
  %ret.0.shrunk = phi i1 [ false, %sw.default ], [ %and2664.i, %s_bAL7230SelectChannel.exit ], [ %and1130.i, %RFbAL2230SelectChannel.exit ], [ true, %entry.sw.epilog_crit_edge ]
  ret i1 %ret.0.shrunk
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rf_write_wake_prog_syn(ptr noundef %priv, i8 noundef zeroext %rf_type, i16 noundef zeroext %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #4, !srcloc !36
  %2 = zext i8 %rf_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %rf_type, label %sw.default [
    i8 3, label %entry.sw.bb_crit_edge
    i8 14, label %entry.sw.bb_crit_edge94
    i8 10, label %sw.bb13
    i8 126, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

entry.sw.bb_crit_edge94:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge94
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %channel)
  %cmp = icmp ugt i16 %channel, 14
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %for.body.preheader

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.preheader:                               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %conv1 = zext i16 %channel to i32
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 11, i32 noundef 66556089) #4
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 12, i32 noundef 53686713) #4
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 13, i32 noundef 27263673) #4
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 14, i32 noundef 16774073) #4
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 15, i32 noundef 369849) #4
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 16, i32 noundef 256755129) #4
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 17, i32 noundef 134592185) #4
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 18, i32 noundef 21415865) #4
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 19, i32 noundef 428217) #4
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 20, i32 noundef 67353017) #4
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 21, i32 noundef 14400185) #4
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 22, i32 noundef 629689) #4
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 23, i32 noundef 199228601) #4
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 24, i32 noundef 3513) #4
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 25, i32 noundef 5771193) #4
  %sub = add nsw i32 %conv1, -1
  %arrayidx8 = getelementptr [56 x i32], ptr @al2230_channel_table0, i32 0, i32 %sub
  %3 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx8, align 4
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 26, i32 noundef %4) #4
  %arrayidx12 = getelementptr [56 x i32], ptr @al2230_channel_table1, i32 0, i32 %sub
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %channel)
  %cmp15 = icmp ult i16 %channel, 15
  %5 = select i1 %cmp15, i32 3641529, i32 267722937
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 11, i32 noundef %5) #4
  %6 = select i1 %cmp15, i32 322122169, i32 441
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 12, i32 noundef %6) #4
  %7 = select i1 %cmp15, i32 -2078281031, i32 1159717561
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 13, i32 noundef %7) #4
  %8 = select i1 %cmp15, i32 1071621049, i32 1608491961
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 14, i32 noundef %8) #4
  %9 = select i1 %cmp15, i32 2144830649, i32 1744274617
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 15, i32 noundef %9) #4
  %10 = select i1 %cmp15, i32 -2144643655, i32 -2059446855
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 16, i32 noundef %10) #4
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 17, i32 noundef 1454323385) #4
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 18, i32 noundef -838727751) #4
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 19, i32 noundef 1857816761) #4
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 20, i32 noundef 572242361) #4
  %11 = select i1 %cmp15, i32 -536868167, i32 -530576711
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 21, i32 noundef %11) #4
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 22, i32 noundef 134421433) #4
  %12 = select i1 %cmp15, i32 670905, i32 1342649
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 23, i32 noundef %12) #4
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 24, i32 noundef -583) #4
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 25, i32 noundef 3769) #4
  %13 = select i1 %cmp15, i32 448434105, i32 314232761
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 26, i32 noundef %13) #4
  %conv14 = zext i16 %channel to i32
  %sub28 = add nsw i32 %conv14, -1
  %arrayidx29 = getelementptr [56 x i32], ptr @al7230_channel_table0, i32 0, i32 %sub28
  %14 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx29, align 4
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 27, i32 noundef %15) #4
  %arrayidx33 = getelementptr [56 x i32], ptr @al7230_channel_table1, i32 0, i32 %sub28
  %16 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx33, align 4
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 28, i32 noundef %17) #4
  %arrayidx37 = getelementptr [56 x i32], ptr @al7230_channel_table2, i32 0, i32 %sub28
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb13, %for.body.preheader
  %arrayidx37.sink = phi ptr [ %arrayidx37, %sw.bb13 ], [ %arrayidx12, %for.body.preheader ]
  %.sink = phi i16 [ 29, %sw.bb13 ], [ 27, %for.body.preheader ]
  %init_count.0 = phi i32 [ 4864, %sw.bb13 ], [ 4352, %for.body.preheader ]
  %18 = ptrtoint ptr %arrayidx37.sink to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx37.sink, align 4
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext %.sink, i32 noundef %19) #4
  tail call void @MACvSetMISCFifo(ptr noundef %priv, i16 noundef zeroext 10, i32 noundef %init_count.0) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %sw.epilog ], [ false, %sw.bb.cleanup_crit_edge ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @MACvSetMISCFifo(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @RFbSetPower(ptr nocapture noundef %priv, i32 noundef %rate, i16 noundef zeroext %uCH) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dwDiagRefCount = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 114
  %0 = ptrtoint ptr %dwDiagRefCount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dwDiagRefCount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %uCH to i32
  %2 = add i16 %uCH, -57
  call void @__sanitizer_cov_trace_const_cmp2(i16 -56, i16 %2)
  %3 = icmp ult i16 %2, -56
  br i1 %3, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %4 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %rate, label %if.end7.sw.epilog_crit_edge [
    i32 0, label %if.end7.sw.bb_crit_edge
    i32 1, label %if.end7.sw.bb_crit_edge72
    i32 2, label %if.end7.sw.bb_crit_edge73
    i32 3, label %if.end7.sw.bb_crit_edge74
    i32 4, label %if.end7.sw.bb13_crit_edge
    i32 5, label %if.end7.sw.bb13_crit_edge75
    i32 6, label %if.end7.sw.bb13_crit_edge76
    i32 7, label %if.end7.sw.bb13_crit_edge77
    i32 8, label %if.end7.sw.bb35_crit_edge
    i32 9, label %if.end7.sw.bb35_crit_edge78
    i32 10, label %if.end7.sw.bb35_crit_edge79
    i32 11, label %if.end7.sw.bb35_crit_edge80
  ]

if.end7.sw.bb35_crit_edge80:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb35

if.end7.sw.bb35_crit_edge79:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb35

if.end7.sw.bb35_crit_edge78:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb35

if.end7.sw.bb35_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb35

if.end7.sw.bb13_crit_edge77:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb13

if.end7.sw.bb13_crit_edge76:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb13

if.end7.sw.bb13_crit_edge75:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb13

if.end7.sw.bb13_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb13

if.end7.sw.bb_crit_edge74:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end7.sw.bb_crit_edge73:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end7.sw.bb_crit_edge72:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end7.sw.bb_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end7.sw.bb_crit_edge, %if.end7.sw.bb_crit_edge72, %if.end7.sw.bb_crit_edge73, %if.end7.sw.bb_crit_edge74
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %uCH)
  %cmp9 = icmp ugt i16 %uCH, 14
  br i1 %cmp9, label %sw.bb.cleanup_crit_edge, label %if.end12

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 120, i32 %conv
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end7.sw.bb13_crit_edge, %if.end7.sw.bb13_crit_edge75, %if.end7.sw.bb13_crit_edge76, %if.end7.sw.bb13_crit_edge77
  %arrayidx15 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 121, i32 %conv
  %7 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx15, align 1
  %byRFType = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 37
  %9 = ptrtoint ptr %byRFType to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %byRFType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %10)
  %cmp17 = icmp eq i8 %10, 8
  %byDec.0.v = select i1 %cmp17, i8 14, i8 10
  %byDec.0 = add i8 %byDec.0.v, %8
  %max_pwr_level = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 38
  %11 = ptrtoint ptr %max_pwr_level to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %max_pwr_level, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %byDec.0, i8 %12)
  %cmp28.not = icmp ult i8 %byDec.0, %12
  %sub = add i8 %12, -1
  %byDec.1 = select i1 %cmp28.not, i8 %byDec.0, i8 %sub
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end7.sw.bb35_crit_edge, %if.end7.sw.bb35_crit_edge78, %if.end7.sw.bb35_crit_edge79, %if.end7.sw.bb35_crit_edge80
  %arrayidx38 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 121, i32 %conv
  %13 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx38, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb35, %sw.bb13, %if.end12, %if.end7.sw.epilog_crit_edge
  %byPwr.0 = phi i8 [ 0, %if.end7.sw.epilog_crit_edge ], [ %14, %sw.bb35 ], [ %byDec.1, %sw.bb13 ], [ %6, %if.end12 ]
  %byCurPwr = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 118
  %15 = ptrtoint ptr %byCurPwr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %byCurPwr, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %byPwr.0)
  %cmp41 = icmp eq i8 %16, %byPwr.0
  br i1 %cmp41, label %sw.epilog.cleanup_crit_edge, label %if.end44

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end44:                                         ; preds = %sw.epilog
  %call = tail call zeroext i1 @RFbRawSetPower(ptr noundef %priv, i8 noundef zeroext %byPwr.0, i32 noundef %rate)
  br i1 %call, label %if.then45, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then45:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %byCurPwr to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %byPwr.0, ptr %byCurPwr, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end44.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %sw.bb.cleanup_crit_edge ], [ true, %sw.epilog.cleanup_crit_edge ], [ true, %if.then45 ], [ false, %if.end44.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @RFbRawSetPower(ptr nocapture noundef readonly %priv, i8 noundef zeroext %byPwr, i32 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %byPwr to i32
  %max_pwr_level = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 38
  %0 = ptrtoint ptr %max_pwr_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %max_pwr_level, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %byPwr)
  %cmp.not = icmp ugt i8 %1, %byPwr
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %byRFType = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 37
  %2 = ptrtoint ptr %byRFType to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %byRFType, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %3, label %if.end.cleanup_crit_edge [
    i8 3, label %sw.bb
    i8 14, label %sw.bb25
    i8 10, label %sw.bb68
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %arrayidx = getelementptr [64 x i32], ptr @al2230_power_table, i32 0, i32 %conv
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %port_offset.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %7 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %9 = tail call i32 @llvm.bswap.i32(i32 %6) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #4, !srcloc !28
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb
  %ww.013.i = phi i16 [ 0, %sw.bb ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %11 = and i32 %10, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %for.inc.i, label %for.body.i.IFRFbWriteEmbedded.exit_crit_edge

for.body.i.IFRFbWriteEmbedded.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i16 %ww.013.i, 1
  %cmp.i = icmp ult i16 %ww.013.i, -17
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.IFRFbWriteEmbedded.exit_crit_edge

for.inc.i.IFRFbWriteEmbedded.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

IFRFbWriteEmbedded.exit:                          ; preds = %for.inc.i.IFRFbWriteEmbedded.exit_crit_edge, %for.body.i.IFRFbWriteEmbedded.exit_crit_edge
  %ww.0.lcssa.i = phi i16 [ %ww.013.i, %for.body.i.IFRFbWriteEmbedded.exit_crit_edge ], [ -16, %for.inc.i.IFRFbWriteEmbedded.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i)
  %cmp4.i = icmp ne i16 %ww.0.lcssa.i, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rate)
  %cmp7 = icmp ult i32 %rate, 4
  %12 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port_offset.i, align 4
  %add.ptr.i111 = getelementptr i8, ptr %13, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %IFRFbWriteEmbedded.exit
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111, i32 -1179385600) #4, !srcloc !28
  br label %for.body.i114

for.body.i114:                                    ; preds = %for.inc.i117.for.body.i114_crit_edge, %if.then9
  %ww.013.i112 = phi i16 [ 0, %if.then9 ], [ %inc.i115, %for.inc.i117.for.body.i114_crit_edge ]
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %15 = and i32 %14, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i113 = icmp eq i32 %15, 0
  br i1 %tobool.not.i113, label %for.inc.i117, label %for.body.i114.IFRFbWriteEmbedded.exit120_crit_edge

for.body.i114.IFRFbWriteEmbedded.exit120_crit_edge: ; preds = %for.body.i114
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit120

for.inc.i117:                                     ; preds = %for.body.i114
  %inc.i115 = add nuw i16 %ww.013.i112, 1
  %cmp.i116 = icmp ult i16 %ww.013.i112, -17
  br i1 %cmp.i116, label %for.inc.i117.for.body.i114_crit_edge, label %for.inc.i117.IFRFbWriteEmbedded.exit120_crit_edge

for.inc.i117.IFRFbWriteEmbedded.exit120_crit_edge: ; preds = %for.inc.i117
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit120

for.inc.i117.for.body.i114_crit_edge:             ; preds = %for.inc.i117
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i114

IFRFbWriteEmbedded.exit120:                       ; preds = %for.inc.i117.IFRFbWriteEmbedded.exit120_crit_edge, %for.body.i114.IFRFbWriteEmbedded.exit120_crit_edge
  %ww.0.lcssa.i118 = phi i16 [ %ww.013.i112, %for.body.i114.IFRFbWriteEmbedded.exit120_crit_edge ], [ -16, %for.inc.i117.IFRFbWriteEmbedded.exit120_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i118)
  %cmp4.i119 = icmp ne i16 %ww.0.lcssa.i118, -16
  %and14109 = and i1 %cmp4.i, %cmp4.i119
  br label %cleanup

if.else:                                          ; preds = %IFRFbWriteEmbedded.exit
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111, i32 -1180433152) #4, !srcloc !28
  br label %for.body.i125

for.body.i125:                                    ; preds = %for.inc.i128.for.body.i125_crit_edge, %if.else
  %ww.013.i123 = phi i16 [ 0, %if.else ], [ %inc.i126, %for.inc.i128.for.body.i125_crit_edge ]
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %17 = and i32 %16, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i124 = icmp eq i32 %17, 0
  br i1 %tobool.not.i124, label %for.inc.i128, label %for.body.i125.IFRFbWriteEmbedded.exit131_crit_edge

for.body.i125.IFRFbWriteEmbedded.exit131_crit_edge: ; preds = %for.body.i125
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit131

for.inc.i128:                                     ; preds = %for.body.i125
  %inc.i126 = add nuw i16 %ww.013.i123, 1
  %cmp.i127 = icmp ult i16 %ww.013.i123, -17
  br i1 %cmp.i127, label %for.inc.i128.for.body.i125_crit_edge, label %for.inc.i128.IFRFbWriteEmbedded.exit131_crit_edge

for.inc.i128.IFRFbWriteEmbedded.exit131_crit_edge: ; preds = %for.inc.i128
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit131

for.inc.i128.for.body.i125_crit_edge:             ; preds = %for.inc.i128
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i125

IFRFbWriteEmbedded.exit131:                       ; preds = %for.inc.i128.IFRFbWriteEmbedded.exit131_crit_edge, %for.body.i125.IFRFbWriteEmbedded.exit131_crit_edge
  %ww.0.lcssa.i129 = phi i16 [ %ww.013.i123, %for.body.i125.IFRFbWriteEmbedded.exit131_crit_edge ], [ -16, %for.inc.i128.IFRFbWriteEmbedded.exit131_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i129)
  %cmp4.i130 = icmp ne i16 %ww.0.lcssa.i129, -16
  %and21108 = and i1 %cmp4.i, %cmp4.i130
  br label %cleanup

sw.bb25:                                          ; preds = %if.end
  %arrayidx27 = getelementptr [64 x i32], ptr @al2230_power_table, i32 0, i32 %conv
  %18 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx27, align 4
  %port_offset.i132 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %20 = ptrtoint ptr %port_offset.i132 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port_offset.i132, align 4
  %add.ptr.i133 = getelementptr i8, ptr %21, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %22 = tail call i32 @llvm.bswap.i32(i32 %19) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133, i32 %22) #4, !srcloc !28
  br label %for.body.i136

for.body.i136:                                    ; preds = %for.inc.i139.for.body.i136_crit_edge, %sw.bb25
  %ww.013.i134 = phi i16 [ 0, %sw.bb25 ], [ %inc.i137, %for.inc.i139.for.body.i136_crit_edge ]
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i133) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %24 = and i32 %23, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i135 = icmp eq i32 %24, 0
  br i1 %tobool.not.i135, label %for.inc.i139, label %for.body.i136.IFRFbWriteEmbedded.exit142_crit_edge

for.body.i136.IFRFbWriteEmbedded.exit142_crit_edge: ; preds = %for.body.i136
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit142

for.inc.i139:                                     ; preds = %for.body.i136
  %inc.i137 = add nuw i16 %ww.013.i134, 1
  %cmp.i138 = icmp ult i16 %ww.013.i134, -17
  br i1 %cmp.i138, label %for.inc.i139.for.body.i136_crit_edge, label %for.inc.i139.IFRFbWriteEmbedded.exit142_crit_edge

for.inc.i139.IFRFbWriteEmbedded.exit142_crit_edge: ; preds = %for.inc.i139
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit142

for.inc.i139.for.body.i136_crit_edge:             ; preds = %for.inc.i139
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i136

IFRFbWriteEmbedded.exit142:                       ; preds = %for.inc.i139.IFRFbWriteEmbedded.exit142_crit_edge, %for.body.i136.IFRFbWriteEmbedded.exit142_crit_edge
  %ww.0.lcssa.i140 = phi i16 [ %ww.013.i134, %for.body.i136.IFRFbWriteEmbedded.exit142_crit_edge ], [ -16, %for.inc.i139.IFRFbWriteEmbedded.exit142_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i140)
  %cmp4.i141 = icmp ne i16 %ww.0.lcssa.i140, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rate)
  %cmp35 = icmp ult i32 %rate, 4
  %25 = ptrtoint ptr %port_offset.i132 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %port_offset.i132, align 4
  %add.ptr.i144 = getelementptr i8, ptr %26, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %cmp35, label %if.then37, label %if.else52

if.then37:                                        ; preds = %IFRFbWriteEmbedded.exit142
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144, i32 -1189868540) #4, !srcloc !28
  br label %for.body.i147

for.body.i147:                                    ; preds = %for.inc.i150.for.body.i147_crit_edge, %if.then37
  %ww.013.i145 = phi i16 [ 0, %if.then37 ], [ %inc.i148, %for.inc.i150.for.body.i147_crit_edge ]
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i144) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %28 = and i32 %27, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i146 = icmp eq i32 %28, 0
  br i1 %tobool.not.i146, label %for.inc.i150, label %for.body.i147.IFRFbWriteEmbedded.exit153_crit_edge

for.body.i147.IFRFbWriteEmbedded.exit153_crit_edge: ; preds = %for.body.i147
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit153

for.inc.i150:                                     ; preds = %for.body.i147
  %inc.i148 = add nuw i16 %ww.013.i145, 1
  %cmp.i149 = icmp ult i16 %ww.013.i145, -17
  br i1 %cmp.i149, label %for.inc.i150.for.body.i147_crit_edge, label %for.inc.i150.IFRFbWriteEmbedded.exit153_crit_edge

for.inc.i150.IFRFbWriteEmbedded.exit153_crit_edge: ; preds = %for.inc.i150
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit153

for.inc.i150.for.body.i147_crit_edge:             ; preds = %for.inc.i150
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i147

IFRFbWriteEmbedded.exit153:                       ; preds = %for.inc.i150.IFRFbWriteEmbedded.exit153_crit_edge, %for.body.i147.IFRFbWriteEmbedded.exit153_crit_edge
  %ww.0.lcssa.i151 = phi i16 [ %ww.013.i145, %for.body.i147.IFRFbWriteEmbedded.exit153_crit_edge ], [ -16, %for.inc.i150.IFRFbWriteEmbedded.exit153_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i151)
  %cmp4.i152 = icmp ne i16 %ww.0.lcssa.i151, -16
  %and42106 = and i1 %cmp4.i141, %cmp4.i152
  %29 = ptrtoint ptr %port_offset.i132 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %port_offset.i132, align 4
  %add.ptr.i155 = getelementptr i8, ptr %30, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155, i32 -1181013760) #4, !srcloc !28
  br label %for.body.i158

for.body.i158:                                    ; preds = %for.inc.i161.for.body.i158_crit_edge, %IFRFbWriteEmbedded.exit153
  %ww.013.i156 = phi i16 [ 0, %IFRFbWriteEmbedded.exit153 ], [ %inc.i159, %for.inc.i161.for.body.i158_crit_edge ]
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i155) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %32 = and i32 %31, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i157 = icmp eq i32 %32, 0
  br i1 %tobool.not.i157, label %for.inc.i161, label %for.body.i158.IFRFbWriteEmbedded.exit164_crit_edge

for.body.i158.IFRFbWriteEmbedded.exit164_crit_edge: ; preds = %for.body.i158
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit164

for.inc.i161:                                     ; preds = %for.body.i158
  %inc.i159 = add nuw i16 %ww.013.i156, 1
  %cmp.i160 = icmp ult i16 %ww.013.i156, -17
  br i1 %cmp.i160, label %for.inc.i161.for.body.i158_crit_edge, label %for.inc.i161.IFRFbWriteEmbedded.exit164_crit_edge

for.inc.i161.IFRFbWriteEmbedded.exit164_crit_edge: ; preds = %for.inc.i161
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit164

for.inc.i161.for.body.i158_crit_edge:             ; preds = %for.inc.i161
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i158

IFRFbWriteEmbedded.exit164:                       ; preds = %for.inc.i161.IFRFbWriteEmbedded.exit164_crit_edge, %for.body.i158.IFRFbWriteEmbedded.exit164_crit_edge
  %ww.0.lcssa.i162 = phi i16 [ %ww.013.i156, %for.body.i158.IFRFbWriteEmbedded.exit164_crit_edge ], [ -16, %for.inc.i161.IFRFbWriteEmbedded.exit164_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i162)
  %cmp4.i163 = icmp ne i16 %ww.0.lcssa.i162, -16
  %and49107 = and i1 %and42106, %cmp4.i163
  br label %cleanup

if.else52:                                        ; preds = %IFRFbWriteEmbedded.exit142
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144, i32 -1180433152) #4, !srcloc !28
  br label %for.body.i169

for.body.i169:                                    ; preds = %for.inc.i172.for.body.i169_crit_edge, %if.else52
  %ww.013.i167 = phi i16 [ 0, %if.else52 ], [ %inc.i170, %for.inc.i172.for.body.i169_crit_edge ]
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i144) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %34 = and i32 %33, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i168 = icmp eq i32 %34, 0
  br i1 %tobool.not.i168, label %for.inc.i172, label %for.body.i169.IFRFbWriteEmbedded.exit175_crit_edge

for.body.i169.IFRFbWriteEmbedded.exit175_crit_edge: ; preds = %for.body.i169
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit175

for.inc.i172:                                     ; preds = %for.body.i169
  %inc.i170 = add nuw i16 %ww.013.i167, 1
  %cmp.i171 = icmp ult i16 %ww.013.i167, -17
  br i1 %cmp.i171, label %for.inc.i172.for.body.i169_crit_edge, label %for.inc.i172.IFRFbWriteEmbedded.exit175_crit_edge

for.inc.i172.IFRFbWriteEmbedded.exit175_crit_edge: ; preds = %for.inc.i172
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit175

for.inc.i172.for.body.i169_crit_edge:             ; preds = %for.inc.i172
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i169

IFRFbWriteEmbedded.exit175:                       ; preds = %for.inc.i172.IFRFbWriteEmbedded.exit175_crit_edge, %for.body.i169.IFRFbWriteEmbedded.exit175_crit_edge
  %ww.0.lcssa.i173 = phi i16 [ %ww.013.i167, %for.body.i169.IFRFbWriteEmbedded.exit175_crit_edge ], [ -16, %for.inc.i172.IFRFbWriteEmbedded.exit175_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i173)
  %cmp4.i174 = icmp ne i16 %ww.0.lcssa.i173, -16
  %and57104 = and i1 %cmp4.i141, %cmp4.i174
  %35 = ptrtoint ptr %port_offset.i132 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %port_offset.i132, align 4
  %add.ptr.i177 = getelementptr i8, ptr %36, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177, i32 -1181021952) #4, !srcloc !28
  br label %for.body.i180

for.body.i180:                                    ; preds = %for.inc.i183.for.body.i180_crit_edge, %IFRFbWriteEmbedded.exit175
  %ww.013.i178 = phi i16 [ 0, %IFRFbWriteEmbedded.exit175 ], [ %inc.i181, %for.inc.i183.for.body.i180_crit_edge ]
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i177) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %38 = and i32 %37, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i179 = icmp eq i32 %38, 0
  br i1 %tobool.not.i179, label %for.inc.i183, label %for.body.i180.IFRFbWriteEmbedded.exit186_crit_edge

for.body.i180.IFRFbWriteEmbedded.exit186_crit_edge: ; preds = %for.body.i180
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit186

for.inc.i183:                                     ; preds = %for.body.i180
  %inc.i181 = add nuw i16 %ww.013.i178, 1
  %cmp.i182 = icmp ult i16 %ww.013.i178, -17
  br i1 %cmp.i182, label %for.inc.i183.for.body.i180_crit_edge, label %for.inc.i183.IFRFbWriteEmbedded.exit186_crit_edge

for.inc.i183.IFRFbWriteEmbedded.exit186_crit_edge: ; preds = %for.inc.i183
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit186

for.inc.i183.for.body.i180_crit_edge:             ; preds = %for.inc.i183
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i180

IFRFbWriteEmbedded.exit186:                       ; preds = %for.inc.i183.IFRFbWriteEmbedded.exit186_crit_edge, %for.body.i180.IFRFbWriteEmbedded.exit186_crit_edge
  %ww.0.lcssa.i184 = phi i16 [ %ww.013.i178, %for.body.i180.IFRFbWriteEmbedded.exit186_crit_edge ], [ -16, %for.inc.i183.IFRFbWriteEmbedded.exit186_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i184)
  %cmp4.i185 = icmp ne i16 %ww.0.lcssa.i184, -16
  %and64105 = and i1 %and57104, %cmp4.i185
  br label %cleanup

sw.bb68:                                          ; preds = %if.end
  %shl = shl nuw nsw i32 %conv, 12
  %or71 = or i32 %shl, 135007161
  %port_offset.i187 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %39 = ptrtoint ptr %port_offset.i187 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %port_offset.i187, align 4
  %add.ptr.i188 = getelementptr i8, ptr %40, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %41 = tail call i32 @llvm.bswap.i32(i32 %or71) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i188, i32 %41) #4, !srcloc !28
  br label %for.body.i191

for.body.i191:                                    ; preds = %for.inc.i194.for.body.i191_crit_edge, %sw.bb68
  %ww.013.i189 = phi i16 [ 0, %sw.bb68 ], [ %inc.i192, %for.inc.i194.for.body.i191_crit_edge ]
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i188) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %43 = and i32 %42, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i190 = icmp eq i32 %43, 0
  br i1 %tobool.not.i190, label %for.inc.i194, label %for.body.i191.IFRFbWriteEmbedded.exit197_crit_edge

for.body.i191.IFRFbWriteEmbedded.exit197_crit_edge: ; preds = %for.body.i191
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit197

for.inc.i194:                                     ; preds = %for.body.i191
  %inc.i192 = add nuw i16 %ww.013.i189, 1
  %cmp.i193 = icmp ult i16 %ww.013.i189, -17
  br i1 %cmp.i193, label %for.inc.i194.for.body.i191_crit_edge, label %for.inc.i194.IFRFbWriteEmbedded.exit197_crit_edge

for.inc.i194.IFRFbWriteEmbedded.exit197_crit_edge: ; preds = %for.inc.i194
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit197

for.inc.i194.for.body.i191_crit_edge:             ; preds = %for.inc.i194
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i191

IFRFbWriteEmbedded.exit197:                       ; preds = %for.inc.i194.IFRFbWriteEmbedded.exit197_crit_edge, %for.body.i191.IFRFbWriteEmbedded.exit197_crit_edge
  %ww.0.lcssa.i195 = phi i16 [ %ww.013.i189, %for.body.i191.IFRFbWriteEmbedded.exit197_crit_edge ], [ -16, %for.inc.i194.IFRFbWriteEmbedded.exit197_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i195)
  %cmp4.i196 = icmp ne i16 %ww.0.lcssa.i195, -16
  br label %cleanup

cleanup:                                          ; preds = %IFRFbWriteEmbedded.exit197, %IFRFbWriteEmbedded.exit186, %IFRFbWriteEmbedded.exit164, %IFRFbWriteEmbedded.exit131, %IFRFbWriteEmbedded.exit120, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ %cmp4.i196, %IFRFbWriteEmbedded.exit197 ], [ %and49107, %IFRFbWriteEmbedded.exit164 ], [ %and64105, %IFRFbWriteEmbedded.exit186 ], [ %and14109, %IFRFbWriteEmbedded.exit120 ], [ %and21108, %IFRFbWriteEmbedded.exit131 ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @RFvRSSITodBm(ptr nocapture noundef readonly %priv, i8 noundef zeroext %byCurrRSSI, ptr nocapture noundef writeonly %pldBm) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %byRFType = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 37
  %0 = ptrtoint ptr %byRFType to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %byRFType, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 3, label %entry.sw.bb_crit_edge
    i8 14, label %entry.sw.bb_crit_edge9
    i8 10, label %entry.sw.bb_crit_edge10
  ]

entry.sw.bb_crit_edge10:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.bb_crit_edge9:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge9, %entry.sw.bb_crit_edge10
  %3 = lshr i8 %byCurrRSSI, 6
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr [4 x i8], ptr @__const.RFvRSSITodBm.abyAIROHARF, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %5 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %a.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %conv6, %sw.bb ]
  %6 = shl i8 %byCurrRSSI, 1
  %7 = and i8 %6, 126
  %mul = zext i8 %7 to i32
  %add = add nuw nsw i32 %a.0, %mul
  %mul7 = sub nsw i32 0, %add
  %8 = ptrtoint ptr %pldBm to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul7, ptr %pldBm, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @RFbAL7230SelectChannelPostProcess(ptr nocapture noundef readonly %priv, i16 noundef zeroext %byOldChannel, i16 noundef zeroext %byNewChannel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %byOldChannel)
  %cmp = icmp ult i16 %byOldChannel, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %byNewChannel)
  %cmp3 = icmp ugt i16 %byNewChannel, 14
  %or.cond = and i1 %cmp, %cmp3
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %port_offset.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1176363195) #4, !srcloc !28
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then
  %ww.013.i = phi i16 [ 0, %if.then ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %3 = and i32 %2, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %for.inc.i, label %for.body.i.IFRFbWriteEmbedded.exit_crit_edge

for.body.i.IFRFbWriteEmbedded.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i16 %ww.013.i, 1
  %cmp.i = icmp ult i16 %ww.013.i, -17
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.IFRFbWriteEmbedded.exit_crit_edge

for.inc.i.IFRFbWriteEmbedded.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

IFRFbWriteEmbedded.exit:                          ; preds = %for.inc.i.IFRFbWriteEmbedded.exit_crit_edge, %for.body.i.IFRFbWriteEmbedded.exit_crit_edge
  %ww.0.lcssa.i = phi i16 [ %ww.013.i, %for.body.i.IFRFbWriteEmbedded.exit_crit_edge ], [ -16, %for.inc.i.IFRFbWriteEmbedded.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i)
  %cmp4.i = icmp ne i16 %ww.0.lcssa.i, -16
  %4 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_offset.i, align 4
  %add.ptr.i152 = getelementptr i8, ptr %5, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i152, i32 -1180442785) #4, !srcloc !28
  br label %for.body.i155

for.body.i155:                                    ; preds = %for.inc.i158.for.body.i155_crit_edge, %IFRFbWriteEmbedded.exit
  %ww.013.i153 = phi i16 [ 0, %IFRFbWriteEmbedded.exit ], [ %inc.i156, %for.inc.i158.for.body.i155_crit_edge ]
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i152) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %7 = and i32 %6, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i154 = icmp eq i32 %7, 0
  br i1 %tobool.not.i154, label %for.inc.i158, label %for.body.i155.IFRFbWriteEmbedded.exit161_crit_edge

for.body.i155.IFRFbWriteEmbedded.exit161_crit_edge: ; preds = %for.body.i155
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit161

for.inc.i158:                                     ; preds = %for.body.i155
  %inc.i156 = add nuw i16 %ww.013.i153, 1
  %cmp.i157 = icmp ult i16 %ww.013.i153, -17
  br i1 %cmp.i157, label %for.inc.i158.for.body.i155_crit_edge, label %for.inc.i158.IFRFbWriteEmbedded.exit161_crit_edge

for.inc.i158.IFRFbWriteEmbedded.exit161_crit_edge: ; preds = %for.inc.i158
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit161

for.inc.i158.for.body.i155_crit_edge:             ; preds = %for.inc.i158
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i155

IFRFbWriteEmbedded.exit161:                       ; preds = %for.inc.i158.IFRFbWriteEmbedded.exit161_crit_edge, %for.body.i155.IFRFbWriteEmbedded.exit161_crit_edge
  %ww.0.lcssa.i159 = phi i16 [ %ww.013.i153, %for.body.i155.IFRFbWriteEmbedded.exit161_crit_edge ], [ -16, %for.inc.i158.IFRFbWriteEmbedded.exit161_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i159)
  %cmp4.i160 = icmp ne i16 %ww.0.lcssa.i159, -16
  %and12144 = and i1 %cmp4.i, %cmp4.i160
  %8 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port_offset.i, align 4
  %add.ptr.i163 = getelementptr i8, ptr %9, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163, i32 -1185595515) #4, !srcloc !28
  br label %for.body.i166

for.body.i166:                                    ; preds = %for.inc.i169.for.body.i166_crit_edge, %IFRFbWriteEmbedded.exit161
  %ww.013.i164 = phi i16 [ 0, %IFRFbWriteEmbedded.exit161 ], [ %inc.i167, %for.inc.i169.for.body.i166_crit_edge ]
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i163) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %11 = and i32 %10, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i165 = icmp eq i32 %11, 0
  br i1 %tobool.not.i165, label %for.inc.i169, label %for.body.i166.IFRFbWriteEmbedded.exit172_crit_edge

for.body.i166.IFRFbWriteEmbedded.exit172_crit_edge: ; preds = %for.body.i166
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit172

for.inc.i169:                                     ; preds = %for.body.i166
  %inc.i167 = add nuw i16 %ww.013.i164, 1
  %cmp.i168 = icmp ult i16 %ww.013.i164, -17
  br i1 %cmp.i168, label %for.inc.i169.for.body.i166_crit_edge, label %for.inc.i169.IFRFbWriteEmbedded.exit172_crit_edge

for.inc.i169.IFRFbWriteEmbedded.exit172_crit_edge: ; preds = %for.inc.i169
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit172

for.inc.i169.for.body.i166_crit_edge:             ; preds = %for.inc.i169
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i166

IFRFbWriteEmbedded.exit172:                       ; preds = %for.inc.i169.IFRFbWriteEmbedded.exit172_crit_edge, %for.body.i166.IFRFbWriteEmbedded.exit172_crit_edge
  %ww.0.lcssa.i170 = phi i16 [ %ww.013.i164, %for.body.i166.IFRFbWriteEmbedded.exit172_crit_edge ], [ -16, %for.inc.i169.IFRFbWriteEmbedded.exit172_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i170)
  %cmp4.i171 = icmp ne i16 %ww.0.lcssa.i170, -16
  %and19145 = and i1 %and12144, %cmp4.i171
  %12 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port_offset.i, align 4
  %add.ptr.i174 = getelementptr i8, ptr %13, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174, i32 -1190722866) #4, !srcloc !28
  br label %for.body.i177

for.body.i177:                                    ; preds = %for.inc.i180.for.body.i177_crit_edge, %IFRFbWriteEmbedded.exit172
  %ww.013.i175 = phi i16 [ 0, %IFRFbWriteEmbedded.exit172 ], [ %inc.i178, %for.inc.i180.for.body.i177_crit_edge ]
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i174) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %15 = and i32 %14, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i176 = icmp eq i32 %15, 0
  br i1 %tobool.not.i176, label %for.inc.i180, label %for.body.i177.IFRFbWriteEmbedded.exit183_crit_edge

for.body.i177.IFRFbWriteEmbedded.exit183_crit_edge: ; preds = %for.body.i177
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit183

for.inc.i180:                                     ; preds = %for.body.i177
  %inc.i178 = add nuw i16 %ww.013.i175, 1
  %cmp.i179 = icmp ult i16 %ww.013.i175, -17
  br i1 %cmp.i179, label %for.inc.i180.for.body.i177_crit_edge, label %for.inc.i180.IFRFbWriteEmbedded.exit183_crit_edge

for.inc.i180.IFRFbWriteEmbedded.exit183_crit_edge: ; preds = %for.inc.i180
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit183

for.inc.i180.for.body.i177_crit_edge:             ; preds = %for.inc.i180
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i177

IFRFbWriteEmbedded.exit183:                       ; preds = %for.inc.i180.IFRFbWriteEmbedded.exit183_crit_edge, %for.body.i177.IFRFbWriteEmbedded.exit183_crit_edge
  %ww.0.lcssa.i181 = phi i16 [ %ww.013.i175, %for.body.i177.IFRFbWriteEmbedded.exit183_crit_edge ], [ -16, %for.inc.i180.IFRFbWriteEmbedded.exit183_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i181)
  %cmp4.i182 = icmp ne i16 %ww.0.lcssa.i181, -16
  %and26146 = and i1 %and19145, %cmp4.i182
  %16 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %port_offset.i, align 4
  %add.ptr.i185 = getelementptr i8, ptr %17, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i185, i32 -1190502176) #4, !srcloc !28
  br label %for.body.i188

for.body.i188:                                    ; preds = %for.inc.i191.for.body.i188_crit_edge, %IFRFbWriteEmbedded.exit183
  %ww.013.i186 = phi i16 [ 0, %IFRFbWriteEmbedded.exit183 ], [ %inc.i189, %for.inc.i191.for.body.i188_crit_edge ]
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i185) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %19 = and i32 %18, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i187 = icmp eq i32 %19, 0
  br i1 %tobool.not.i187, label %for.inc.i191, label %for.body.i188.IFRFbWriteEmbedded.exit194_crit_edge

for.body.i188.IFRFbWriteEmbedded.exit194_crit_edge: ; preds = %for.body.i188
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit194

for.inc.i191:                                     ; preds = %for.body.i188
  %inc.i189 = add nuw i16 %ww.013.i186, 1
  %cmp.i190 = icmp ult i16 %ww.013.i186, -17
  br i1 %cmp.i190, label %for.inc.i191.for.body.i188_crit_edge, label %for.inc.i191.IFRFbWriteEmbedded.exit194_crit_edge

for.inc.i191.IFRFbWriteEmbedded.exit194_crit_edge: ; preds = %for.inc.i191
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit194

for.inc.i191.for.body.i188_crit_edge:             ; preds = %for.inc.i191
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i188

IFRFbWriteEmbedded.exit194:                       ; preds = %for.inc.i191.IFRFbWriteEmbedded.exit194_crit_edge, %for.body.i188.IFRFbWriteEmbedded.exit194_crit_edge
  %ww.0.lcssa.i192 = phi i16 [ %ww.013.i186, %for.body.i188.IFRFbWriteEmbedded.exit194_crit_edge ], [ -16, %for.inc.i191.IFRFbWriteEmbedded.exit194_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i192)
  %cmp4.i193 = icmp ne i16 %ww.0.lcssa.i192, -16
  %and33147 = and i1 %and26146, %cmp4.i193
  %20 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port_offset.i, align 4
  %add.ptr.i196 = getelementptr i8, ptr %21, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i196, i32 -1183050752) #4, !srcloc !28
  br label %for.body.i199

for.body.i199:                                    ; preds = %for.inc.i202.for.body.i199_crit_edge, %IFRFbWriteEmbedded.exit194
  %ww.013.i197 = phi i16 [ 0, %IFRFbWriteEmbedded.exit194 ], [ %inc.i200, %for.inc.i202.for.body.i199_crit_edge ]
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i196) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %23 = and i32 %22, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i198 = icmp eq i32 %23, 0
  br i1 %tobool.not.i198, label %for.inc.i202, label %for.body.i199.IFRFbWriteEmbedded.exit205_crit_edge

for.body.i199.IFRFbWriteEmbedded.exit205_crit_edge: ; preds = %for.body.i199
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit205

for.inc.i202:                                     ; preds = %for.body.i199
  %inc.i200 = add nuw i16 %ww.013.i197, 1
  %cmp.i201 = icmp ult i16 %ww.013.i197, -17
  br i1 %cmp.i201, label %for.inc.i202.for.body.i199_crit_edge, label %for.inc.i202.IFRFbWriteEmbedded.exit205_crit_edge

for.inc.i202.IFRFbWriteEmbedded.exit205_crit_edge: ; preds = %for.inc.i202
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit205

for.inc.i202.for.body.i199_crit_edge:             ; preds = %for.inc.i202
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i199

IFRFbWriteEmbedded.exit205:                       ; preds = %for.inc.i202.IFRFbWriteEmbedded.exit205_crit_edge, %for.body.i199.IFRFbWriteEmbedded.exit205_crit_edge
  %ww.0.lcssa.i203 = phi i16 [ %ww.013.i197, %for.body.i199.IFRFbWriteEmbedded.exit205_crit_edge ], [ -16, %for.inc.i202.IFRFbWriteEmbedded.exit205_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i203)
  %cmp4.i204 = icmp ne i16 %ww.0.lcssa.i203, -16
  %and40148 = and i1 %and33147, %cmp4.i204
  %24 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %port_offset.i, align 4
  %add.ptr.i207 = getelementptr i8, ptr %25, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i207, i32 -1177568750) #4, !srcloc !28
  br label %for.body.i210

for.body.i210:                                    ; preds = %for.inc.i213.for.body.i210_crit_edge, %IFRFbWriteEmbedded.exit205
  %ww.013.i208 = phi i16 [ 0, %IFRFbWriteEmbedded.exit205 ], [ %inc.i211, %for.inc.i213.for.body.i210_crit_edge ]
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i207) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %27 = and i32 %26, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i209 = icmp eq i32 %27, 0
  br i1 %tobool.not.i209, label %for.inc.i213, label %for.body.i210.IFRFbWriteEmbedded.exit216_crit_edge

for.body.i210.IFRFbWriteEmbedded.exit216_crit_edge: ; preds = %for.body.i210
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit216

for.inc.i213:                                     ; preds = %for.body.i210
  %inc.i211 = add nuw i16 %ww.013.i208, 1
  %cmp.i212 = icmp ult i16 %ww.013.i208, -17
  br i1 %cmp.i212, label %for.inc.i213.for.body.i210_crit_edge, label %for.inc.i213.IFRFbWriteEmbedded.exit216_crit_edge

for.inc.i213.IFRFbWriteEmbedded.exit216_crit_edge: ; preds = %for.inc.i213
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit216

for.inc.i213.for.body.i210_crit_edge:             ; preds = %for.inc.i213
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i210

IFRFbWriteEmbedded.exit216:                       ; preds = %for.inc.i213.IFRFbWriteEmbedded.exit216_crit_edge, %for.body.i210.IFRFbWriteEmbedded.exit216_crit_edge
  %ww.0.lcssa.i214 = phi i16 [ %ww.013.i208, %for.body.i210.IFRFbWriteEmbedded.exit216_crit_edge ], [ -16, %for.inc.i213.IFRFbWriteEmbedded.exit216_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i214)
  %cmp4.i215 = icmp ne i16 %ww.0.lcssa.i214, -16
  %and47149 = and i1 %and40148, %cmp4.i215
  br label %if.end107

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %byOldChannel)
  %cmp51 = icmp ugt i16 %byOldChannel, 14
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %byNewChannel)
  %cmp55 = icmp ult i16 %byNewChannel, 15
  %or.cond150 = and i1 %cmp51, %cmp55
  br i1 %or.cond150, label %if.then57, label %if.else.if.end107_crit_edge

if.else.if.end107_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end107

if.then57:                                        ; preds = %if.else
  %port_offset.i217 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %28 = ptrtoint ptr %port_offset.i217 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port_offset.i217, align 4
  %add.ptr.i218 = getelementptr i8, ptr %29, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i218, i32 -1175314556) #4, !srcloc !28
  br label %for.body.i221

for.body.i221:                                    ; preds = %for.inc.i224.for.body.i221_crit_edge, %if.then57
  %ww.013.i219 = phi i16 [ 0, %if.then57 ], [ %inc.i222, %for.inc.i224.for.body.i221_crit_edge ]
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i218) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %31 = and i32 %30, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i220 = icmp eq i32 %31, 0
  br i1 %tobool.not.i220, label %for.inc.i224, label %for.body.i221.IFRFbWriteEmbedded.exit227_crit_edge

for.body.i221.IFRFbWriteEmbedded.exit227_crit_edge: ; preds = %for.body.i221
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit227

for.inc.i224:                                     ; preds = %for.body.i221
  %inc.i222 = add nuw i16 %ww.013.i219, 1
  %cmp.i223 = icmp ult i16 %ww.013.i219, -17
  br i1 %cmp.i223, label %for.inc.i224.for.body.i221_crit_edge, label %for.inc.i224.IFRFbWriteEmbedded.exit227_crit_edge

for.inc.i224.IFRFbWriteEmbedded.exit227_crit_edge: ; preds = %for.inc.i224
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit227

for.inc.i224.for.body.i221_crit_edge:             ; preds = %for.inc.i224
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i221

IFRFbWriteEmbedded.exit227:                       ; preds = %for.inc.i224.IFRFbWriteEmbedded.exit227_crit_edge, %for.body.i221.IFRFbWriteEmbedded.exit227_crit_edge
  %ww.0.lcssa.i225 = phi i16 [ %ww.013.i219, %for.body.i221.IFRFbWriteEmbedded.exit227_crit_edge ], [ -16, %for.inc.i224.IFRFbWriteEmbedded.exit227_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i225)
  %cmp4.i226 = icmp ne i16 %ww.0.lcssa.i225, -16
  %32 = ptrtoint ptr %port_offset.i217 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %port_offset.i217, align 4
  %add.ptr.i229 = getelementptr i8, ptr %33, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i229, i32 -1180442817) #4, !srcloc !28
  br label %for.body.i232

for.body.i232:                                    ; preds = %for.inc.i235.for.body.i232_crit_edge, %IFRFbWriteEmbedded.exit227
  %ww.013.i230 = phi i16 [ 0, %IFRFbWriteEmbedded.exit227 ], [ %inc.i233, %for.inc.i235.for.body.i232_crit_edge ]
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i229) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %35 = and i32 %34, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i231 = icmp eq i32 %35, 0
  br i1 %tobool.not.i231, label %for.inc.i235, label %for.body.i232.IFRFbWriteEmbedded.exit238_crit_edge

for.body.i232.IFRFbWriteEmbedded.exit238_crit_edge: ; preds = %for.body.i232
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit238

for.inc.i235:                                     ; preds = %for.body.i232
  %inc.i233 = add nuw i16 %ww.013.i230, 1
  %cmp.i234 = icmp ult i16 %ww.013.i230, -17
  br i1 %cmp.i234, label %for.inc.i235.for.body.i232_crit_edge, label %for.inc.i235.IFRFbWriteEmbedded.exit238_crit_edge

for.inc.i235.IFRFbWriteEmbedded.exit238_crit_edge: ; preds = %for.inc.i235
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit238

for.inc.i235.for.body.i232_crit_edge:             ; preds = %for.inc.i235
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i232

IFRFbWriteEmbedded.exit238:                       ; preds = %for.inc.i235.IFRFbWriteEmbedded.exit238_crit_edge, %for.body.i232.IFRFbWriteEmbedded.exit238_crit_edge
  %ww.0.lcssa.i236 = phi i16 [ %ww.013.i230, %for.body.i232.IFRFbWriteEmbedded.exit238_crit_edge ], [ -16, %for.inc.i235.IFRFbWriteEmbedded.exit238_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i236)
  %cmp4.i237 = icmp ne i16 %ww.0.lcssa.i236, -16
  %and69138 = and i1 %cmp4.i226, %cmp4.i237
  %36 = ptrtoint ptr %port_offset.i217 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %port_offset.i217, align 4
  %add.ptr.i240 = getelementptr i8, ptr %37, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i240, i32 -1185600640) #4, !srcloc !28
  br label %for.body.i243

for.body.i243:                                    ; preds = %for.inc.i246.for.body.i243_crit_edge, %IFRFbWriteEmbedded.exit238
  %ww.013.i241 = phi i16 [ 0, %IFRFbWriteEmbedded.exit238 ], [ %inc.i244, %for.inc.i246.for.body.i243_crit_edge ]
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i240) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %39 = and i32 %38, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i242 = icmp eq i32 %39, 0
  br i1 %tobool.not.i242, label %for.inc.i246, label %for.body.i243.IFRFbWriteEmbedded.exit249_crit_edge

for.body.i243.IFRFbWriteEmbedded.exit249_crit_edge: ; preds = %for.body.i243
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit249

for.inc.i246:                                     ; preds = %for.body.i243
  %inc.i244 = add nuw i16 %ww.013.i241, 1
  %cmp.i245 = icmp ult i16 %ww.013.i241, -17
  br i1 %cmp.i245, label %for.inc.i246.for.body.i243_crit_edge, label %for.inc.i246.IFRFbWriteEmbedded.exit249_crit_edge

for.inc.i246.IFRFbWriteEmbedded.exit249_crit_edge: ; preds = %for.inc.i246
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit249

for.inc.i246.for.body.i243_crit_edge:             ; preds = %for.inc.i246
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i243

IFRFbWriteEmbedded.exit249:                       ; preds = %for.inc.i246.IFRFbWriteEmbedded.exit249_crit_edge, %for.body.i243.IFRFbWriteEmbedded.exit249_crit_edge
  %ww.0.lcssa.i247 = phi i16 [ %ww.013.i241, %for.body.i243.IFRFbWriteEmbedded.exit249_crit_edge ], [ -16, %for.inc.i246.IFRFbWriteEmbedded.exit249_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i247)
  %cmp4.i248 = icmp ne i16 %ww.0.lcssa.i247, -16
  %and76139 = and i1 %and69138, %cmp4.i248
  %40 = ptrtoint ptr %port_offset.i217 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %port_offset.i217, align 4
  %add.ptr.i251 = getelementptr i8, ptr %41, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i251, i32 -1190722866) #4, !srcloc !28
  br label %for.body.i254

for.body.i254:                                    ; preds = %for.inc.i257.for.body.i254_crit_edge, %IFRFbWriteEmbedded.exit249
  %ww.013.i252 = phi i16 [ 0, %IFRFbWriteEmbedded.exit249 ], [ %inc.i255, %for.inc.i257.for.body.i254_crit_edge ]
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i251) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %43 = and i32 %42, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i253 = icmp eq i32 %43, 0
  br i1 %tobool.not.i253, label %for.inc.i257, label %for.body.i254.IFRFbWriteEmbedded.exit260_crit_edge

for.body.i254.IFRFbWriteEmbedded.exit260_crit_edge: ; preds = %for.body.i254
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit260

for.inc.i257:                                     ; preds = %for.body.i254
  %inc.i255 = add nuw i16 %ww.013.i252, 1
  %cmp.i256 = icmp ult i16 %ww.013.i252, -17
  br i1 %cmp.i256, label %for.inc.i257.for.body.i254_crit_edge, label %for.inc.i257.IFRFbWriteEmbedded.exit260_crit_edge

for.inc.i257.IFRFbWriteEmbedded.exit260_crit_edge: ; preds = %for.inc.i257
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit260

for.inc.i257.for.body.i254_crit_edge:             ; preds = %for.inc.i257
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i254

IFRFbWriteEmbedded.exit260:                       ; preds = %for.inc.i257.IFRFbWriteEmbedded.exit260_crit_edge, %for.body.i254.IFRFbWriteEmbedded.exit260_crit_edge
  %ww.0.lcssa.i258 = phi i16 [ %ww.013.i252, %for.body.i254.IFRFbWriteEmbedded.exit260_crit_edge ], [ -16, %for.inc.i257.IFRFbWriteEmbedded.exit260_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i258)
  %cmp4.i259 = icmp ne i16 %ww.0.lcssa.i258, -16
  %and83140 = and i1 %and76139, %cmp4.i259
  %44 = ptrtoint ptr %port_offset.i217 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %port_offset.i217, align 4
  %add.ptr.i262 = getelementptr i8, ptr %45, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i262, i32 -1190526752) #4, !srcloc !28
  br label %for.body.i265

for.body.i265:                                    ; preds = %for.inc.i268.for.body.i265_crit_edge, %IFRFbWriteEmbedded.exit260
  %ww.013.i263 = phi i16 [ 0, %IFRFbWriteEmbedded.exit260 ], [ %inc.i266, %for.inc.i268.for.body.i265_crit_edge ]
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i262) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %47 = and i32 %46, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i264 = icmp eq i32 %47, 0
  br i1 %tobool.not.i264, label %for.inc.i268, label %for.body.i265.IFRFbWriteEmbedded.exit271_crit_edge

for.body.i265.IFRFbWriteEmbedded.exit271_crit_edge: ; preds = %for.body.i265
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit271

for.inc.i268:                                     ; preds = %for.body.i265
  %inc.i266 = add nuw i16 %ww.013.i263, 1
  %cmp.i267 = icmp ult i16 %ww.013.i263, -17
  br i1 %cmp.i267, label %for.inc.i268.for.body.i265_crit_edge, label %for.inc.i268.IFRFbWriteEmbedded.exit271_crit_edge

for.inc.i268.IFRFbWriteEmbedded.exit271_crit_edge: ; preds = %for.inc.i268
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit271

for.inc.i268.for.body.i265_crit_edge:             ; preds = %for.inc.i268
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i265

IFRFbWriteEmbedded.exit271:                       ; preds = %for.inc.i268.IFRFbWriteEmbedded.exit271_crit_edge, %for.body.i265.IFRFbWriteEmbedded.exit271_crit_edge
  %ww.0.lcssa.i269 = phi i16 [ %ww.013.i263, %for.body.i265.IFRFbWriteEmbedded.exit271_crit_edge ], [ -16, %for.inc.i268.IFRFbWriteEmbedded.exit271_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i269)
  %cmp4.i270 = icmp ne i16 %ww.0.lcssa.i269, -16
  %and90141 = and i1 %and83140, %cmp4.i270
  %48 = ptrtoint ptr %port_offset.i217 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %port_offset.i217, align 4
  %add.ptr.i273 = getelementptr i8, ptr %49, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i273, i32 -1187247616) #4, !srcloc !28
  br label %for.body.i276

for.body.i276:                                    ; preds = %for.inc.i279.for.body.i276_crit_edge, %IFRFbWriteEmbedded.exit271
  %ww.013.i274 = phi i16 [ 0, %IFRFbWriteEmbedded.exit271 ], [ %inc.i277, %for.inc.i279.for.body.i276_crit_edge ]
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i273) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %51 = and i32 %50, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i275 = icmp eq i32 %51, 0
  br i1 %tobool.not.i275, label %for.inc.i279, label %for.body.i276.IFRFbWriteEmbedded.exit282_crit_edge

for.body.i276.IFRFbWriteEmbedded.exit282_crit_edge: ; preds = %for.body.i276
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit282

for.inc.i279:                                     ; preds = %for.body.i276
  %inc.i277 = add nuw i16 %ww.013.i274, 1
  %cmp.i278 = icmp ult i16 %ww.013.i274, -17
  br i1 %cmp.i278, label %for.inc.i279.for.body.i276_crit_edge, label %for.inc.i279.IFRFbWriteEmbedded.exit282_crit_edge

for.inc.i279.IFRFbWriteEmbedded.exit282_crit_edge: ; preds = %for.inc.i279
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit282

for.inc.i279.for.body.i276_crit_edge:             ; preds = %for.inc.i279
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i276

IFRFbWriteEmbedded.exit282:                       ; preds = %for.inc.i279.IFRFbWriteEmbedded.exit282_crit_edge, %for.body.i276.IFRFbWriteEmbedded.exit282_crit_edge
  %ww.0.lcssa.i280 = phi i16 [ %ww.013.i274, %for.body.i276.IFRFbWriteEmbedded.exit282_crit_edge ], [ -16, %for.inc.i279.IFRFbWriteEmbedded.exit282_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i280)
  %cmp4.i281 = icmp ne i16 %ww.0.lcssa.i280, -16
  %and97142 = and i1 %and90141, %cmp4.i281
  %52 = ptrtoint ptr %port_offset.i217 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %port_offset.i217, align 4
  %add.ptr.i284 = getelementptr i8, ptr %53, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i284, i32 -1181763046) #4, !srcloc !28
  br label %for.body.i287

for.body.i287:                                    ; preds = %for.inc.i290.for.body.i287_crit_edge, %IFRFbWriteEmbedded.exit282
  %ww.013.i285 = phi i16 [ 0, %IFRFbWriteEmbedded.exit282 ], [ %inc.i288, %for.inc.i290.for.body.i287_crit_edge ]
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i284) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %55 = and i32 %54, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i286 = icmp eq i32 %55, 0
  br i1 %tobool.not.i286, label %for.inc.i290, label %for.body.i287.IFRFbWriteEmbedded.exit293_crit_edge

for.body.i287.IFRFbWriteEmbedded.exit293_crit_edge: ; preds = %for.body.i287
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit293

for.inc.i290:                                     ; preds = %for.body.i287
  %inc.i288 = add nuw i16 %ww.013.i285, 1
  %cmp.i289 = icmp ult i16 %ww.013.i285, -17
  br i1 %cmp.i289, label %for.inc.i290.for.body.i287_crit_edge, label %for.inc.i290.IFRFbWriteEmbedded.exit293_crit_edge

for.inc.i290.IFRFbWriteEmbedded.exit293_crit_edge: ; preds = %for.inc.i290
  call void @__sanitizer_cov_trace_pc() #6
  br label %IFRFbWriteEmbedded.exit293

for.inc.i290.for.body.i287_crit_edge:             ; preds = %for.inc.i290
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i287

IFRFbWriteEmbedded.exit293:                       ; preds = %for.inc.i290.IFRFbWriteEmbedded.exit293_crit_edge, %for.body.i287.IFRFbWriteEmbedded.exit293_crit_edge
  %ww.0.lcssa.i291 = phi i16 [ %ww.013.i285, %for.body.i287.IFRFbWriteEmbedded.exit293_crit_edge ], [ -16, %for.inc.i290.IFRFbWriteEmbedded.exit293_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i291)
  %cmp4.i292 = icmp ne i16 %ww.0.lcssa.i291, -16
  %and104143 = and i1 %and97142, %cmp4.i292
  br label %if.end107

if.end107:                                        ; preds = %IFRFbWriteEmbedded.exit293, %if.else.if.end107_crit_edge, %IFRFbWriteEmbedded.exit216
  %ret.0.shrunk = phi i1 [ %and47149, %IFRFbWriteEmbedded.exit216 ], [ %and104143, %IFRFbWriteEmbedded.exit293 ], [ true, %if.else.if.end107_crit_edge ]
  ret i1 %ret.0.shrunk
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @MACvTimer0MicroSDelay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bb_power_save_mode_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bb_power_save_mode_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @al2230_init_table, !1, !"al2230_init_table", i1 false, i1 false}
!1 = !{!"../drivers/staging/vt6655/rf.c", i32 36, i32 28}
!2 = !{ptr @al2230_channel_table0, !3, !"al2230_channel_table0", i1 false, i1 false}
!3 = !{!"../drivers/staging/vt6655/rf.c", i32 54, i32 28}
!4 = !{ptr @al2230_channel_table1, !5, !"al2230_channel_table1", i1 false, i1 false}
!5 = !{!"../drivers/staging/vt6655/rf.c", i32 71, i32 28}
!6 = !{ptr @al7230_init_table, !7, !"al7230_init_table", i1 false, i1 false}
!7 = !{!"../drivers/staging/vt6655/rf.c", i32 158, i32 28}
!8 = distinct !{null, !9, !"al7230_init_table_a_mode", i1 false, i1 false}
!9 = !{!"../drivers/staging/vt6655/rf.c", i32 179, i32 28}
!10 = !{ptr @al7230_channel_table0, !11, !"al7230_channel_table0", i1 false, i1 false}
!11 = !{!"../drivers/staging/vt6655/rf.c", i32 198, i32 28}
!12 = !{ptr @al7230_channel_table1, !13, !"al7230_channel_table1", i1 false, i1 false}
!13 = !{!"../drivers/staging/vt6655/rf.c", i32 265, i32 28}
!14 = !{ptr @al7230_channel_table2, !15, !"al7230_channel_table2", i1 false, i1 false}
!15 = !{!"../drivers/staging/vt6655/rf.c", i32 330, i32 28}
!16 = !{ptr @al2230_power_table, !17, !"al2230_power_table", i1 false, i1 false}
!17 = !{!"../drivers/staging/vt6655/rf.c", i32 88, i32 22}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 2152599930}
!28 = !{i64 5057808}
!29 = !{i64 5058226}
!30 = !{i64 2152598575}
!31 = !{i64 2152598956}
!32 = !{i64 5057611}
!33 = !{i64 5057388}
!34 = !{i64 2152597963}
!35 = !{i64 2152599380}
!36 = !{i64 5057188}
