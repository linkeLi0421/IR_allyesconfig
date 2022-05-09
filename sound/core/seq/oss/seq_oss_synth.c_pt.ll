; ModuleID = '/llk/IR_all_yes/sound/core/seq/oss/seq_oss_synth.c_pt.bc'
source_filename = "../sound/core/seq/oss/seq_oss_synth.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.seq_oss_synth = type { i32, i32, i32, i32, [30 x i8], %struct.snd_seq_oss_callback, i32, ptr, %struct.atomic_t }
%struct.snd_seq_oss_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.seq_oss_devinfo = type { i32, i32, i32, i32, %struct.snd_seq_addr, i32, i32, i32, i32, [16 x %struct.seq_oss_synthinfo], i32, ptr, ptr, ptr }
%struct.snd_seq_addr = type { i8, i8 }
%struct.seq_oss_synthinfo = type { %struct.snd_seq_oss_arg, ptr, ptr, i32, i32, i32, i32 }
%struct.snd_seq_oss_arg = type { i32, i32, i32, %struct.snd_seq_addr, ptr, i32 }
%struct.seq_oss_chinfo = type { i32, i32 }
%struct.snd_seq_event = type { i8, i8, i8, i8, %union.snd_seq_timestamp, %struct.snd_seq_addr, %struct.snd_seq_addr, %union.anon.69 }
%union.snd_seq_timestamp = type { %struct.snd_seq_real_time }
%struct.snd_seq_real_time = type { i32, i32 }
%union.anon.69 = type { %struct.snd_seq_ev_ctrl }
%struct.snd_seq_ev_ctrl = type { i8, i8, i8, i8, i32, i32 }
%struct.seq_oss_synth_sysex = type { i32, i32, [128 x i8] }
%struct.midi_info = type { [30 x i8], i32, i32, i32, [18 x i32] }
%struct.synth_info = type { [30 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [19 x i32] }

@midi_synth_dev = internal global { %struct.seq_oss_synth, [40 x i8] } { %struct.seq_oss_synth { i32 -1, i32 2, i32 0, i32 16, [30 x i8] c"MIDI\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.snd_seq_oss_callback zeroinitializer, i32 0, ptr null, %struct.atomic_t zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@register_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@max_synth_devs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@synth_devs = internal global { [16 x ptr], [32 x i8] } zeroinitializer, align 32
@snd_seq_oss_synth_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013ALSA: seq_oss: no more synth slot\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snd_seq_oss_synth_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sound/core/seq/oss/seq_oss_synth.c\00", [61 x i8] zeroinitializer }, align 32
@snd_seq_oss_synth_probe._entry_ptr = internal global ptr @snd_seq_oss_synth_probe._entry, section ".printk_index", align 4
@snd_seq_oss_synth_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013ALSA: seq_oss: can't unregister synth\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_seq_oss_synth_remove\00", [39 x i8] zeroinitializer }, align 32
@snd_seq_oss_synth_remove._entry_ptr = internal global ptr @snd_seq_oss_synth_remove._entry, section ".printk_index", align 4
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\0ANumber of synth devices: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\0Asynth %d: \00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"*empty*\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[%s]\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"  type 0x%x : subtype 0x%x : voices %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"  capabilities : ioctl %s / load_patch %s\0A\00", [53 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"register_lock\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"midi_synth_dev\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 60, i32 29 }
@___asan_gen_.15 = private unnamed_addr constant [14 x i8] c"register_lock\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [15 x i8] c"max_synth_devs\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 58, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"synth_devs\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 59, i32 30 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 121, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 154, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 648, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 650, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 653, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 656, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 657, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 660, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [38 x i8] c"../sound/core/seq/oss/seq_oss_synth.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 68, i32 8 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @snd_seq_oss_synth_probe._entry, ptr @snd_seq_oss_synth_probe._entry_ptr, ptr @snd_seq_oss_synth_remove._entry, ptr @snd_seq_oss_synth_remove._entry_ptr, ptr @midi_synth_dev, ptr @register_lock, ptr @max_synth_devs, ptr @synth_devs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midi_synth_dev to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_synth_devs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_devs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_seq_oss_synth_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_seq_oss_synth_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_oss_synth_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.seq_oss_synth, ptr @midi_synth_dev, i32 0, i32 8), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.seq_oss_synth, ptr @midi_synth_dev, i32 0, i32 8), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_synth_probe(ptr noundef %_dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 88) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr1 = getelementptr i8, ptr %_dev, i32 928
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %call7.i.i, align 8
  %2 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr1, align 4
  %synth_type = getelementptr inbounds %struct.seq_oss_synth, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %synth_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %synth_type, align 4
  %subtype = getelementptr i8, ptr %_dev, i32 932
  %5 = ptrtoint ptr %subtype to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %subtype, align 4
  %synth_subtype = getelementptr inbounds %struct.seq_oss_synth, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %synth_subtype to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %synth_subtype, align 8
  %nvoices = getelementptr i8, ptr %_dev, i32 936
  %8 = ptrtoint ptr %nvoices to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nvoices, align 4
  %nr_voices = getelementptr inbounds %struct.seq_oss_synth, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %nr_voices to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %nr_voices, align 4
  %oper = getelementptr inbounds %struct.seq_oss_synth, ptr %call7.i.i, i32 0, i32 5
  %oper2 = getelementptr i8, ptr %_dev, i32 940
  %11 = call ptr @memcpy(ptr %oper, ptr %oper2, i32 28)
  %private_data = getelementptr i8, ptr %_dev, i32 968
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data, align 4
  %private_data3 = getelementptr inbounds %struct.seq_oss_synth, ptr %call7.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %private_data3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %private_data3, align 8
  %opened = getelementptr inbounds %struct.seq_oss_synth, ptr %call7.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %opened to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %opened, align 4
  %use_lock = getelementptr inbounds %struct.seq_oss_synth, ptr %call7.i.i, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock, i32 noundef 4) #9
  %16 = ptrtoint ptr %use_lock to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %use_lock, align 4
  %name = getelementptr inbounds %struct.seq_oss_synth, ptr %call7.i.i, i32 0, i32 4
  %name4 = getelementptr i8, ptr %_dev, i32 -100
  %call6 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %name4, i32 noundef 30) #9
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @register_lock) #9
  %17 = load i32, ptr @max_synth_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1377 = icmp sgt i32 %17, 0
  br i1 %cmp1377, label %if.end.for.body_crit_edge, label %if.end.if.end30_crit_edge

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.078 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr @synth_devs, i32 0, i32 %i.078
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %cmp15 = icmp eq ptr %19, null
  br i1 %cmp15, label %for.body.if.end32_crit_edge, label %for.inc

for.body.if.end32_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.078, 1
  %exitcond.not = icmp eq i32 %inc, %17
  br i1 %exitcond.not, label %if.then21, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.then21:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %17)
  %cmp22 = icmp sgt i32 %17, 15
  br i1 %cmp22, label %if.then24, label %if.then21.if.end30_crit_edge

if.then21.if.end30_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call10) #9
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end30:                                         ; preds = %if.then21.if.end30_crit_edge, %if.end.if.end30_crit_edge
  %i.0.lcssa83 = phi i32 [ %17, %if.then21.if.end30_crit_edge ], [ 0, %if.end.if.end30_crit_edge ]
  %inc31 = add nsw i32 %17, 1
  store i32 %inc31, ptr @max_synth_devs, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end30, %for.body.if.end32_crit_edge
  %i.076 = phi i32 [ %i.0.lcssa83, %if.end30 ], [ %i.078, %for.body.if.end32_crit_edge ]
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %i.076, ptr %call7.i.i, align 8
  %arrayidx34 = getelementptr [16 x ptr], ptr @synth_devs, i32 0, i32 %i.076
  %21 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %arrayidx34, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call10) #9
  %driver_data = getelementptr i8, ptr %_dev, i32 -16
  %22 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %driver_data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %i.076)
  %cmp35 = icmp slt i32 %i.076, 32
  br i1 %cmp35, label %if.then37, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %call40 = tail call i32 @snd_oss_info_register(i32 noundef 1, i32 noundef %i.076, ptr noundef %name) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.end32.cleanup_crit_edge, %if.then24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then24 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then37 ], [ 0, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_oss_info_register(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_synth_remove(ptr nocapture noundef readonly %_dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr i8, ptr %_dev, i32 -16
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @register_lock) #9
  %2 = load i32, ptr @max_synth_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp660 = icmp sgt i32 %2, 0
  br i1 %cmp660, label %entry.for.body_crit_edge, label %entry.if.then12_crit_edge

entry.if.then12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %index.061 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr @synth_devs, i32 0, i32 %index.061
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %cmp8 = icmp eq ptr %4, %1
  br i1 %cmp8, label %if.end18, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %index.061, 1
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %for.inc.if.then12_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.then12_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.then12:                                        ; preds = %for.inc.if.then12_crit_edge, %entry.if.then12_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call3) #9
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #13
  br label %cleanup

if.end18:                                         ; preds = %for.body
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx, align 4
  %sub = add nsw i32 %2, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %index.061, i32 %sub)
  %cmp20 = icmp eq i32 %index.061, %sub
  br i1 %cmp20, label %if.end18.for.cond23_crit_edge, label %if.end18.if.end33_crit_edge

