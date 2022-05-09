; ModuleID = '/llk/IR_all_yes/sound/core/seq/seq_timer.c_pt.bc'
source_filename = "../sound/core/seq/seq_timer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_seq_timer = type { i8, i32, i32, %struct.snd_seq_real_time, %struct.snd_seq_timer_tick, i32, i32, %struct.snd_timer_id, ptr, i32, i32, i32, i32, %struct.timespec64, %struct.spinlock }
%struct.snd_seq_real_time = type { i32, i32 }
%struct.snd_seq_timer_tick = type { i32, i32, i32 }
%struct.snd_timer_id = type { i32, i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_seq_queue = type { i32, [64 x i8], ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, %struct.spinlock, %struct.spinlock, [6 x i32], i32, %struct.mutex, %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.snd_timer_instance = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.snd_timer = type { i32, ptr, ptr, i32, i32, [64 x i8], [80 x i8], i32, i32, i32, ptr, ptr, %struct.snd_timer_hardware, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, i32, i32 }
%struct.snd_timer_hardware = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@snd_seq_timer_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&tmr->lock\00", [21 x i8] zeroinitializer }, align 32
@snd_seq_timer_delete.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"snd_seq\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_seq_timer_delete\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/core/seq/seq_timer.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ALSA: seq: snd_seq_timer_delete() called with NULL timer\0A\00", [38 x i8] zeroinitializer }, align 32
@seq_default_timer_class = external dso_local local_unnamed_addr global i32, align 4
@seq_default_timer_sclass = external dso_local local_unnamed_addr global i32, align 4
@seq_default_timer_card = external dso_local local_unnamed_addr global i32, align 4
@seq_default_timer_device = external dso_local local_unnamed_addr global i32, align 4
@seq_default_timer_subdevice = external dso_local local_unnamed_addr global i32, align 4
@seq_default_timer_resolution = external dso_local local_unnamed_addr global i32, align 4
@snd_seq_timer_set_tempo_ppq.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 0, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"snd_seq_timer_set_tempo_ppq\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ALSA: seq: cannot change ppq of a running timer\0A\00", [47 x i8] zeroinitializer }, align 32
@snd_seq_timer_set_skew.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_seq_timer_set_skew\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ALSA: seq: invalid skew base 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sequencer queue %i\00", [45 x i8] zeroinitializer }, align 32
@snd_seq_timer_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013ALSA: seq fatal error: cannot create timer (%i)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_seq_timer_open\00", [45 x i8] zeroinitializer }, align 32
@snd_seq_timer_open._entry_ptr = internal global ptr @snd_seq_timer_open._entry, section ".printk_index", align 4
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Timer for queue %i : %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  Period time : %lu.%09lu\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"  Skew : %u / %u\0A\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.15 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 46, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 64, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 194, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 249, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 270, i32 15 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 295, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 496, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 498, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [30 x i8] c"../sound/core/seq/seq_timer.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 499, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @snd_seq_timer_open._entry, ptr @snd_seq_timer_open._entry_ptr, ptr @snd_seq_timer_new.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_seq_timer_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_seq_timer_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_seq_timer_new() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 144) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %call7.i.i, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @snd_seq_timer_new.__key, i16 noundef signext 3) #8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %ppq.i = getelementptr inbounds %struct.snd_seq_timer, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %ppq.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 96, ptr %ppq.i, align 8
  %tempo.i = getelementptr inbounds %struct.snd_seq_timer, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %tempo.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 500000, ptr %tempo.i, align 4
  %3 = getelementptr inbounds %struct.snd_seq_timer, ptr %call7.i.i, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 5208333, ptr %3, align 8
  %tick15.i.i = getelementptr inbounds %struct.snd_seq_timer, ptr %call7.i.i, i32 0, i32 4
  %fraction.i.i.i = getelementptr inbounds %struct.snd_seq_timer, ptr %call7.i.i, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %fraction.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fraction.i.i.i, align 4
  %.frozen = freeze i32 %6
  %div.i.i.i = udiv i32 %.frozen, 5208333
  %7 = ptrtoint ptr %tick15.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tick15.i.i, align 4
  %add4.i.i.i = add i32 %8, %div.i.i.i
  store i32 %add4.i.i.i, ptr %tick15.i.i, align 4
  %9 = mul i32 %div.i.i.i, 5208333
  %rem.i.i.i.decomposed = sub i32 %.frozen, %9
  store i32 %rem.i.i.i.decomposed, ptr %fraction.i.i.i, align 4
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %call7.i.i, align 8
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %call7.i.i, align 8
  %type.i = getelementptr inbounds %struct.snd_seq_timer, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %type.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @seq_default_timer_class to i32))
  %12 = load i32, ptr @seq_default_timer_class, align 4
  %alsa_id.i = getelementptr inbounds %struct.snd_seq_timer, ptr %call7.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %alsa_id.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %alsa_id.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @seq_default_timer_sclass to i32))
  %14 = load i32, ptr @seq_default_timer_sclass, align 4
  %dev_sclass.i = getelementptr inbounds %struct.snd_seq_timer, ptr %call7.i.i, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %dev_sclass.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %dev_sclass.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @seq_default_timer_card to i32))
  %16 = load i32, ptr @seq_default_timer_card, align 4
  %card.i = getelementptr inbounds %struct.snd_seq_timer, ptr %call7.i.i, i32 0, i32 7, i32 2
  %17 = ptrtoint ptr %card.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %card.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @seq_default_timer_device to i32))
  %18 = load i32, ptr @seq_default_timer_device, align 4
  %device.i = getelementptr inbounds %struct.snd_seq_timer, ptr %call7.i.i, i32 0, i32 7, i32 3
  %19 = ptrtoint ptr %device.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %device.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @seq_default_timer_subdevice to i32))
  %20 = load i32, ptr @seq_default_timer_subdevice, align 4
  %subdevice.i = getelementptr inbounds %struct.snd_seq_timer, ptr %call7.i.i, i32 0, i32 7, i32 4
  %21 = ptrtoint ptr %subdevice.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %subdevice.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @seq_default_timer_resolution to i32))
  %22 = load i32, ptr @seq_default_timer_resolution, align 4
  %preferred_resolution.i = getelementptr inbounds %struct.snd_seq_timer, ptr %call7.i.i, i32 0, i32 10
  %23 = ptrtoint ptr %preferred_resolution.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %preferred_resolution.i, align 4
  %skew_base.i = getelementptr inbounds %struct.snd_seq_timer, ptr %call7.i.i, i32 0, i32 12
  %24 = ptrtoint ptr %skew_base.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 65536, ptr %skew_base.i, align 4
  %skew.i = getelementptr inbounds %struct.snd_seq_timer, ptr %call7.i.i, i32 0, i32 11
  %25 = ptrtoint ptr %skew.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 65536, ptr %skew.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #8
  %call2.i7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %cur_time.i.i = getelementptr inbounds %struct.snd_seq_timer, ptr %call7.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %cur_time.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %cur_time.i.i, align 4
  %tv_nsec.i.i = getelementptr inbounds %struct.snd_seq_timer, ptr %call7.i.i, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %tv_nsec.i.i, align 8
  %28 = ptrtoint ptr %tick15.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %tick15.i.i, align 4
  %29 = ptrtoint ptr %fraction.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %fraction.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i7) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_timer_defaults(ptr noundef %tmr) local_unnamed_addr #0 align 64 {
