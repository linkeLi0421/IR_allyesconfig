; ModuleID = '/llk/IR_all_yes/sound/drivers/opl3/opl3_oss.c_pt.bc'
source_filename = "../sound/drivers/opl3/opl3_oss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_seq_oss_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_midi_op = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_seq_port_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_opl3 = type { i32, i32, ptr, ptr, i16, ptr, i16, i32, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, %struct.spinlock, ptr, i8, i8, i8, i32, i32, ptr, ptr, ptr, ptr, [32 x ptr], [18 x %struct.snd_opl3_voice], i32, i16, i8, %struct.spinlock, %struct.timer_list, i32, %struct.spinlock }
%struct.snd_opl3_voice = type { i32, i32, i8, i32, i32, i8, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.snd_seq_device = type { ptr, i32, ptr, [80 x i8], i32, ptr, ptr, ptr, %struct.device }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.snd_midi_channel_set = type { ptr, i32, i32, i32, ptr, i8, i8, i8, i8 }
%struct.snd_seq_oss_arg = type { i32, i32, i32, %struct.snd_seq_addr, ptr, i32 }
%struct.snd_seq_addr = type { i8, i8 }
%struct.sbi_instrument = type { i16, i16, i32, [32 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"seq-oss\00", [24 x i8] zeroinitializer }, align 32
@oss_callback = internal constant { %struct.snd_seq_oss_callback, [36 x i8] } { %struct.snd_seq_oss_callback { ptr null, ptr @snd_opl3_open_seq_oss, ptr @snd_opl3_close_seq_oss, ptr @snd_opl3_ioctl_seq_oss, ptr @snd_opl3_load_patch_seq_oss, ptr @snd_opl3_reset_seq_oss, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/drivers/opl3/opl3_oss.c\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013OPL3: Obsolete ioctl(SNDCTL_FM_LOAD_INSTR) used. Fix the program.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013FM Error: Patch record too short\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013FM Error: Invalid instrument number %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Chan%d\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"OPL%i OSS Port\00", [17 x i8] zeroinitializer }, align 32
@opl3_ops = external dso_local constant %struct.snd_midi_op, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1074024719, i64 1076384007, i64 3221508366]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 64769, i64 64771]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 95, i32 40 }
@___asan_gen_.14 = private unnamed_addr constant [13 x i8] c"oss_callback\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 19, i32 42 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 136, i32 6 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 227, i32 4 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 196, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 203, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 209, i32 16 }
@___asan_gen_.33 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 156, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [33 x i8] c"../sound/drivers/opl3/opl3_oss.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 67, i32 16 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @oss_callback, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oss_callback to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_opl3_init_seq_oss(ptr noundef %opl3, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  %callbacks.i = alloca %struct.snd_seq_port_callback, align 4
  %name.i = alloca [32 x i8], align 1
  %dev = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev) #6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %dev, align 4, !annotation !33
  %card = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 15
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 4
  %call = call i32 @snd_seq_device_new(ptr noundef %2, i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 44, ptr noundef nonnull %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %oss_seq_dev = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 23
  %5 = ptrtoint ptr %oss_seq_dev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %oss_seq_dev, align 4
  %name1 = getelementptr inbounds %struct.snd_seq_device, ptr %4, i32 0, i32 3
  %call2 = call i32 @strscpy(ptr noundef %name1, ptr noundef %name, i32 noundef 80) #6
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 1040
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %add.ptr, align 4
  %hardware = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 4
  %9 = ptrtoint ptr %hardware to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hardware, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %10)
  %cmp3 = icmp ult i16 %10, 768
  %not.cmp3 = xor i1 %cmp3, true
  %spec.select = zext i1 %not.cmp3 to i32
  %spec.select29 = select i1 %cmp3, i32 9, i32 18
  %11 = getelementptr i8, ptr %7, i32 1044
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.select, ptr %11, align 4
  %13 = getelementptr i8, ptr %7, i32 1048
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select29, ptr %13, align 4
  %oper = getelementptr i8, ptr %7, i32 1052
  %15 = call ptr @memcpy(ptr %oper, ptr @oss_callback, i32 28)
  %private_data = getelementptr i8, ptr %7, i32 1080
  %16 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %opl3, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %callbacks.i) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i) #6
  %17 = call ptr @memset(ptr %name.i, i32 255, i32 32)
  %18 = ptrtoint ptr %hardware to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %hardware, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %19)
  %cmp.i = icmp ult i16 %19, 768
  %cond.i = select i1 %cmp.i, i32 9, i32 18
  %call.i = call ptr @snd_midi_channel_alloc_set(i32 noundef %cond.i) #6
  %oss_chset.i = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 24
  %20 = ptrtoint ptr %oss_chset.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %oss_chset.i, align 4
  %cmp3.i = icmp eq ptr %call.i, null
  br i1 %cmp3.i, label %if.end.if.then10_crit_edge, label %if.end.i

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

