; ModuleID = '/llk/IR_all_yes/sound/synth/emux/emux_hwdep.c_pt.bc'
source_filename = "../sound/synth/emux/emux_hwdep.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_emux = type { ptr, i32, i32, i32, i32, %struct.snd_emux_operators, ptr, i32, i32, i32, i8, i32, ptr, i32, ptr, ptr, i32, %struct.spinlock, %struct.mutex, i32, [32 x i32], [32 x ptr], i32, ptr, ptr, %struct.timer_list, i32, ptr, ptr, ptr }
%struct.snd_emux_operators = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_hwdep = type { ptr, %struct.list_head, i32, [32 x i8], [80 x i8], i32, i32, i32, %struct.snd_hwdep_ops, %struct.wait_queue_head, ptr, ptr, %struct.device, %struct.mutex, i32, i32, i8 }
%struct.snd_hwdep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.snd_emux_misc_mode = type { i32, i32, i32, i32 }
%struct.soundfont_patch_info = type { i16, i16, i16, i16, i32, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.snd_emux_port = type { %struct.snd_midi_channel_set, ptr, i8, i32, i32, [21 x i32], ptr, ptr }
%struct.snd_midi_channel_set = type { ptr, i32, i32, i32, ptr, i8, i8, i8, i8 }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Emux WaveTable\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/synth/emux/emux_hwdep.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 18562, i64 18563, i64 1074022532, i64 2147764352, i64 3222292609, i64 3222292612]
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 119, i32 33 }
@___asan_gen_.9 = private constant [33 x i8] c"../sound/synth/emux/emux_hwdep.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 86, i32 10 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 156, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.4], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emux_init_hwdep(ptr noundef %emu) local_unnamed_addr #0 align 64 {
entry:
  %hw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hw) #5
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %hw, align 4, !annotation !21
  %1 = ptrtoint ptr %emu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %emu, align 4
  %hwdep_idx = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 11
  %3 = ptrtoint ptr %hwdep_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hwdep_idx, align 4
  %call = call i32 @snd_hwdep_new(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %4, ptr noundef nonnull %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %hwdep = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 12
  %7 = ptrtoint ptr %hwdep to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %hwdep, align 4
  %name = getelementptr inbounds %struct.snd_hwdep, ptr %6, i32 0, i32 4
  %8 = call ptr @memcpy(ptr %name, ptr @.str, i32 15)
  %iface = getelementptr inbounds %struct.snd_hwdep, ptr %6, i32 0, i32 5
  %9 = ptrtoint ptr %iface to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 11, ptr %iface, align 8
  %ioctl = getelementptr inbounds %struct.snd_hwdep, ptr %6, i32 0, i32 8, i32 6
  %10 = ptrtoint ptr %ioctl to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @snd_emux_hwdep_ioctl, ptr %ioctl, align 4
  %ioctl_compat = getelementptr inbounds %struct.snd_hwdep, ptr %6, i32 0, i32 8, i32 7
  %11 = ptrtoint ptr %ioctl_compat to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @snd_emux_hwdep_ioctl, ptr %ioctl_compat, align 4
  %exclusive = getelementptr inbounds %struct.snd_hwdep, ptr %6, i32 0, i32 16
  %12 = ptrtoint ptr %exclusive to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %exclusive, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %exclusive, align 4
  %private_data = getelementptr inbounds %struct.snd_hwdep, ptr %6, i32 0, i32 10
  %13 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %emu, ptr %private_data, align 4
  %14 = ptrtoint ptr %emu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %emu, align 4
  %call4 = call i32 @snd_card_register(ptr noundef %15) #5
  %16 = call i32 @llvm.smin.i32(i32 %call4, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %16, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hwdep_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emux_hwdep_ioctl(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %info.i = alloca %struct.snd_emux_misc_mode, align 4
  %patch.i = alloca %struct.soundfont_patch_info, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_hwdep, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 -2147202944, label %sw.bb
    i32 -1072674687, label %sw.bb2
    i32 18562, label %sw.bb4
    i32 18563, label %sw.bb6
    i32 1074022532, label %sw.bb9
    i32 -1072674684, label %sw.bb27
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 86) #5
  %4 = tail call i32 @llvm.read_register.i32(metadata !11) #5
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !22
  %and.i = and i32 %6, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  %7 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 65536, i32 -1226833921) #5, !srcloc !25
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %8 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %patch.i) #5
  %9 = getelementptr inbounds %struct.soundfont_patch_info, ptr %patch.i, i32 0, i32 3
  %10 = getelementptr inbounds %struct.soundfont_patch_info, ptr %patch.i, i32 0, i32 4
  %11 = getelementptr inbounds %struct.soundfont_patch_info, ptr %patch.i, i32 0, i32 5
  %12 = call ptr @memset(ptr %patch.i, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #5
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i.i, label %sw.bb2.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb2.if.then11.i.i.i_crit_edge:                 ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb2
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 16, i32 -1226833920) #8, !srcloc !26
  %asmresult.i.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !27

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %patch.i, i32 noundef 16) #5
  %14 = call i32 @llvm.read_register.i32(metadata !11) #5
  %and.i.i.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #3, !srcloc !22
  %and.i.i.i.i.i = and i32 %16, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #5, !srcloc !23
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %patch.i, ptr noundef %8, i32 noundef 16) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #5, !srcloc !23
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !27

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb2.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 16, %sw.bb2.if.then11.i.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 16, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %patch.i, i32 %sub.i.i.i
  %17 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %snd_emux_hwdep_load_patch.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  %18 = ptrtoint ptr %patch.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %patch.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -764, i16 %19)
  %cmp.i = icmp eq i16 %19, -764
  br i1 %cmp.i, label %if.then2.i, label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %sflist.i = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 14
  %20 = ptrtoint ptr %sflist.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sflist.i, align 4
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %10, align 4
  %add.i = add i32 %23, 16
  %call3.i = call i32 @snd_soundfont_load_guspatch(ptr noundef %21, ptr noundef %8, i32 noundef %add.i, i32 noundef 4097) #5
  br label %snd_emux_hwdep_load_patch.exit

