; ModuleID = '/llk/IR_all_yes/arch/arm/mach-hisi/hotplug.c_pt.bc'
source_filename = "../arch/arm/mach-hisi/hotplug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@ctrl_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@id = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hisilicon,hip01-sysctrl\00", [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cpu %d unexpectedly exit from shutdown\0A\00", [56 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hisilicon,sysctrl\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hisilicon,cpuctrl\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [10 x i8] c"ctrl_base\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 73, i32 22 }
@___asan_gen_.7 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 229, i32 44 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 280, i32 8 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 147, i32 45 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [32 x i8] c"../arch/arm/mach-hisi/hotplug.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 179, i32 43 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @ctrl_base, ptr @id, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hi3xxx_set_cpu(i32 noundef %cpu, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ctrl_base, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.2) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.hi3xxx_hotplug_init.exit.thread_crit_edge, label %if.end.i

if.then.hi3xxx_hotplug_init.exit.thread_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3xxx_hotplug_init.exit.thread

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call ptr @of_iomap(ptr noundef nonnull %call.i, i32 noundef 0) #6
  store ptr %call1.i, ptr @ctrl_base, align 4
  tail call void @of_node_put(ptr noundef nonnull %call.i) #6
  %1 = load ptr, ptr @ctrl_base, align 4
  %tobool2.not.i = icmp eq ptr %1, null
  br i1 %tobool2.not.i, label %if.end.i.hi3xxx_hotplug_init.exit.thread_crit_edge, label %if.end2.thread

if.end.i.hi3xxx_hotplug_init.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3xxx_hotplug_init.exit.thread

hi3xxx_hotplug_init.exit.thread:                  ; preds = %if.end.i.hi3xxx_hotplug_init.exit.thread_crit_edge, %if.then.hi3xxx_hotplug_init.exit.thread_crit_edge
  store i1 true, ptr @id, align 4
  br label %if.end6

if.end2.thread:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 false, ptr @id, align 4
  br label %if.then4

if.end2:                                          ; preds = %entry
  %.b.pr = load i1, ptr @id, align 4
  br i1 %.b.pr, label %if.end2.if.end6_crit_edge, label %if.end2.if.then4_crit_edge

if.end2.if.then4_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.end2.if.end6_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %if.end2.if.then4_crit_edge, %if.end2.thread
  br i1 %enable, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then4
  %2 = and i32 %cpu, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch.i = icmp eq i32 %2, 2
  br i1 %switch.i, label %if.then2.i, label %if.then.i.if.end.i7_crit_edge

if.then.i.if.end.i7_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i7

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i = shl nuw nsw i32 8, %cpu
  %3 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #6
  %4 = load ptr, ptr @ctrl_base, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #6, !srcloc !22
  br label %if.end.i7

if.end.i7:                                        ; preds = %if.then2.i, %if.then.i.if.end.i7_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 21474800) #6
  %shl3.i = shl nuw i32 1, %cpu
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl3.i) #6
  %7 = load ptr, ptr @ctrl_base, align 4
  %add.ptr4.i = getelementptr i8, ptr %7, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %6) #6, !srcloc !22
  %shl5.i = shl i32 4113, %cpu
  %8 = tail call i32 @llvm.bswap.i32(i32 %shl5.i) #6
  %9 = load ptr, ptr @ctrl_base, align 4
  %add.ptr6.i = getelementptr i8, ptr %9, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %8) #6, !srcloc !22
  %shl7.i = shl i32 4198417, %cpu
  %10 = tail call i32 @llvm.bswap.i32(i32 %shl7.i) #6
  %11 = load ptr, ptr @ctrl_base, align 4
  %add.ptr8.i = getelementptr i8, ptr %11, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %10) #6, !srcloc !22
  br i1 %switch.i, label %if.then12.i, label %if.end.i7.if.end16.i_crit_edge

if.end.i7.if.end16.i_crit_edge:                   ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

if.then12.i:                                      ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #8
  %shl14.i = shl nuw nsw i32 8, %cpu
  %12 = tail call i32 @llvm.bswap.i32(i32 %shl14.i) #6
  %13 = load ptr, ptr @ctrl_base, align 4
  %add.ptr15.i = getelementptr i8, ptr %13, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %12) #6, !srcloc !22
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %if.end.i7.if.end16.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #6
  %15 = load ptr, ptr @ctrl_base, align 4
  %add.ptr17.i = getelementptr i8, ptr %15, i32 512
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #6, !srcloc !23
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  %shl18.i = shl i32 268435456, %cpu
  %neg.i = xor i32 %shl18.i, -1
  %and.i = and i32 %17, %neg.i
  %18 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  %19 = load ptr, ptr @ctrl_base, align 4
  %add.ptr19.i = getelementptr i8, ptr %19, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %18) #6, !srcloc !22
  %20 = load ptr, ptr @ctrl_base, align 4
  %add.ptr21.i = getelementptr i8, ptr %20, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %10) #6, !srcloc !22
  br label %if.end6

