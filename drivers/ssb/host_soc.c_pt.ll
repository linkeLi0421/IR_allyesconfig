; ModuleID = '/llk/IR_all_yes/drivers/ssb/host_soc.c_pt.bc'
source_filename = "../drivers/ssb/host_soc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ssb_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ssb_device = type { ptr, ptr, ptr, ptr, %struct.ssb_device_id, i8, i32, ptr, ptr }
%struct.ssb_device_id = type { i16, i16, i8, i8 }
%struct.ssb_boardinfo = type { i16, i16 }
%struct.ssb_init_invariants = type { %struct.ssb_boardinfo, %struct.ssb_sprom, i8 }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.70, %struct.anon.71, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.70 = type { i8, i8, i8, i8 }
%struct.anon.71 = type { %struct.anon.72, %struct.anon.73 }
%struct.anon.72 = type { i8, i8, i8, i8, i8 }
%struct.anon.73 = type { i8, i8, i8, i8, i8 }

@ssb_host_soc_ops = dso_local constant { %struct.ssb_bus_ops, [32 x i8] } { %struct.ssb_bus_ops { ptr @ssb_host_soc_read8, ptr @ssb_host_soc_read16, ptr @ssb_host_soc_read32, ptr @ssb_host_soc_write8, ptr @ssb_host_soc_write16, ptr @ssb_host_soc_write32, ptr @ssb_host_soc_block_read, ptr @ssb_host_soc_block_write }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"boardvendor\00", [20 x i8] zeroinitializer }, align 32
@ssb_host_soc_get_invariants._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014ssb: Couldn't parse nvram board vendor entry with value \22%s\22\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ssb_host_soc_get_invariants\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/ssb/host_soc.c\00", [41 x i8] zeroinitializer }, align 32
@ssb_host_soc_get_invariants._entry_ptr = internal global ptr @ssb_host_soc_get_invariants._entry, section ".printk_index", align 4
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"boardtype\00", [22 x i8] zeroinitializer }, align 32
@ssb_host_soc_get_invariants._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014ssb: Couldn't parse nvram board type entry with value \22%s\22\0A\00", [34 x i8] zeroinitializer }, align 32
@ssb_host_soc_get_invariants._entry_ptr.7 = internal global ptr @ssb_host_soc_get_invariants._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cardbus\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"ssb_host_soc_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 163, i32 26 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 185, i32 29 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 189, i32 4 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 195, i32 29 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 199, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [26 x i8] c"../drivers/ssb/host_soc.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 206, i32 27 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @ssb_host_soc_get_invariants._entry, ptr @ssb_host_soc_get_invariants._entry.5, ptr @ssb_host_soc_get_invariants._entry_ptr, ptr @ssb_host_soc_get_invariants._entry_ptr.7, ptr @ssb_host_soc_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_host_soc_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_host_soc_get_invariants._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_host_soc_get_invariants._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ssb_host_soc_read8(ptr nocapture noundef readonly %dev, i16 noundef zeroext %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %core_index = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %core_index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %core_index, align 2
  %conv = zext i8 %3 to i16
  %mul = shl i16 %conv, 12
  %add = add i16 %mul, %offset
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %conv4 = zext i16 %add to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv4
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  ret i8 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @ssb_host_soc_read16(ptr nocapture noundef readonly %dev, i16 noundef zeroext %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %core_index = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %core_index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %core_index, align 2
  %conv = zext i8 %3 to i16
  %mul = shl i16 %conv, 12
  %add = add i16 %mul, %offset
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %conv4 = zext i16 %add to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv4
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #5, !srcloc !29
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  ret i16 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssb_host_soc_read32(ptr nocapture noundef readonly %dev, i16 noundef zeroext %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %core_index = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %core_index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %core_index, align 2
  %conv = zext i8 %3 to i16
  %mul = shl i16 %conv, 12
  %add = add i16 %mul, %offset
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %conv4 = zext i16 %add to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !31
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssb_host_soc_write8(ptr nocapture noundef readonly %dev, i16 noundef zeroext %offset, i8 noundef zeroext %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %core_index = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %core_index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %core_index, align 2
  %conv = zext i8 %3 to i16
  %mul = shl i16 %conv, 12
  %add = add i16 %mul, %offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %conv4 = zext i16 %add to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %value) #5, !srcloc !34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssb_host_soc_write16(ptr nocapture noundef readonly %dev, i16 noundef zeroext %offset, i16 noundef zeroext %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %core_index = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %core_index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %core_index, align 2
  %conv = zext i8 %3 to i16
  %mul = shl i16 %conv, 12
  %add = add i16 %mul, %offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  tail call void @arm_heavy_mb() #5
  %4 = tail call i16 @llvm.bswap.i16(i16 %value)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %conv4 = zext i16 %add to i32
  %add.ptr = getelementptr i8, ptr %6, i32 %conv4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %4) #5, !srcloc !36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssb_host_soc_write32(ptr nocapture noundef readonly %dev, i16 noundef zeroext %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %core_index = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %core_index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %core_index, align 2
  %conv = zext i8 %3 to i16
  %mul = shl i16 %conv, 12
  %add = add i16 %mul, %offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %value)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %conv4 = zext i16 %add to i32
  %add.ptr = getelementptr i8, ptr %6, i32 %conv4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #5, !srcloc !38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssb_host_soc_block_read(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %buffer, i32 noundef %count, i16 noundef zeroext %offset, i8 noundef zeroext %reg_width) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %core_index = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %core_index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %core_index, align 2
  %conv = zext i8 %3 to i16
  %mul = shl i16 %conv, 12
  %add = add i16 %mul, %offset
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %conv4 = zext i16 %add to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv4
  %6 = zext i8 %reg_width to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %reg_width, label %do.end87 [
    i8 1, label %while.cond.preheader
    i8 2, label %sw.bb6
    i8 4, label %sw.bb34
  ]

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not128 = icmp eq i32 %count, 0
  br i1 %tobool.not128, label %while.cond.preheader.sw.epilog_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.sw.epilog_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %count.addr.0130 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %count, %while.cond.preheader.while.body_crit_edge ]
  %buf.0129 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %buffer, %while.cond.preheader.while.body_crit_edge ]
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !27
  %8 = ptrtoint ptr %buf.0129 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %buf.0129, align 1
  %incdec.ptr = getelementptr i8, ptr %buf.0129, i32 1
  %dec = add i32 %count.addr.0130, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.sw.epilog_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %and = and i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end, label %if.end.thread, !prof !39