if.end4.i:                                        ; preds = %if.end.i
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %25)
  %26 = icmp ult i16 %25, 9
  br i1 %26, label %if.then12.i, label %if.else.i

if.then12.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %sflist13.i = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 14
  %27 = ptrtoint ptr %sflist13.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sflist13.i, align 4
  %29 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %10, align 4
  %add15.i = add i32 %30, 16
  %call16.i = call i32 @snd_soundfont_load(ptr noundef %28, ptr noundef %8, i32 noundef %add15.i, i32 noundef 4097) #5
  %31 = call i32 @llvm.smin.i32(i32 %call16.i, i32 0) #5
  br label %snd_emux_hwdep_load_patch.exit

if.else.i:                                        ; preds = %if.end4.i
  %load_fx.i = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 5, i32 12
  %32 = ptrtoint ptr %load_fx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %load_fx.i, align 4
  %tobool21.not.i = icmp eq ptr %33, null
  br i1 %tobool21.not.i, label %if.else.i.snd_emux_hwdep_load_patch.exit_crit_edge, label %if.then22.i

if.else.i.snd_emux_hwdep_load_patch.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_emux_hwdep_load_patch.exit

if.then22.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv26.i = sext i16 %25 to i32
  %34 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %9, align 2
  %conv27.i = sext i16 %35 to i32
  %36 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %10, align 4
  %add29.i = add i32 %37, 16
  %call30.i = call i32 %33(ptr noundef %1, i32 noundef %conv26.i, i32 noundef %conv27.i, ptr noundef %8, i32 noundef %add29.i) #5
  br label %snd_emux_hwdep_load_patch.exit

snd_emux_hwdep_load_patch.exit:                   ; preds = %if.then22.i, %if.else.i.snd_emux_hwdep_load_patch.exit_crit_edge, %if.then12.i, %if.then2.i, %if.then11.i.i.i
  %retval.0.i = phi i32 [ %call3.i, %if.then2.i ], [ %call30.i, %if.then22.i ], [ %31, %if.then12.i ], [ -22, %if.else.i.snd_emux_hwdep_load_patch.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %patch.i) #5
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sflist = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 14
  %38 = ptrtoint ptr %sflist to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sflist, align 4
  %call5 = tail call i32 @snd_soundfont_remove_samples(ptr noundef %39) #5
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sflist7 = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 14
  %40 = ptrtoint ptr %sflist7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sflist7, align 4
  %call8 = tail call i32 @snd_soundfont_remove_unlocked(ptr noundef %41) #5
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %memhdr = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 27
  %42 = ptrtoint ptr %memhdr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %memhdr, align 4
  %tobool.not = icmp eq ptr %43, null
  br i1 %tobool.not, label %sw.bb9.cleanup_crit_edge, label %if.then

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 @snd_util_mem_avail(ptr noundef nonnull %43) #5
  %44 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 98) #5
  %45 = tail call i32 @llvm.read_register.i32(metadata !11) #5
  %and.i.i.i37 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i37 to ptr
  %cpu_domain.i.i38 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 4
  %47 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i38) #3, !srcloc !22
  %and.i39 = and i32 %47, -13
  %or.i40 = or i32 %and.i39, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i40) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  %48 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %44, i32 %call11, i32 -1226833921) #5, !srcloc !28
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  br label %cleanup