if.end18.if.end33_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.end18.for.cond23_crit_edge:                    ; preds = %if.end18
  br label %for.cond23

for.cond23:                                       ; preds = %for.body26.for.cond23_crit_edge, %if.end18.for.cond23_crit_edge
  %index.1.in = phi i32 [ %index.1, %for.body26.for.cond23_crit_edge ], [ %index.061, %if.end18.for.cond23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.1.in)
  %cmp24 = icmp sgt i32 %index.1.in, 0
  br i1 %cmp24, label %for.body26, label %for.cond23.for.end32_crit_edge

for.cond23.for.end32_crit_edge:                   ; preds = %for.cond23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end32

for.body26:                                       ; preds = %for.cond23
  %index.1 = add nsw i32 %index.1.in, -1
  %arrayidx27 = getelementptr [16 x ptr], ptr @synth_devs, i32 0, i32 %index.1
  %6 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx27, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body26.for.cond23_crit_edge, label %for.body26.for.end32_crit_edge

for.body26.for.end32_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end32

for.body26.for.cond23_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond23

for.end32:                                        ; preds = %for.body26.for.end32_crit_edge, %for.cond23.for.end32_crit_edge
  %index.1.in.lcssa = phi i32 [ %index.1.in, %for.body26.for.end32_crit_edge ], [ 0, %for.cond23.for.end32_crit_edge ]
  store i32 %index.1.in.lcssa, ptr @max_synth_devs, align 4
  br label %if.end33

if.end33:                                         ; preds = %for.end32, %if.end18.if.end33_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call3) #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %9)
  %cmp34 = icmp slt i32 %9, 32
  br i1 %cmp34, label %if.then36, label %if.end33.if.end39_crit_edge

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %call38 = tail call i32 @snd_oss_info_register(i32 noundef 1, i32 noundef %9, ptr noundef null) #9
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end33.if.end39_crit_edge
  %use_lock = getelementptr inbounds %struct.seq_oss_synth, ptr %1, i32 0, i32 8
  tail call void @snd_use_lock_sync_helper(ptr noundef %use_lock, ptr noundef nonnull @.str.2, i32 noundef 171) #9
  tail call void @kfree(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then12
  %retval.0 = phi i32 [ -22, %if.then12 ], [ 0, %if.end39 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_use_lock_sync_helper(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_oss_synth_setup(ptr noundef %dp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @max_synth_devs, align 4
  %max_synthdev = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 8
  %1 = ptrtoint ptr %max_synthdev to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %max_synthdev, align 4
  %synth_opened = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 10
  %synths = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp113 = icmp sgt i32 %0, 0
  %2 = call ptr @memset(ptr %synths, i32 0, i32 772)
  br i1 %cmp113, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %port = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 2
  %file_mode = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 6
  %seq_mode = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0114 = phi i32 [ 0, %for.body.lr.ph ], [ %inc58, %for.inc.for.body_crit_edge ]
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @register_lock) #9
  %arrayidx.i = getelementptr [16 x ptr], ptr @synth_devs, i32 0, i32 %i.0114
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %get_sdev.exit.thread, label %if.end

get_sdev.exit.thread:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i) #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %use_lock.i = getelementptr inbounds %struct.seq_oss_synth, ptr %4, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #9, !srcloc !41
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i) #9
  %oper = getelementptr inbounds %struct.seq_oss_synth, ptr %4, i32 0, i32 5
  %open = getelementptr inbounds %struct.seq_oss_synth, ptr %4, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %open, align 4
  %cmp3 = icmp eq ptr %7, null
  br i1 %cmp3, label %if.end.if.then6_crit_edge, label %lor.lhs.false

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end
  %close = getelementptr inbounds %struct.seq_oss_synth, ptr %4, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %close, align 4
  %cmp5 = icmp eq ptr %9, null
  br i1 %cmp5, label %lor.lhs.false.if.then6_crit_edge, label %if.end7

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #9, !srcloc !42
  br label %for.inc

if.end7:                                          ; preds = %lor.lhs.false
  %arrayidx = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %i.0114
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port, align 4
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %file_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %file_mode, align 4
  %file_mode10 = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %arrayidx, i32 0, i32 1
  %16 = ptrtoint ptr %file_mode10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %file_mode10, align 4
  %17 = ptrtoint ptr %seq_mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %seq_mode, align 4
  %seq_mode12 = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %arrayidx, i32 0, i32 2
  %19 = ptrtoint ptr %seq_mode12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %seq_mode12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp14 = icmp ne i32 %18, 0
  %spec.select = zext i1 %cmp14 to i32
  %20 = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %arrayidx, i32 0, i32 5
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select, ptr %20, align 4
  %opened = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %i.0114, i32 4
  %22 = ptrtoint ptr %opened to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %opened, align 4
  %23 = ptrtoint ptr %oper to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %oper, align 4
  %call21 = tail call zeroext i1 @try_module_get(ptr noundef %24) #9
  br i1 %call21, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i100 = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #9
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #9, !srcloc !42
  br label %for.inc

if.end24:                                         ; preds = %if.end7
  %26 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %open, align 4
  %private_data = getelementptr inbounds %struct.seq_oss_synth, ptr %4, i32 0, i32 7
  %28 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %private_data, align 4
  %call28 = tail call i32 %27(ptr noundef %arrayidx, ptr noundef %29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end34

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %oper to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %oper, align 4
  tail call void @module_put(ptr noundef %31) #9
  %call.i.i101 = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #9
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #9, !srcloc !42
  br label %for.inc

if.end34:                                         ; preds = %if.end24
  %nr_voices = getelementptr inbounds %struct.seq_oss_synth, ptr %4, i32 0, i32 3
  %33 = ptrtoint ptr %nr_voices to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr_voices, align 4
  %nr_voices35 = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %i.0114, i32 3
  %35 = ptrtoint ptr %nr_voices35 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %nr_voices35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp37 = icmp sgt i32 %34, 0
  br i1 %cmp37, label %if.then38, label %if.end34.if.end51_crit_edge

if.end34.if.end51_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then38:                                        ; preds = %if.end34
  %36 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %34, i32 8) #9
  %37 = extractvalue { i32, i1 } %36, 1
  br i1 %37, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !43

kcalloc.exit.thread:                              ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %ch107 = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %i.0114, i32 1
  %38 = ptrtoint ptr %ch107 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %ch107, align 4
  br label %if.then42

if.end7.i.i:                                      ; preds = %if.then38
  %39 = extractvalue { i32, i1 } %36, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %39, i32 noundef 3520) #14
  %ch = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %i.0114, i32 1
  %40 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call8.i.i, ptr %ch, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.if.then42_crit_edge, label %if.end50

if.end7.i.i.if.then42_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

if.then42:                                        ; preds = %if.end7.i.i.if.then42_crit_edge, %kcalloc.exit.thread
  %41 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %close, align 4
  %call46 = tail call i32 %42(ptr noundef %arrayidx) #9
  %43 = ptrtoint ptr %oper to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %oper, align 4
  tail call void @module_put(ptr noundef %44) #9
  %call.i.i102 = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #9
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #9, !srcloc !42
  br label %for.inc

if.end50:                                         ; preds = %if.end7.i.i
  %ch.i = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %i.0114, i32 1
  %46 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ch.i, align 4
  %cmp.i = icmp eq ptr %47, null
  br i1 %cmp.i, label %if.end50.if.end51_crit_edge, label %lor.lhs.false.i

if.end50.if.end51_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

lor.lhs.false.i:                                  ; preds = %if.end50
  %48 = ptrtoint ptr %nr_voices35 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nr_voices35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp213.i = icmp sgt i32 %49, 0
  br i1 %cmp213.i, label %lor.lhs.false.i.for.body.i_crit_edge, label %lor.lhs.false.i.if.end51_crit_edge

lor.lhs.false.i.if.end51_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

lor.lhs.false.i.for.body.i_crit_edge:             ; preds = %lor.lhs.false.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %lor.lhs.false.i.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %lor.lhs.false.i.for.body.i_crit_edge ]
  %50 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ch.i, align 4
  %arrayidx.i105 = getelementptr %struct.seq_oss_chinfo, ptr %51, i32 %i.014.i
  %52 = ptrtoint ptr %arrayidx.i105 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %arrayidx.i105, align 4
  %53 = load ptr, ptr %ch.i, align 4
  %vel.i = getelementptr %struct.seq_oss_chinfo, ptr %53, i32 %i.014.i, i32 1
  %54 = ptrtoint ptr %vel.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %vel.i, align 4
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %55 = ptrtoint ptr %nr_voices35 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nr_voices35, align 4
  %cmp2.i = icmp slt i32 %inc.i, %56
  br i1 %cmp2.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end51_crit_edge

