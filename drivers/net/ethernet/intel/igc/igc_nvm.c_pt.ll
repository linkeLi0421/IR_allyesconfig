; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/igc/igc_nvm.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igc/igc_nvm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.igc_hw = type { ptr, ptr, i32, %struct.igc_mac_info, %struct.igc_fc_info, %struct.igc_nvm_info, %struct.igc_phy_info, %struct.igc_bus_info, %union.anon, i16, i16, i16, i16, i8 }
%struct.igc_mac_info = type { %struct.igc_mac_operations, [6 x i8], [6 x i8], i32, i32, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8 }
%struct.igc_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igc_fc_info = type { i32, i32, i16, i8, i8, i32, i32 }
%struct.igc_nvm_info = type { %struct.igc_nvm_operations, i32, i16, i16, i16, i16, i16 }
%struct.igc_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igc_phy_info = type { %struct.igc_phy_operations, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8 }
%struct.igc_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igc_bus_info = type { i16, i16 }
%union.anon = type { %struct.igc_dev_spec_base }
%struct.igc_dev_spec_base = type { i8, i8 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@igc_acquire_nvm.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"igc\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"igc_acquire_nvm\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/intel/igc/igc_nvm.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not acquire NVM grant\0A\00", [35 x i8] zeroinitializer }, align 32
@igc_read_nvm_eerd.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"igc_read_nvm_eerd\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nvm parameter(s) out of bounds\0A\00", [32 x i8] zeroinitializer }, align 32
@igc_validate_nvm_checksum.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"igc_validate_nvm_checksum\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"NVM Read Error\0A\00", [16 x i8] zeroinitializer }, align 32
@igc_validate_nvm_checksum.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NVM Checksum Invalid\0A\00", [42 x i8] zeroinitializer }, align 32
@igc_update_nvm_checksum.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"igc_update_nvm_checksum\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"NVM Read Error while updating checksum.\0A\00", [55 x i8] zeroinitializer }, align 32
@igc_update_nvm_checksum.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 0, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"NVM Write Error while updating checksum.\0A\00", [54 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 66, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 108, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 170, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 177, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 203, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [44 x i8] c"../drivers/net/ethernet/intel/igc/igc_nvm.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 211, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igc_acquire_nvm(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16) #4
  %hw_addr2 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %or = or i32 %call, 64
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %2) #4, !srcloc !34
  %call8 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16) #4
  %and53 = and i32 %call8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool9.not54 = icmp eq i32 %and53, 0
  br i1 %tobool9.not54, label %entry.if.end_crit_edge, label %entry.if.end41_crit_edge

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.end.if.end_crit_edge, %entry.if.end_crit_edge
  %timeout.055 = phi i32 [ %dec, %if.end.if.end_crit_edge ], [ 1000, %entry.if.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 1073740) #4
  %call10 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16) #4
  %dec = add i32 %timeout.055, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  %tobool.not.not = xor i1 %tobool.not, true
  %and = and i32 %call10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool.not.not, i1 %tobool9.not, i1 false
  br i1 %or.cond, label %if.end.if.end_crit_edge, label %while.end

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

while.end:                                        ; preds = %if.end
  br i1 %tobool.not, label %if.then12, label %while.end.if.end41_crit_edge

while.end.if.end41_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

if.then12:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %and13 = and i32 %call10, -65
  %4 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hw_addr2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %6 = tail call i32 @llvm.bswap.i32(i32 %and13)
  %arrayidx24 = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx24, i32 %6) #4, !srcloc !34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_acquire_nvm.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_acquire_nvm, %if.then34)) #4
          to label %if.end41 [label %if.then34], !srcloc !36

if.then34:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %call35 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_acquire_nvm.__UNIQUE_ID_ddebug339, ptr noundef %call35, ptr noundef nonnull @.str.3) #4
  br label %if.end41