if.end.i:                                         ; preds = %if.end
  %21 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %callbacks.i, i32 0, i32 7
  %22 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %callbacks.i, i32 0, i32 6
  %23 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %callbacks.i, i32 0, i32 1
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %opl3, ptr %call.i, align 4
  %25 = call ptr @memset(ptr %callbacks.i, i32 0, i32 24)
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @snd_opl3_oss_event_input, ptr %22, align 4
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @snd_opl3_oss_free_port, ptr %21, align 4
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %opl3, ptr %23, align 4
  %29 = ptrtoint ptr %hardware to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %hardware, align 4
  %31 = lshr i16 %30, 8
  %32 = zext i16 %31 to i32
  %call9.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name.i, ptr noundef nonnull @.str.9, i32 noundef %32) #6
  %seq_client.i = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 20
  %33 = ptrtoint ptr %seq_client.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %seq_client.i, align 4
  %35 = ptrtoint ptr %oss_chset.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %oss_chset.i, align 4
  %client.i = getelementptr inbounds %struct.snd_midi_channel_set, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %client.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %34, ptr %client.i, align 4
  %38 = load i32, ptr %seq_client.i, align 4
  %call13.i = call i32 @snd_seq_event_port_attach(i32 noundef %38, ptr noundef nonnull %callbacks.i, i32 noundef 2, i32 noundef 327686, i32 noundef %cond.i, i32 noundef %cond.i, ptr noundef nonnull %name.i) #6
  %39 = ptrtoint ptr %oss_chset.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %oss_chset.i, align 4
  %port.i = getelementptr inbounds %struct.snd_midi_channel_set, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call13.i, ptr %port.i, align 4
  %42 = load ptr, ptr %oss_chset.i, align 4
  %port16.i = getelementptr inbounds %struct.snd_midi_channel_set, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %port16.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp17.i = icmp slt i32 %44, 0
  br i1 %cmp17.i, label %if.then19.i, label %snd_opl3_oss_create_port.exit

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @snd_midi_channel_free_set(ptr noundef %42) #6
  br label %if.then10

snd_opl3_oss_create_port.exit:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %callbacks.i) #6
  br label %cleanup

if.then10:                                        ; preds = %if.then19.i, %if.end.if.then10_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %callbacks.i) #6
  %45 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %card, align 4
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  %call12 = call i32 @snd_device_register(ptr noundef %46, ptr noundef %48) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %snd_opl3_oss_create_port.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_device_new(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @snd_opl3_free_seq_oss(ptr nocapture noundef %opl3) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %oss_seq_dev = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 23
  %0 = ptrtoint ptr %oss_seq_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oss_seq_dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %oss_seq_dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %oss_seq_dev, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_opl3_open_seq_oss(ptr noundef writeonly %arg, ptr noundef %closure) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !34

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 136, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %call = tail call i32 @snd_opl3_synth_setup(ptr noundef %closure) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end23.cleanup_crit_edge, label %if.end25

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end23
  %private_data = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %arg, i32 0, i32 4
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %closure, ptr %private_data, align 4
  %oss_chset = getelementptr inbounds %struct.snd_opl3, ptr %closure, i32 0, i32 24
  %1 = ptrtoint ptr %oss_chset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %oss_chset, align 4
  %client = getelementptr inbounds %struct.snd_midi_channel_set, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %client, align 4
  %conv = trunc i32 %4 to i8
  %addr = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %arg, i32 0, i32 3
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %addr, align 4
  %6 = load ptr, ptr %oss_chset, align 4
  %port = getelementptr inbounds %struct.snd_midi_channel_set, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %conv28 = trunc i32 %8 to i8
  %port30 = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %arg, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %port30 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv28, ptr %port30, align 1
  %call31 = tail call i32 @snd_opl3_synth_use_inc(ptr noundef %closure) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end25.cleanup_crit_edge, label %if.end35

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end35:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %synth_mode = getelementptr inbounds %struct.snd_opl3, ptr %closure, i32 0, i32 19
  %10 = ptrtoint ptr %synth_mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %synth_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end25.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ 0, %if.end35 ], [ %call, %if.end23.cleanup_crit_edge ], [ %call31, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_opl3_close_seq_oss(ptr noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !34

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 161, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %private_data = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %arg, i32 0, i32 4
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @snd_opl3_synth_cleanup(ptr noundef %1) #6
  tail call void @snd_opl3_synth_use_dec(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ 0, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_opl3_ioctl_seq_oss(ptr noundef readnone %arg, i32 noundef %cmd, i32 noundef %ioarg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !34

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 223, i32 noundef 9, ptr noundef null) #6
  br label %return

if.end23:                                         ; preds = %entry
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %sw.default [
    i32 1076384007, label %sw.bb
    i32 -1073458930, label %if.end23.return_crit_edge
    i32 1074024719, label %sw.bb25
  ]

if.end23.return_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 229, ptr noundef nonnull @.str.2) #6
  br label %return

sw.bb25:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.default:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb25, %sw.bb, %if.end23.return_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -22, %sw.default ], [ 0, %sw.bb25 ], [ -22, %sw.bb ], [ 2147483647, %if.end23.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_opl3_load_patch_seq_oss(ptr noundef readonly %arg, i32 noundef %format, ptr noundef %buf, i32 noundef %offs, i32 noundef %count) #0 align 64 {
entry:
  %sbi = alloca %struct.sbi_instrument, align 4
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sbi) #6
  %0 = call ptr @memset(ptr %sbi, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #6
  %tobool.not = icmp eq ptr %arg, null
  %1 = call ptr @memset(ptr %name, i32 255, i32 32)
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !34

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 184, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %arg, i32 0, i32 4
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = zext i32 %format to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %format, label %if.end23.cleanup_crit_edge [
    i32 64769, label %if.end23.if.end29_crit_edge
    i32 64771, label %if.then26
  ]

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end23.if.end29_crit_edge
  %type.0 = phi i32 [ 2, %if.then26 ], [ 1, %if.end23.if.end29_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %count)
  %cmp30 = icmp slt i32 %count, 40
  br i1 %cmp30, label %if.then31, label %if.then.i

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 196, ptr noundef nonnull @.str.3) #6
  br label %cleanup

if.then.i:                                        ; preds = %if.end29
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 40, i32 -1226833920) #9, !srcloc !35
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !36

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sbi, i32 noundef 40) #6
  %6 = call i32 @llvm.read_register.i32(metadata !23) #6
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !37
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !38
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %sbi, ptr noundef %buf, i32 noundef 40) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #6, !srcloc !38
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end35, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !36

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 40, %if.then.i.if.then11.i.i_crit_edge ], [ 40, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 40, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %sbi, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end35:                                         ; preds = %if.end.i.i
  %channel = getelementptr inbounds %struct.sbi_instrument, ptr %sbi, i32 0, i32 2
  %10 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %11)
  %12 = icmp ugt i32 %11, 255
  br i1 %12, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @.str.4, i32 noundef %11) #6
  br label %cleanup