for.body.i.if.end51_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end51:                                         ; preds = %for.body.i.if.end51_crit_edge, %lor.lhs.false.i.if.end51_crit_edge, %if.end50.if.end51_crit_edge, %if.end34.if.end51_crit_edge
  %57 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %opened, align 4
  %inc = add i32 %58, 1
  store i32 %inc, ptr %opened, align 4
  %opened53 = getelementptr inbounds %struct.seq_oss_synth, ptr %4, i32 0, i32 6
  %59 = ptrtoint ptr %opened53 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %opened53, align 4
  %inc54 = add i32 %60, 1
  store i32 %inc54, ptr %opened53, align 4
  %61 = ptrtoint ptr %synth_opened to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %synth_opened, align 4
  %inc56 = add i32 %62, 1
  store i32 %inc56, ptr %synth_opened, align 4
  %call.i.i103 = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #9
  %63 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #9, !srcloc !42
  br label %for.inc

for.inc:                                          ; preds = %if.end51, %if.then42, %if.then30, %if.then22, %if.then6, %get_sdev.exit.thread
  %inc58 = add nuw nsw i32 %i.0114, 1
  %64 = ptrtoint ptr %max_synthdev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %max_synthdev, align 4
  %cmp = icmp slt i32 %inc58, %65
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_oss_synth_setup_midi(ptr noundef %dp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %max_synthdev = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %max_synthdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_synthdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %1)
  %cmp = icmp sgt i32 %1, 15
  br i1 %cmp, label %entry.cleanup21_crit_edge, label %for.cond.preheader

entry.cleanup21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup21

for.cond.preheader:                               ; preds = %entry
  %max_mididev = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 7
  %2 = ptrtoint ptr %max_mididev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_mididev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp151 = icmp sgt i32 %3, 0
  br i1 %cmp151, label %for.body.lr.ph, label %for.cond.preheader.cleanup21_crit_edge

for.cond.preheader.cleanup21_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup21

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %file_mode = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 6
  %port = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 2
  %seq_mode = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc20, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %max_synthdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_synthdev, align 4
  %6 = ptrtoint ptr %file_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %file_mode, align 4
  %call = tail call i32 @snd_seq_oss_midi_open(ptr noundef %dp, i32 noundef %i.052, i32 noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %for.body.for.inc_crit_edge, label %cleanup

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

cleanup:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %5
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %file_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %file_mode, align 4
  %file_mode8 = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %arrayidx, i32 0, i32 1
  %13 = ptrtoint ptr %file_mode8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %file_mode8, align 4
  %14 = ptrtoint ptr %seq_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %seq_mode, align 4
  %seq_mode10 = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %arrayidx, i32 0, i32 2
  %16 = ptrtoint ptr %seq_mode10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %seq_mode10, align 4
  %private_data = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %arrayidx, i32 0, i32 4
  %17 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx, ptr %private_data, align 4
  %is_midi = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %5, i32 5
  %18 = ptrtoint ptr %is_midi to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %is_midi, align 4
  %midi_mapped = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %5, i32 6
  %19 = ptrtoint ptr %midi_mapped to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %i.052, ptr %midi_mapped, align 4
  %event_passing = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %arrayidx, i32 0, i32 5
  %20 = ptrtoint ptr %event_passing to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %event_passing, align 4
  %addr = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %arrayidx, i32 0, i32 3
  tail call void @snd_seq_oss_midi_get_addr(ptr noundef %dp, i32 noundef %i.052, ptr noundef %addr) #9
  %opened = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %5, i32 4
  %21 = ptrtoint ptr %opened to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %opened, align 4
  %22 = load i32, ptr getelementptr inbounds (%struct.seq_oss_synth, ptr @midi_synth_dev, i32 0, i32 6), align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr getelementptr inbounds (%struct.seq_oss_synth, ptr @midi_synth_dev, i32 0, i32 6), align 4
  %23 = ptrtoint ptr %max_synthdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_synthdev, align 4
  %inc15 = add i32 %24, 1
  store i32 %inc15, ptr %max_synthdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc15)
  %cmp17 = icmp sgt i32 %inc15, 15
  br i1 %cmp17, label %cleanup.cleanup21_crit_edge, label %cleanup.for.inc_crit_edge

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

cleanup.cleanup21_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup21

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc20 = add nuw nsw i32 %i.052, 1
  %25 = ptrtoint ptr %max_mididev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_mididev, align 4
  %cmp1 = icmp slt i32 %inc20, %26
  br i1 %cmp1, label %for.inc.for.body_crit_edge, label %for.inc.cleanup21_crit_edge

for.inc.cleanup21_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup21

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup21:                                        ; preds = %for.inc.cleanup21_crit_edge, %cleanup.cleanup21_crit_edge, %for.cond.preheader.cleanup21_crit_edge, %entry.cleanup21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_midi_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_oss_midi_get_addr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_oss_synth_cleanup(ptr noundef %dp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %max_synthdev = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %max_synthdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_synthdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp = icmp sgt i32 %1, 16
  br i1 %cmp, label %do.end, label %for.cond.preheader, !prof !43

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %max_synthdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_synthdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2370 = icmp sgt i32 %3, 0
  br i1 %cmp2370, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 299, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.071 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %i.071
  %opened = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %i.071, i32 4
  %4 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %opened, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool24.not = icmp eq i32 %5, 0
  br i1 %tobool24.not, label %for.body.for.inc_crit_edge, label %if.end26

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end26:                                         ; preds = %for.body
  %is_midi = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %i.071, i32 5
  %6 = ptrtoint ptr %is_midi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %is_midi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool27.not = icmp eq i32 %7, 0
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end26
  %8 = load i32, ptr getelementptr inbounds (%struct.seq_oss_synth, ptr @midi_synth_dev, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp29 = icmp sgt i32 %8, 0
  br i1 %cmp29, label %if.then30, label %if.then28.if.end43_crit_edge

if.then28.if.end43_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then30:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %midi_mapped = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %i.071, i32 6
  %9 = ptrtoint ptr %midi_mapped to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %midi_mapped, align 4
  %call = tail call i32 @snd_seq_oss_midi_close(ptr noundef %dp, i32 noundef %10) #9
  %11 = load i32, ptr getelementptr inbounds (%struct.seq_oss_synth, ptr @midi_synth_dev, i32 0, i32 6), align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr getelementptr inbounds (%struct.seq_oss_synth, ptr @midi_synth_dev, i32 0, i32 6), align 4
  br label %if.end43

if.else:                                          ; preds = %if.end26
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @register_lock) #9
  %arrayidx.i = getelementptr [16 x ptr], ptr @synth_devs, i32 0, i32 %i.071
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %get_sdev.exit.thread, label %if.end35

get_sdev.exit.thread:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i) #9
  br label %for.inc

if.end35:                                         ; preds = %if.else
  %use_lock.i = getelementptr inbounds %struct.seq_oss_synth, ptr %13, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #9
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #9, !srcloc !41
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i) #9
  %opened36 = getelementptr inbounds %struct.seq_oss_synth, ptr %13, i32 0, i32 6
  %15 = ptrtoint ptr %opened36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %opened36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp37 = icmp sgt i32 %16, 0
  br i1 %cmp37, label %if.then38, label %if.end35.if.end42_crit_edge

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %oper = getelementptr inbounds %struct.seq_oss_synth, ptr %13, i32 0, i32 5
  %close = getelementptr inbounds %struct.seq_oss_synth, ptr %13, i32 0, i32 5, i32 2
  %17 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %close, align 4
  %call39 = tail call i32 %18(ptr noundef %arrayidx) #9
  %19 = ptrtoint ptr %oper to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %oper, align 4
  tail call void @module_put(ptr noundef %20) #9
  %21 = ptrtoint ptr %opened36 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %opened36, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.end35.if.end42_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #9
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #9, !srcloc !42
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then30, %if.then28.if.end43_crit_edge
  %sysex = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %i.071, i32 2
  %23 = ptrtoint ptr %sysex to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sysex, align 4
  tail call void @kfree(ptr noundef %24) #9
  %25 = ptrtoint ptr %sysex to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %sysex, align 4
  %ch = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %i.071, i32 1
  %26 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ch, align 4
  tail call void @kfree(ptr noundef %27) #9
  %28 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %ch, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end43, %get_sdev.exit.thread, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.071, 1
  %29 = ptrtoint ptr %max_synthdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_synthdev, align 4
  %cmp23 = icmp slt i32 %inc, %30
  br i1 %cmp23, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %synth_opened = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 10
  %31 = ptrtoint ptr %synth_opened to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %synth_opened, align 4
  %32 = ptrtoint ptr %max_synthdev to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %max_synthdev, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_midi_close(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_oss_synth_reset(ptr noundef %dp, i32 noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  %ev = alloca %struct.snd_seq_event, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev)
  %cmp.i = icmp slt i32 %dev, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %max_synthdev.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %max_synthdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_synthdev.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %dev)
  %cmp1.not.i = icmp sgt i32 %1, %dev
  br i1 %cmp1.not.i, label %get_synthinfo_nospec.exit, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

