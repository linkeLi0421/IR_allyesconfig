; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ixgb/ixgb_ee.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ixgb/ixgb_ee.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ixgb_hw = type { ptr, ptr, %struct.ixgb_fc, %struct.ixgb_bus, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, i32, i32, i8, i8, i16, i16, i8, i16, i16, i32, i32, i32, i32, i16, [64 x i16], i32, i32, i32 }
%struct.ixgb_fc = type { i32, i32, i16, i8, i32 }
%struct.ixgb_bus = type { i32, i32, i32 }

@ixgb_get_eeprom_data.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ixgb\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ixgb_get_eeprom_data\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/intel/ixgb/ixgb_ee.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ixgb: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@ixgb_get_eeprom_data.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Reading eeprom data\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ixgb: Reading eeprom data\0A\00", [37 x i8] zeroinitializer }, align 32
@ixgb_get_eeprom_data.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Checksum invalid\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ixgb: Checksum invalid\0A\00", [40 x i8] zeroinitializer }, align 32
@ixgb_get_eeprom_data.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Signature invalid\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ixgb: Signature invalid\0A\00", [39 x i8] zeroinitializer }, align 32
@ixgb_get_ee_mac_addr.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.3, i8 0, i8 -123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ixgb_get_ee_mac_addr\00", [43 x i8] zeroinitializer }, align 32
@ixgb_get_ee_mac_addr.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 -122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"eeprom mac address = %pM\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ixgb: eeprom mac address = %pM\0A\00", [32 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 446, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 450, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 459, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 468, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 532, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [45 x i8] c"../drivers/net/ethernet/intel/ixgb/ixgb_ee.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 538, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ixgb_validate_eeprom_checksum(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.013 = phi i16 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %checksum.012 = phi i32 [ 0, %entry ], [ %phi.cast, %for.body.for.body_crit_edge ]
  %call = tail call zeroext i16 @ixgb_read_eeprom(ptr noundef %hw, i16 noundef zeroext %i.013)
  %conv2 = zext i16 %call to i32
  %add = add nuw nsw i32 %checksum.012, %conv2
  %inc = add nuw nsw i16 %i.013, 1
  %phi.cast = and i32 %add, 65535
  %cmp = icmp ult i16 %i.013, 63
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 47802, i32 %phi.cast)
  %cmp6 = icmp eq i32 %phi.cast, 47802
  ret i1 %cmp6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @ixgb_read_eeprom(ptr nocapture noundef readonly %hw, i16 noundef zeroext %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  %3 = and i32 %2, -83886081
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  tail call void @arm_heavy_mb() #3
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %add.ptr3.i = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %3) #3, !srcloc !38
  %6 = or i32 %3, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  tail call void @arm_heavy_mb() #3
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %add.ptr8.i = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %6) #3, !srcloc !38
  tail call fastcc void @ixgb_shift_out_bits(ptr noundef %hw, i16 noundef zeroext 6, i16 noundef zeroext 3)
  tail call fastcc void @ixgb_shift_out_bits(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext 6)
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %add.ptr.i5 = getelementptr i8, ptr %10, i32 24
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #3, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !40
  %12 = and i32 %11, -201326593
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.027.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %data.026.i = phi i16 [ 0, %entry ], [ %29, %for.body.i.for.body.i_crit_edge ]
  %eecd_reg.025.i = phi i32 [ %13, %entry ], [ %and.i.i, %for.body.i.for.body.i_crit_edge ]
  %shl.i = shl i16 %data.026.i, 1
  %or.i.i = or i32 %eecd_reg.025.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  tail call void @arm_heavy_mb() #3
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #3
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %14) #3, !srcloc !38
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %18, i32 16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #3, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 10737400) #3
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %add.ptr6.i = getelementptr i8, ptr %22, i32 24
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #3, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !43
  %24 = and i32 %23, -67108865
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #3
  %26 = trunc i32 %25 to i16
  %27 = lshr i16 %26, 3
  %28 = and i16 %27, 1
  %29 = or i16 %28, %shl.i
  %and.i.i = and i32 %25, -6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !44
  tail call void @arm_heavy_mb() #3
  %30 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #3
  %31 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %32, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %30) #3, !srcloc !38
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 4
  %add.ptr2.i21.i = getelementptr i8, ptr %34, i32 16
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i21.i) #3, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 10737400) #3
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %ixgb_shift_in_bits.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