snd_seq_timer_set_tick_resolution.exit:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 14
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %ppq = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 2
  %0 = ptrtoint ptr %ppq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 96, ptr %ppq, align 8
  %tempo = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 1
  %1 = ptrtoint ptr %tempo to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 500000, ptr %tempo, align 4
  %2 = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5208333, ptr %2, align 4
  %tick15.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 4
  %fraction.i.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %fraction.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fraction.i.i, align 4
  %.frozen = freeze i32 %5
  %div.i.i = udiv i32 %.frozen, 5208333
  %6 = ptrtoint ptr %tick15.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tick15.i, align 4
  %add4.i.i = add i32 %7, %div.i.i
  store i32 %add4.i.i, ptr %tick15.i, align 4
  %8 = mul i32 %div.i.i, 5208333
  %rem.i.i.decomposed = sub i32 %.frozen, %8
  store i32 %rem.i.i.decomposed, ptr %fraction.i.i, align 4
  %9 = ptrtoint ptr %tmr to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %tmr, align 8
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %tmr, align 8
  %type = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 6
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %type, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @seq_default_timer_class to i32))
  %11 = load i32, ptr @seq_default_timer_class, align 4
  %alsa_id = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 7
  %12 = ptrtoint ptr %alsa_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %alsa_id, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @seq_default_timer_sclass to i32))
  %13 = load i32, ptr @seq_default_timer_sclass, align 4
  %dev_sclass = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %dev_sclass to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %dev_sclass, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @seq_default_timer_card to i32))
  %15 = load i32, ptr @seq_default_timer_card, align 4
  %card = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %card, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @seq_default_timer_device to i32))
  %17 = load i32, ptr @seq_default_timer_device, align 4
  %device = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 7, i32 3
  %18 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @seq_default_timer_subdevice to i32))
  %19 = load i32, ptr @seq_default_timer_subdevice, align 4
  %subdevice = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 7, i32 4
  %20 = ptrtoint ptr %subdevice to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %subdevice, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @seq_default_timer_resolution to i32))
  %21 = load i32, ptr @seq_default_timer_resolution, align 4
  %preferred_resolution = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 10
  %22 = ptrtoint ptr %preferred_resolution to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %preferred_resolution, align 4
  %skew_base = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 12
  %23 = ptrtoint ptr %skew_base to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 65536, ptr %skew_base, align 4
  %skew = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 11
  %24 = ptrtoint ptr %skew to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 65536, ptr %skew, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_timer_reset(ptr noundef %tmr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 14
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %cur_time.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 3
  %0 = ptrtoint ptr %cur_time.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cur_time.i, align 4
  %tv_nsec.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %tv_nsec.i, align 4
  %tick.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 4
  %2 = ptrtoint ptr %tick.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tick.i, align 4
  %fraction.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 4, i32 2
  %3 = ptrtoint ptr %fraction.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %fraction.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_timer_delete(ptr nocapture noundef %tmr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tmr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tmr, align 4
  store ptr null, ptr %tmr, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_seq_timer_delete.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_seq_timer_delete, %if.then3)) #8
          to label %cleanup [label %if.then3], !srcloc !39

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @snd_seq_timer_delete.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end4:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %1, align 8
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %1, align 8
  %lock.i = getelementptr inbounds %struct.snd_seq_timer, ptr %1, i32 0, i32 14
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %timeri.i.i = getelementptr inbounds %struct.snd_seq_timer, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %timeri.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %timeri.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end4.snd_seq_timer_stop.exit_crit_edge, label %if.end.i.i

if.end4.snd_seq_timer_stop.exit_crit_edge:        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_seq_timer_stop.exit

if.end.i.i:                                       ; preds = %if.end4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i.i = load i8, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool1.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool1.not.i.i, label %if.end.i.i.snd_seq_timer_stop.exit_crit_edge, label %if.end3.i.i

if.end.i.i.snd_seq_timer_stop.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_seq_timer_stop.exit

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear.i.i = and i8 %bf.load.i.i, 127
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %bf.clear.i.i, ptr %1, align 8
  %call.i.i = tail call i32 @snd_timer_pause(ptr noundef nonnull %4) #8
  br label %snd_seq_timer_stop.exit

snd_seq_timer_stop.exit:                          ; preds = %if.end3.i.i, %if.end.i.i.snd_seq_timer_stop.exit_crit_edge, %if.end4.snd_seq_timer_stop.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  %call2.i12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %cur_time.i.i = getelementptr inbounds %struct.snd_seq_timer, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %cur_time.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %cur_time.i.i, align 4
  %tv_nsec.i.i = getelementptr inbounds %struct.snd_seq_timer, ptr %1, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tv_nsec.i.i, align 4
  %tick.i.i = getelementptr inbounds %struct.snd_seq_timer, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %tick.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %tick.i.i, align 4
  %fraction.i.i = getelementptr inbounds %struct.snd_seq_timer, ptr %1, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %fraction.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %fraction.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i12) #8
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %cleanup

cleanup:                                          ; preds = %snd_seq_timer_stop.exit, %if.then3, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_timer_stop(ptr noundef %tmr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 14
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %timeri.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 8
  %0 = ptrtoint ptr %timeri.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timeri.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.seq_timer_stop.exit_crit_edge, label %if.end.i

entry.seq_timer_stop.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %seq_timer_stop.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %tmr to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %tmr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool1.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool1.not.i, label %if.end.i.seq_timer_stop.exit_crit_edge, label %if.end3.i

if.end.i.seq_timer_stop.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %seq_timer_stop.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear.i = and i8 %bf.load.i, 127
  %3 = ptrtoint ptr %tmr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %bf.clear.i, ptr %tmr, align 8
  %call.i = tail call i32 @snd_timer_pause(ptr noundef nonnull %1) #8
  br label %seq_timer_stop.exit

seq_timer_stop.exit:                              ; preds = %if.end3.i, %if.end.i.seq_timer_stop.exit_crit_edge, %entry.seq_timer_stop.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end3.i ], [ -22, %entry.seq_timer_stop.exit_crit_edge ], [ 0, %if.end.i.seq_timer_stop.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_timer_set_tempo(ptr noundef %tmr, i32 noundef %tempo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tmr, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !40

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 166, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %tempo)
  %cmp = icmp slt i32 %tempo, 1
  br i1 %cmp, label %if.end23.cleanup_crit_edge, label %do.body27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body27:                                        ; preds = %if.end23
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 14
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %tempo35 = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 1
  %0 = ptrtoint ptr %tempo35 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tempo35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %tempo)
  %cmp36.not = icmp eq i32 %1, %tempo
  br i1 %cmp36.not, label %do.body27.if.end40_crit_edge, label %if.then38