if.else.i:                                        ; preds = %if.then4
  %21 = load ptr, ptr @ctrl_base, align 4
  %add.ptr23.i = getelementptr i8, ptr %21, i32 512
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #6, !srcloc !23
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  %shl26.i = shl i32 268435456, %cpu
  %or27.i = or i32 %23, %shl26.i
  %24 = tail call i32 @llvm.bswap.i32(i32 %or27.i) #6
  %25 = load ptr, ptr @ctrl_base, align 4
  %add.ptr28.i = getelementptr i8, ptr %25, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 %24) #6, !srcloc !22
  %shl29.i = shl nuw i32 1, %cpu
  %26 = tail call i32 @llvm.bswap.i32(i32 %shl29.i) #6
  %27 = load ptr, ptr @ctrl_base, align 4
  %add.ptr30.i = getelementptr i8, ptr %27, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %26) #6, !srcloc !22
  %28 = and i32 %cpu, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %switch83.i = icmp eq i32 %28, 2
  br i1 %switch83.i, label %if.then34.i, label %if.end49.critedge.i

if.then34.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl36.i = shl nuw nsw i32 8, %cpu
  %29 = tail call i32 @llvm.bswap.i32(i32 %shl36.i) #6
  %30 = load ptr, ptr @ctrl_base, align 4
  %add.ptr37.i = getelementptr i8, ptr %30, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 %29) #6, !srcloc !22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #6
  %shl39.c86.i = shl nuw nsw i32 4198417, %cpu
  %32 = tail call i32 @llvm.bswap.i32(i32 %shl39.c86.i) #6
  %33 = load ptr, ptr @ctrl_base, align 4
  %add.ptr40.c87.i = getelementptr i8, ptr %33, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.c87.i, i32 %32) #6, !srcloc !22
  %34 = load ptr, ptr @ctrl_base, align 4
  %add.ptr47.i = getelementptr i8, ptr %34, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.i, i32 %29) #6, !srcloc !22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 21474800) #6
  br label %if.end6

if.end49.critedge.i:                              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl39.c.i = shl i32 4198417, %cpu
  %36 = tail call i32 @llvm.bswap.i32(i32 %shl39.c.i) #6
  %37 = load ptr, ptr @ctrl_base, align 4
  %add.ptr40.c.i = getelementptr i8, ptr %37, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.c.i, i32 %36) #6, !srcloc !22
  br label %if.end6

if.end6:                                          ; preds = %if.end49.critedge.i, %if.then34.i, %if.end16.i, %if.end2.if.end6_crit_edge, %hi3xxx_hotplug_init.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hix5hd2_set_cpu(i32 %cpu, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ctrl_base, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.3) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.do.body_crit_edge, label %hix5hd2_hotplug_init.exit

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

hix5hd2_hotplug_init.exit:                        ; preds = %if.then
  %call1.i = tail call ptr @of_iomap(ptr noundef nonnull %call.i, i32 noundef 0) #6
  store ptr %call1.i, ptr @ctrl_base, align 4
  tail call void @of_node_put(ptr noundef nonnull %call.i) #6
  %1 = load ptr, ptr @ctrl_base, align 4
  %tobool2.not.i.not = icmp eq ptr %1, null
  br i1 %tobool2.not.i.not, label %hix5hd2_hotplug_init.exit.do.body_crit_edge, label %hix5hd2_hotplug_init.exit.if.end5_crit_edge

hix5hd2_hotplug_init.exit.if.end5_crit_edge:      ; preds = %hix5hd2_hotplug_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

hix5hd2_hotplug_init.exit.do.body_crit_edge:      ; preds = %hix5hd2_hotplug_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %hix5hd2_hotplug_init.exit.do.body_crit_edge, %if.then.do.body_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-hisi/hotplug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 197, 0\0A.popsection", ""() #6, !srcloc !24
  unreachable