ixgb_shift_in_bits.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @ixgb_standby_eeprom(ptr noundef %hw)
  ret i16 %29
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgb_update_eeprom_checksum(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.013 = phi i16 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %checksum.012 = phi i32 [ 0, %entry ], [ %phi.cast, %for.body.for.body_crit_edge ]
  %call = tail call zeroext i16 @ixgb_read_eeprom(ptr noundef %hw, i16 noundef zeroext %i.013)
  %conv2 = zext i16 %call to i32
  %add = add nuw nsw i32 %checksum.012, %conv2
  %inc = add nuw nsw i16 %i.013, 1
  %phi.cast = and i32 %add, 65535
  %cmp = icmp ult i16 %i.013, 62
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %0 = trunc i32 %add to i16
  %conv6 = sub i16 -17734, %0
  tail call void @ixgb_write_eeprom(ptr noundef %hw, i16 noundef zeroext 63, i16 noundef zeroext %conv6)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgb_write_eeprom(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  %3 = and i32 %2, -83886081
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  tail call void @arm_heavy_mb() #3
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %add.ptr3.i = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %3) #3, !srcloc !38
  %6 = or i32 %3, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  tail call void @arm_heavy_mb() #3
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %add.ptr8.i = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %6) #3, !srcloc !38
  tail call fastcc void @ixgb_shift_out_bits(ptr noundef %hw, i16 noundef zeroext 19, i16 noundef zeroext 5)
  tail call fastcc void @ixgb_shift_out_bits(ptr noundef %hw, i16 noundef zeroext 0, i16 noundef zeroext 4)
  tail call fastcc void @ixgb_standby_eeprom(ptr noundef %hw)
  tail call fastcc void @ixgb_shift_out_bits(ptr noundef %hw, i16 noundef zeroext 5, i16 noundef zeroext 3)
  tail call fastcc void @ixgb_shift_out_bits(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext 6)
  tail call fastcc void @ixgb_shift_out_bits(ptr noundef %hw, i16 noundef zeroext %data, i16 noundef zeroext 16)
  tail call fastcc void @ixgb_standby_eeprom(ptr noundef %hw) #3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.01.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %add.ptr.i13 = getelementptr i8, ptr %10, i32 24
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #3, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  %12 = and i32 %11, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.end.i, label %ixgb_wait_eeprom_command.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 10737400) #3
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 200
  br i1 %exitcond.not.i, label %do.body2.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

do.body2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/intel/ixgb/ixgb_ee.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 287, 0\0A.popsection", ""() #3, !srcloc !47
  unreachable