do.body27.if.end40_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then38:                                        ; preds = %do.body27
  %2 = ptrtoint ptr %tempo35 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %tempo, ptr %tempo35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %tempo)
  %cmp.i = icmp ult i32 %tempo, 1000000
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = mul nuw nsw i32 %tempo, 1000
  %ppq.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 2
  %3 = ptrtoint ptr %ppq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ppq.i, align 8
  %div.i = udiv i32 %mul.i, %4
  br label %snd_seq_timer_set_tick_resolution.exit

if.else.i:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  %ppq3.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 2
  %5 = ptrtoint ptr %ppq3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ppq3.i, align 8
  %.frozen = freeze i32 %6
  %div9.i = udiv i32 %tempo, %.frozen
  %7 = mul i32 %div9.i, %.frozen
  %rem.i.decomposed = sub i32 %tempo, %7
  %mul4.i = mul i32 %rem.i.decomposed, 1000
  %div6.i = udiv i32 %mul4.i, %6
  %mul10.i = mul i32 %div9.i, 1000
  %add.i = add i32 %mul10.i, %div6.i
  br label %snd_seq_timer_set_tick_resolution.exit

snd_seq_timer_set_tick_resolution.exit:           ; preds = %if.else.i, %if.then.i
  %add.sink.i = phi i32 [ %div.i, %if.then.i ], [ %add.i, %if.else.i ]
  %8 = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 4, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.sink.i)
  %cmp17.i = icmp eq i32 %add.sink.i, 0
  %spec.select.i = select i1 %cmp17.i, i32 1, i32 %add.sink.i
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select.i, ptr %8, align 4
  %tick15.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 4
  %fraction.i.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %fraction.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fraction.i.i, align 4
  %.frozen50 = freeze i32 %11
  %spec.select.i.frozen = freeze i32 %spec.select.i
  %div.i.i = udiv i32 %.frozen50, %spec.select.i.frozen
  %12 = ptrtoint ptr %tick15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tick15.i, align 4
  %add4.i.i = add i32 %13, %div.i.i
  store i32 %add4.i.i, ptr %tick15.i, align 4
  %14 = mul i32 %div.i.i, %spec.select.i.frozen
  %rem.i.i.decomposed = sub i32 %.frozen50, %14
  store i32 %rem.i.i.decomposed, ptr %fraction.i.i, align 4
  br label %if.end40

if.end40:                                         ; preds = %snd_seq_timer_set_tick_resolution.exit, %do.body27.if.end40_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call30) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end40 ], [ -22, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_timer_set_tempo_ppq(ptr noundef %tmr, i32 noundef %tempo, i32 noundef %ppq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tmr, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !40

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 185, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %tempo)
  %cmp = icmp slt i32 %tempo, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ppq)
  %cmp24 = icmp slt i32 %ppq, 1
  %or.cond = or i1 %cmp, %cmp24
  br i1 %or.cond, label %if.end23.cleanup_crit_edge, label %do.body28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body28:                                        ; preds = %if.end23
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 14
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %0 = ptrtoint ptr %tmr to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %tmr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool36.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool36.not, label %do.body28.if.end56_crit_edge, label %land.lhs.true

do.body28.if.end56_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

land.lhs.true:                                    ; preds = %do.body28
  %ppq37 = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 2
  %1 = ptrtoint ptr %ppq37 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ppq37, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %ppq)
  %cmp38.not = icmp eq i32 %2, %ppq
  br i1 %cmp38.not, label %land.lhs.true.if.end56_crit_edge, label %if.then40

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then40:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call31) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_seq_timer_set_tempo_ppq.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_seq_timer_set_tempo_ppq, %if.then52)) #8
          to label %cleanup [label %if.then52], !srcloc !39

if.then52:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @snd_seq_timer_set_tempo_ppq.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end56:                                         ; preds = %land.lhs.true.if.end56_crit_edge, %do.body28.if.end56_crit_edge
  %tempo57 = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 1
  %3 = ptrtoint ptr %tempo57 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tempo57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %tempo)
  %cmp58.not = icmp eq i32 %4, %tempo
  br i1 %cmp58.not, label %lor.rhs, label %if.then66.critedge

lor.rhs:                                          ; preds = %if.end56
  %ppq60 = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 2
  %5 = ptrtoint ptr %ppq60 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ppq60, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %ppq)
  %cmp61.not = icmp eq i32 %6, %ppq
  %7 = ptrtoint ptr %tempo57 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %tempo, ptr %tempo57, align 4
  %8 = ptrtoint ptr %ppq60 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %ppq, ptr %ppq60, align 8
  br i1 %cmp61.not, label %lor.rhs.if.end67_crit_edge, label %lor.rhs.if.then66_crit_edge

lor.rhs.if.then66_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then66

lor.rhs.if.end67_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then66.critedge:                               ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %tempo57 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %tempo, ptr %tempo57, align 4
  %ppq64.c = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 2
  %10 = ptrtoint ptr %ppq64.c to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %ppq, ptr %ppq64.c, align 8
  br label %if.then66

if.then66:                                        ; preds = %if.then66.critedge, %lor.rhs.if.then66_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %tempo)
  %cmp.i = icmp ult i32 %tempo, 1000000
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = mul nuw nsw i32 %tempo, 1000
  %ppq.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 2
  %11 = ptrtoint ptr %ppq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ppq.i, align 8
  %div.i = udiv i32 %mul.i, %12
  br label %snd_seq_timer_set_tick_resolution.exit

if.else.i:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  %ppq3.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 2
  %13 = ptrtoint ptr %ppq3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ppq3.i, align 8
  %.frozen = freeze i32 %14
  %div9.i = udiv i32 %tempo, %.frozen
  %15 = mul i32 %div9.i, %.frozen
  %rem.i.decomposed = sub i32 %tempo, %15
  %mul4.i = mul i32 %rem.i.decomposed, 1000
  %div6.i = udiv i32 %mul4.i, %14
  %mul10.i = mul i32 %div9.i, 1000
  %add.i = add i32 %mul10.i, %div6.i
  br label %snd_seq_timer_set_tick_resolution.exit