get_synthinfo_nospec.exit:                        ; preds = %lor.lhs.false.i
  %2 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %dev, i32 16) #9, !srcloc !44
  %and.i = and i32 %2, %dev
  %arrayidx.i = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %and.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %get_synthinfo_nospec.exit.cleanup_crit_edge, label %lor.lhs.false

get_synthinfo_nospec.exit.cleanup_crit_edge:      ; preds = %get_synthinfo_nospec.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %get_synthinfo_nospec.exit
  %opened = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %and.i, i32 4
  %3 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %opened, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %sysex = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %and.i, i32 2
  %5 = ptrtoint ptr %sysex to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sysex, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %6, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %ch.i = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %and.i, i32 1
  %8 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ch.i, align 4
  %cmp.i64 = icmp eq ptr %9, null
  br i1 %cmp.i64, label %if.end5.reset_channels.exit_crit_edge, label %lor.lhs.false.i65

if.end5.reset_channels.exit_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %reset_channels.exit

lor.lhs.false.i65:                                ; preds = %if.end5
  %nr_voices.i = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %and.i, i32 3
  %10 = ptrtoint ptr %nr_voices.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_voices.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp213.i = icmp sgt i32 %11, 0
  br i1 %cmp213.i, label %lor.lhs.false.i65.for.body.i_crit_edge, label %lor.lhs.false.i65.reset_channels.exit_crit_edge

lor.lhs.false.i65.reset_channels.exit_crit_edge:  ; preds = %lor.lhs.false.i65
  call void @__sanitizer_cov_trace_pc() #11
  br label %reset_channels.exit

lor.lhs.false.i65.for.body.i_crit_edge:           ; preds = %lor.lhs.false.i65
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %lor.lhs.false.i65.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %lor.lhs.false.i65.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ch.i, align 4
  %arrayidx.i66 = getelementptr %struct.seq_oss_chinfo, ptr %13, i32 %i.014.i
  %14 = ptrtoint ptr %arrayidx.i66 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %arrayidx.i66, align 4
  %15 = load ptr, ptr %ch.i, align 4
  %vel.i = getelementptr %struct.seq_oss_chinfo, ptr %15, i32 %i.014.i, i32 1
  %16 = ptrtoint ptr %vel.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %vel.i, align 4
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %17 = ptrtoint ptr %nr_voices.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_voices.i, align 4
  %cmp2.i = icmp slt i32 %inc.i, %18
  br i1 %cmp2.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.reset_channels.exit_crit_edge

for.body.i.reset_channels.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %reset_channels.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

reset_channels.exit:                              ; preds = %for.body.i.reset_channels.exit_crit_edge, %lor.lhs.false.i65.reset_channels.exit_crit_edge, %if.end5.reset_channels.exit_crit_edge
  %is_midi = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %and.i, i32 5
  %19 = ptrtoint ptr %is_midi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %is_midi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool6.not = icmp eq i32 %20, 0
  br i1 %tobool6.not, label %if.end20, label %if.then7

if.then7:                                         ; preds = %reset_channels.exit
  %21 = load i32, ptr getelementptr inbounds (%struct.seq_oss_synth, ptr @midi_synth_dev, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp = icmp slt i32 %21, 1
  br i1 %cmp, label %if.then7.cleanup_crit_edge, label %if.end9

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.then7
  %midi_mapped = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %and.i, i32 6
  %22 = ptrtoint ptr %midi_mapped to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %midi_mapped, align 4
  tail call void @snd_seq_oss_midi_reset(ptr noundef %dp, i32 noundef %23) #9
  %call10 = tail call i32 @snd_seq_oss_midi_close(ptr noundef %dp, i32 noundef %dev) #9
  %24 = ptrtoint ptr %midi_mapped to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %midi_mapped, align 4
  %file_mode = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 6
  %26 = ptrtoint ptr %file_mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %file_mode, align 4
  %call12 = tail call i32 @snd_seq_oss_midi_open(ptr noundef %dp, i32 noundef %25, i32 noundef %27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %28 = load i32, ptr getelementptr inbounds (%struct.seq_oss_synth, ptr @midi_synth_dev, i32 0, i32 6), align 4
  %dec = add i32 %28, -1
  store i32 %dec, ptr getelementptr inbounds (%struct.seq_oss_synth, ptr @midi_synth_dev, i32 0, i32 6), align 4
  %29 = ptrtoint ptr %opened to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %opened, align 4
  %30 = ptrtoint ptr %sysex to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sysex, align 4
  tail call void @kfree(ptr noundef %31) #9
  %32 = ptrtoint ptr %sysex to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %sysex, align 4
  %33 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ch.i, align 4
  tail call void @kfree(ptr noundef %34) #9
  %35 = ptrtoint ptr %ch.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %ch.i, align 4
  br label %cleanup

if.end20:                                         ; preds = %reset_channels.exit
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @register_lock) #9
  %arrayidx.i67 = getelementptr [16 x ptr], ptr @synth_devs, i32 0, i32 %dev
  %36 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i67, align 4
  %tobool.not.i68 = icmp eq ptr %37, null
  br i1 %tobool.not.i68, label %get_sdev.exit.thread, label %if.end24

get_sdev.exit.thread:                             ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i) #9
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %use_lock.i = getelementptr inbounds %struct.seq_oss_synth, ptr %37, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #9
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #9, !srcloc !41
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i) #9
  %reset = getelementptr inbounds %struct.seq_oss_synth, ptr %37, i32 0, i32 5, i32 5
  %39 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reset, align 4
  %tobool25.not = icmp eq ptr %40, null
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = tail call i32 %40(ptr noundef nonnull %arrayidx.i) #9
  br label %if.end35

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ev) #9
  %41 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 3
  %42 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 5
  %43 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 6
  %44 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 6, i32 1
  %45 = call ptr @memset(ptr %ev, i32 0, i32 28)
  %addr = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %arrayidx.i, i32 0, i32 3
  %46 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %addr, align 4
  %port = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %arrayidx.i, i32 0, i32 3, i32 1
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %port, align 1
  %queue.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 3
  %50 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %queue.i, align 4
  %conv.i = trunc i32 %51 to i8
  %52 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv.i, ptr %41, align 1
  %addr.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 4
  %53 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %addr.i, align 4
  %55 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %42, align 4
  %56 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %47, ptr %43, align 2
  %57 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %49, ptr %44, align 1
  %58 = ptrtoint ptr %ev to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 41, ptr %ev, align 4
  %cseq.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 1
  %59 = ptrtoint ptr %cseq.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cseq.i, align 4
  %call.i = call i32 @snd_seq_kernel_client_dispatch(i32 noundef %60, ptr noundef nonnull %ev, i32 noundef 0, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ev) #9
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then26
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #9
  %61 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #9, !srcloc !42
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %get_sdev.exit.thread, %if.then14, %if.end9.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %get_synthinfo_nospec.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_oss_midi_reset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_synth_load_patch(ptr noundef %dp, i32 noundef %dev, i32 noundef %fmt, ptr noundef %buf, i32 noundef %p, i32 noundef %c) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev)
  %cmp.i = icmp slt i32 %dev, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %max_synthdev.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %max_synthdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_synthdev.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %dev)
  %cmp1.not.i = icmp sgt i32 %1, %dev
  br i1 %cmp1.not.i, label %get_synthinfo_nospec.exit, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

get_synthinfo_nospec.exit:                        ; preds = %lor.lhs.false.i
  %2 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %dev, i32 16) #9, !srcloc !44
  %and.i = and i32 %2, %dev
  %arrayidx.i = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %and.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %get_synthinfo_nospec.exit.cleanup_crit_edge, label %if.end

get_synthinfo_nospec.exit.cleanup_crit_edge:      ; preds = %get_synthinfo_nospec.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %get_synthinfo_nospec.exit
  %is_midi = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %and.i, i32 5
  %3 = ptrtoint ptr %is_midi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %is_midi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call fastcc ptr @get_synthdev(ptr noundef %dp, i32 noundef %dev)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %load_patch = getelementptr inbounds %struct.seq_oss_synth, ptr %call4, i32 0, i32 5, i32 4
  %5 = ptrtoint ptr %load_patch to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %load_patch, align 4
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.end7.if.end12_crit_edge, label %if.else

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 %6(ptr noundef nonnull %arrayidx.i, i32 noundef %fmt, ptr noundef %buf, i32 noundef %p, i32 noundef %c) #9
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end7.if.end12_crit_edge
  %rc.0 = phi i32 [ %call11, %if.else ], [ -6, %if.end7.if.end12_crit_edge ]
  %use_lock = getelementptr inbounds %struct.seq_oss_synth, ptr %call4, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %use_lock, i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock, ptr %use_lock, i32 1, ptr elementtype(i32) %use_lock) #9, !srcloc !42
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %get_synthinfo_nospec.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end12 ], [ -6, %get_synthinfo_nospec.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -6, %if.end3.cleanup_crit_edge ], [ -6, %lor.lhs.false.i.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_synthdev(ptr noundef readonly %dp, i32 noundef %dev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev)
  %cmp.i = icmp slt i32 %dev, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %max_synthdev.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %max_synthdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_synthdev.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %dev)
  %cmp1.not.i = icmp sgt i32 %1, %dev
  br i1 %cmp1.not.i, label %get_synthinfo_nospec.exit, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