if.end41:                                         ; preds = %if.then34, %if.then12, %while.end.if.end41_crit_edge, %entry.if.end41_crit_edge
  %ret_val.0 = phi i32 [ 0, %while.end.if.end41_crit_edge ], [ -1, %if.then34 ], [ -1, %if.then12 ], [ 0, %entry.if.end41_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igc_get_hw_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igc_release_nvm(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16) #4
  %and = and i32 %call, -65
  %hw_addr2 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %and)
  %arrayidx = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %2) #4, !srcloc !34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igc_read_nvm_eerd(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %offset to i32
  %word_size = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %word_size, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %offset)
  %cmp.not = icmp ugt i16 %1, %offset
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.body14_crit_edge

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body14

lor.lhs.false:                                    ; preds = %entry
  %conv2 = zext i16 %1 to i32
  %conv4 = zext i16 %words to i32
  %sub = sub nsw i32 %conv2, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv4)
  %cmp8 = icmp slt i32 %sub, %conv4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %words)
  %cmp12 = icmp eq i16 %words, 0
  %or.cond = or i1 %cmp12, %cmp8
  br i1 %or.cond, label %lor.lhs.false.do.body14_crit_edge, label %for.body.lr.ph

lor.lhs.false.do.body14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body14

for.body.lr.ph:                                   ; preds = %lor.lhs.false
  %hw_addr32 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 1
  br label %for.body

do.body14:                                        ; preds = %lor.lhs.false.do.body14_crit_edge, %entry.do.body14_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_read_nvm_eerd.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_read_nvm_eerd, %if.then17)) #4
          to label %out [label %if.then17], !srcloc !36

if.then17:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  %call18 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_read_nvm_eerd.__UNIQUE_ID_ddebug341, ptr noundef %call18, ptr noundef nonnull @.str.5) #4
  br label %out

for.body:                                         ; preds = %if.end41.for.body_crit_edge, %for.body.lr.ph
  %i.063 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end41.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.063, %conv
  %shl = shl i32 %add, 2
  %add26 = or i32 %shl, 1
  %2 = ptrtoint ptr %hw_addr32 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw_addr32, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void @arm_heavy_mb() #4
  %4 = tail call i32 @llvm.bswap.i32(i32 %add26)
  %arrayidx = getelementptr i8, ptr %3, i32 73748
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %4) #4, !srcloc !34
  br label %if.then.i

if.then.i:                                        ; preds = %if.end4.i.if.then.i_crit_edge, %for.body
  %i.01.i = phi i32 [ 0, %for.body ], [ %inc.i, %if.end4.i.if.then.i_crit_edge ]
  %call.i = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 73748) #4
  %and.i = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end41

if.end4.i:                                        ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 1073740) #4
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100000
  br i1 %exitcond.not.i, label %if.end4.i.out_crit_edge, label %if.end4.i.if.then.i_crit_edge

if.end4.i.if.then.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

if.end4.i.out_crit_edge:                          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end41:                                         ; preds = %if.then.i
  %call42 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 73748) #4
  %shr = lshr i32 %call42, 16
  %conv43 = trunc i32 %shr to i16
  %arrayidx44 = getelementptr i16, ptr %data, i32 %i.063
  %6 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv43, ptr %arrayidx44, align 2
  %inc = add nuw nsw i32 %i.063, 1
  %exitcond.not = icmp eq i32 %inc, %conv4
  br i1 %exitcond.not, label %if.end41.out_crit_edge, label %if.end41.for.body_crit_edge

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