sw.bb27:                                          ; preds = %entry
  %49 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #5
  %50 = getelementptr inbounds %struct.snd_emux_misc_mode, ptr %info.i, i32 0, i32 1
  %51 = getelementptr inbounds %struct.snd_emux_misc_mode, ptr %info.i, i32 0, i32 2
  %52 = call ptr @memset(ptr %info.i, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #5
  %call.i.i.i41 = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i.i41, label %sw.bb27.if.then11.i.i.i56_crit_edge, label %land.lhs.true.i.i.i44

sw.bb27.if.then11.i.i.i56_crit_edge:              ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i56

land.lhs.true.i.i.i44:                            ; preds = %sw.bb27
  %53 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %49, i32 16, i32 -1226833920) #8, !srcloc !26
  %asmresult.i.i.i42 = extractvalue { i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i42)
  %cmp.i.i.i43 = icmp eq i32 %asmresult.i.i.i42, 0
  br i1 %cmp.i.i.i43, label %if.end.i.i.i52, label %land.lhs.true.i.i.i44.if.then11.i.i.i56_crit_edge, !prof !27

land.lhs.true.i.i.i44.if.then11.i.i.i56_crit_edge: ; preds = %land.lhs.true.i.i.i44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i56

if.end.i.i.i52:                                   ; preds = %land.lhs.true.i.i.i44
  %call.i.i.i.i45 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info.i, i32 noundef 16) #5
  %54 = call i32 @llvm.read_register.i32(metadata !11) #5
  %and.i.i.i.i.i.i.i46 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i.i.i46 to ptr
  %cpu_domain.i.i.i.i.i.i47 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 4
  %56 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i47) #3, !srcloc !22
  %and.i.i.i.i.i48 = and i32 %56, -13
  %or.i.i.i.i.i49 = or i32 %and.i.i.i.i.i48, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i49) #5, !srcloc !23
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  %call1.i.i.i.i50 = call i32 @arm_copy_from_user(ptr noundef nonnull %info.i, ptr noundef %49, i32 noundef 16) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #5, !srcloc !23
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i50)
  %tobool4.not.i.i.i51 = icmp eq i32 %call1.i.i.i.i50, 0
  br i1 %tobool4.not.i.i.i51, label %if.end.i57, label %if.end.i.i.i52.if.then11.i.i.i56_crit_edge, !prof !27

if.end.i.i.i52.if.then11.i.i.i56_crit_edge:       ; preds = %if.end.i.i.i52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i56

if.then11.i.i.i56:                                ; preds = %if.end.i.i.i52.if.then11.i.i.i56_crit_edge, %land.lhs.true.i.i.i44.if.then11.i.i.i56_crit_edge, %sw.bb27.if.then11.i.i.i56_crit_edge
  %res.03.i.i.i53 = phi i32 [ %call1.i.i.i.i50, %if.end.i.i.i52.if.then11.i.i.i56_crit_edge ], [ 16, %sw.bb27.if.then11.i.i.i56_crit_edge ], [ 16, %land.lhs.true.i.i.i44.if.then11.i.i.i56_crit_edge ]
  %sub.i.i.i54 = sub i32 16, %res.03.i.i.i53
  %add.ptr.i.i.i55 = getelementptr i8, ptr %info.i, i32 %sub.i.i.i54
  %57 = call ptr @memset(ptr %add.ptr.i.i.i55, i32 0, i32 %res.03.i.i.i53)
  br label %snd_emux_hwdep_misc_mode.exit

if.end.i57:                                       ; preds = %if.end.i.i.i52
  %58 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %59)
  %60 = icmp ugt i32 %59, 20
  br i1 %60, label %if.end.i57.snd_emux_hwdep_misc_mode.exit_crit_edge, label %if.end4.i59

if.end.i57.snd_emux_hwdep_misc_mode.exit_crit_edge: ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_emux_hwdep_misc_mode.exit

if.end4.i59:                                      ; preds = %if.end.i57
  %61 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %59, i32 21) #5, !srcloc !29
  %and.i58 = and i32 %61, %59
  %62 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %and.i58, ptr %50, align 4
  %63 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %info.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp11.i = icmp slt i32 %64, 0
  %num_ports.i = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 3
  %65 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_ports.i, align 4
  br i1 %cmp11.i, label %for.cond.preheader.i, label %if.else.i60

for.cond.preheader.i:                             ; preds = %if.end4.i59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp1357.i = icmp sgt i32 %66, 0
  br i1 %cmp1357.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.snd_emux_hwdep_misc_mode.exit_crit_edge