if.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %13 = call ptr @memset(ptr %name, i32 0, i32 32)
  %call44 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.5, i32 noundef %11)
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel, align 4
  %operators = getelementptr inbounds %struct.sbi_instrument, ptr %sbi, i32 0, i32 3
  %call48 = call i32 @snd_opl3_load_patch(ptr noundef %3, i32 noundef %15, i32 noundef 127, i32 noundef %type.0, ptr noundef nonnull %name, ptr noundef null, ptr noundef %operators) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  %call48. = select i1 %cmp49, i32 %call48, i32 40
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then39, %if.then11.i.i, %if.then31, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -22, %if.then31 ], [ -22, %if.then39 ], [ -22, %if.end23.cleanup_crit_edge ], [ %call48., %if.end41 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sbi) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_opl3_reset_seq_oss(ptr noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !34

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 248, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %. = phi i32 [ -6, %do.end ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_opl3_synth_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_opl3_synth_use_inc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_opl3_synth_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_opl3_synth_use_dec(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_printk(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_opl3_load_patch(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_midi_channel_alloc_set(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_opl3_oss_event_input(ptr noundef %ev, i32 noundef %direct, ptr nocapture noundef readonly %private_data, i32 noundef %atomic, i32 noundef %hop) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %1)
  %cmp.not = icmp eq i8 %1, 51
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %oss_chset = getelementptr inbounds %struct.snd_opl3, ptr %private_data, i32 0, i32 24
  %2 = ptrtoint ptr %oss_chset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oss_chset, align 4
  tail call void @snd_midi_process_event(ptr noundef nonnull @opl3_ops, ptr noundef %ev, ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_opl3_oss_free_port(ptr nocapture noundef readonly %private_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %oss_chset = getelementptr inbounds %struct.snd_opl3, ptr %private_data, i32 0, i32 24
  %0 = ptrtoint ptr %oss_chset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oss_chset, align 4
  tail call void @snd_midi_channel_free_set(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_event_port_attach(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_midi_channel_free_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_midi_process_event(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21}
!llvm.named.register.sp = !{!23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/drivers/opl3/opl3_oss.c", i32 95, i32 40}
!2 = !{ptr @oss_callback, !3, !"oss_callback", i1 false, i1 false}
!3 = !{!"../sound/drivers/opl3/opl3_oss.c", i32 19, i32 42}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/drivers/opl3/opl3_oss.c", i32 136, i32 6}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/drivers/opl3/opl3_oss.c", i32 227, i32 4}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/drivers/opl3/opl3_oss.c", i32 196, i32 3}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/drivers/opl3/opl3_oss.c", i32 203, i32 3}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/drivers/opl3/opl3_oss.c", i32 209, i32 16}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!16 = distinct !{null, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/drivers/opl3/opl3_oss.c", i32 67, i32 16}
!23 = !{!"sp"}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"auto-init"}
!34 = !{!"branch_weights", i32 1, i32 2000}
!35 = !{i64 2152754085, i64 2152754110}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{i64 5245579}
!38 = !{i64 5245776}
!39 = !{i64 2152731009}