out:                                              ; preds = %if.end41.out_crit_edge, %if.end4.i.out_crit_edge, %if.then17, %do.body14
  %ret_val.1 = phi i32 [ -1, %if.then17 ], [ -1, %do.body14 ], [ -1, %if.end4.i.out_crit_edge ], [ 0, %if.end41.out_crit_edge ]
  ret i32 %ret_val.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igc_read_mac_addr(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 21508) #4
  %call1 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 21504) #4
  %conv4 = trunc i32 %call1 to i8
  %arrayidx = getelementptr %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 2, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv4, ptr %arrayidx, align 1
  %shr.1 = lshr i32 %call1, 8
  %conv4.1 = trunc i32 %shr.1 to i8
  %arrayidx.1 = getelementptr %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 2, i32 1
  %1 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv4.1, ptr %arrayidx.1, align 1
  %shr.2 = lshr i32 %call1, 16
  %conv4.2 = trunc i32 %shr.2 to i8
  %arrayidx.2 = getelementptr %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 2, i32 2
  %2 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv4.2, ptr %arrayidx.2, align 1
  %shr.3 = lshr i32 %call1, 24
  %conv4.3 = trunc i32 %shr.3 to i8
  %arrayidx.3 = getelementptr %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 2, i32 3
  %3 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv4.3, ptr %arrayidx.3, align 1
  %conv13 = trunc i32 %call to i8
  %arrayidx17 = getelementptr %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 2, i32 4
  %4 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv13, ptr %arrayidx17, align 1
  %shr12.1 = lshr i32 %call, 8
  %conv13.1 = trunc i32 %shr12.1 to i8
  %arrayidx17.1 = getelementptr %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 2, i32 5
  %5 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv13.1, ptr %arrayidx17.1, align 1
  %uglygep = getelementptr i8, ptr %hw, i32 48
  %6 = call ptr @memcpy(ptr %uglygep, ptr %arrayidx, i32 6)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igc_validate_nvm_checksum(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %nvm_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nvm_data) #4
  %0 = ptrtoint ptr %nvm_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %nvm_data, align 2, !annotation !39
  %read = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 5, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %entry
  %checksum.054 = phi i32 [ 0, %entry ], [ %phi.cast, %if.end11.for.body_crit_edge ]
  %i.053 = phi i16 [ 0, %entry ], [ %inc, %if.end11.for.body_crit_edge ]
  %1 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read, align 4
  %call = call i32 %2(ptr noundef %hw, i16 noundef zeroext %i.053, i16 noundef zeroext 1, ptr noundef nonnull %nvm_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end11, label %do.body2

do.body2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_validate_nvm_checksum.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_validate_nvm_checksum, %if.then7)) #4
          to label %out [label %if.then7], !srcloc !36

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_validate_nvm_checksum.__UNIQUE_ID_ddebug343, ptr noundef %call8, ptr noundef nonnull @.str.7) #4
  br label %out

if.end11:                                         ; preds = %for.body
  %3 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %nvm_data, align 2
  %conv12 = zext i16 %4 to i32
  %add = add nuw nsw i32 %checksum.054, %conv12
  %inc = add nuw nsw i16 %i.053, 1
  %phi.cast = and i32 %add, 65535
  %cmp = icmp ult i16 %i.053, 63
  br i1 %cmp, label %if.end11.for.body_crit_edge, label %for.end

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 47802, i32 %phi.cast)
  %cmp16.not = icmp eq i32 %phi.cast, 47802
  br i1 %cmp16.not, label %for.end.out_crit_edge, label %do.body20

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.body20:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_validate_nvm_checksum.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_validate_nvm_checksum, %if.then32)) #4
          to label %out [label %if.then32], !srcloc !36

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #6
  %call33 = call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_validate_nvm_checksum.__UNIQUE_ID_ddebug344, ptr noundef %call33, ptr noundef nonnull @.str.8) #4
  br label %out