if.end.thread:                                    ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 64, i32 noundef 9, ptr noundef null) #5
  br label %while.body30.preheader

if.end:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool29.not125 = icmp eq i32 %count, 0
  br i1 %tobool29.not125, label %if.end.sw.epilog_crit_edge, label %if.end.while.body30.preheader_crit_edge

if.end.while.body30.preheader_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body30.preheader

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

while.body30.preheader:                           ; preds = %if.end.while.body30.preheader_crit_edge, %if.end.thread
  br label %while.body30

while.body30:                                     ; preds = %while.body30.while.body30_crit_edge, %while.body30.preheader
  %count.addr.1127 = phi i32 [ %sub, %while.body30.while.body30_crit_edge ], [ %count, %while.body30.preheader ]
  %buf7.0126 = phi ptr [ %incdec.ptr32, %while.body30.while.body30_crit_edge ], [ %buffer, %while.body30.preheader ]
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #5, !srcloc !29
  %10 = ptrtoint ptr %buf7.0126 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %buf7.0126, align 2
  %incdec.ptr32 = getelementptr i16, ptr %buf7.0126, i32 1
  %sub = add i32 %count.addr.1127, -2
  %tobool29.not = icmp eq i32 %sub, 0
  br i1 %tobool29.not, label %while.body30.sw.epilog_crit_edge, label %while.body30.while.body30_crit_edge

while.body30.while.body30_crit_edge:              ; preds = %while.body30
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body30

while.body30.sw.epilog_crit_edge:                 ; preds = %while.body30
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb34:                                          ; preds = %entry
  %and37 = and i32 %count, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end60, label %if.end60.thread, !prof !39

if.end60.thread:                                  ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 75, i32 noundef 9, ptr noundef null) #5
  br label %while.body70.preheader

if.end60:                                         ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool69.not122 = icmp eq i32 %count, 0
  br i1 %tobool69.not122, label %if.end60.sw.epilog_crit_edge, label %if.end60.while.body70.preheader_crit_edge

if.end60.while.body70.preheader_crit_edge:        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body70.preheader

if.end60.sw.epilog_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

while.body70.preheader:                           ; preds = %if.end60.while.body70.preheader_crit_edge, %if.end60.thread
  br label %while.body70

while.body70:                                     ; preds = %while.body70.while.body70_crit_edge, %while.body70.preheader
  %count.addr.2124 = phi i32 [ %sub73, %while.body70.while.body70_crit_edge ], [ %count, %while.body70.preheader ]
  %buf35.0123 = phi ptr [ %incdec.ptr72, %while.body70.while.body70_crit_edge ], [ %buffer, %while.body70.preheader ]
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !31
  %12 = ptrtoint ptr %buf35.0123 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %buf35.0123, align 4
  %incdec.ptr72 = getelementptr i32, ptr %buf35.0123, i32 1
  %sub73 = add i32 %count.addr.2124, -4
  %tobool69.not = icmp eq i32 %sub73, 0
  br i1 %tobool69.not, label %while.body70.sw.epilog_crit_edge, label %while.body70.while.body70_crit_edge