for.cond.preheader.i.snd_emux_hwdep_misc_mode.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_emux_hwdep_misc_mode.exit

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.058.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %67 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %51, align 4
  %arrayidx.i = getelementptr %struct.snd_emux, ptr %1, i32 0, i32 21, i32 %i.058.i
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i, align 4
  %71 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %50, align 4
  %arrayidx15.i = getelementptr %struct.snd_emux_port, ptr %70, i32 0, i32 5, i32 %72
  %73 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %68, ptr %arrayidx15.i, align 4
  %inc.i = add nuw nsw i32 %i.058.i, 1
  %74 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_ports.i, align 4
  %cmp13.i = icmp slt i32 %inc.i, %75
  br i1 %cmp13.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.snd_emux_hwdep_misc_mode.exit_crit_edge

for.body.i.snd_emux_hwdep_misc_mode.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_emux_hwdep_misc_mode.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.else.i60:                                      ; preds = %if.end4.i59
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %66)
  %cmp18.i = icmp slt i32 %64, %66
  br i1 %cmp18.i, label %if.then19.i, label %if.else.i60.snd_emux_hwdep_misc_mode.exit_crit_edge

if.else.i60.snd_emux_hwdep_misc_mode.exit_crit_edge: ; preds = %if.else.i60
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_emux_hwdep_misc_mode.exit

if.then19.i:                                      ; preds = %if.else.i60
  call void @__sanitizer_cov_trace_pc() #7
  %76 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %64, i32 %66) #5, !srcloc !29
  %and33.i = and i32 %76, %64
  %77 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %51, align 4
  %arrayidx38.i = getelementptr %struct.snd_emux, ptr %1, i32 0, i32 21, i32 %and33.i
  %79 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx38.i, align 4
  %81 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %50, align 4
  %arrayidx41.i = getelementptr %struct.snd_emux_port, ptr %80, i32 0, i32 5, i32 %82
  %83 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %78, ptr %arrayidx41.i, align 4
  br label %snd_emux_hwdep_misc_mode.exit

snd_emux_hwdep_misc_mode.exit:                    ; preds = %if.then19.i, %if.else.i60.snd_emux_hwdep_misc_mode.exit_crit_edge, %for.body.i.snd_emux_hwdep_misc_mode.exit_crit_edge, %for.cond.preheader.i.snd_emux_hwdep_misc_mode.exit_crit_edge, %if.end.i57.snd_emux_hwdep_misc_mode.exit_crit_edge, %if.then11.i.i.i56
  %retval.0.i61 = phi i32 [ -22, %if.end.i57.snd_emux_hwdep_misc_mode.exit_crit_edge ], [ 0, %if.else.i60.snd_emux_hwdep_misc_mode.exit_crit_edge ], [ 0, %if.then19.i ], [ -14, %if.then11.i.i.i56 ], [ 0, %for.cond.preheader.i.snd_emux_hwdep_misc_mode.exit_crit_edge ], [ 0, %for.body.i.snd_emux_hwdep_misc_mode.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #5
  br label %cleanup

cleanup:                                          ; preds = %snd_emux_hwdep_misc_mode.exit, %if.then, %sw.bb9.cleanup_crit_edge, %sw.bb6, %sw.bb4, %snd_emux_hwdep_load_patch.exit, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i61, %snd_emux_hwdep_misc_mode.exit ], [ %48, %if.then ], [ %retval.0.i, %snd_emux_hwdep_load_patch.exit ], [ %7, %sw.bb ], [ 0, %sw.bb9.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb6 ], [ 0, %sw.bb4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emux_delete_hwdep(ptr nocapture noundef %emu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hwdep = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 12
  %0 = ptrtoint ptr %hwdep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwdep, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %emu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %emu, align 4
  tail call void @snd_device_free(ptr noundef %3, ptr noundef nonnull %1) #5
  %4 = ptrtoint ptr %hwdep to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %hwdep, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_device_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soundfont_remove_samples(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soundfont_remove_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_util_mem_avail(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soundfont_load_guspatch(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soundfont_load(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9}
!llvm.named.register.sp = !{!11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/synth/emux/emux_hwdep.c", i32 119, i32 33}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/synth/emux/emux_hwdep.c", i32 86, i32 10}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!6 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!11 = !{!"sp"}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"auto-init"}
!22 = !{i64 5229081}
!23 = !{i64 5229278}
!24 = !{i64 2152714511}
!25 = !{i64 2153936285, i64 2153936565, i64 2153936899, i64 2153937233}
!26 = !{i64 2152737587, i64 2152737612}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 2153947639, i64 2153947919, i64 2153948253, i64 2153948587}
!29 = !{i64 930829, i64 930846}