snd_seq_timer_set_tick_resolution.exit:           ; preds = %if.else.i, %if.then.i
  %add.sink.i = phi i32 [ %div.i, %if.then.i ], [ %add.i, %if.else.i ]
  %16 = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 4, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.sink.i)
  %cmp17.i = icmp eq i32 %add.sink.i, 0
  %spec.select.i = select i1 %cmp17.i, i32 1, i32 %add.sink.i
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select.i, ptr %16, align 4
  %tick15.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 4
  %fraction.i.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 4, i32 2
  %18 = ptrtoint ptr %fraction.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fraction.i.i, align 4
  %.frozen88 = freeze i32 %19
  %spec.select.i.frozen = freeze i32 %spec.select.i
  %div.i.i = udiv i32 %.frozen88, %spec.select.i.frozen
  %20 = ptrtoint ptr %tick15.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tick15.i, align 4
  %add4.i.i = add i32 %21, %div.i.i
  store i32 %add4.i.i, ptr %tick15.i, align 4
  %22 = mul i32 %div.i.i, %spec.select.i.frozen
  %rem.i.i.decomposed = sub i32 %.frozen88, %22
  store i32 %rem.i.i.decomposed, ptr %fraction.i.i, align 4
  br label %if.end67

if.end67:                                         ; preds = %snd_seq_timer_set_tick_resolution.exit, %lor.rhs.if.end67_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call31) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.then52, %if.then40, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end67 ], [ -22, %if.end23.cleanup_crit_edge ], [ -16, %if.then52 ], [ -16, %if.then40 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_timer_set_position_tick(ptr noundef %tmr, i32 noundef %position) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tmr, null
  br i1 %tobool.not, label %do.end, label %do.body25, !prof !40

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 212, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

do.body25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 14
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %tick = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 4
  %0 = ptrtoint ptr %tick to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %position, ptr %tick, align 4
  %fraction = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 4, i32 2
  %1 = ptrtoint ptr %fraction to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %fraction, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call27) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body25, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.body25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_timer_set_position_time(ptr noundef %tmr, [2 x i32] %position.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %position.coerce.fca.0.extract = extractvalue [2 x i32] %position.coerce, 0
  %position.coerce.fca.1.extract = extractvalue [2 x i32] %position.coerce, 1
  %tobool.not = icmp eq ptr %tmr, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !40

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 228, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999999, i32 %position.coerce.fca.1.extract)
  %cmp5.i = icmp ugt i32 %position.coerce.fca.1.extract, 999999999
  br i1 %cmp5.i, label %while.body.lr.ph.i, label %if.end23.snd_seq_sanity_real_time.exit_crit_edge

if.end23.snd_seq_sanity_real_time.exit_crit_edge: ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_seq_sanity_real_time.exit

while.body.lr.ph.i:                               ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %0 = add i32 %position.coerce.fca.1.extract, -1000000000
  %1 = udiv i32 %0, 1000000000
  %.neg.i = mul i32 %1, -1000000000
  %2 = add i32 %.neg.i, %0
  %3 = add i32 %position.coerce.fca.0.extract, 1
  %4 = add i32 %3, %1
  br label %snd_seq_sanity_real_time.exit

snd_seq_sanity_real_time.exit:                    ; preds = %while.body.lr.ph.i, %if.end23.snd_seq_sanity_real_time.exit_crit_edge
  %position.sroa.4.0 = phi i32 [ %2, %while.body.lr.ph.i ], [ %position.coerce.fca.1.extract, %if.end23.snd_seq_sanity_real_time.exit_crit_edge ]
  %position.sroa.0.0 = phi i32 [ %4, %while.body.lr.ph.i ], [ %position.coerce.fca.0.extract, %if.end23.snd_seq_sanity_real_time.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 14
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %cur_time = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 3
  %position.sroa.4.0.insert.ext = zext i32 %position.sroa.4.0 to i64
  %position.sroa.0.0.insert.ext = zext i32 %position.sroa.0.0 to i64
  %position.sroa.0.0.insert.shift = shl nuw i64 %position.sroa.0.0.insert.ext, 32
  %position.sroa.0.0.insert.insert = or i64 %position.sroa.0.0.insert.shift, %position.sroa.4.0.insert.ext
  %5 = ptrtoint ptr %cur_time to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 %position.sroa.0.0.insert.insert, ptr %cur_time, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call27) #8
  br label %cleanup

cleanup:                                          ; preds = %snd_seq_sanity_real_time.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %snd_seq_sanity_real_time.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_timer_set_skew(ptr noundef %tmr, i32 noundef %skew, i32 noundef %base) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tmr, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !40

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 244, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %base)
  %cmp.not = icmp eq i32 %base, 65536
  br i1 %cmp.not, label %do.body40, label %do.body25

do.body25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_seq_timer_set_skew.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_seq_timer_set_skew, %if.then34)) #8
          to label %cleanup [label %if.then34], !srcloc !39

if.then34:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @snd_seq_timer_set_skew.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.8, i32 noundef %base) #8
  br label %cleanup