while.body70.while.body70_crit_edge:              ; preds = %while.body70
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body70

while.body70.sw.epilog_crit_edge:                 ; preds = %while.body70
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end87:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 84, i32 noundef 9, ptr noundef null) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end87, %while.body70.sw.epilog_crit_edge, %if.end60.sw.epilog_crit_edge, %while.body30.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %while.body.sw.epilog_crit_edge, %while.cond.preheader.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssb_host_soc_block_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %buffer, i32 noundef %count, i16 noundef zeroext %offset, i8 noundef zeroext %reg_width) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %core_index = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %core_index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %core_index, align 2
  %conv = zext i8 %3 to i16
  %mul = shl i16 %conv, 12
  %add = add i16 %mul, %offset
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %conv4 = zext i16 %add to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv4
  %6 = zext i8 %reg_width to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %reg_width, label %do.end85 [
    i8 1, label %while.cond.preheader
    i8 2, label %sw.bb6
    i8 4, label %sw.bb33
  ]

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not126 = icmp eq i32 %count, 0
  br i1 %tobool.not126, label %while.cond.preheader.sw.epilog_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.sw.epilog_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %count.addr.0128 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %count, %while.cond.preheader.while.body_crit_edge ]
  %buf.0127 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %buffer, %while.cond.preheader.while.body_crit_edge ]
  %7 = ptrtoint ptr %buf.0127 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buf.0127, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %8) #5, !srcloc !34
  %incdec.ptr = getelementptr i8, ptr %buf.0127, i32 1
  %dec = add i32 %count.addr.0128, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.sw.epilog_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %and = and i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end, label %if.end.thread, !prof !39

if.end.thread:                                    ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 137, i32 noundef 9, ptr noundef null) #5
  br label %while.body30.preheader

if.end:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool29.not123 = icmp eq i32 %count, 0
  br i1 %tobool29.not123, label %if.end.sw.epilog_crit_edge, label %if.end.while.body30.preheader_crit_edge

if.end.while.body30.preheader_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body30.preheader

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

while.body30.preheader:                           ; preds = %if.end.while.body30.preheader_crit_edge, %if.end.thread
  br label %while.body30

while.body30:                                     ; preds = %while.body30.while.body30_crit_edge, %while.body30.preheader
  %count.addr.1125 = phi i32 [ %sub, %while.body30.while.body30_crit_edge ], [ %count, %while.body30.preheader ]
  %buf7.0124 = phi ptr [ %incdec.ptr31, %while.body30.while.body30_crit_edge ], [ %buffer, %while.body30.preheader ]
  %9 = ptrtoint ptr %buf7.0124 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %buf7.0124, align 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %10) #5, !srcloc !36
  %incdec.ptr31 = getelementptr i16, ptr %buf7.0124, i32 1
  %sub = add i32 %count.addr.1125, -2
  %tobool29.not = icmp eq i32 %sub, 0
  br i1 %tobool29.not, label %while.body30.sw.epilog_crit_edge, label %while.body30.while.body30_crit_edge

while.body30.while.body30_crit_edge:              ; preds = %while.body30
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body30

while.body30.sw.epilog_crit_edge:                 ; preds = %while.body30
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry
  %and36 = and i32 %count, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end59, label %if.end59.thread, !prof !39

if.end59.thread:                                  ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 148, i32 noundef 9, ptr noundef null) #5
  br label %while.body69.preheader

if.end59:                                         ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool68.not120 = icmp eq i32 %count, 0
  br i1 %tobool68.not120, label %if.end59.sw.epilog_crit_edge, label %if.end59.while.body69.preheader_crit_edge

if.end59.while.body69.preheader_crit_edge:        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body69.preheader

if.end59.sw.epilog_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

while.body69.preheader:                           ; preds = %if.end59.while.body69.preheader_crit_edge, %if.end59.thread
  br label %while.body69

while.body69:                                     ; preds = %while.body69.while.body69_crit_edge, %while.body69.preheader
  %count.addr.2122 = phi i32 [ %sub71, %while.body69.while.body69_crit_edge ], [ %count, %while.body69.preheader ]
  %buf34.0121 = phi ptr [ %incdec.ptr70, %while.body69.while.body69_crit_edge ], [ %buffer, %while.body69.preheader ]
  %11 = ptrtoint ptr %buf34.0121 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buf34.0121, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #5, !srcloc !38
  %incdec.ptr70 = getelementptr i32, ptr %buf34.0121, i32 1
  %sub71 = add i32 %count.addr.2122, -4
  %tobool68.not = icmp eq i32 %sub71, 0
  br i1 %tobool68.not, label %while.body69.sw.epilog_crit_edge, label %while.body69.while.body69_crit_edge