if.end5:                                          ; preds = %hix5hd2_hotplug_init.exit.if.end5_crit_edge, %entry.if.end5_crit_edge
  %2 = load ptr, ptr @ctrl_base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 4096
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6
  %4 = and i32 %3, 2013200383
  br i1 %enable, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %5 = or i32 %4, -2147483648
  %6 = load ptr, ptr @ctrl_base, align 4
  %add.ptr9 = getelementptr i8, ptr %6, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %5) #6, !srcloc !22
  %7 = load ptr, ptr @ctrl_base, align 4
  %add.ptr11 = getelementptr i8, ptr %7, i32 80
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #6, !srcloc !23
  %9 = and i32 %8, -513
  %10 = load ptr, ptr @ctrl_base, align 4
  %add.ptr15 = getelementptr i8, ptr %10, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %9) #6, !srcloc !22
  br label %if.end29

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %11 = or i32 %4, -2013265920
  %12 = load ptr, ptr @ctrl_base, align 4
  %add.ptr22 = getelementptr i8, ptr %12, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %11) #6, !srcloc !22
  %13 = load ptr, ptr @ctrl_base, align 4
  %add.ptr24 = getelementptr i8, ptr %13, i32 80
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #6, !srcloc !23
  %15 = or i32 %14, 512
  %16 = load ptr, ptr @ctrl_base, align 4
  %add.ptr28 = getelementptr i8, ptr %16, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %15) #6, !srcloc !22
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hip01_set_cpu(i32 noundef %cpu, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ctrl_base, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %entry.if.end33_crit_edge

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then:                                          ; preds = %entry
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #6
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %do.body6, label %do.end11, !prof !25

do.body6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-hisi/hotplug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 230, 0\0A.popsection", ""() #6, !srcloc !26
  unreachable

do.end11:                                         ; preds = %if.then
  %call12 = tail call ptr @of_iomap(ptr noundef nonnull %call, i32 noundef 0) #6
  store ptr %call12, ptr @ctrl_base, align 4
  tail call void @of_node_put(ptr noundef nonnull %call) #6
  %1 = load ptr, ptr @ctrl_base, align 4
  %tobool14.not = icmp eq ptr %1, null
  br i1 %tobool14.not, label %do.body24, label %do.end11.if.end33_crit_edge, !prof !25

do.end11.if.end33_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

do.body24:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-hisi/hotplug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 233, 0\0A.popsection", ""() #6, !srcloc !27
  unreachable

if.end33:                                         ; preds = %do.end11.if.end33_crit_edge, %entry.if.end33_crit_edge
  br i1 %enable, label %if.then35, label %if.end33.if.end43_crit_edge

if.end33.if.end43_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %2 = load ptr, ptr @ctrl_base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 80
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !23
  %4 = or i32 %3, 33554432
  %5 = load ptr, ptr @ctrl_base, align 4
  %add.ptr37 = getelementptr i8, ptr %5, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %4) #6, !srcloc !22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 10737400) #6
  %7 = load ptr, ptr @ctrl_base, align 4
  %add.ptr39 = getelementptr i8, ptr %7, i32 80
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #6, !srcloc !23
  %9 = and i32 %8, -33554433
  %10 = load ptr, ptr @ctrl_base, align 4
  %add.ptr42 = getelementptr i8, ptr %10, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %9) #6, !srcloc !22
  br label %if.end43