get_synthinfo_nospec.exit:                        ; preds = %lor.lhs.false.i
  %2 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %dev, i32 16) #9, !srcloc !44
  %and.i = and i32 %2, %dev
  %arrayidx.i = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %and.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %get_synthinfo_nospec.exit.cleanup_crit_edge, label %if.end

get_synthinfo_nospec.exit.cleanup_crit_edge:      ; preds = %get_synthinfo_nospec.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %get_synthinfo_nospec.exit
  %opened = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %and.i, i32 4
  %3 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %opened, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %is_midi = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %and.i, i32 5
  %5 = ptrtoint ptr %is_midi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %is_midi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.seq_oss_synth, ptr @midi_synth_dev, i32 0, i32 8), i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.seq_oss_synth, ptr @midi_synth_dev, i32 0, i32 8), i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.seq_oss_synth, ptr @midi_synth_dev, i32 0, i32 8), ptr getelementptr inbounds (%struct.seq_oss_synth, ptr @midi_synth_dev, i32 0, i32 8), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.seq_oss_synth, ptr @midi_synth_dev, i32 0, i32 8)) #9, !srcloc !41
  br label %if.end10

if.else:                                          ; preds = %if.end3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @register_lock) #9
  %arrayidx.i25 = getelementptr [16 x ptr], ptr @synth_devs, i32 0, i32 %dev
  %8 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i25, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %get_sdev.exit.thread, label %get_sdev.exit

get_sdev.exit.thread:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i) #9
  br label %cleanup

get_sdev.exit:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %use_lock.i = getelementptr inbounds %struct.seq_oss_synth, ptr %9, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #9, !srcloc !41
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i) #9
  br label %if.end10

if.end10:                                         ; preds = %get_sdev.exit, %if.then5
  %rec.0 = phi ptr [ @midi_synth_dev, %if.then5 ], [ %9, %get_sdev.exit ]
  %opened11 = getelementptr inbounds %struct.seq_oss_synth, ptr %rec.0, i32 0, i32 6
  %11 = ptrtoint ptr %opened11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %opened11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not = icmp eq i32 %12, 0
  br i1 %tobool12.not, label %if.then13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %use_lock14 = getelementptr inbounds %struct.seq_oss_synth, ptr %rec.0, i32 0, i32 8
  %call.i.i24 = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock14, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %use_lock14, i32 1, i32 3, i32 1) #9
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock14, ptr %use_lock14, i32 1, ptr elementtype(i32) %use_lock14) #9, !srcloc !42
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end10.cleanup_crit_edge, %get_sdev.exit.thread, %if.end.cleanup_crit_edge, %get_synthinfo_nospec.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then13 ], [ null, %get_synthinfo_nospec.exit.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %rec.0, %if.end10.cleanup_crit_edge ], [ null, %get_sdev.exit.thread ], [ null, %lor.lhs.false.i.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_seq_oss_synth_info(ptr noundef %dp, i32 noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @get_synthdev(ptr noundef %dp, i32 noundef %dev)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %use_lock = getelementptr inbounds %struct.seq_oss_synth, ptr %call, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %use_lock, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock, ptr %use_lock, i32 1, ptr elementtype(i32) %use_lock) #9, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev)
  %cmp.i = icmp slt i32 %dev, 0
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %lor.lhs.false.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.then
  %max_synthdev.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 8
  %1 = ptrtoint ptr %max_synthdev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max_synthdev.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %dev)
  %cmp1.not.i = icmp sgt i32 %2, %dev
  br i1 %cmp1.not.i, label %if.end.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %dev, i32 16) #9, !srcloc !44
  %and.i = and i32 %3, %dev
  %arrayidx.i = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %and.i
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %lor.lhs.false.i.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %arrayidx.i, %if.end.i ], [ null, %lor.lhs.false.i.cleanup_crit_edge ], [ null, %if.then.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_synth_sysex(ptr noundef %dp, i32 noundef %dev, ptr nocapture noundef readonly %buf, ptr nocapture noundef writeonly %ev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @get_synthdev(ptr noundef %dp, i32 noundef %dev) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %use_lock.i = getelementptr inbounds %struct.seq_oss_synth, ptr %call.i, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #9, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev)
  %cmp.i.i = icmp slt i32 %dev, 0
  br i1 %cmp.i.i, label %if.then.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.then.i
  %max_synthdev.i.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 8
  %1 = ptrtoint ptr %max_synthdev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max_synthdev.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %dev)
  %cmp1.not.i.i = icmp sgt i32 %2, %dev
  br i1 %cmp1.not.i.i, label %snd_seq_oss_synth_info.exit, label %lor.lhs.false.i.i.cleanup_crit_edge

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

snd_seq_oss_synth_info.exit:                      ; preds = %lor.lhs.false.i.i
  %3 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %dev, i32 16) #9, !srcloc !44
  %and.i.i = and i32 %3, %dev
  %arrayidx.i.i = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %and.i.i
  %tobool.not = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not, label %snd_seq_oss_synth_info.exit.cleanup_crit_edge, label %if.end

snd_seq_oss_synth_info.exit.cleanup_crit_edge:    ; preds = %snd_seq_oss_synth_info.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %snd_seq_oss_synth_info.exit
  %sysex1 = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %and.i.i, i32 2
  %4 = ptrtoint ptr %sysex1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sysex1, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then2, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then2:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 136) #12
  %cmp4 = icmp eq ptr %call7.i.i, null
  br i1 %cmp4, label %if.then2.cleanup_crit_edge, label %if.end6

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %sysex1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %sysex1, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end6, %if.end.if.end8_crit_edge
  %sysex.0 = phi ptr [ %call7.i.i, %if.end6 ], [ %5, %if.end.if.end8_crit_edge ]
  %buf9 = getelementptr inbounds %struct.seq_oss_synth_sysex, ptr %sysex.0, i32 0, i32 2
  %8 = ptrtoint ptr %sysex.0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sysex.0, align 4
  %add.ptr = getelementptr i8, ptr %buf9, i32 %9
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp11 = icmp eq i8 %11, -1
  br i1 %cmp11, label %if.end8.for.end_crit_edge, label %if.end14

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond:                                         ; preds = %if.end14
  %arrayidx.1 = getelementptr i8, ptr %buf, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp11.1 = icmp eq i8 %13, -1
  br i1 %cmp11.1, label %for.cond.for.endthread-pre-split_crit_edge, label %if.end14.1

for.cond.for.endthread-pre-split_crit_edge:       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.endthread-pre-split

if.end14.1:                                       ; preds = %for.cond
  %arrayidx16.1 = getelementptr i8, ptr %add.ptr, i32 1
  %14 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx16.1, align 1
  %15 = ptrtoint ptr %sysex.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sysex.0, align 4
  %inc.1 = add i32 %16, 1
  store i32 %inc.1, ptr %sysex.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %inc.1)
  %cmp19.1 = icmp sgt i32 %inc.1, 127
  br i1 %cmp19.1, label %if.end14.1.if.then21_crit_edge, label %for.cond.1

if.end14.1.if.then21_crit_edge:                   ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

for.cond.1:                                       ; preds = %if.end14.1
  %arrayidx.2 = getelementptr i8, ptr %buf, i32 2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp11.2 = icmp eq i8 %18, -1
  br i1 %cmp11.2, label %for.cond.1.for.endthread-pre-split_crit_edge, label %if.end14.2

for.cond.1.for.endthread-pre-split_crit_edge:     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.endthread-pre-split

if.end14.2:                                       ; preds = %for.cond.1
  %arrayidx16.2 = getelementptr i8, ptr %add.ptr, i32 2
  %19 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx16.2, align 1
  %20 = ptrtoint ptr %sysex.0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sysex.0, align 4
  %inc.2 = add i32 %21, 1
  store i32 %inc.2, ptr %sysex.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %inc.2)
  %cmp19.2 = icmp sgt i32 %inc.2, 127
  br i1 %cmp19.2, label %if.end14.2.if.then21_crit_edge, label %for.cond.2

if.end14.2.if.then21_crit_edge:                   ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

for.cond.2:                                       ; preds = %if.end14.2
  %arrayidx.3 = getelementptr i8, ptr %buf, i32 3
  %22 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %cmp11.3 = icmp eq i8 %23, -1
  br i1 %cmp11.3, label %for.cond.2.for.endthread-pre-split_crit_edge, label %if.end14.3

for.cond.2.for.endthread-pre-split_crit_edge:     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.endthread-pre-split

if.end14.3:                                       ; preds = %for.cond.2
  %arrayidx16.3 = getelementptr i8, ptr %add.ptr, i32 3
  %24 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx16.3, align 1
  %25 = ptrtoint ptr %sysex.0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sysex.0, align 4
  %inc.3 = add i32 %26, 1
  store i32 %inc.3, ptr %sysex.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %inc.3)
  %cmp19.3 = icmp sgt i32 %inc.3, 127
  br i1 %cmp19.3, label %if.end14.3.if.then21_crit_edge, label %for.cond.3