ixgb_wait_eeprom_command.exit:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @ixgb_standby_eeprom(ptr noundef %hw)
  tail call fastcc void @ixgb_shift_out_bits(ptr noundef %hw, i16 noundef zeroext 16, i16 noundef zeroext 5)
  tail call fastcc void @ixgb_shift_out_bits(ptr noundef %hw, i16 noundef zeroext 0, i16 noundef zeroext 4)
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %add.ptr.i14 = getelementptr i8, ptr %15, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #3, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  %17 = and i32 %16, -100663297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !49
  tail call void @arm_heavy_mb() #3
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  %add.ptr3.i15 = getelementptr i8, ptr %19, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i15, i32 %17) #3, !srcloc !38
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 24
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #3, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !50
  %23 = or i32 %22, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %25, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %23) #3, !srcloc !38
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %27, i32 16
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #3, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 10737400) #3
  %30 = and i32 %22, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !53
  tail call void @arm_heavy_mb() #3
  %31 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw, align 4
  %add.ptr15.i.i = getelementptr i8, ptr %32, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.i, i32 %30) #3, !srcloc !38
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 4
  %add.ptr19.i.i = getelementptr i8, ptr %34, i32 16
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i.i) #3, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 10737400) #3
  %init_ctrl_reg_1 = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 27, i32 10
  %37 = ptrtoint ptr %init_ctrl_reg_1 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %init_ctrl_reg_1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgb_shift_out_bits(ptr nocapture noundef readonly %hw, i16 noundef zeroext %data, i16 noundef zeroext %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %count to i32
  %sub = add nsw i32 %conv, -1
  %shl = shl nuw i32 1, %sub
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !55
  %3 = and i32 %2, -201326593
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %conv3 = zext i16 %data to i32
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %eecd_reg.0 = phi i32 [ %4, %entry ], [ %and.i, %do.body.do.body_crit_edge ]
  %mask.0 = phi i32 [ %shl, %entry ], [ %shr, %do.body.do.body_crit_edge ]
  %and2 = and i32 %eecd_reg.0, -5
  %and4 = and i32 %mask.0, %conv3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  %masksel = select i1 %tobool.not, i32 0, i32 4
  %spec.select = or i32 %masksel, %and2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !56
  tail call void @arm_heavy_mb() #3
  %5 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %5) #3, !srcloc !38
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %add.ptr11 = getelementptr i8, ptr %9, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #3, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 10737400) #3
  %or.i = or i32 %spec.select, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  tail call void @arm_heavy_mb() #3
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i) #3
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #3, !srcloc !38
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %add.ptr2.i = getelementptr i8, ptr %16, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #3, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 10737400) #3
  %and.i = and i32 %spec.select, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !44
  tail call void @arm_heavy_mb() #3
  %19 = tail call i32 @llvm.bswap.i32(i32 %and.i) #3
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %add.ptr.i31 = getelementptr i8, ptr %21, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %19) #3, !srcloc !38
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  %add.ptr2.i32 = getelementptr i8, ptr %23, i32 16
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i32) #3, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 10737400) #3
  %shr = lshr i32 %mask.0, 1
  %tobool16.not = icmp ult i32 %mask.0, 2
  br i1 %tobool16.not, label %do.end17, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.end17:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %and18 = and i32 %eecd_reg.0, -6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !58
  tail call void @arm_heavy_mb() #3
  %26 = tail call i32 @llvm.bswap.i32(i32 %and18)
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
  %add.ptr23 = getelementptr i8, ptr %28, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %26) #3, !srcloc !38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgb_standby_eeprom(ptr nocapture noundef readonly %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !59
  %3 = and i32 %2, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !60
  tail call void @arm_heavy_mb() #3
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #3, !srcloc !38
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #3, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 10737400) #3
  %10 = or i32 %3, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  tail call void @arm_heavy_mb() #3
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %add.ptr15 = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %10) #3, !srcloc !38
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %add.ptr19 = getelementptr i8, ptr %14, i32 16
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #3, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 10737400) #3
  %17 = or i32 %2, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !64
  tail call void @arm_heavy_mb() #3
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  %add.ptr28 = getelementptr i8, ptr %19, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %17) #3, !srcloc !38
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %add.ptr32 = getelementptr i8, ptr %21, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #3, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 10737400) #3
  %24 = and i32 %17, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !66
  tail call void @arm_heavy_mb() #3
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  %add.ptr41 = getelementptr i8, ptr %26, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %24) #3, !srcloc !38
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
  %add.ptr45 = getelementptr i8, ptr %28, i32 16
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #3, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !67
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 10737400) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ixgb_get_eeprom_data(ptr nocapture noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_get_eeprom_data.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_get_eeprom_data, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !68

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_get_eeprom_data.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_get_eeprom_data.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_get_eeprom_data, %if.then15)) #3
          to label %for.body [label %if.then15], !srcloc !68

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_get_eeprom_data.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.6) #3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then15, %do.end
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %do.end ], [ 0, %if.then15 ]
  %checksum.091 = phi i32 [ %phi.cast, %for.body.for.body_crit_edge ], [ 0, %do.end ], [ 0, %if.then15 ]
  %0 = trunc i32 %indvars.iv to i16
  %call20 = tail call zeroext i16 @ixgb_read_eeprom(ptr noundef %hw, i16 noundef zeroext %0)
  %conv21 = zext i16 %call20 to i32
  %add = add nuw nsw i32 %checksum.091, %conv21
  %1 = tail call i16 @llvm.bswap.i16(i16 %call20)
  %arrayidx = getelementptr %struct.ixgb_hw, ptr %hw, i32 0, i32 27, i32 %indvars.iv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %arrayidx, align 2
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %phi.cast = and i32 %add, 65535
  %exitcond.not = icmp eq i32 %indvars.iv.next, 64
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 47802, i32 %phi.cast)
  %cmp26.not = icmp eq i32 %phi.cast, 47802
  br i1 %cmp26.not, label %if.end45, label %do.body29