out:                                              ; preds = %if.then32, %do.body20, %for.end.out_crit_edge, %if.then7, %do.body2
  %ret_val.1 = phi i32 [ %call, %if.then7 ], [ 0, %for.end.out_crit_edge ], [ -1, %if.then32 ], [ %call, %do.body2 ], [ -1, %do.body20 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nvm_data) #4
  ret i32 %ret_val.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igc_update_nvm_checksum(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %checksum = alloca i16, align 2
  %nvm_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %checksum) #4
  %0 = ptrtoint ptr %checksum to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %checksum, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nvm_data) #4
  %1 = ptrtoint ptr %nvm_data to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %nvm_data, align 2, !annotation !39
  %read = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 5, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %entry
  %i.057 = phi i16 [ 0, %entry ], [ %inc, %if.end11.for.body_crit_edge ]
  %2 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read, align 4
  %call = call i32 %3(ptr noundef %hw, i16 noundef zeroext %i.057, i16 noundef zeroext 1, ptr noundef nonnull %nvm_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end11, label %do.body2

do.body2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_update_nvm_checksum.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_update_nvm_checksum, %if.then7)) #4
          to label %out [label %if.then7], !srcloc !36

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_update_nvm_checksum.__UNIQUE_ID_ddebug345, ptr noundef %call8, ptr noundef nonnull @.str.10) #4
  br label %out

if.end11:                                         ; preds = %for.body
  %4 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nvm_data, align 2
  %6 = ptrtoint ptr %checksum to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %checksum, align 2
  %add = add i16 %7, %5
  store i16 %add, ptr %checksum, align 2
  %inc = add nuw nsw i16 %i.057, 1
  %cmp = icmp ult i16 %i.057, 62
  br i1 %cmp, label %if.end11.for.body_crit_edge, label %for.end

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end11
  %8 = ptrtoint ptr %checksum to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %checksum, align 2
  %sub = sub i16 -17734, %9
  store i16 %sub, ptr %checksum, align 2
  %write = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %10 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write, align 4
  %call19 = call i32 %11(ptr noundef %hw, i16 noundef zeroext 63, i16 noundef zeroext 1, ptr noundef nonnull %checksum) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %for.end.out_crit_edge, label %do.body23

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.body23:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_update_nvm_checksum.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_update_nvm_checksum, %if.then35)) #4
          to label %out [label %if.then35], !srcloc !36

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #6
  %call36 = call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_update_nvm_checksum.__UNIQUE_ID_ddebug346, ptr noundef %call36, ptr noundef nonnull @.str.11) #4
  br label %out

out:                                              ; preds = %if.then35, %do.body23, %for.end.out_crit_edge, %if.then7, %do.body2
  %ret_val.0 = phi i32 [ %call, %if.then7 ], [ %call19, %if.then35 ], [ 0, %for.end.out_crit_edge ], [ %call, %do.body2 ], [ %call19, %do.body23 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nvm_data) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %checksum) #4
  ret i32 %ret_val.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !19, !20, !21, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/igc/igc_nvm.c", i32 66, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @igc_acquire_nvm.__UNIQUE_ID_ddebug339, !1, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/igc/igc_nvm.c", i32 108, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @igc_read_nvm_eerd.__UNIQUE_ID_ddebug341, !7, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/igc/igc_nvm.c", i32 170, i32 4}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @igc_validate_nvm_checksum.__UNIQUE_ID_ddebug343, !11, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/igc/igc_nvm.c", i32 177, i32 3}
!16 = !{ptr @igc_validate_nvm_checksum.__UNIQUE_ID_ddebug344, !15, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/intel/igc/igc_nvm.c", i32 203, i32 4}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @igc_update_nvm_checksum.__UNIQUE_ID_ddebug345, !18, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/intel/igc/igc_nvm.c", i32 211, i32 3}
!23 = !{ptr @igc_update_nvm_checksum.__UNIQUE_ID_ddebug346, !22, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2155948255}
!34 = !{i64 6035190}
!35 = !{i64 2155952318}
!36 = !{i64 2148841781, i64 2148841786, i64 2148841799, i64 2148841843, i64 2148841877, i64 2148841898}
!37 = !{i64 2155958176}
!38 = !{i64 2155964019}
!39 = !{!"auto-init"}