do.body40:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 14
  %call44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %skew49 = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 11
  %0 = ptrtoint ptr %skew49 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %skew, ptr %skew49, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call44) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body40, %if.then34, %do.body25, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.body40 ], [ -22, %if.then34 ], [ -22, %do.body25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_timer_open(ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  %str = alloca [32 x i8], align 1
  %tid = alloca %struct.snd_timer_id, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %str) #8
  %timer = getelementptr inbounds %struct.snd_seq_queue, ptr %q, i32 0, i32 4
  %0 = call ptr @memset(ptr %str, i32 255, i32 32)
  %1 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %timer, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !40

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 266, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %entry
  %timeri = getelementptr inbounds %struct.snd_seq_timer, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %timeri to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %timeri, align 4
  %tobool24.not = icmp eq ptr %4, null
  br i1 %tobool24.not, label %if.end26, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  %5 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %q, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %str, ptr noundef nonnull @.str.9, i32 noundef %6)
  %type = getelementptr inbounds %struct.snd_seq_timer, ptr %2, i32 0, i32 6
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %if.end28, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end26
  %alsa_id = getelementptr inbounds %struct.snd_seq_timer, ptr %2, i32 0, i32 7
  %9 = ptrtoint ptr %alsa_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %alsa_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp29.not = icmp eq i32 %10, 0
  br i1 %cmp29.not, label %if.end28.if.end32_crit_edge, label %if.then30

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %dev_sclass = getelementptr inbounds %struct.snd_seq_timer, ptr %2, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %dev_sclass to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %dev_sclass, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end28.if.end32_crit_edge
  %call34 = call ptr @snd_timer_instance_new(ptr noundef nonnull %str) #8
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end32.cleanup_crit_edge, label %if.end37

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end37:                                         ; preds = %if.end32
  %callback = getelementptr inbounds %struct.snd_timer_instance, ptr %call34, i32 0, i32 5
  %12 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @snd_seq_timer_interrupt, ptr %callback, align 4
  %callback_data = getelementptr inbounds %struct.snd_timer_instance, ptr %call34, i32 0, i32 8
  %13 = ptrtoint ptr %callback_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %q, ptr %callback_data, align 4
  %flags = getelementptr inbounds %struct.snd_timer_instance, ptr %call34, i32 0, i32 2
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %or = or i32 %15, 8
  store i32 %or, ptr %flags, align 4
  %16 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %q, align 4
  %call40 = call i32 @snd_timer_open(ptr noundef nonnull %call34, ptr noundef %alsa_id, i32 noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %land.lhs.true, label %if.end37.if.end66_crit_edge

if.end37.if.end66_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

land.lhs.true:                                    ; preds = %if.end37
  %18 = ptrtoint ptr %alsa_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %alsa_id, align 8
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %land.lhs.true.if.end58_crit_edge [
    i32 0, label %land.lhs.true.do.end63_crit_edge
    i32 1, label %lor.lhs.false
  ]

land.lhs.true.do.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end63

land.lhs.true.if.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

lor.lhs.false:                                    ; preds = %land.lhs.true
  %device = getelementptr inbounds %struct.snd_seq_timer, ptr %2, i32 0, i32 7, i32 3
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp50.not = icmp eq i32 %22, 0
  br i1 %cmp50.not, label %lor.lhs.false.do.end63_crit_edge, label %lor.lhs.false.if.end58_crit_edge

lor.lhs.false.if.end58_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

lor.lhs.false.do.end63_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end63

if.end58:                                         ; preds = %lor.lhs.false.if.end58_crit_edge, %land.lhs.true.if.end58_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tid) #8
  %23 = getelementptr inbounds %struct.snd_timer_id, ptr %tid, i32 0, i32 1
  %24 = getelementptr inbounds %struct.snd_timer_id, ptr %tid, i32 0, i32 2
  %25 = getelementptr inbounds %struct.snd_timer_id, ptr %tid, i32 0, i32 3
  %26 = getelementptr inbounds i8, ptr %tid, i32 16
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %26, align 4
  %28 = ptrtoint ptr %tid to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %tid, align 4
  %29 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %23, align 4
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %24, align 4
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %25, align 4
  %32 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %q, align 4
  %call56 = call i32 @snd_timer_open(ptr noundef nonnull %call34, ptr noundef nonnull %tid, i32 noundef %33) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tid) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp59 = icmp slt i32 %call56, 0
  br i1 %cmp59, label %if.end58.do.end63_crit_edge, label %if.end58.if.end66_crit_edge

if.end58.if.end66_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.end58.do.end63_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end63

do.end63:                                         ; preds = %if.end58.do.end63_crit_edge, %lor.lhs.false.do.end63_crit_edge, %land.lhs.true.do.end63_crit_edge
  %err.0112 = phi i32 [ %call56, %if.end58.do.end63_crit_edge ], [ %call40, %lor.lhs.false.do.end63_crit_edge ], [ %call40, %land.lhs.true.do.end63_crit_edge ]
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %err.0112) #12
  call void @snd_timer_instance_free(ptr noundef nonnull %call34) #8
  br label %cleanup

if.end66:                                         ; preds = %if.end58.if.end66_crit_edge, %if.end37.if.end66_crit_edge
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %2, i32 0, i32 14
  call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %34 = ptrtoint ptr %timeri to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %timeri, align 4
  %tobool68.not = icmp eq ptr %35, null
  br i1 %tobool68.not, label %if.end71, label %if.then74

if.end71:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %timeri to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call34, ptr %timeri, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  br label %cleanup

if.then74:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  call void @snd_timer_close(ptr noundef nonnull %call34) #8
  call void @snd_timer_instance_free(ptr noundef nonnull %call34) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then74, %if.end71, %do.end63, %if.end32.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %err.0112, %do.end63 ], [ -16, %if.then74 ], [ -16, %if.end23.cleanup_crit_edge ], [ -22, %if.end26.cleanup_crit_edge ], [ -12, %if.end32.cleanup_crit_edge ], [ 0, %if.end71 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %str) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_timer_instance_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_seq_timer_interrupt(ptr nocapture noundef readonly %timeri, i32 noundef %resolution, i32 noundef %ticks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %callback_data = getelementptr inbounds %struct.snd_timer_instance, ptr %timeri, i32 0, i32 8
  %0 = ptrtoint ptr %callback_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %callback_data, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %timer = getelementptr inbounds %struct.snd_seq_queue, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timer, align 4
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %do.body4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body4:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %3, i32 0, i32 14
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #8
  br label %cleanup

if.end11:                                         ; preds = %do.body4
  %mul = mul i32 %ticks, %resolution
  %skew = getelementptr inbounds %struct.snd_seq_timer, ptr %3, i32 0, i32 11
  %5 = ptrtoint ptr %skew to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %skew, align 8
  %skew_base = getelementptr inbounds %struct.snd_seq_timer, ptr %3, i32 0, i32 12
  %7 = ptrtoint ptr %skew_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %skew_base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp12.not = icmp eq i32 %6, %8
  br i1 %cmp12.not, label %if.end11.if.end20_crit_edge, label %if.then14

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr i32 %mul, 16
  %mul16 = mul i32 %6, %shr
  %and = and i32 %mul, 65535
  %mul18 = mul i32 %6, %and
  %shr19 = lshr i32 %mul18, 16
  %add = add i32 %shr19, %mul16
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %if.end11.if.end20_crit_edge
  %resolution.addr.0 = phi i32 [ %add, %if.then14 ], [ %mul, %if.end11.if.end20_crit_edge ]
  %tv_nsec.i = getelementptr inbounds %struct.snd_seq_timer, ptr %3, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tv_nsec.i, align 4
  %add.i = add i32 %10, %resolution.addr.0
  store i32 %add.i, ptr %tv_nsec.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999999, i32 %add.i)
  %cmp5.i.i = icmp ugt i32 %add.i, 999999999
  br i1 %cmp5.i.i, label %while.body.lr.ph.i.i, label %if.end20.snd_seq_inc_time_nsec.exit_crit_edge

if.end20.snd_seq_inc_time_nsec.exit_crit_edge:    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_seq_inc_time_nsec.exit

while.body.lr.ph.i.i:                             ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %cur_time = getelementptr inbounds %struct.snd_seq_timer, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %cur_time to i32
  call void @__asan_load4_noabort(i32 %11)
  %tm.promoted.i.i = load i32, ptr %cur_time, align 4
  %12 = add i32 %add.i, -1000000000
  %13 = udiv i32 %12, 1000000000
  %.neg.i.i = mul i32 %13, -1000000000
  %14 = add i32 %.neg.i.i, %12
  %15 = add nuw nsw i32 %13, 1
  %16 = add i32 %15, %tm.promoted.i.i
  %17 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %tv_nsec.i, align 4
  store i32 %16, ptr %cur_time, align 4
  br label %snd_seq_inc_time_nsec.exit