do.body29:                                        ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_get_eeprom_data.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_get_eeprom_data, %if.then41)) #3
          to label %do.end44 [label %if.then41], !srcloc !68

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_get_eeprom_data.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.8) #3
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %do.body29
  %init_ctrl_reg_1 = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 27, i32 10
  %3 = ptrtoint ptr %init_ctrl_reg_1 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %init_ctrl_reg_1, align 4
  br label %cleanup

if.end45:                                         ; preds = %for.end
  %init_ctrl_reg_146 = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 27, i32 10
  %4 = ptrtoint ptr %init_ctrl_reg_146 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %init_ctrl_reg_146, align 4
  %6 = and i16 %5, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %6)
  %cmp48.not = icmp eq i16 %6, 64
  br i1 %cmp48.not, label %if.end45.cleanup_crit_edge, label %do.body51

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body51:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_get_eeprom_data.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_get_eeprom_data, %if.then63)) #3
          to label %cleanup [label %if.then63], !srcloc !68

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_get_eeprom_data.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.10) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %do.body51, %if.end45.cleanup_crit_edge, %do.end44
  %retval.0 = phi i1 [ false, %do.end44 ], [ false, %if.then63 ], [ true, %if.end45.cleanup_crit_edge ], [ false, %do.body51 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @ixgb_get_eeprom_word(ptr nocapture noundef %hw, i16 noundef zeroext %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %index to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %index)
  %cmp = icmp ult i16 %index, 64
  br i1 %cmp, label %land.lhs.true, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

land.lhs.true:                                    ; preds = %entry
  %init_ctrl_reg_1.i = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 27, i32 10
  %0 = ptrtoint ptr %init_ctrl_reg_1.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %init_ctrl_reg_1.i, align 4
  %2 = and i16 %1, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %2)
  %cmp.i = icmp eq i16 %2, 64
  br i1 %cmp.i, label %land.lhs.true.if.then_crit_edge, label %ixgb_check_and_get_eeprom_data.exit

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

ixgb_check_and_get_eeprom_data.exit:              ; preds = %land.lhs.true
  %call.i = tail call zeroext i1 @ixgb_get_eeprom_data(ptr noundef %hw) #3
  br i1 %call.i, label %ixgb_check_and_get_eeprom_data.exit.if.then_crit_edge, label %ixgb_check_and_get_eeprom_data.exit.return_crit_edge

ixgb_check_and_get_eeprom_data.exit.return_crit_edge: ; preds = %ixgb_check_and_get_eeprom_data.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

ixgb_check_and_get_eeprom_data.exit.if.then_crit_edge: ; preds = %ixgb_check_and_get_eeprom_data.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %ixgb_check_and_get_eeprom_data.exit.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %arrayidx = getelementptr %struct.ixgb_hw, ptr %hw, i32 0, i32 27, i32 %conv
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  br label %return