if.end14.3.if.then21_crit_edge:                   ; preds = %if.end14.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

for.cond.3:                                       ; preds = %if.end14.3
  %arrayidx.4 = getelementptr i8, ptr %buf, i32 4
  %27 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %28)
  %cmp11.4 = icmp eq i8 %28, -1
  br i1 %cmp11.4, label %for.cond.3.for.endthread-pre-split_crit_edge, label %if.end14.4

for.cond.3.for.endthread-pre-split_crit_edge:     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.endthread-pre-split

if.end14.4:                                       ; preds = %for.cond.3
  %arrayidx16.4 = getelementptr i8, ptr %add.ptr, i32 4
  %29 = ptrtoint ptr %arrayidx16.4 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx16.4, align 1
  %30 = ptrtoint ptr %sysex.0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sysex.0, align 4
  %inc.4 = add i32 %31, 1
  store i32 %inc.4, ptr %sysex.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %inc.4)
  %cmp19.4 = icmp sgt i32 %inc.4, 127
  br i1 %cmp19.4, label %if.end14.4.if.then21_crit_edge, label %for.cond.4

if.end14.4.if.then21_crit_edge:                   ; preds = %if.end14.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

for.cond.4:                                       ; preds = %if.end14.4
  %arrayidx.5 = getelementptr i8, ptr %buf, i32 5
  %32 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %33)
  %cmp11.5 = icmp eq i8 %33, -1
  br i1 %cmp11.5, label %for.cond.4.for.endthread-pre-split_crit_edge, label %if.end14.5

for.cond.4.for.endthread-pre-split_crit_edge:     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.endthread-pre-split

if.end14.5:                                       ; preds = %for.cond.4
  %arrayidx16.5 = getelementptr i8, ptr %add.ptr, i32 5
  %34 = ptrtoint ptr %arrayidx16.5 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx16.5, align 1
  %35 = ptrtoint ptr %sysex.0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sysex.0, align 4
  %inc.5 = add i32 %36, 1
  store i32 %inc.5, ptr %sysex.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %inc.5)
  %cmp19.5 = icmp sgt i32 %inc.5, 127
  br i1 %cmp19.5, label %if.end14.5.if.then21_crit_edge, label %if.end14.5.cleanup_crit_edge

if.end14.5.cleanup_crit_edge:                     ; preds = %if.end14.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14.5.if.then21_crit_edge:                   ; preds = %if.end14.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.end14:                                         ; preds = %if.end8
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %11, ptr %add.ptr, align 1
  %38 = ptrtoint ptr %sysex.0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sysex.0, align 4
  %inc = add i32 %39, 1
  store i32 %inc, ptr %sysex.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %inc)
  %cmp19 = icmp sgt i32 %inc, 127
  br i1 %cmp19, label %if.end14.if.then21_crit_edge, label %for.cond

if.end14.if.then21_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21:                                        ; preds = %if.end14.if.then21_crit_edge, %if.end14.5.if.then21_crit_edge, %if.end14.4.if.then21_crit_edge, %if.end14.3.if.then21_crit_edge, %if.end14.2.if.then21_crit_edge, %if.end14.1.if.then21_crit_edge
  %40 = ptrtoint ptr %sysex.0 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %sysex.0, align 4
  %skip = getelementptr inbounds %struct.seq_oss_synth_sysex, ptr %sysex.0, i32 0, i32 1
  %41 = ptrtoint ptr %skip to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %skip, align 4
  br label %cleanup

for.endthread-pre-split:                          ; preds = %for.cond.4.for.endthread-pre-split_crit_edge, %for.cond.3.for.endthread-pre-split_crit_edge, %for.cond.2.for.endthread-pre-split_crit_edge, %for.cond.1.for.endthread-pre-split_crit_edge, %for.cond.for.endthread-pre-split_crit_edge
  %42 = ptrtoint ptr %sysex.0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr = load i32, ptr %sysex.0, align 4
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %if.end8.for.end_crit_edge
  %43 = phi i32 [ %.pr, %for.endthread-pre-split ], [ %9, %if.end8.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool26.not = icmp eq i32 %43, 0
  br i1 %tobool26.not, label %for.end.cleanup_crit_edge, label %if.then28

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then28:                                        ; preds = %for.end
  %skip29 = getelementptr inbounds %struct.seq_oss_synth_sysex, ptr %sysex.0, i32 0, i32 1
  %44 = ptrtoint ptr %skip29 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %skip29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool30.not = icmp eq i32 %45, 0
  br i1 %tobool30.not, label %if.end34, label %if.then31

if.then31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %skip29 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %skip29, align 4
  %47 = ptrtoint ptr %sysex.0 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %sysex.0, align 4
  br label %cleanup

if.end34:                                         ; preds = %if.then28
  %flags = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 1
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 4, ptr %flags, align 1
  %call.i.i = tail call fastcc ptr @get_synthdev(ptr noundef %dp, i32 noundef %dev) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end34.cleanup_crit_edge, label %lor.lhs.false.i.i.i

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i.i.i:                              ; preds = %if.end34
  %use_lock.i.i = getelementptr inbounds %struct.seq_oss_synth, ptr %call.i.i, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %use_lock.i.i, i32 1, i32 3, i32 1) #9
  %49 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i.i, ptr %use_lock.i.i, i32 1, ptr elementtype(i32) %use_lock.i.i) #9, !srcloc !42
  %50 = ptrtoint ptr %max_synthdev.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max_synthdev.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %dev)
  %cmp1.not.i.i.i = icmp sgt i32 %51, %dev
  br i1 %cmp1.not.i.i.i, label %snd_seq_oss_synth_info.exit.i, label %lor.lhs.false.i.i.i.cleanup_crit_edge

lor.lhs.false.i.i.i.cleanup_crit_edge:            ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

snd_seq_oss_synth_info.exit.i:                    ; preds = %lor.lhs.false.i.i.i
  %52 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %dev, i32 16) #9, !srcloc !44
  %and.i.i.i = and i32 %52, %dev
  %arrayidx.i.i.i = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %and.i.i.i
  %tobool.not.i78 = icmp eq ptr %arrayidx.i.i.i, null
  br i1 %tobool.not.i78, label %snd_seq_oss_synth_info.exit.i.cleanup_crit_edge, label %if.end38

snd_seq_oss_synth_info.exit.i.cleanup_crit_edge:  ; preds = %snd_seq_oss_synth_info.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38:                                         ; preds = %snd_seq_oss_synth_info.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %addr.i = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %arrayidx.i.i.i, i32 0, i32 3
  %53 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %addr.i, align 4
  %port.i = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %arrayidx.i.i.i, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %port.i, align 1
  %queue.i.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 3
  %57 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %queue.i.i, align 4
  %conv.i.i = trunc i32 %58 to i8
  %queue1.i.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 3
  %59 = ptrtoint ptr %queue1.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv.i.i, ptr %queue1.i.i, align 1
  %source.i.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 5
  %addr.i.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 4
  %60 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %addr.i.i, align 4
  %62 = ptrtoint ptr %source.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %source.i.i, align 4
  %dest.i.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 6
  %63 = ptrtoint ptr %dest.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %54, ptr %dest.i.i, align 2
  %port.i.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 6, i32 1
  %64 = ptrtoint ptr %port.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %56, ptr %port.i.i, align 1
  %65 = ptrtoint ptr %sysex.0 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sysex.0, align 4
  %data = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7
  %67 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %data, align 4
  %ptr = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 4
  %68 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %buf9, ptr %ptr, align 4
  store i32 0, ptr %sysex.0, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %snd_seq_oss_synth_info.exit.i.cleanup_crit_edge, %lor.lhs.false.i.i.i.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.then31, %for.end.cleanup_crit_edge, %if.then21, %if.end14.5.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %snd_seq_oss_synth_info.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then31 ], [ 0, %if.end38 ], [ -6, %snd_seq_oss_synth_info.exit.cleanup_crit_edge ], [ -12, %if.then2.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ], [ -6, %lor.lhs.false.i.i.cleanup_crit_edge ], [ -6, %if.then.i.cleanup_crit_edge ], [ -22, %if.then21 ], [ -22, %snd_seq_oss_synth_info.exit.i.cleanup_crit_edge ], [ -22, %if.end34.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.i.i.cleanup_crit_edge ], [ -22, %if.end14.5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_synth_addr(ptr noundef %dp, i32 noundef %dev, ptr nocapture noundef writeonly %ev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @get_synthdev(ptr noundef %dp, i32 noundef %dev) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %use_lock.i = getelementptr inbounds %struct.seq_oss_synth, ptr %call.i, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #9, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev)
  %cmp.i.i = icmp slt i32 %dev, 0
  br i1 %cmp.i.i, label %if.then.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.then.i
  %max_synthdev.i.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 8
  %1 = ptrtoint ptr %max_synthdev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max_synthdev.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %dev)
  %cmp1.not.i.i = icmp sgt i32 %2, %dev
  br i1 %cmp1.not.i.i, label %snd_seq_oss_synth_info.exit, label %lor.lhs.false.i.i.cleanup_crit_edge

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

snd_seq_oss_synth_info.exit:                      ; preds = %lor.lhs.false.i.i
  %3 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %dev, i32 16) #9, !srcloc !44
  %and.i.i = and i32 %3, %dev
  %arrayidx.i.i = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %and.i.i
  %tobool.not = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not, label %snd_seq_oss_synth_info.exit.cleanup_crit_edge, label %if.end