snd_seq_inc_time_nsec.exit:                       ; preds = %while.body.lr.ph.i.i, %if.end20.snd_seq_inc_time_nsec.exit_crit_edge
  %resolution1.i = getelementptr inbounds %struct.snd_seq_timer, ptr %3, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %resolution1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %resolution1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i = icmp eq i32 %19, 0
  br i1 %cmp.not.i, label %snd_seq_inc_time_nsec.exit.snd_seq_timer_update_tick.exit_crit_edge, label %if.then.i

snd_seq_inc_time_nsec.exit.snd_seq_timer_update_tick.exit_crit_edge: ; preds = %snd_seq_inc_time_nsec.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_seq_timer_update_tick.exit

if.then.i:                                        ; preds = %snd_seq_inc_time_nsec.exit
  call void @__sanitizer_cov_trace_pc() #10
  %tick = getelementptr inbounds %struct.snd_seq_timer, ptr %3, i32 0, i32 4
  %fraction.i = getelementptr inbounds %struct.snd_seq_timer, ptr %3, i32 0, i32 4, i32 2
  %20 = ptrtoint ptr %fraction.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fraction.i, align 4
  %add.i44 = add i32 %21, %resolution.addr.0
  %add.i44.frozen = freeze i32 %add.i44
  %.frozen = freeze i32 %19
  %div.i = udiv i32 %add.i44.frozen, %.frozen
  %22 = ptrtoint ptr %tick to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tick, align 4
  %add4.i = add i32 %23, %div.i
  store i32 %add4.i, ptr %tick, align 4
  %24 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 %add.i44.frozen, %24
  store i32 %rem.i.decomposed, ptr %fraction.i, align 4
  br label %snd_seq_timer_update_tick.exit