while.body69.while.body69_crit_edge:              ; preds = %while.body69
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body69

while.body69.sw.epilog_crit_edge:                 ; preds = %while.body69
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end85:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 157, i32 noundef 9, ptr noundef null) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end85, %while.body69.sw.epilog_crit_edge, %if.end59.sw.epilog_crit_edge, %while.body30.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %while.body.sw.epilog_crit_edge, %while.cond.preheader.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_host_soc_get_invariants(ptr noundef %bus, ptr noundef %iv) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %0 = call ptr @memset(ptr %buf, i32 255, i32 20)
  %1 = ptrtoint ptr %iv to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %iv, align 4
  %call = call i32 @bcm47xx_nvram_getenv(ptr noundef nonnull @.str, ptr noundef nonnull %buf, i32 noundef 20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then:                                          ; preds = %entry
  %call2 = call ptr @strim(ptr noundef nonnull %buf) #5
  %call4 = call i32 @kstrtou16(ptr noundef %call2, i32 noundef 0, ptr noundef %iv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then.if.end8_crit_edge, label %do.end

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %buf) #8
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %2 = ptrtoint ptr %iv to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %iv, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool11.not = icmp eq i16 %3, 0
  br i1 %tobool11.not, label %if.then12, label %if.end8.if.end15_crit_edge

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %iv to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 5348, ptr %iv, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end8.if.end15_crit_edge
  %call17 = call i32 @bcm47xx_nvram_getenv(ptr noundef nonnull @.str.4, ptr noundef nonnull %buf, i32 noundef 20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp sgt i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end15.if.end33_crit_edge

if.end15.if.end33_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then19:                                        ; preds = %if.end15
  %call21 = call ptr @strim(ptr noundef nonnull %buf) #5
  %type = getelementptr inbounds %struct.ssb_boardinfo, ptr %iv, i32 0, i32 1
  %call23 = call i32 @kstrtou16(ptr noundef %call21, i32 noundef 0, ptr noundef %type) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then19.if.end33_crit_edge, label %do.end28

if.then19.if.end33_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

do.end28:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull %buf) #8
  br label %if.end33

if.end33:                                         ; preds = %do.end28, %if.then19.if.end33_crit_edge, %if.end15.if.end33_crit_edge
  %sprom = getelementptr inbounds %struct.ssb_init_invariants, ptr %iv, i32 0, i32 1
  %5 = call ptr @memset(ptr %sprom, i32 0, i32 540)
  %call35 = call i32 @ssb_fill_sprom_with_fallback(ptr noundef %bus, ptr noundef %sprom) #5
  %call37 = call i32 @bcm47xx_nvram_getenv(ptr noundef nonnull @.str.8, ptr noundef nonnull %buf, i32 noundef 20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call37)
  %cmp38 = icmp sgt i32 %call37, -1
  br i1 %cmp38, label %if.then39, label %if.end33.if.end44_crit_edge

if.end33.if.end44_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then39:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %call41 = call i32 @simple_strtoul(ptr noundef nonnull %buf, ptr noundef null, i32 noundef 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42 = icmp ne i32 %call41, 0
  %has_cardbus_slot = getelementptr inbounds %struct.ssb_init_invariants, ptr %iv, i32 0, i32 2
  %frombool = zext i1 %tobool42 to i8
  %6 = ptrtoint ptr %has_cardbus_slot to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %has_cardbus_slot, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %if.end33.if.end44_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm47xx_nvram_getenv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_fill_sprom_with_fallback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @ssb_host_soc_ops, !1, !"ssb_host_soc_ops", i1 false, i1 false}
!1 = !{!"../drivers/ssb/host_soc.c", i32 163, i32 26}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/ssb/host_soc.c", i32 185, i32 29}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/ssb/host_soc.c", i32 189, i32 4}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ssb_host_soc_get_invariants._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @ssb_host_soc_get_invariants._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/ssb/host_soc.c", i32 195, i32 29}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/ssb/host_soc.c", i32 199, i32 4}
!14 = !{ptr @ssb_host_soc_get_invariants._entry.5, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @ssb_host_soc_get_invariants._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/ssb/host_soc.c", i32 206, i32 27}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 5010614}
!28 = !{i64 2154748606}
!29 = !{i64 5009996}
!30 = !{i64 2154749103}
!31 = !{i64 5010834}
!32 = !{i64 2154749600}
!33 = !{i64 2154755402}
!34 = !{i64 5010219}
!35 = !{i64 2154755682}
!36 = !{i64 5009796}
!37 = !{i64 2154756088}
!38 = !{i64 5010416}
!39 = !{!"branch_weights", i32 2000, i32 1}