return:                                           ; preds = %if.then, %ixgb_check_and_get_eeprom_data.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i16 [ %4, %if.then ], [ 0, %ixgb_check_and_get_eeprom_data.exit.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgb_get_ee_mac_addr(ptr nocapture noundef %hw, ptr noundef %mac_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom = getelementptr %struct.ixgb_hw, ptr %hw, i32 0, i32 27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_get_ee_mac_addr.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_get_ee_mac_addr, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !68

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_get_ee_mac_addr.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %init_ctrl_reg_1.i = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 27, i32 10
  %0 = ptrtoint ptr %init_ctrl_reg_1.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %init_ctrl_reg_1.i, align 4
  %2 = and i16 %1, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %2)
  %cmp.i = icmp eq i16 %2, 64
  br i1 %cmp.i, label %do.end.for.cond.preheader_crit_edge, label %if.else.i

do.end.for.cond.preheader_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.preheader

if.else.i:                                        ; preds = %do.end
  %call.i = tail call zeroext i1 @ixgb_get_eeprom_data(ptr noundef %hw) #3
  br i1 %call.i, label %if.else.i.for.cond.preheader_crit_edge, label %if.else.i.if.end23_crit_edge

if.else.i.if.end23_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23

if.else.i.for.cond.preheader_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else.i.for.cond.preheader_crit_edge, %do.end.for.cond.preheader_crit_edge
  %3 = ptrtoint ptr %eeprom to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %eeprom, align 1
  %5 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %mac_addr, align 1
  %arrayidx.1 = getelementptr [6 x i8], ptr %eeprom, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.1, align 1
  %arrayidx6.1 = getelementptr i8, ptr %mac_addr, i32 1
  %8 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx6.1, align 1
  %arrayidx.2 = getelementptr %struct.ixgb_hw, ptr %hw, i32 0, i32 27, i32 1
  %9 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.2, align 1
  %arrayidx6.2 = getelementptr i8, ptr %mac_addr, i32 2
  %11 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx6.2, align 1
  %arrayidx.3 = getelementptr [6 x i8], ptr %eeprom, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.3, align 1
  %arrayidx6.3 = getelementptr i8, ptr %mac_addr, i32 3
  %14 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx6.3, align 1
  %arrayidx.4 = getelementptr %struct.ixgb_hw, ptr %hw, i32 0, i32 27, i32 2
  %15 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.4, align 1
  %arrayidx6.4 = getelementptr i8, ptr %mac_addr, i32 4
  %17 = ptrtoint ptr %arrayidx6.4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx6.4, align 1
  %arrayidx.5 = getelementptr [6 x i8], ptr %eeprom, i32 0, i32 5
  %18 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.5, align 1
  %arrayidx6.5 = getelementptr i8, ptr %mac_addr, i32 5
  %20 = ptrtoint ptr %arrayidx6.5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx6.5, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_get_ee_mac_addr.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_get_ee_mac_addr, %if.then19)) #3
          to label %if.end23 [label %if.then19], !srcloc !68

if.then19:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_get_ee_mac_addr.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.13, ptr noundef %mac_addr) #3
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %for.cond.preheader, %if.else.i.if.end23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgb_get_ee_pba_number(ptr nocapture noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %init_ctrl_reg_1.i = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 27, i32 10
  %0 = ptrtoint ptr %init_ctrl_reg_1.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %init_ctrl_reg_1.i, align 4
  %2 = and i16 %1, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %2)
  %cmp.i = icmp eq i16 %2, 64
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %ixgb_check_and_get_eeprom_data.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

ixgb_check_and_get_eeprom_data.exit:              ; preds = %entry
  %call.i = tail call zeroext i1 @ixgb_get_eeprom_data(ptr noundef %hw) #3
  br i1 %call.i, label %ixgb_check_and_get_eeprom_data.exit.if.then_crit_edge, label %ixgb_check_and_get_eeprom_data.exit.return_crit_edge

ixgb_check_and_get_eeprom_data.exit.return_crit_edge: ; preds = %ixgb_check_and_get_eeprom_data.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

ixgb_check_and_get_eeprom_data.exit.if.then_crit_edge: ; preds = %ixgb_check_and_get_eeprom_data.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %ixgb_check_and_get_eeprom_data.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %arrayidx = getelementptr %struct.ixgb_hw, ptr %hw, i32 0, i32 27, i32 8
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  %arrayidx2 = getelementptr %struct.ixgb_hw, ptr %hw, i32 0, i32 27, i32 9
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx2, align 2
  %7 = zext i16 %6 to i32
  %8 = zext i16 %4 to i32
  %9 = shl nuw i32 %8, 16
  %10 = or i32 %9, %7
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  br label %return