snd_seq_timer_update_tick.exit:                   ; preds = %if.then.i, %snd_seq_inc_time_nsec.exit.snd_seq_timer_update_tick.exit_crit_edge
  %last_update = getelementptr inbounds %struct.snd_seq_timer, ptr %3, i32 0, i32 13
  tail call void @ktime_get_ts64(ptr noundef %last_update) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #8
  tail call void @snd_seq_check_queue(ptr noundef nonnull %1, i32 noundef 1, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %snd_seq_timer_update_tick.exit, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_timer_open(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_timer_instance_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_timer_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_timer_close(ptr nocapture noundef readonly %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.snd_seq_queue, ptr %q, i32 0, i32 4
  %0 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timer, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !40

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 319, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %1, i32 0, i32 14
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %timeri = getelementptr inbounds %struct.snd_seq_timer, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %timeri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timeri, align 4
  store ptr null, ptr %timeri, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  %tobool26.not = icmp eq ptr %3, null
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %if.then27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_timer_close(ptr noundef nonnull %3) #8
  tail call void @snd_timer_instance_free(ptr noundef nonnull %3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then27 ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_timer_start(ptr noundef %tmr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 14
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %timeri.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 8
  %0 = ptrtoint ptr %timeri.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timeri.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.seq_timer_start.exit_crit_edge, label %if.end.i

entry.seq_timer_start.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %seq_timer_start.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %tmr to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %tmr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool1.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool1.not.i, label %if.end.i.if.end3.i_crit_edge, label %seq_timer_stop.exit.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

seq_timer_stop.exit.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear.i.i = and i8 %bf.load.i, 127
  %3 = ptrtoint ptr %tmr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %bf.clear.i.i, ptr %tmr, align 8
  %call.i.i = tail call i32 @snd_timer_pause(ptr noundef nonnull %1) #8
  br label %if.end3.i

if.end3.i:                                        ; preds = %seq_timer_stop.exit.i, %if.end.i.if.end3.i_crit_edge
  %cur_time.i.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 3
  %4 = ptrtoint ptr %cur_time.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cur_time.i.i, align 4
  %tv_nsec.i.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %tv_nsec.i.i, align 4
  %tick.i.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 4
  %6 = ptrtoint ptr %tick.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %tick.i.i, align 4
  %fraction.i.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 4, i32 2
  %7 = ptrtoint ptr %fraction.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %fraction.i.i, align 4
  %8 = ptrtoint ptr %timeri.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %timeri.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool.not.i19.i = icmp eq ptr %11, null
  br i1 %tobool.not.i19.i, label %if.end3.i.seq_timer_start.exit_crit_edge, label %if.end.i21.i

if.end3.i.seq_timer_start.exit_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %seq_timer_start.exit

if.end.i21.i:                                     ; preds = %if.end3.i
  %preferred_resolution.i.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 10
  %12 = ptrtoint ptr %preferred_resolution.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %preferred_resolution.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool1.not.i20.i = icmp eq i32 %13, 0
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 6250) #8
  %15 = tail call i32 @llvm.umax.i32(i32 %14, i32 10) #8
  %freq.0.i.i = select i1 %tobool1.not.i20.i, i32 1000, i32 %15
  %ticks.i.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 9
  %16 = ptrtoint ptr %ticks.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %ticks.i.i, align 8
  %hw.i.i = getelementptr inbounds %struct.snd_timer, ptr %11, i32 0, i32 12
  %17 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hw.i.i, align 4
  %and.i.i = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool10.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool10.not.i.i, label %if.then11.i.i, label %if.end.i21.i.if.end6.i_crit_edge

if.end.i21.i.if.end6.i_crit_edge:                 ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then11.i.i:                                    ; preds = %if.end.i21.i
  %call.i22.i = tail call i32 @snd_timer_resolution(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.i)
  %tobool13.not.i.i = icmp eq i32 %call.i22.i, 0
  br i1 %tobool13.not.i.i, label %if.then11.i.i.if.end6.i_crit_edge, label %if.then14.i.i

if.then11.i.i.if.end6.i_crit_edge:                ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then14.i.i:                                    ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i.i = mul i32 %call.i22.i, %freq.0.i.i
  %div.i.i = udiv i32 1000000000, %mul.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %mul.i.i)
  %tobool17.not.i.i = icmp ugt i32 %mul.i.i, 1000000000
  %spec.store.select.i.i = select i1 %tobool17.not.i.i, i32 1, i32 %div.i.i
  %19 = ptrtoint ptr %ticks.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.store.select.i.i, ptr %ticks.i.i, align 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then14.i.i, %if.then11.i.i.if.end6.i_crit_edge, %if.end.i21.i.if.end6.i_crit_edge
  %20 = ptrtoint ptr %tmr to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i23.i = load i8, ptr %tmr, align 8
  %bf.set.i.i = or i8 %bf.load.i23.i, 64
  store i8 %bf.set.i.i, ptr %tmr, align 8
  %21 = ptrtoint ptr %timeri.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %timeri.i, align 4
  %23 = ptrtoint ptr %ticks.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ticks.i.i, align 8
  %call8.i = tail call i32 @snd_timer_start(ptr noundef %22, i32 noundef %24) #8
  %25 = ptrtoint ptr %tmr to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load9.i = load i8, ptr %tmr, align 8
  %bf.set.i = or i8 %bf.load9.i, -128
  store i8 %bf.set.i, ptr %tmr, align 8
  %last_update.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 13
  tail call void @ktime_get_ts64(ptr noundef %last_update.i) #8
  br label %seq_timer_start.exit

seq_timer_start.exit:                             ; preds = %if.end6.i, %if.end3.i.seq_timer_start.exit_crit_edge, %entry.seq_timer_start.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end6.i ], [ -22, %entry.seq_timer_start.exit_crit_edge ], [ -22, %if.end3.i.seq_timer_start.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_timer_continue(ptr noundef %tmr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 14
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %timeri.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 8
  %0 = ptrtoint ptr %timeri.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timeri.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.seq_timer_continue.exit_crit_edge, label %if.end.i

entry.seq_timer_continue.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %seq_timer_continue.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %tmr to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %tmr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool1.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.seq_timer_continue.exit_crit_edge

if.end.i.seq_timer_continue.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %seq_timer_continue.exit

if.end3.i:                                        ; preds = %if.end.i
  %3 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool7.not.i = icmp eq i8 %3, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end3.i.if.end11.i_crit_edge

if.end3.i.if.end11.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.end3.i
  %cur_time.i.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 3
  %4 = ptrtoint ptr %cur_time.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cur_time.i.i, align 4
  %tv_nsec.i.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %tv_nsec.i.i, align 4
  %tick.i.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 4
  %6 = ptrtoint ptr %tick.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %tick.i.i, align 4
  %fraction.i.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 4, i32 2
  %7 = ptrtoint ptr %fraction.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %fraction.i.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then8.i.seq_timer_continue.exit_crit_edge, label %if.end.i.i

if.then8.i.seq_timer_continue.exit_crit_edge:     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %seq_timer_continue.exit

if.end.i.i:                                       ; preds = %if.then8.i
  %preferred_resolution.i.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 10
  %10 = ptrtoint ptr %preferred_resolution.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %preferred_resolution.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not.i.i = icmp eq i32 %11, 0
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 6250) #8
  %13 = tail call i32 @llvm.umax.i32(i32 %12, i32 10) #8
  %freq.0.i.i = select i1 %tobool1.not.i.i, i32 1000, i32 %13
  %ticks.i.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 9
  %14 = ptrtoint ptr %ticks.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %ticks.i.i, align 8
  %hw.i.i = getelementptr inbounds %struct.snd_timer, ptr %9, i32 0, i32 12
  %15 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hw.i.i, align 4
  %and.i.i = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool10.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool10.not.i.i, label %if.then11.i.i, label %if.end.i.i.initialize_timer.exit.i_crit_edge

if.end.i.i.initialize_timer.exit.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %initialize_timer.exit.i

if.then11.i.i:                                    ; preds = %if.end.i.i
  %call.i.i = tail call i32 @snd_timer_resolution(ptr noundef nonnull %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool13.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool13.not.i.i, label %if.then11.i.i.initialize_timer.exit.i_crit_edge, label %if.then14.i.i

if.then11.i.i.initialize_timer.exit.i_crit_edge:  ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %initialize_timer.exit.i

if.then14.i.i:                                    ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i.i = mul i32 %call.i.i, %freq.0.i.i
  %div.i.i = udiv i32 1000000000, %mul.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %mul.i.i)
  %tobool17.not.i.i = icmp ugt i32 %mul.i.i, 1000000000
  %spec.store.select.i.i = select i1 %tobool17.not.i.i, i32 1, i32 %div.i.i
  %17 = ptrtoint ptr %ticks.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.store.select.i.i, ptr %ticks.i.i, align 8
  br label %initialize_timer.exit.i

initialize_timer.exit.i:                          ; preds = %if.then14.i.i, %if.then11.i.i.initialize_timer.exit.i_crit_edge, %if.end.i.i.initialize_timer.exit.i_crit_edge
  %18 = ptrtoint ptr %tmr to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i.i = load i8, ptr %tmr, align 8
  %bf.set.i.i = or i8 %bf.load.i.i, 64
  store i8 %bf.set.i.i, ptr %tmr, align 8
  br label %if.end11.i

if.end11.i:                                       ; preds = %initialize_timer.exit.i, %if.end3.i.if.end11.i_crit_edge
  %19 = ptrtoint ptr %timeri.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %timeri.i, align 4
  %ticks.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 9
  %21 = ptrtoint ptr %ticks.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ticks.i, align 8
  %call13.i = tail call i32 @snd_timer_start(ptr noundef %20, i32 noundef %22) #8
  %23 = ptrtoint ptr %tmr to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load14.i = load i8, ptr %tmr, align 8
  %bf.set.i = or i8 %bf.load14.i, -128
  store i8 %bf.set.i, ptr %tmr, align 8
  %last_update.i = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 13
  tail call void @ktime_get_ts64(ptr noundef %last_update.i) #8
  br label %seq_timer_continue.exit

seq_timer_continue.exit:                          ; preds = %if.end11.i, %if.then8.i.seq_timer_continue.exit_crit_edge, %if.end.i.seq_timer_continue.exit_crit_edge, %entry.seq_timer_continue.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end11.i ], [ -22, %entry.seq_timer_continue.exit_crit_edge ], [ -16, %if.end.i.seq_timer_continue.exit_crit_edge ], [ -22, %if.then8.i.seq_timer_continue.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_timer_get_cur_time(ptr noalias nocapture sret(%struct.snd_seq_real_time) align 4 %agg.result, ptr noundef %tmr, i1 noundef zeroext %adjust_ktime) local_unnamed_addr #0 align 64 {
entry:
  %tm = alloca %struct.timespec64, align 8
  %tmp7 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.snd_seq_real_time, ptr %agg.result, i32 0, i32 1
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 14
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %cur_time = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 3
  %1 = ptrtoint ptr %cur_time to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %cur_time, align 4
  %3 = ptrtoint ptr %agg.result to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 %2, ptr %agg.result, align 4
  br i1 %adjust_ktime, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %tmr to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %tmr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool6.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tm) #8
  %5 = call ptr @memset(ptr %tm, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %tm) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp7) #8
  %last_update = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 13
  %6 = ptrtoint ptr %tm to i32
  call void @__asan_load8_noabort(i32 %6)
  %.fca.0.load = load i64, ptr %tm, align 8
  %.fca.1.gep = getelementptr inbounds [2 x i64], ptr %tm, i32 0, i32 1
  %7 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load8_noabort(i32 %7)
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %8 = ptrtoint ptr %last_update to i32
  call void @__asan_load8_noabort(i32 %8)
  %.unpack = load i64, ptr %last_update, align 8
  %.elt18 = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 13, i32 1
  %9 = ptrtoint ptr %.elt18 to i32
  call void @__asan_load8_noabort(i32 %9)
  %.unpack19 = load i64, ptr %.elt18, align 8
  %lhs.sroa.2.8.extract.shift.i = lshr i64 %.fca.1.load, 32
  %lhs.sroa.2.8.extract.trunc.i = trunc i64 %lhs.sroa.2.8.extract.shift.i to i32
  %rhs.sroa.2.8.extract.shift.i = lshr i64 %.unpack19, 32
  %rhs.sroa.2.8.extract.trunc.i = trunc i64 %rhs.sroa.2.8.extract.shift.i to i32
  %10 = call ptr @memset(ptr %tmp7, i32 255, i32 16)
  %sub.i = sub i64 %.fca.0.load, %.unpack
  %sub3.i = sub i32 %lhs.sroa.2.8.extract.trunc.i, %rhs.sroa.2.8.extract.trunc.i
  %conv.i = sext i32 %sub3.i to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp7, i64 noundef %sub.i, i64 noundef %conv.i) #8
  %11 = call ptr @memcpy(ptr %tm, ptr %tmp7, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp7) #8
  %12 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %.fca.1.gep, align 8
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %0, align 4
  %add = add i32 %15, %13
  store i32 %add, ptr %0, align 4
  %16 = ptrtoint ptr %tm to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %tm, align 8
  %18 = ptrtoint ptr %agg.result to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %agg.result, align 4
  %20 = trunc i64 %17 to i32
  %conv12 = add i32 %19, %20
  store i32 %conv12, ptr %agg.result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999999, i32 %add)
  %cmp5.i = icmp ugt i32 %add, 999999999
  br i1 %cmp5.i, label %while.body.lr.ph.i, label %if.then.snd_seq_sanity_real_time.exit_crit_edge