snd_seq_oss_synth_info.exit.cleanup_crit_edge:    ; preds = %snd_seq_oss_synth_info.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %snd_seq_oss_synth_info.exit
  call void @__sanitizer_cov_trace_pc() #11
  %addr = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %arrayidx.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr, align 4
  %port = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %arrayidx.i.i, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port, align 1
  %queue.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 3
  %8 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %queue.i, align 4
  %conv.i = trunc i32 %9 to i8
  %queue1.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 3
  %10 = ptrtoint ptr %queue1.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i, ptr %queue1.i, align 1
  %source.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 5
  %addr.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 4
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr.i, align 4
  %13 = ptrtoint ptr %source.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %source.i, align 4
  %dest.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 6
  %14 = ptrtoint ptr %dest.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %5, ptr %dest.i, align 2
  %port.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %7, ptr %port.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %snd_seq_oss_synth_info.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %snd_seq_oss_synth_info.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.i.cleanup_crit_edge ], [ -22, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_synth_ioctl(ptr noundef %dp, i32 noundef %dev, i32 noundef %cmd, i32 noundef %addr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev)
  %cmp.i = icmp slt i32 %dev, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %max_synthdev.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %max_synthdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_synthdev.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %dev)
  %cmp1.not.i = icmp sgt i32 %1, %dev
  br i1 %cmp1.not.i, label %get_synthinfo_nospec.exit, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

get_synthinfo_nospec.exit:                        ; preds = %lor.lhs.false.i
  %2 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %dev, i32 16) #9, !srcloc !44
  %and.i = and i32 %2, %dev
  %arrayidx.i = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %and.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %get_synthinfo_nospec.exit.cleanup_crit_edge, label %lor.lhs.false

get_synthinfo_nospec.exit.cleanup_crit_edge:      ; preds = %get_synthinfo_nospec.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %get_synthinfo_nospec.exit
  %is_midi = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %and.i, i32 5
  %3 = ptrtoint ptr %is_midi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %is_midi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call fastcc ptr @get_synthdev(ptr noundef %dp, i32 noundef %dev)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %ioctl = getelementptr inbounds %struct.seq_oss_synth, ptr %call2, i32 0, i32 5, i32 3
  %5 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioctl, align 4
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.end5.if.end10_crit_edge, label %if.else

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 %6(ptr noundef nonnull %arrayidx.i, i32 noundef %cmd, i32 noundef %addr) #9
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.end5.if.end10_crit_edge
  %rc.0 = phi i32 [ %call9, %if.else ], [ -6, %if.end5.if.end10_crit_edge ]
  %use_lock = getelementptr inbounds %struct.seq_oss_synth, ptr %call2, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %use_lock, i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock, ptr %use_lock, i32 1, ptr elementtype(i32) %use_lock) #9, !srcloc !42
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %get_synthinfo_nospec.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end10 ], [ -6, %lor.lhs.false.cleanup_crit_edge ], [ -6, %get_synthinfo_nospec.exit.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ], [ -6, %lor.lhs.false.i.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_synth_raw_event(ptr noundef %dp, i32 noundef %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %ev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @get_synthdev(ptr noundef %dp, i32 noundef %dev) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %use_lock.i = getelementptr inbounds %struct.seq_oss_synth, ptr %call.i, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #9, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev)
  %cmp.i.i = icmp slt i32 %dev, 0
  br i1 %cmp.i.i, label %if.then.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.then.i
  %max_synthdev.i.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 8
  %1 = ptrtoint ptr %max_synthdev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max_synthdev.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %dev)
  %cmp1.not.i.i = icmp sgt i32 %2, %dev
  br i1 %cmp1.not.i.i, label %snd_seq_oss_synth_info.exit, label %lor.lhs.false.i.i.cleanup_crit_edge

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

snd_seq_oss_synth_info.exit:                      ; preds = %lor.lhs.false.i.i
  %3 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %dev, i32 16) #9, !srcloc !44
  %and.i.i = and i32 %3, %dev
  %arrayidx.i.i = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %and.i.i
  %tobool.not = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not, label %snd_seq_oss_synth_info.exit.cleanup_crit_edge, label %lor.lhs.false

snd_seq_oss_synth_info.exit.cleanup_crit_edge:    ; preds = %snd_seq_oss_synth_info.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %snd_seq_oss_synth_info.exit
  %is_midi = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %and.i.i, i32 5
  %4 = ptrtoint ptr %is_midi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %is_midi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %ev to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 51, ptr %ev, align 4
  %data2 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7
  %7 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %data, align 1
  %9 = ptrtoint ptr %data2 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %8, ptr %data2, align 4
  %call.i.i = tail call fastcc ptr @get_synthdev(ptr noundef %dp, i32 noundef %dev) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i.i.i:                              ; preds = %if.end
  %use_lock.i.i = getelementptr inbounds %struct.seq_oss_synth, ptr %call.i.i, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %use_lock.i.i, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i.i, ptr %use_lock.i.i, i32 1, ptr elementtype(i32) %use_lock.i.i) #9, !srcloc !42
  %11 = ptrtoint ptr %max_synthdev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_synthdev.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %dev)
  %cmp1.not.i.i.i = icmp sgt i32 %12, %dev
  br i1 %cmp1.not.i.i.i, label %snd_seq_oss_synth_info.exit.i, label %lor.lhs.false.i.i.i.cleanup_crit_edge

lor.lhs.false.i.i.i.cleanup_crit_edge:            ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

snd_seq_oss_synth_info.exit.i:                    ; preds = %lor.lhs.false.i.i.i
  %13 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %dev, i32 16) #9, !srcloc !44
  %and.i.i.i = and i32 %13, %dev
  %arrayidx.i.i.i = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %and.i.i.i
  %tobool.not.i9 = icmp eq ptr %arrayidx.i.i.i, null
  br i1 %tobool.not.i9, label %snd_seq_oss_synth_info.exit.i.cleanup_crit_edge, label %if.end.i

snd_seq_oss_synth_info.exit.i.cleanup_crit_edge:  ; preds = %snd_seq_oss_synth_info.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %snd_seq_oss_synth_info.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %addr.i = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %arrayidx.i.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %addr.i, align 4
  %port.i = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %arrayidx.i.i.i, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %port.i, align 1
  %queue.i.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 3
  %18 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %queue.i.i, align 4
  %conv.i.i = trunc i32 %19 to i8
  %queue1.i.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 3
  %20 = ptrtoint ptr %queue1.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i.i, ptr %queue1.i.i, align 1
  %source.i.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 5
  %addr.i.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 4
  %21 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %addr.i.i, align 4
  %23 = ptrtoint ptr %source.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %source.i.i, align 4
  %dest.i.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 6
  %24 = ptrtoint ptr %dest.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %15, ptr %dest.i.i, align 2
  %port.i.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 6, i32 1
  %25 = ptrtoint ptr %port.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %17, ptr %port.i.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %snd_seq_oss_synth_info.exit.i.cleanup_crit_edge, %lor.lhs.false.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %snd_seq_oss_synth_info.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %lor.lhs.false.cleanup_crit_edge ], [ -6, %snd_seq_oss_synth_info.exit.cleanup_crit_edge ], [ 0, %if.end.i ], [ -22, %snd_seq_oss_synth_info.exit.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.i.i.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ], [ -6, %lor.lhs.false.i.i.cleanup_crit_edge ], [ -6, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_synth_make_info(ptr noundef %dp, i32 noundef %dev, ptr noundef %inf) local_unnamed_addr #1 align 64 {
entry:
  %minf = alloca %struct.midi_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev)
  %cmp.i = icmp slt i32 %dev, 0
  br i1 %cmp.i, label %entry.cleanup27_crit_edge, label %lor.lhs.false.i

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup27

lor.lhs.false.i:                                  ; preds = %entry
  %max_synthdev.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %max_synthdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_synthdev.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %dev)
  %cmp1.not.i = icmp sgt i32 %1, %dev
  br i1 %cmp1.not.i, label %get_synthinfo_nospec.exit, label %lor.lhs.false.i.cleanup27_crit_edge

lor.lhs.false.i.cleanup27_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup27

get_synthinfo_nospec.exit:                        ; preds = %lor.lhs.false.i
  %2 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %dev, i32 16) #9, !srcloc !44
  %and.i = and i32 %2, %dev
  %arrayidx.i = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %and.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %get_synthinfo_nospec.exit.cleanup27_crit_edge, label %if.end