return:                                           ; preds = %if.then, %ixgb_check_and_get_eeprom_data.exit.return_crit_edge
  %retval.0 = phi i32 [ %11, %if.then ], [ 0, %ixgb_check_and_get_eeprom_data.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @ixgb_get_ee_device_id(ptr nocapture noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %init_ctrl_reg_1.i = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 27, i32 10
  %0 = ptrtoint ptr %init_ctrl_reg_1.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %init_ctrl_reg_1.i, align 4
  %2 = and i16 %1, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %2)
  %cmp.i = icmp eq i16 %2, 64
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %ixgb_check_and_get_eeprom_data.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

ixgb_check_and_get_eeprom_data.exit:              ; preds = %entry
  %call.i = tail call zeroext i1 @ixgb_get_eeprom_data(ptr noundef %hw) #3
  br i1 %call.i, label %ixgb_check_and_get_eeprom_data.exit.if.then_crit_edge, label %ixgb_check_and_get_eeprom_data.exit.cleanup_crit_edge

ixgb_check_and_get_eeprom_data.exit.cleanup_crit_edge: ; preds = %ixgb_check_and_get_eeprom_data.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

ixgb_check_and_get_eeprom_data.exit.if.then_crit_edge: ; preds = %ixgb_check_and_get_eeprom_data.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %ixgb_check_and_get_eeprom_data.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %device_id = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 27, i32 13
  %3 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %device_id, align 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %ixgb_check_and_get_eeprom_data.exit.cleanup_crit_edge
  %retval.0 = phi i16 [ %5, %if.then ], [ 0, %ixgb_check_and_get_eeprom_data.exit.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_ee.c", i32 446, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ixgb_get_eeprom_data.__UNIQUE_ID_ddebug285, !1, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_ee.c", i32 450, i32 2}
!9 = !{ptr @ixgb_get_eeprom_data.__UNIQUE_ID_ddebug286, !8, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!10 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_ee.c", i32 459, i32 3}
!13 = !{ptr @ixgb_get_eeprom_data.__UNIQUE_ID_ddebug287, !12, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!14 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_ee.c", i32 468, i32 3}
!17 = !{ptr @ixgb_get_eeprom_data.__UNIQUE_ID_ddebug288, !16, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!18 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_ee.c", i32 532, i32 2}
!21 = !{ptr @ixgb_get_ee_mac_addr.__UNIQUE_ID_ddebug289, !20, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_ee.c", i32 538, i32 3}
!24 = !{ptr @ixgb_get_ee_mac_addr.__UNIQUE_ID_ddebug290, !23, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!25 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 6265669}
!36 = !{i64 2155306080}
!37 = !{i64 2155306422}
!38 = !{i64 6265251}
!39 = !{i64 2155306966}
!40 = !{i64 2155304870}
!41 = !{i64 2155298347}
!42 = !{i64 2155299178}
!43 = !{i64 2155305475}
!44 = !{i64 2155300053}
!45 = !{i64 2155300884}
!46 = !{i64 2155320283}
!47 = !{i64 2155321219, i64 2155321725, i64 2155321256, i64 2155321312, i64 2155321346, i64 2155321370, i64 2155321411, i64 2155321432, i64 2155321460, i64 2155321494}
!48 = !{i64 2155319145}
!49 = !{i64 2155319487}
!50 = !{i64 2155315160}
!51 = !{i64 2155315491}
!52 = !{i64 2155316319}
!53 = !{i64 2155317192}
!54 = !{i64 2155318020}
!55 = !{i64 2155302009}
!56 = !{i64 2155302373}
!57 = !{i64 2155303201}
!58 = !{i64 2155304074}
!59 = !{i64 2155307762}
!60 = !{i64 2155308104}
!61 = !{i64 2155308932}
!62 = !{i64 2155309805}
!63 = !{i64 2155310633}
!64 = !{i64 2155311506}
!65 = !{i64 2155312334}
!66 = !{i64 2155313207}
!67 = !{i64 2155314035}
!68 = !{i64 2148837393, i64 2148837398, i64 2148837411, i64 2148837455, i64 2148837489, i64 2148837510}