if.then.snd_seq_sanity_real_time.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_seq_sanity_real_time.exit

while.body.lr.ph.i:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %21 = add i32 %add, -1000000000
  %22 = udiv i32 %21, 1000000000
  %.neg.i = mul i32 %22, -1000000000
  %23 = add i32 %.neg.i, %21
  %24 = add nuw nsw i32 %22, 1
  %25 = add i32 %24, %conv12
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %0, align 4
  %27 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %agg.result, align 4
  br label %snd_seq_sanity_real_time.exit

snd_seq_sanity_real_time.exit:                    ; preds = %while.body.lr.ph.i, %if.then.snd_seq_sanity_real_time.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tm) #8
  br label %if.end

if.end:                                           ; preds = %snd_seq_sanity_real_time.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_timer_get_cur_tick(ptr noundef %tmr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 14
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %tick = getelementptr inbounds %struct.snd_seq_timer, ptr %tmr, i32 0, i32 4
  %0 = ptrtoint ptr %tick to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tick, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_info_timer_read(ptr nocapture noundef readnone %entry1, ptr nocapture noundef readonly %buffer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %idx.031 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = tail call ptr @queueptr(i32 noundef %idx.031) #8
  %cmp2 = icmp eq ptr %call, null
  br i1 %cmp2, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %timer_mutex = getelementptr inbounds %struct.snd_seq_queue, ptr %call, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %timer_mutex, i32 noundef 0) #8
  %timer = getelementptr inbounds %struct.snd_seq_queue, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timer, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.unlock_crit_edge, label %if.end4

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end4:                                          ; preds = %if.end
  %timeri = getelementptr inbounds %struct.snd_seq_timer, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %timeri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timeri, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.end4.unlock_crit_edge, label %if.end7

if.end4.unlock_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %name = getelementptr inbounds %struct.snd_timer, ptr %9, i32 0, i32 6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.12, i32 noundef %7, ptr noundef %name) #8
  %call10 = tail call i32 @snd_timer_resolution(ptr noundef nonnull %3) #8
  %ticks = getelementptr inbounds %struct.snd_seq_timer, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %ticks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ticks, align 8
  %mul = mul i32 %11, %call10
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer, align 4
  %mul.frozen = freeze i32 %mul
  %div = udiv i32 %mul.frozen, 1000000000
  %14 = mul i32 %div, 1000000000
  %rem.decomposed = sub i32 %mul.frozen, %14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef nonnull @.str.13, i32 noundef %div, i32 noundef %rem.decomposed) #8
  %15 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer, align 4
  %skew = getelementptr inbounds %struct.snd_seq_timer, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %skew to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %skew, align 8
  %skew_base = getelementptr inbounds %struct.snd_seq_timer, ptr %1, i32 0, i32 12
  %19 = ptrtoint ptr %skew_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %skew_base, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %16, ptr noundef nonnull @.str.14, i32 noundef %18, i32 noundef %20) #8
  br label %unlock

unlock:                                           ; preds = %if.end7, %if.end4.unlock_crit_edge, %if.end.unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %timer_mutex) #8
  %use_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %call, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock, i32 1, i32 3, i32 1) #8
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock, ptr %use_lock, i32 1, ptr elementtype(i32) %use_lock) #8, !srcloc !41
  br label %for.inc

for.inc:                                          ; preds = %unlock, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %idx.031, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @queueptr(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_timer_resolution(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_check_queue(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_timer_pause(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_timer_start(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !19, !21, !22, !23, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @snd_seq_timer_new.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../sound/core/seq/seq_timer.c", i32 46, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../sound/core/seq/seq_timer.c", i32 64, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @snd_seq_timer_delete.__UNIQUE_ID_ddebug229, !4, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../sound/core/seq/seq_timer.c", i32 194, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @snd_seq_timer_set_tempo_ppq.__UNIQUE_ID_ddebug230, !10, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/core/seq/seq_timer.c", i32 249, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @snd_seq_timer_set_skew.__UNIQUE_ID_ddebug231, !14, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/core/seq/seq_timer.c", i32 270, i32 15}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/core/seq/seq_timer.c", i32 295, i32 3}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @snd_seq_timer_open._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @snd_seq_timer_open._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/core/seq/seq_timer.c", i32 496, i32 3}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/core/seq/seq_timer.c", i32 498, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/core/seq/seq_timer.c", i32 499, i32 3}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 2148303046, i64 2148303051, i64 2148303064, i64 2148303108, i64 2148303142, i64 2148303163}
!40 = !{!"branch_weights", i32 1, i32 2000}
!41 = !{i64 2148492118, i64 2148492144, i64 2148492173, i64 2148492207, i64 2148492238, i64 2148492261}
