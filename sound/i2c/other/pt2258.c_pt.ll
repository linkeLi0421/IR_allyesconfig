; ModuleID = '/llk/IR_all_yes/sound/i2c/other/pt2258.c_pt.bc'
source_filename = "../sound/i2c/other/pt2258.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_pt2258_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_pt2258_reset\09\09\09\09"
module asm "\09.long\09__crc_snd_pt2258_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pt2258_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pt2258_reset\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pt2258_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_pt2258_build_controls\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_pt2258_build_controls\09\09\09\09"
module asm "\09.long\09__crc_snd_pt2258_build_controls\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pt2258_build_controls:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pt2258_build_controls\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pt2258_build_controls:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_pt2258 = type { ptr, ptr, ptr, [6 x i8], i32 }
%struct.snd_i2c_bus = type { ptr, [32 x i8], %struct.mutex, ptr, %struct.list_head, %struct.list_head, %union.anon.43, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.43 = type { ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.54, i32 }
%union.anon.54 = type { ptr }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.50, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.50 = type { %struct.anon.53, [40 x i8] }
%struct.anon.53 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.49, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.49 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.44, [128 x i8] }
%union.anon.44 = type { %union.anon.46 }
%union.anon.46 = type { [64 x i64] }

@__UNIQUE_ID_author176 = internal constant [48 x i8] c"snd_pt2258.author=Jochen Voss <voss@seehuhn.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description177 = internal constant [77 x i8] c"snd_pt2258.description=PT2258 volume controller (Princeton Technology Corp.)\00", section ".modinfo", align 1
@__UNIQUE_ID_file178 = internal constant [43 x i8] c"snd_pt2258.file=sound/i2c/other/snd-pt2258\00", section ".modinfo", align 1
@__UNIQUE_ID_license179 = internal constant [23 x i8] c"snd_pt2258.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/i2c/other/pt2258.c\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013PT2258 reset failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Mic Loopback Playback Volume\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Line Loopback Playback Volume\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CD Loopback Playback Volume\00", [36 x i8] zeroinitializer }, align 32
@pt2258_db_scale = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -7900, i32 100], [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Loopback Switch\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_snd_pt2258_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pt2258_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pt2258_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pt2258_reset to i32), ptr @__kstrtab_snd_pt2258_reset, ptr @__kstrtabns_snd_pt2258_reset }, section "___ksymtab+snd_pt2258_reset", align 4
@__kstrtab_snd_pt2258_build_controls = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pt2258_build_controls = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pt2258_build_controls = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pt2258_build_controls to i32), ptr @__kstrtab_snd_pt2258_build_controls, ptr @__kstrtabns_snd_pt2258_build_controls }, section "___ksymtab+snd_pt2258_build_controls", align 4
@pt2258_channel_code = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\80\90@P\00\10 0`p\A0\B0", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013PT2258 access failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013PT2258 access failed 2\0A\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 66, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 174, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 175, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 176, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"pt2258_db_scale\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 168, i32 14 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 199, i32 14 }
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"pt2258_channel_code\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 23, i32 28 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 127, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [28 x i8] c"../sound/i2c/other/pt2258.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 164, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author176, ptr @__UNIQUE_ID_description177, ptr @__UNIQUE_ID_file178, ptr @__UNIQUE_ID_license179, ptr @__ksymtab_snd_pt2258_build_controls, ptr @__ksymtab_snd_pt2258_reset, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @pt2258_db_scale, ptr @.str.5, ptr @pt2258_channel_code, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt2258_db_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt2258_channel_code to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pt2258_reset(ptr nocapture noundef %pt) #0 align 64 {
entry:
  %bytes = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bytes) #6
  %0 = getelementptr inbounds [2 x i8], ptr %bytes, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %0, align 1, !annotation !39
  %2 = ptrtoint ptr %bytes to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -64, ptr %bytes, align 1
  %i2c_bus = getelementptr inbounds %struct.snd_pt2258, ptr %pt, i32 0, i32 1
  %3 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c_bus, align 4
  %master.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  %bus..i = select i1 %tobool.not.i, ptr %4, ptr %6
  %lock_mutex2.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock_mutex2.i, i32 noundef 0) #6
  %i2c_dev = getelementptr inbounds %struct.snd_pt2258, ptr %pt, i32 0, i32 2
  %7 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_dev, align 4
  %call = call i32 @snd_i2c_sendbytes(ptr noundef %8, ptr noundef nonnull %bytes, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.__error_crit_edge

entry.__error_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__error

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_bus, align 4
  %master.i38 = getelementptr inbounds %struct.snd_i2c_bus, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %master.i38 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %master.i38, align 4
  %tobool.not.i39 = icmp eq ptr %12, null
  %bus..i40 = select i1 %tobool.not.i39, ptr %10, ptr %12
  %lock_mutex2.i41 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i40, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i41) #6
  %mute = getelementptr inbounds %struct.snd_pt2258, ptr %pt, i32 0, i32 4
  %13 = ptrtoint ptr %mute to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %mute, align 4
  %14 = ptrtoint ptr %bytes to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -7, ptr %bytes, align 1
  %15 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_bus, align 4
  %master.i42 = getelementptr inbounds %struct.snd_i2c_bus, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %master.i42 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %master.i42, align 4
  %tobool.not.i43 = icmp eq ptr %18, null
  %bus..i44 = select i1 %tobool.not.i43, ptr %16, ptr %18
  %lock_mutex2.i45 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i44, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock_mutex2.i45, i32 noundef 0) #6
  %19 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_dev, align 4
  %call6 = call i32 @snd_i2c_sendbytes(ptr noundef %20, ptr noundef nonnull %bytes, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 1
  br i1 %cmp7.not, label %if.end9, label %if.end.__error_crit_edge

if.end.__error_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %__error

if.end9:                                          ; preds = %if.end
  %21 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c_bus, align 4
  %master.i46 = getelementptr inbounds %struct.snd_i2c_bus, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %master.i46 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %master.i46, align 4
  %tobool.not.i47 = icmp eq ptr %24, null
  %bus..i48 = select i1 %tobool.not.i47, ptr %22, ptr %24
  %lock_mutex2.i49 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i48, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i49) #6
  %uglygep = getelementptr i8, ptr %pt, i32 12
  %25 = call ptr @memset(ptr %uglygep, i32 0, i32 6)
  %26 = ptrtoint ptr %bytes to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -48, ptr %bytes, align 1
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -32, ptr %0, align 1
  %28 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_bus, align 4
  %master.i50 = getelementptr inbounds %struct.snd_i2c_bus, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %master.i50 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %master.i50, align 4
  %tobool.not.i51 = icmp eq ptr %31, null
  %bus..i52 = select i1 %tobool.not.i51, ptr %29, ptr %31
  %lock_mutex2.i53 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i52, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock_mutex2.i53, i32 noundef 0) #6
  %32 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i2c_dev, align 4
  %call18 = call i32 @snd_i2c_sendbytes(ptr noundef %33, ptr noundef nonnull %bytes, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 2
  br i1 %cmp19.not, label %if.end21, label %if.end9.__error_crit_edge

if.end9.__error_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %__error

if.end21:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c_bus, align 4
  %master.i54 = getelementptr inbounds %struct.snd_i2c_bus, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %master.i54 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %master.i54, align 4
  %tobool.not.i55 = icmp eq ptr %37, null
  %bus..i56 = select i1 %tobool.not.i55, ptr %35, ptr %37
  %lock_mutex2.i57 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i56, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i57) #6
  br label %cleanup

__error:                                          ; preds = %if.end9.__error_crit_edge, %if.end.__error_crit_edge, %entry.__error_crit_edge
  %38 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i2c_bus, align 4
  %master.i58 = getelementptr inbounds %struct.snd_i2c_bus, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %master.i58 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %master.i58, align 4
  %tobool.not.i59 = icmp eq ptr %41, null
  %bus..i60 = select i1 %tobool.not.i59, ptr %39, ptr %41
  %lock_mutex2.i61 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i60, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i61) #6
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 66, ptr noundef nonnull @.str.1) #6
  br label %cleanup

cleanup:                                          ; preds = %__error, %if.end21
  %retval.0 = phi i32 [ -5, %__error ], [ 0, %if.end21 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bytes) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_i2c_sendbytes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_printk(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pt2258_build_controls(ptr noundef %pt) #0 align 64 {
entry:
  %knew = alloca %struct.snd_kcontrol_new, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %knew) #6
  %name = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew, i32 0, i32 3
  %count = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew, i32 0, i32 6
  %access = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew, i32 0, i32 5
  %private_value = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew, i32 0, i32 11
  %info = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew, i32 0, i32 7
  %get = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew, i32 0, i32 8
  %put = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew, i32 0, i32 9
  %tlv = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew, i32 0, i32 10
  %0 = getelementptr inbounds i8, ptr %knew, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 16)
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.2, ptr %name, align 4
  %3 = ptrtoint ptr %knew to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %knew, align 4
  %4 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %count, align 4
  %5 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 19, ptr %access, align 4
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %private_value, align 4
  %7 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @pt2258_stereo_volume_info, ptr %info, align 4
  %8 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @pt2258_stereo_volume_get, ptr %get, align 4
  %9 = ptrtoint ptr %put to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @pt2258_stereo_volume_put, ptr %put, align 4
  %10 = ptrtoint ptr %tlv to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @pt2258_db_scale, ptr %tlv, align 4
  %11 = ptrtoint ptr %pt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pt, align 4
  %call = call ptr @snd_ctl_new1(ptr noundef nonnull %knew, ptr noundef %pt) #6
  %call1 = call i32 @snd_ctl_add(ptr noundef %12, ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %entry
  %13 = getelementptr inbounds i8, ptr %knew, i32 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 16)
  %15 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.3, ptr %name, align 4
  %16 = ptrtoint ptr %knew to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %knew, align 4
  %17 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %count, align 4
  %18 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 19, ptr %access, align 4
  %19 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %private_value, align 4
  %20 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @pt2258_stereo_volume_info, ptr %info, align 4
  %21 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @pt2258_stereo_volume_get, ptr %get, align 4
  %22 = ptrtoint ptr %put to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @pt2258_stereo_volume_put, ptr %put, align 4
  %23 = ptrtoint ptr %tlv to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @pt2258_db_scale, ptr %tlv, align 4
  %24 = ptrtoint ptr %pt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pt, align 4
  %call.1 = call ptr @snd_ctl_new1(ptr noundef nonnull %knew, ptr noundef %pt) #6
  %call1.1 = call i32 @snd_ctl_add(ptr noundef %25, ptr noundef %call.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %cmp2.1 = icmp slt i32 %call1.1, 0
  br i1 %cmp2.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %26 = getelementptr inbounds i8, ptr %knew, i32 4
  %27 = call ptr @memset(ptr %26, i32 0, i32 16)
  %28 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.4, ptr %name, align 4
  %29 = ptrtoint ptr %knew to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %knew, align 4
  %30 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %count, align 4
  %31 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 19, ptr %access, align 4
  %32 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4, ptr %private_value, align 4
  %33 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @pt2258_stereo_volume_info, ptr %info, align 4
  %34 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @pt2258_stereo_volume_get, ptr %get, align 4
  %35 = ptrtoint ptr %put to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @pt2258_stereo_volume_put, ptr %put, align 4
  %36 = ptrtoint ptr %tlv to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @pt2258_db_scale, ptr %tlv, align 4
  %37 = ptrtoint ptr %pt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pt, align 4
  %call.2 = call ptr @snd_ctl_new1(ptr noundef nonnull %knew, ptr noundef %pt) #6
  %call1.2 = call i32 @snd_ctl_add(ptr noundef %38, ptr noundef %call.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %cmp2.2 = icmp slt i32 %call1.2, 0
  br i1 %cmp2.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  %39 = getelementptr inbounds i8, ptr %knew, i32 4
  %40 = call ptr @memset(ptr %39, i32 0, i32 44)
  %41 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.5, ptr %name, align 4
  %42 = ptrtoint ptr %knew to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %knew, align 4
  %43 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @snd_ctl_boolean_mono_info, ptr %info, align 4
  %44 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @pt2258_switch_get, ptr %get, align 4
  %45 = ptrtoint ptr %put to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @pt2258_switch_put, ptr %put, align 4
  %46 = ptrtoint ptr %pt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pt, align 4
  %call10 = call ptr @snd_ctl_new1(ptr noundef nonnull %knew, ptr noundef %pt) #6
  %call11 = call i32 @snd_ctl_add(ptr noundef %47, ptr noundef %call10) #6
  %48 = call i32 @llvm.smin.i32(i32 %call11, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %for.cond.2, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %48, %for.cond.2 ], [ %call1, %entry.cleanup_crit_edge ], [ %call1.1, %for.cond.cleanup_crit_edge ], [ %call1.2, %for.cond.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %knew) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @pt2258_stereo_volume_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 79, ptr %max, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pt2258_stereo_volume_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %arrayidx = getelementptr %struct.snd_pt2258, ptr %1, i32 0, i32 3, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %sub = sub nsw i32 79, %conv
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %value, align 8
  %add = add i32 %3, 1
  %arrayidx3 = getelementptr %struct.snd_pt2258, ptr %1, i32 0, i32 3, i32 %add
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %8 to i32
  %sub5 = sub nsw i32 79, %conv4
  %arrayidx7 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub5, ptr %arrayidx7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pt2258_stereo_volume_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %bytes = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bytes) #6
  %4 = getelementptr inbounds [2 x i8], ptr %bytes, i32 0, i32 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 8
  %sub = sub i32 79, %6
  %arrayidx2 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2, align 4
  %sub3 = sub i32 79, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %6)
  %9 = icmp ugt i32 %6, 79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3)
  %cmp6 = icmp slt i32 %sub3, 0
  %or.cond101 = select i1 %9, i1 true, i1 %cmp6
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %sub3)
  %cmp8 = icmp sgt i32 %sub3, 79
  %or.cond102 = select i1 %or.cond101, i1 true, i1 %cmp8
  br i1 %or.cond102, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx9 = getelementptr %struct.snd_pt2258, ptr %1, i32 0, i32 3, i32 %3
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx9, align 1
  %conv = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp10 = icmp eq i32 %sub, %conv
  br i1 %cmp10, label %land.lhs.true, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end
  %add = add i32 %3, 1
  %arrayidx13 = getelementptr %struct.snd_pt2258, ptr %1, i32 0, i32 3, i32 %add
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub3, i32 %conv14)
  %cmp15 = icmp eq i32 %sub3, %conv14
  br i1 %cmp15, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %conv19 = trunc i32 %sub to i8
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv19, ptr %arrayidx9, align 1
  %mul = shl i32 %3, 1
  %arrayidx22 = getelementptr [12 x i8], ptr @pt2258_channel_code, i32 0, i32 %mul
  %15 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx22, align 1
  %conv19.frozen = freeze i8 %conv19
  %div119120 = udiv i8 %conv19.frozen, 10
  %conv24 = or i8 %16, %div119120
  %17 = ptrtoint ptr %bytes to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv24, ptr %bytes, align 1
  %add27 = or i32 %mul, 1
  %arrayidx28 = getelementptr [12 x i8], ptr @pt2258_channel_code, i32 0, i32 %add27
  %18 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx28, align 1
  %20 = mul i8 %div119120, 10
  %rem121122.decomposed = sub i8 %conv19.frozen, %20
  %conv31 = or i8 %19, %rem121122.decomposed
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv31, ptr %4, align 1
  %i2c_bus = getelementptr inbounds %struct.snd_pt2258, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_bus, align 4
  %master.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %master.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  %bus..i = select i1 %tobool.not.i, ptr %23, ptr %25
  %lock_mutex2.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock_mutex2.i, i32 noundef 0) #6
  %i2c_dev = getelementptr inbounds %struct.snd_pt2258, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c_dev, align 4
  %call = call i32 @snd_i2c_sendbytes(ptr noundef %27, ptr noundef nonnull %bytes, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp33.not = icmp eq i32 %call, 2
  br i1 %cmp33.not, label %if.end36, label %if.end18.__error_crit_edge

if.end18.__error_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %__error

if.end36:                                         ; preds = %if.end18
  %28 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_bus, align 4
  %master.i103 = getelementptr inbounds %struct.snd_i2c_bus, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %master.i103 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %master.i103, align 4
  %tobool.not.i104 = icmp eq ptr %31, null
  %bus..i105 = select i1 %tobool.not.i104, ptr %29, ptr %31
  %lock_mutex2.i106 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i105, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i106) #6
  %conv38 = trunc i32 %sub3 to i8
  %add40 = add i32 %3, 1
  %arrayidx41 = getelementptr %struct.snd_pt2258, ptr %1, i32 0, i32 3, i32 %add40
  %32 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv38, ptr %arrayidx41, align 1
  %add43 = add i32 %mul, 2
  %arrayidx44 = getelementptr [12 x i8], ptr @pt2258_channel_code, i32 0, i32 %add43
  %33 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx44, align 1
  %conv38.frozen = freeze i8 %conv38
  %div46123124 = udiv i8 %conv38.frozen, 10
  %conv48 = or i8 %34, %div46123124
  %35 = ptrtoint ptr %bytes to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv48, ptr %bytes, align 1
  %add51 = add i32 %mul, 3
  %arrayidx52 = getelementptr [12 x i8], ptr @pt2258_channel_code, i32 0, i32 %add51
  %36 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx52, align 1
  %38 = mul i8 %div46123124, 10
  %rem54125126.decomposed = sub i8 %conv38.frozen, %38
  %conv56 = or i8 %37, %rem54125126.decomposed
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv56, ptr %4, align 1
  %40 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i2c_bus, align 4
  %master.i107 = getelementptr inbounds %struct.snd_i2c_bus, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %master.i107 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %master.i107, align 4
  %tobool.not.i108 = icmp eq ptr %43, null
  %bus..i109 = select i1 %tobool.not.i108, ptr %41, ptr %43
  %lock_mutex2.i110 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i109, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock_mutex2.i110, i32 noundef 0) #6
  %44 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i2c_dev, align 4
  %call61 = call i32 @snd_i2c_sendbytes(ptr noundef %45, ptr noundef nonnull %bytes, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call61)
  %cmp62.not = icmp eq i32 %call61, 2
  br i1 %cmp62.not, label %if.end65, label %if.end36.__error_crit_edge

if.end36.__error_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %__error

if.end65:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i2c_bus, align 4
  %master.i111 = getelementptr inbounds %struct.snd_i2c_bus, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %master.i111 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %master.i111, align 4
  %tobool.not.i112 = icmp eq ptr %49, null
  %bus..i113 = select i1 %tobool.not.i112, ptr %47, ptr %49
  %lock_mutex2.i114 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i113, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i114) #6
  br label %cleanup

__error:                                          ; preds = %if.end36.__error_crit_edge, %if.end18.__error_crit_edge
  %50 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i2c_bus, align 4
  %master.i115 = getelementptr inbounds %struct.snd_i2c_bus, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %master.i115 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %master.i115, align 4
  %tobool.not.i116 = icmp eq ptr %53, null
  %bus..i117 = select i1 %tobool.not.i116, ptr %51, ptr %53
  %lock_mutex2.i118 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i117, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i118) #6
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 127, ptr noundef nonnull @.str.6) #6
  br label %cleanup

cleanup:                                          ; preds = %__error, %if.end65, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %__error ], [ 1, %if.end65 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bytes) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pt2258_switch_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mute = getelementptr inbounds %struct.snd_pt2258, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mute to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mute, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %lnot.ext, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pt2258_switch_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %bytes = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bytes) #6
  %2 = getelementptr inbounds [2 x i8], ptr %bytes, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !39
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %mute = getelementptr inbounds %struct.snd_pt2258, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %mute to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mute, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %lnot.ext)
  %cmp = icmp eq i32 %7, %lnot.ext
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %mute to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %lnot.ext, ptr %mute, align 4
  %conv = select i1 %tobool.not, i8 -7, i8 -8
  %9 = ptrtoint ptr %bytes to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %bytes, align 1
  %i2c_bus = getelementptr inbounds %struct.snd_pt2258, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_bus, align 4
  %master.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  %bus..i = select i1 %tobool.not.i, ptr %11, ptr %13
  %lock_mutex2.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock_mutex2.i, i32 noundef 0) #6
  %i2c_dev = getelementptr inbounds %struct.snd_pt2258, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_dev, align 4
  %call = call i32 @snd_i2c_sendbytes(ptr noundef %15, ptr noundef nonnull %bytes, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp4.not = icmp eq i32 %call, 1
  %16 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_bus, align 4
  %master.i19 = getelementptr inbounds %struct.snd_i2c_bus, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %master.i19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %master.i19, align 4
  %tobool.not.i20 = icmp eq ptr %19, null
  %bus..i21 = select i1 %tobool.not.i20, ptr %17, ptr %19
  %lock_mutex2.i22 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i21, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i22) #6
  br i1 %cmp4.not, label %if.end.cleanup_crit_edge, label %__error

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

__error:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 164, ptr noundef nonnull @.str.7) #6
  br label %cleanup

cleanup:                                          ; preds = %__error, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %__error ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bytes) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__UNIQUE_ID_author176, !1, !"__UNIQUE_ID_author176", i1 false, i1 false}
!1 = !{!"../sound/i2c/other/pt2258.c", i32 15, i32 1}
!2 = !{ptr @__UNIQUE_ID_description177, !3, !"__UNIQUE_ID_description177", i1 false, i1 false}
!3 = !{!"../sound/i2c/other/pt2258.c", i32 16, i32 1}
!4 = !{ptr @__UNIQUE_ID_file178, !5, !"__UNIQUE_ID_file178", i1 false, i1 false}
!5 = !{!"../sound/i2c/other/pt2258.c", i32 17, i32 1}
!6 = !{ptr @__UNIQUE_ID_license179, !5, !"__UNIQUE_ID_license179", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../sound/i2c/other/pt2258.c", i32 66, i32 2}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/i2c/other/pt2258.c", i32 174, i32 3}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/i2c/other/pt2258.c", i32 175, i32 3}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/i2c/other/pt2258.c", i32 176, i32 3}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/i2c/other/pt2258.c", i32 199, i32 14}
!18 = !{ptr @__ksymtab_snd_pt2258_reset, !19, !"__ksymtab_snd_pt2258_reset", i1 false, i1 false}
!19 = !{!"../sound/i2c/other/pt2258.c", i32 212, i32 1}
!20 = !{ptr @__ksymtab_snd_pt2258_build_controls, !21, !"__ksymtab_snd_pt2258_build_controls", i1 false, i1 false}
!21 = !{!"../sound/i2c/other/pt2258.c", i32 213, i32 1}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/i2c/other/pt2258.c", i32 127, i32 2}
!24 = !{ptr @pt2258_channel_code, !25, !"pt2258_channel_code", i1 false, i1 false}
!25 = !{!"../sound/i2c/other/pt2258.c", i32 23, i32 28}
!26 = !{ptr @pt2258_db_scale, !27, !"pt2258_db_scale", i1 false, i1 false}
!27 = !{!"../sound/i2c/other/pt2258.c", i32 168, i32 14}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/i2c/other/pt2258.c", i32 164, i32 2}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"auto-init"}