get_synthinfo_nospec.exit.cleanup27_crit_edge:    ; preds = %get_synthinfo_nospec.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup27

if.end:                                           ; preds = %get_synthinfo_nospec.exit
  %is_midi = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %and.i, i32 5
  %3 = ptrtoint ptr %is_midi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %is_midi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 116, ptr nonnull %minf) #9
  %5 = call ptr @memset(ptr %minf, i32 255, i32 116)
  %midi_mapped = getelementptr %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 9, i32 %and.i, i32 6
  %6 = ptrtoint ptr %midi_mapped to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %midi_mapped, align 4
  %call3 = call i32 @snd_seq_oss_midi_make_info(ptr noundef %dp, i32 noundef %7, ptr noundef nonnull %minf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %cleanup27.critedge

if.end6:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %synth_type = getelementptr inbounds %struct.synth_info, ptr %inf, i32 0, i32 2
  %8 = ptrtoint ptr %synth_type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %synth_type, align 4
  %synth_subtype = getelementptr inbounds %struct.synth_info, ptr %inf, i32 0, i32 3
  %9 = ptrtoint ptr %synth_subtype to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %synth_subtype, align 4
  %nr_voices = getelementptr inbounds %struct.synth_info, ptr %inf, i32 0, i32 5
  %10 = ptrtoint ptr %nr_voices to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16, ptr %nr_voices, align 4
  %device = getelementptr inbounds %struct.synth_info, ptr %inf, i32 0, i32 1
  %11 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %dev, ptr %device, align 4
  %call9 = call i32 @strscpy(ptr noundef %inf, ptr noundef nonnull %minf, i32 noundef 30) #9
  call void @llvm.lifetime.end.p0(i64 116, ptr nonnull %minf) #9
  br label %cleanup27

if.else:                                          ; preds = %if.end
  %call10 = tail call fastcc ptr @get_synthdev(ptr noundef %dp, i32 noundef %dev)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.else.cleanup27_crit_edge, label %if.end13

if.else.cleanup27_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup27

if.end13:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %synth_type14 = getelementptr inbounds %struct.seq_oss_synth, ptr %call10, i32 0, i32 1
  %12 = ptrtoint ptr %synth_type14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %synth_type14, align 4
  %synth_type15 = getelementptr inbounds %struct.synth_info, ptr %inf, i32 0, i32 2
  %14 = ptrtoint ptr %synth_type15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %synth_type15, align 4
  %synth_subtype16 = getelementptr inbounds %struct.seq_oss_synth, ptr %call10, i32 0, i32 2
  %15 = ptrtoint ptr %synth_subtype16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %synth_subtype16, align 4
  %synth_subtype17 = getelementptr inbounds %struct.synth_info, ptr %inf, i32 0, i32 3
  %17 = ptrtoint ptr %synth_subtype17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %synth_subtype17, align 4
  %nr_voices18 = getelementptr inbounds %struct.seq_oss_synth, ptr %call10, i32 0, i32 3
  %18 = ptrtoint ptr %nr_voices18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_voices18, align 4
  %nr_voices19 = getelementptr inbounds %struct.synth_info, ptr %inf, i32 0, i32 5
  %20 = ptrtoint ptr %nr_voices19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %nr_voices19, align 4
  %device20 = getelementptr inbounds %struct.synth_info, ptr %inf, i32 0, i32 1
  %21 = ptrtoint ptr %device20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %dev, ptr %device20, align 4
  %name23 = getelementptr inbounds %struct.seq_oss_synth, ptr %call10, i32 0, i32 4
  %call25 = tail call i32 @strscpy(ptr noundef %inf, ptr noundef %name23, i32 noundef 30) #9
  %use_lock = getelementptr inbounds %struct.seq_oss_synth, ptr %call10, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %use_lock, i32 1, i32 3, i32 1) #9
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock, ptr %use_lock, i32 1, ptr elementtype(i32) %use_lock) #9, !srcloc !42
  br label %cleanup27

cleanup27.critedge:                               ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 116, ptr nonnull %minf) #9
  br label %cleanup27

cleanup27:                                        ; preds = %cleanup27.critedge, %if.end13, %if.else.cleanup27_crit_edge, %if.end6, %get_synthinfo_nospec.exit.cleanup27_crit_edge, %lor.lhs.false.i.cleanup27_crit_edge, %entry.cleanup27_crit_edge
  %retval.1 = phi i32 [ -6, %get_synthinfo_nospec.exit.cleanup27_crit_edge ], [ -6, %cleanup27.critedge ], [ -6, %if.else.cleanup27_crit_edge ], [ 0, %if.end6 ], [ 0, %if.end13 ], [ -6, %lor.lhs.false.i.cleanup27_crit_edge ], [ -6, %entry.cleanup27_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_midi_make_info(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_oss_synth_info_read(ptr nocapture noundef readonly %buf) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %2 = load i32, ptr @max_synth_devs, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef %2) #9
  %3 = load i32, ptr @max_synth_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp25 = icmp sgt i32 %3, 0
  br i1 %cmp25, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.026 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.6, i32 noundef %i.026) #9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @register_lock) #9
  %arrayidx.i = getelementptr [16 x ptr], ptr @synth_devs, i32 0, i32 %i.026
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i) #9
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.7) #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %use_lock.i = getelementptr inbounds %struct.seq_oss_synth, ptr %7, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #9, !srcloc !41
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i) #9
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buf, align 4
  %name = getelementptr inbounds %struct.seq_oss_synth, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %12, ptr noundef nonnull @.str.8, ptr noundef %name) #9
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf, align 4
  %synth_type = getelementptr inbounds %struct.seq_oss_synth, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %synth_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %synth_type, align 4
  %synth_subtype = getelementptr inbounds %struct.seq_oss_synth, ptr %7, i32 0, i32 2
  %17 = ptrtoint ptr %synth_subtype to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %synth_subtype, align 4
  %nr_voices = getelementptr inbounds %struct.seq_oss_synth, ptr %7, i32 0, i32 3
  %19 = ptrtoint ptr %nr_voices to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr_voices, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %14, ptr noundef nonnull @.str.9, i32 noundef %16, i32 noundef %18, i32 noundef %20) #9
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buf, align 4
  %ioctl = getelementptr inbounds %struct.seq_oss_synth, ptr %7, i32 0, i32 5, i32 3
  %23 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioctl, align 4
  %25 = ptrtoint ptr %24 to i32
  %call7 = tail call ptr @enabled_str(i32 noundef %25) #9
  %load_patch = getelementptr inbounds %struct.seq_oss_synth, ptr %7, i32 0, i32 5, i32 4
  %26 = ptrtoint ptr %load_patch to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %load_patch, align 4
  %28 = ptrtoint ptr %27 to i32
  %call9 = tail call ptr @enabled_str(i32 noundef %28) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %22, ptr noundef nonnull @.str.10, ptr noundef %call7, ptr noundef %call9) #9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #9
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #9, !srcloc !42
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %inc = add nuw nsw i32 %i.026, 1
  %30 = load i32, ptr @max_synth_devs, align 4
  %cmp = icmp slt i32 %inc, %30
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @enabled_str(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_kernel_client_dispatch(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/core/seq/oss/seq_oss_synth.c", i32 121, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @snd_seq_oss_synth_probe._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @snd_seq_oss_synth_probe._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/core/seq/oss/seq_oss_synth.c", i32 154, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @snd_seq_oss_synth_remove._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @snd_seq_oss_synth_remove._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/core/seq/oss/seq_oss_synth.c", i32 648, i32 2}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/core/seq/oss/seq_oss_synth.c", i32 650, i32 3}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/core/seq/oss/seq_oss_synth.c", i32 653, i32 4}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/core/seq/oss/seq_oss_synth.c", i32 656, i32 3}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/core/seq/oss/seq_oss_synth.c", i32 657, i32 3}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/core/seq/oss/seq_oss_synth.c", i32 660, i32 3}
!23 = !{ptr @max_synth_devs, !24, !"max_synth_devs", i1 false, i1 false}
!24 = !{!"../sound/core/seq/oss/seq_oss_synth.c", i32 58, i32 12}
!25 = !{ptr @synth_devs, !26, !"synth_devs", i1 false, i1 false}
!26 = !{!"../sound/core/seq/oss/seq_oss_synth.c", i32 59, i32 30}
!27 = !{ptr @midi_synth_dev, !28, !"midi_synth_dev", i1 false, i1 false}
!28 = !{!"../sound/core/seq/oss/seq_oss_synth.c", i32 60, i32 29}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/core/seq/oss/seq_oss_synth.c", i32 68, i32 8}
!31 = !{ptr @register_lock, !30, !"register_lock", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i64 2148218199, i64 2148218225, i64 2148218254, i64 2148218288, i64 2148218319, i64 2148218342}
!42 = !{i64 2148220664, i64 2148220690, i64 2148220719, i64 2148220753, i64 2148220784, i64 2148220807}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{i64 667001, i64 667018}