if.end43:                                         ; preds = %if.then35, %if.end33.if.end43_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hi3xxx_cpu_die(i32 noundef %cpu) local_unnamed_addr #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %0() #6
  %1 = tail call i32 asm sideeffect "\09mrc\09p15, 0, $0, c1, c0, 1\0A\09bic\09$0, $0, #0x40\0A\09mcr\09p15, 0, $0, c1, c0, 1\0A\09mrc\09p15, 0, $0, c1, c0, 0\0A\09bic\09$0, $0, #0x04\0A\09mcr\09p15, 0, $0, c1, c0, 0\0A", "=&r,r,~{cc}"(i32 0) #6, !srcloc !28
  %2 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 0, i32 -2130706432, i32 8454144) #9, !srcloc !29
  %3 = inttoptr i32 %2 to ptr
  tail call void @hi3xxx_set_cpu_jump(i32 noundef %cpu, ptr noundef %3) #6
  %4 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu2 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu2, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %_do_idle = getelementptr inbounds %struct.processor, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %_do_idle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_do_idle, align 4
  %call3 = tail call i32 %11() #6
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.1, i32 noundef %cpu) #10
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hi3xxx_set_cpu_jump(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hi3xxx_cpu_kill(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 5
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %call1 = tail call i32 @hi3xxx_get_cpu_jump(i32 noundef %cpu) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %1
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %while.body.cleanup_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @hi3xxx_set_cpu(i32 noundef %cpu, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %while.end, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %while.end ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hi3xxx_get_cpu_jump(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hix5hd2_cpu_die(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %0() #6
  %1 = load ptr, ptr @ctrl_base, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.hix5hd2_set_cpu.exit_crit_edge

entry.hix5hd2_set_cpu.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %hix5hd2_set_cpu.exit

if.then.i:                                        ; preds = %entry
  %call.i.i = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.3) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.do.body.i_crit_edge, label %hix5hd2_hotplug_init.exit.i

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

hix5hd2_hotplug_init.exit.i:                      ; preds = %if.then.i
  %call1.i.i = tail call ptr @of_iomap(ptr noundef nonnull %call.i.i, i32 noundef 0) #6
  store ptr %call1.i.i, ptr @ctrl_base, align 4
  tail call void @of_node_put(ptr noundef nonnull %call.i.i) #6
  %2 = load ptr, ptr @ctrl_base, align 4
  %tobool2.not.i.not.i = icmp eq ptr %2, null
  br i1 %tobool2.not.i.not.i, label %hix5hd2_hotplug_init.exit.i.do.body.i_crit_edge, label %hix5hd2_hotplug_init.exit.i.hix5hd2_set_cpu.exit_crit_edge

hix5hd2_hotplug_init.exit.i.hix5hd2_set_cpu.exit_crit_edge: ; preds = %hix5hd2_hotplug_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hix5hd2_set_cpu.exit

hix5hd2_hotplug_init.exit.i.do.body.i_crit_edge:  ; preds = %hix5hd2_hotplug_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.body.i:                                        ; preds = %hix5hd2_hotplug_init.exit.i.do.body.i_crit_edge, %if.then.i.do.body.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-hisi/hotplug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 197, 0\0A.popsection", ""() #6, !srcloc !24
  unreachable

hix5hd2_set_cpu.exit:                             ; preds = %hix5hd2_hotplug_init.exit.i.hix5hd2_set_cpu.exit_crit_edge, %entry.hix5hd2_set_cpu.exit_crit_edge
  %3 = load ptr, ptr @ctrl_base, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4096
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6
  %5 = and i32 %4, 2013200383
  %6 = or i32 %5, -2013265920
  %7 = load ptr, ptr @ctrl_base, align 4
  %add.ptr22.i = getelementptr i8, ptr %7, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %6) #6, !srcloc !22
  %8 = load ptr, ptr @ctrl_base, align 4
  %add.ptr24.i = getelementptr i8, ptr %8, i32 80
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #6, !srcloc !23
  %10 = or i32 %9, 512
  %11 = load ptr, ptr @ctrl_base, align 4
  %add.ptr28.i = getelementptr i8, ptr %11, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 %10) #6, !srcloc !22
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }
attributes #10 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.named.register.sp = !{!12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-hisi/hotplug.c", i32 229, i32 44}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-hisi/hotplug.c", i32 280, i32 8}
!4 = !{ptr @ctrl_base, !5, !"ctrl_base", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-hisi/hotplug.c", i32 73, i32 22}
!6 = distinct !{null, !7, !"id", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-hisi/hotplug.c", i32 74, i32 12}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-hisi/hotplug.c", i32 147, i32 45}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-hisi/hotplug.c", i32 179, i32 43}
!12 = !{!"sp"}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 4818679}
!23 = !{i64 4819097}
!24 = !{i64 2153980906, i64 2153981399, i64 2153980943, i64 2153980999, i64 2153981033, i64 2153981057, i64 2153981098, i64 2153981119, i64 2153981147, i64 2153981181}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{i64 2153984625, i64 2153985118, i64 2153984662, i64 2153984718, i64 2153984752, i64 2153984776, i64 2153984817, i64 2153984838, i64 2153984866, i64 2153984900}
!27 = !{i64 2153986228, i64 2153986721, i64 2153986265, i64 2153986321, i64 2153986355, i64 2153986379, i64 2153986420, i64 2153986441, i64 2153986469, i64 2153986503}
!28 = !{i64 5730, i64 5763, i64 5787, i64 5819, i64 5851, i64 5875}
!29 = !{i64 2148896728, i64 2148896751, i64 2148896783, i64 2148896815, i64 2148896853, i64 2148896883}
