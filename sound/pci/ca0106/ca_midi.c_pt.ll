; ModuleID = '/llk/IR_all_yes/sound/pci/ca0106/ca_midi.c_pt.bc'
source_filename = "../sound/pci/ca0106/ca_midi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_rawmidi_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_ca_midi = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.snd_rawmidi_substream = type { %struct.list_head, i32, i32, i8, i8, i8, i32, i32, i32, i32, ptr, ptr, [32 x i8], ptr, ptr, ptr }

@ca_midi_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&midi->open_lock\00", [47 x i8] zeroinitializer }, align 32
@ca_midi_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&midi->input_lock\00", [46 x i8] zeroinitializer }, align 32
@ca_midi_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&midi->output_lock\00", [45 x i8] zeroinitializer }, align 32
@ca_midi_output = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @ca_midi_output_open, ptr @ca_midi_output_close, ptr @ca_midi_output_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@ca_midi_input = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @ca_midi_input_open, ptr @ca_midi_input_close, ptr @ca_midi_input_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@ca_midi_clear_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 35, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013ca_midi_clear_rx: timeout (status = 0x%x)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ca_midi_clear_rx\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/pci/ca0106/ca_midi.c\00", [37 x i8] zeroinitializer }, align 32
@ca_midi_clear_rx._entry_ptr = internal global ptr @ca_midi_clear_rx._entry, section ".printk_index", align 4
@ca_midi_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.7, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013ca_midi_cmd: 0x%x failed at 0x%x (status = 0x%x, data = 0x%x)!!!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ca_midi_cmd\00", [20 x i8] zeroinitializer }, align 32
@ca_midi_cmd._entry_ptr = internal global ptr @ca_midi_cmd._entry, section ".printk_index", align 4
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 286, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 287, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 288, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"ca_midi_output\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 243, i32 37 }
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"ca_midi_input\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 250, i32 37 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 34, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [30 x i8] c"../sound/pci/ca0106/ca_midi.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 101, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @ca_midi_clear_rx._entry, ptr @ca_midi_clear_rx._entry_ptr, ptr @ca_midi_cmd._entry, ptr @ca_midi_cmd._entry_ptr, ptr @ca_midi_init.__key, ptr @.str, ptr @ca_midi_init.__key.1, ptr @.str.2, ptr @ca_midi_init.__key.3, ptr @.str.4, ptr @ca_midi_output, ptr @ca_midi_input, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca_midi_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca_midi_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca_midi_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca_midi_output to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca_midi_input to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca_midi_clear_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca_midi_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ca_midi_init(ptr noundef %dev_id, ptr noundef %midi, i32 noundef %device, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  %rmidi = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rmidi) #6
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %rmidi, align 4, !annotation !33
  %get_dev_id_card = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 24
  %1 = ptrtoint ptr %get_dev_id_card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %get_dev_id_card, align 4
  %dev_id1 = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 3
  %3 = ptrtoint ptr %dev_id1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_id1, align 4
  %call = tail call ptr %2(ptr noundef %4) #6
  %call2 = call i32 @snd_rawmidi_new(ptr noundef %call, ptr noundef %name, i32 noundef %device, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %rmidi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %dev_id1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev_id, ptr %dev_id1, align 4
  %interrupt = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 19
  %6 = ptrtoint ptr %interrupt to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ca_midi_interrupt, ptr %interrupt, align 4
  %open_lock = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 6
  call void @__raw_spin_lock_init(ptr noundef %open_lock, ptr noundef nonnull @.str, ptr noundef nonnull @ca_midi_init.__key, i16 noundef signext 3) #6
  %input_lock = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %input_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @ca_midi_init.__key.1, i16 noundef signext 3) #6
  %output_lock = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 5
  call void @__raw_spin_lock_init(ptr noundef %output_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @ca_midi_init.__key.3, i16 noundef signext 3) #6
  %7 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmidi, align 4
  %name13 = getelementptr inbounds %struct.snd_rawmidi, ptr %8, i32 0, i32 5
  %call14 = call ptr @strcpy(ptr noundef %name13, ptr noundef %name) #9
  call void @snd_rawmidi_set_ops(ptr noundef %8, i32 noundef 0, ptr noundef nonnull @ca_midi_output) #6
  %9 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmidi, align 4
  call void @snd_rawmidi_set_ops(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @ca_midi_input) #6
  %11 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmidi, align 4
  %info_flags = getelementptr inbounds %struct.snd_rawmidi, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %info_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %info_flags, align 8
  %or = or i32 %14, 7
  store i32 %or, ptr %info_flags, align 8
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %12, i32 0, i32 9
  %15 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %midi, ptr %private_data, align 4
  %private_free = getelementptr inbounds %struct.snd_rawmidi, ptr %12, i32 0, i32 10
  %16 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ca_rmidi_free, ptr %private_free, align 8
  %17 = ptrtoint ptr %midi to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %12, ptr %midi, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ca_midi_interrupt(ptr noundef %midi, i32 noundef %status) #0 align 64 {
entry:
  %byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte) #6
  %0 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %byte, align 1, !annotation !33
  %1 = ptrtoint ptr %midi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %midi, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %interrupt_disable = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 21
  %3 = ptrtoint ptr %interrupt_disable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %interrupt_disable, align 4
  %tx_enable = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 10
  %5 = ptrtoint ptr %tx_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_enable, align 4
  %rx_enable = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 11
  %7 = ptrtoint ptr %rx_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_enable, align 4
  %or = or i32 %8, %6
  tail call void %4(ptr noundef %midi, i32 noundef %or) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %input_lock = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %input_lock) #6
  %ipr_rx = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 13
  %9 = ptrtoint ptr %ipr_rx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ipr_rx, align 4
  %and = and i32 %10, %status
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end15_crit_edge, label %land.lhs.true

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %read = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 22
  %11 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read, align 4
  %call = tail call zeroext i8 %12(ptr noundef %midi, i32 noundef 1) #6
  %conv = zext i8 %call to i32
  %input_avail = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 14
  %13 = ptrtoint ptr %input_avail to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %input_avail, align 4
  %and1 = and i32 %14, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then3, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then3:                                         ; preds = %land.lhs.true
  %midi_mode = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 8
  %15 = ptrtoint ptr %midi_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %midi_mode, align 4
  %and4 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then3.land.rhs.i_crit_edge, label %if.else

if.then3.land.rhs.i_crit_edge:                    ; preds = %if.then3
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body.i.land.rhs.i_crit_edge, %if.then3.land.rhs.i_crit_edge
  %timeout.018.i = phi i32 [ %dec.i, %for.body.i.land.rhs.i_crit_edge ], [ 100000, %if.then3.land.rhs.i_crit_edge ]
  %17 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read, align 4
  %call.i = tail call zeroext i8 %18(ptr noundef %midi, i32 noundef 1) #6
  %conv.i = zext i8 %call.i to i32
  %19 = ptrtoint ptr %input_avail to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %input_avail, align 4
  %and.i = and i32 %20, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i, label %land.rhs.i.if.end15_crit_edge

land.rhs.i.if.end15_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

for.body.i:                                       ; preds = %land.rhs.i
  %21 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read, align 4
  %call2.i = tail call zeroext i8 %22(ptr noundef %midi, i32 noundef 0) #6
  %dec.i = add nsw i32 %timeout.018.i, -1
  %cmp.i = icmp ugt i32 %timeout.018.i, 1
  br i1 %cmp.i, label %for.body.i.land.rhs.i_crit_edge, label %do.end.i

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read, align 4
  %call6.i = tail call zeroext i8 %24(ptr noundef %midi, i32 noundef 1) #6
  %conv7.i = zext i8 %call6.i to i32
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv7.i) #10
  br label %if.end15

if.else:                                          ; preds = %if.then3
  %25 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read, align 4
  %call8 = tail call zeroext i8 %26(ptr noundef %midi, i32 noundef 0) #6
  %27 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %call8, ptr %byte, align 1
  %substream_input = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 1
  %28 = ptrtoint ptr %substream_input to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %substream_input, align 4
  %tobool9.not = icmp eq ptr %29, null
  br i1 %tobool9.not, label %if.else.if.end15_crit_edge, label %if.then10

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = call i32 @snd_rawmidi_receive(ptr noundef nonnull %29, ptr noundef nonnull %byte, i32 noundef 1) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.else.if.end15_crit_edge, %do.end.i, %land.rhs.i.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  call void @_raw_spin_unlock(ptr noundef %input_lock) #6
  %output_lock = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 5
  call void @_raw_spin_lock(ptr noundef %output_lock) #6
  %ipr_tx = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 12
  %30 = ptrtoint ptr %ipr_tx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ipr_tx, align 4
  %and17 = and i32 %31, %status
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end15.if.end38_crit_edge, label %land.lhs.true19

if.end15.if.end38_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

land.lhs.true19:                                  ; preds = %if.end15
  %read20 = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 22
  %32 = ptrtoint ptr %read20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read20, align 4
  %call21 = call zeroext i8 %33(ptr noundef %midi, i32 noundef 1) #6
  %conv22 = zext i8 %call21 to i32
  %output_ready = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 15
  %34 = ptrtoint ptr %output_ready to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %output_ready, align 4
  %and23 = and i32 %35, %conv22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.then25, label %land.lhs.true19.if.end38_crit_edge

land.lhs.true19.if.end38_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then25:                                        ; preds = %land.lhs.true19
  %substream_output = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 2
  %36 = ptrtoint ptr %substream_output to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %substream_output, align 4
  %tobool26.not = icmp eq ptr %37, null
  br i1 %tobool26.not, label %if.then25.if.else34_crit_edge, label %land.lhs.true27

if.then25.if.else34_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else34

land.lhs.true27:                                  ; preds = %if.then25
  %call29 = call i32 @snd_rawmidi_transmit(ptr noundef nonnull %37, ptr noundef nonnull %byte, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call29)
  %cmp30 = icmp eq i32 %call29, 1
  br i1 %cmp30, label %if.then32, label %land.lhs.true27.if.else34_crit_edge

land.lhs.true27.if.else34_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else34

if.then32:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #8
  %write = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 23
  %38 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write, align 4
  %40 = ptrtoint ptr %byte to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %byte, align 1
  %conv33 = zext i8 %41 to i32
  call void %39(ptr noundef %midi, i32 noundef %conv33, i32 noundef 0) #6
  br label %if.end38

if.else34:                                        ; preds = %land.lhs.true27.if.else34_crit_edge, %if.then25.if.else34_crit_edge
  %interrupt_disable35 = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 21
  %42 = ptrtoint ptr %interrupt_disable35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %interrupt_disable35, align 4
  %tx_enable36 = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 10
  %44 = ptrtoint ptr %tx_enable36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_enable36, align 4
  call void %43(ptr noundef %midi, i32 noundef %45) #6
  br label %if.end38

if.end38:                                         ; preds = %if.else34, %if.then32, %land.lhs.true19.if.end38_crit_edge, %if.end15.if.end38_crit_edge
  call void @_raw_spin_unlock(ptr noundef %output_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_rawmidi_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ca_rmidi_free(ptr nocapture noundef readonly %rmidi) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %rmidi, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %interrupt.i = getelementptr inbounds %struct.snd_ca_midi, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %1, align 4
  %3 = call ptr @memset(ptr %interrupt.i, i32 0, i32 28)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_receive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ca_midi_output_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dev_id = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %do.body25, !prof !34

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 133, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

do.body25:                                        ; preds = %entry
  %open_lock = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 6
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %open_lock) #6
  %midi_mode = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %midi_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %midi_mode, align 4
  %or = or i32 %7, 2
  store i32 %or, ptr %midi_mode, align 4
  %substream_output = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %substream_output to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %substream, ptr %substream_output, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %open_lock, i32 noundef %call27) #6
  br i1 %tobool33.not, label %if.then34, label %do.body25.cleanup_crit_edge

do.body25.cleanup_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then34:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  %reset = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 17
  %9 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reset, align 4
  %conv36 = trunc i32 %10 to i8
  tail call fastcc void @ca_midi_cmd(ptr noundef %3, i8 noundef zeroext %conv36, i32 noundef 1)
  %enter_uart = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 18
  %11 = ptrtoint ptr %enter_uart to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %enter_uart, align 4
  %conv37 = trunc i32 %12 to i8
  tail call fastcc void @ca_midi_cmd(ptr noundef %3, i8 noundef zeroext %conv37, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %do.body25.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ 0, %if.then34 ], [ 0, %do.body25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ca_midi_output_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dev_id = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %do.body25, !prof !34

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 173, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

do.body25:                                        ; preds = %entry
  %open_lock = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 6
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %open_lock) #6
  %interrupt_disable = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %interrupt_disable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %interrupt_disable, align 4
  %tx_enable = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %tx_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_enable, align 4
  tail call void %7(ptr noundef %3, i32 noundef %9) #6
  %midi_mode = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %midi_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %midi_mode, align 4
  %and = and i32 %11, -3
  store i32 %and, ptr %midi_mode, align 4
  %substream_output = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %substream_output to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %substream_output, align 4
  %and33 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %open_lock, i32 noundef %call27) #6
  br i1 %tobool34.not, label %if.then35, label %do.body25.cleanup_crit_edge

do.body25.cleanup_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then35:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  %reset = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 17
  %13 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reset, align 4
  %input_lock.i = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %input_lock.i) #6
  %write.i = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 23
  %15 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write.i, align 4
  tail call void %16(ptr noundef %3, i32 noundef 0, i32 noundef 0) #6
  %17 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i, align 4
  %conv6.i = and i32 %14, 255
  tail call void %18(ptr noundef %3, i32 noundef %conv6.i, i32 noundef 1) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %input_lock.i, i32 noundef %call2.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %do.body25.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ 0, %if.then35 ], [ 0, %do.body25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ca_midi_output_trigger(ptr noundef %substream, i32 noundef %up) #0 align 64 {
entry:
  %byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dev_id = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !34

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 210, i32 noundef 9, ptr noundef null) #6
  br label %cleanup55

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool24.not = icmp eq i32 %up, 0
  br i1 %tobool24.not, label %if.else52, label %if.then25

if.then25:                                        ; preds = %if.end23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte) #6
  %6 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %byte, align 1, !annotation !33
  %output_lock = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 5
  %call29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %output_lock) #6
  %read = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 22
  %output_ready = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 15
  %midi_mode = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 8
  %write = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 23
  %7 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read, align 4
  %call36 = call zeroext i8 %8(ptr noundef %3, i32 noundef 1) #6
  %conv37 = zext i8 %call36 to i32
  %9 = ptrtoint ptr %output_ready to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %output_ready, align 4
  %and = and i32 %10, %conv37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %if.then39, label %if.then25.while.end_crit_edge

if.then25.while.end_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.then39:                                        ; preds = %if.then25
  %11 = ptrtoint ptr %midi_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %midi_mode, align 4
  %and40 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.then39.if.then45_crit_edge, label %lor.lhs.false

if.then39.if.then45_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

lor.lhs.false:                                    ; preds = %if.then39
  %call42 = call i32 @snd_rawmidi_transmit(ptr noundef %substream, ptr noundef nonnull %byte, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call42)
  %cmp43.not = icmp eq i32 %call42, 1
  br i1 %cmp43.not, label %if.end47, label %lor.lhs.false.if.then45_crit_edge

lor.lhs.false.if.then45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

if.then45:                                        ; preds = %lor.lhs.false.3.if.then45_crit_edge, %if.then39.3.if.then45_crit_edge, %lor.lhs.false.2.if.then45_crit_edge, %if.then39.2.if.then45_crit_edge, %lor.lhs.false.1.if.then45_crit_edge, %if.then39.1.if.then45_crit_edge, %lor.lhs.false.if.then45_crit_edge, %if.then39.if.then45_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock, i32 noundef %call29) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte) #6
  br label %cleanup55

if.end47:                                         ; preds = %lor.lhs.false
  %13 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write, align 4
  %15 = ptrtoint ptr %byte to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %byte, align 1
  %conv48 = zext i8 %16 to i32
  call void %14(ptr noundef %3, i32 noundef %conv48, i32 noundef 0) #6
  %17 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read, align 4
  %call36.1 = call zeroext i8 %18(ptr noundef %3, i32 noundef 1) #6
  %conv37.1 = zext i8 %call36.1 to i32
  %19 = ptrtoint ptr %output_ready to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %output_ready, align 4
  %and.1 = and i32 %20, %conv37.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool38.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool38.not.1, label %if.then39.1, label %if.end47.while.end_crit_edge

if.end47.while.end_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.then39.1:                                      ; preds = %if.end47
  %21 = ptrtoint ptr %midi_mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %midi_mode, align 4
  %and40.1 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.1)
  %tobool41.not.1 = icmp eq i32 %and40.1, 0
  br i1 %tobool41.not.1, label %if.then39.1.if.then45_crit_edge, label %lor.lhs.false.1

if.then39.1.if.then45_crit_edge:                  ; preds = %if.then39.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

lor.lhs.false.1:                                  ; preds = %if.then39.1
  %call42.1 = call i32 @snd_rawmidi_transmit(ptr noundef %substream, ptr noundef nonnull %byte, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call42.1)
  %cmp43.not.1 = icmp eq i32 %call42.1, 1
  br i1 %cmp43.not.1, label %if.end47.1, label %lor.lhs.false.1.if.then45_crit_edge

lor.lhs.false.1.if.then45_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

if.end47.1:                                       ; preds = %lor.lhs.false.1
  %23 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write, align 4
  %25 = ptrtoint ptr %byte to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %byte, align 1
  %conv48.1 = zext i8 %26 to i32
  call void %24(ptr noundef %3, i32 noundef %conv48.1, i32 noundef 0) #6
  %27 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read, align 4
  %call36.2 = call zeroext i8 %28(ptr noundef %3, i32 noundef 1) #6
  %conv37.2 = zext i8 %call36.2 to i32
  %29 = ptrtoint ptr %output_ready to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %output_ready, align 4
  %and.2 = and i32 %30, %conv37.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool38.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool38.not.2, label %if.then39.2, label %if.end47.1.while.end_crit_edge

if.end47.1.while.end_crit_edge:                   ; preds = %if.end47.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.then39.2:                                      ; preds = %if.end47.1
  %31 = ptrtoint ptr %midi_mode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %midi_mode, align 4
  %and40.2 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.2)
  %tobool41.not.2 = icmp eq i32 %and40.2, 0
  br i1 %tobool41.not.2, label %if.then39.2.if.then45_crit_edge, label %lor.lhs.false.2

if.then39.2.if.then45_crit_edge:                  ; preds = %if.then39.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

lor.lhs.false.2:                                  ; preds = %if.then39.2
  %call42.2 = call i32 @snd_rawmidi_transmit(ptr noundef %substream, ptr noundef nonnull %byte, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call42.2)
  %cmp43.not.2 = icmp eq i32 %call42.2, 1
  br i1 %cmp43.not.2, label %if.end47.2, label %lor.lhs.false.2.if.then45_crit_edge

lor.lhs.false.2.if.then45_crit_edge:              ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

if.end47.2:                                       ; preds = %lor.lhs.false.2
  %33 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write, align 4
  %35 = ptrtoint ptr %byte to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %byte, align 1
  %conv48.2 = zext i8 %36 to i32
  call void %34(ptr noundef %3, i32 noundef %conv48.2, i32 noundef 0) #6
  %37 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read, align 4
  %call36.3 = call zeroext i8 %38(ptr noundef %3, i32 noundef 1) #6
  %conv37.3 = zext i8 %call36.3 to i32
  %39 = ptrtoint ptr %output_ready to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %output_ready, align 4
  %and.3 = and i32 %40, %conv37.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool38.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool38.not.3, label %if.then39.3, label %if.end47.2.while.end_crit_edge

if.end47.2.while.end_crit_edge:                   ; preds = %if.end47.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.then39.3:                                      ; preds = %if.end47.2
  %41 = ptrtoint ptr %midi_mode to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %midi_mode, align 4
  %and40.3 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.3)
  %tobool41.not.3 = icmp eq i32 %and40.3, 0
  br i1 %tobool41.not.3, label %if.then39.3.if.then45_crit_edge, label %lor.lhs.false.3

if.then39.3.if.then45_crit_edge:                  ; preds = %if.then39.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

lor.lhs.false.3:                                  ; preds = %if.then39.3
  %call42.3 = call i32 @snd_rawmidi_transmit(ptr noundef %substream, ptr noundef nonnull %byte, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call42.3)
  %cmp43.not.3 = icmp eq i32 %call42.3, 1
  br i1 %cmp43.not.3, label %if.end47.3, label %lor.lhs.false.3.if.then45_crit_edge

lor.lhs.false.3.if.then45_crit_edge:              ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

if.end47.3:                                       ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write, align 4
  %45 = ptrtoint ptr %byte to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %byte, align 1
  %conv48.3 = zext i8 %46 to i32
  call void %44(ptr noundef %3, i32 noundef %conv48.3, i32 noundef 0) #6
  br label %while.end

while.end:                                        ; preds = %if.end47.3, %if.end47.2.while.end_crit_edge, %if.end47.1.while.end_crit_edge, %if.end47.while.end_crit_edge, %if.then25.while.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock, i32 noundef %call29) #6
  %interrupt_enable = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 20
  %47 = ptrtoint ptr %interrupt_enable to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %interrupt_enable, align 4
  %tx_enable = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 10
  %49 = ptrtoint ptr %tx_enable to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_enable, align 4
  call void %48(ptr noundef %3, i32 noundef %50) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte) #6
  br label %cleanup55

if.else52:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %interrupt_disable = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 21
  %51 = ptrtoint ptr %interrupt_disable to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %interrupt_disable, align 4
  %tx_enable53 = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 10
  %53 = ptrtoint ptr %tx_enable53 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_enable53, align 4
  tail call void %52(ptr noundef %3, i32 noundef %54) #6
  br label %cleanup55

cleanup55:                                        ; preds = %if.else52, %while.end, %if.then45, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ca_midi_cmd(ptr noundef %midi, i8 noundef zeroext %cmd, i32 noundef %ack) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %input_lock = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %input_lock) #6
  %write = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 23
  %0 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write, align 4
  tail call void %1(ptr noundef %midi, i32 noundef 0, i32 noundef 0) #6
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  %conv6 = zext i8 %cmd to i32
  tail call void %3(ptr noundef %midi, i32 noundef %conv6, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ack)
  %tobool.not = icmp eq i32 %ack, 0
  br i1 %tobool.not, label %entry.if.end31_crit_edge, label %while.cond.preheader

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

while.cond.preheader:                             ; preds = %entry
  %read = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 22
  %input_avail = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 14
  %ack17 = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 16
  br label %land.rhs

land.rhs:                                         ; preds = %if.end21.land.rhs_crit_edge, %while.cond.preheader
  %timeout.072 = phi i32 [ 10000, %while.cond.preheader ], [ %dec, %if.end21.land.rhs_crit_edge ]
  %dec = add nsw i32 %timeout.072, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.072)
  %cmp8.not = icmp eq i32 %timeout.072, 0
  %4 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read, align 4
  br i1 %cmp8.not, label %land.lhs.true.critedge, label %while.body

while.body:                                       ; preds = %land.rhs
  %call10 = tail call zeroext i8 %5(ptr noundef %midi, i32 noundef 1) #6
  %conv11 = zext i8 %call10 to i32
  %6 = ptrtoint ptr %input_avail to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %input_avail, align 4
  %and = and i32 %7, %conv11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.then13, label %while.body.if.end21_crit_edge

while.body.if.end21_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then13:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read, align 4
  %call15 = tail call zeroext i8 %9(ptr noundef %midi, i32 noundef 0) #6
  %conv16 = zext i8 %call15 to i32
  %10 = ptrtoint ptr %ack17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ack17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv16)
  %cmp18 = icmp eq i32 %11, %conv16
  %spec.select = zext i1 %cmp18 to i32
  br label %if.end21

if.end21:                                         ; preds = %if.then13, %while.body.if.end21_crit_edge
  %ok.1 = phi i32 [ 0, %while.body.if.end21_crit_edge ], [ %spec.select, %if.then13 ]
  %tobool7.not = icmp eq i32 %ok.1, 0
  br i1 %tobool7.not, label %if.end21.land.rhs_crit_edge, label %if.end21.if.end31_crit_edge

if.end21.if.end31_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end21.land.rhs_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

land.lhs.true.critedge:                           ; preds = %land.rhs
  %call24 = tail call zeroext i8 %5(ptr noundef %midi, i32 noundef 0) #6
  %conv25 = zext i8 %call24 to i32
  %12 = ptrtoint ptr %ack17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ack17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv25)
  %cmp27 = icmp eq i32 %13, %conv25
  br i1 %cmp27, label %land.lhs.true.critedge.if.end31_crit_edge, label %do.end37.critedge

land.lhs.true.critedge.if.end31_crit_edge:        ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end31:                                         ; preds = %land.lhs.true.critedge.if.end31_crit_edge, %if.end21.if.end31_crit_edge, %entry.if.end31_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %input_lock, i32 noundef %call2) #6
  br label %if.end48

do.end37.critedge:                                ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %input_lock, i32 noundef %call2) #6
  %get_dev_id_port = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 25
  %14 = ptrtoint ptr %get_dev_id_port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_dev_id_port, align 4
  %dev_id = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 3
  %16 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_id, align 4
  %call40 = tail call i32 %15(ptr noundef %17) #6
  %18 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read, align 4
  %call42 = tail call zeroext i8 %19(ptr noundef %midi, i32 noundef 1) #6
  %conv43 = zext i8 %call42 to i32
  %20 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read, align 4
  %call45 = tail call zeroext i8 %21(ptr noundef %midi, i32 noundef 0) #6
  %conv46 = zext i8 %call45 to i32
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv6, i32 noundef %call40, i32 noundef %conv43, i32 noundef %conv46) #10
  br label %if.end48

if.end48:                                         ; preds = %do.end37.critedge, %if.end31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ca_midi_input_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dev_id = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %do.body25, !prof !34

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 113, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

do.body25:                                        ; preds = %entry
  %open_lock = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 6
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %open_lock) #6
  %midi_mode = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %midi_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %midi_mode, align 4
  %or = or i32 %7, 1
  store i32 %or, ptr %midi_mode, align 4
  %substream_input = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %substream_input to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %substream, ptr %substream_input, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %open_lock, i32 noundef %call27) #6
  br i1 %tobool33.not, label %if.then34, label %do.body25.cleanup_crit_edge

do.body25.cleanup_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then34:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  %reset = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 17
  %9 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reset, align 4
  %conv36 = trunc i32 %10 to i8
  tail call fastcc void @ca_midi_cmd(ptr noundef %3, i8 noundef zeroext %conv36, i32 noundef 1)
  %enter_uart = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 18
  %11 = ptrtoint ptr %enter_uart to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %enter_uart, align 4
  %conv37 = trunc i32 %12 to i8
  tail call fastcc void @ca_midi_cmd(ptr noundef %3, i8 noundef zeroext %conv37, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %do.body25.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ 0, %if.then34 ], [ 0, %do.body25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ca_midi_input_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dev_id = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %do.body25, !prof !34

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 153, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

do.body25:                                        ; preds = %entry
  %open_lock = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 6
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %open_lock) #6
  %interrupt_disable = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %interrupt_disable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %interrupt_disable, align 4
  %rx_enable = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %rx_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_enable, align 4
  tail call void %7(ptr noundef %3, i32 noundef %9) #6
  %midi_mode = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %midi_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %midi_mode, align 4
  %and = and i32 %11, -2
  store i32 %and, ptr %midi_mode, align 4
  %substream_input = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %substream_input to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %substream_input, align 4
  %and33 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %open_lock, i32 noundef %call27) #6
  br i1 %tobool34.not, label %if.then35, label %do.body25.cleanup_crit_edge

do.body25.cleanup_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then35:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  %reset = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 17
  %13 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reset, align 4
  %input_lock.i = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %input_lock.i) #6
  %write.i = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 23
  %15 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write.i, align 4
  tail call void %16(ptr noundef %3, i32 noundef 0, i32 noundef 0) #6
  %17 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i, align 4
  %conv6.i = and i32 %14, 255
  tail call void %18(ptr noundef %3, i32 noundef %conv6.i, i32 noundef 1) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %input_lock.i, i32 noundef %call2.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %do.body25.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ 0, %if.then35 ], [ 0, %do.body25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ca_midi_input_trigger(ptr nocapture noundef readonly %substream, i32 noundef %up) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dev_id = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !34

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 195, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool24.not = icmp eq i32 %up, 0
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %interrupt_enable = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 20
  %6 = ptrtoint ptr %interrupt_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %interrupt_enable, align 4
  %rx_enable = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %rx_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_enable, align 4
  tail call void %7(ptr noundef %3, i32 noundef %9) #6
  br label %cleanup

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %interrupt_disable = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 21
  %10 = ptrtoint ptr %interrupt_disable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %interrupt_disable, align 4
  %rx_enable26 = getelementptr inbounds %struct.snd_ca_midi, ptr %3, i32 0, i32 11
  %12 = ptrtoint ptr %rx_enable26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_enable26, align 4
  tail call void %11(ptr noundef %3, i32 noundef %13) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then25, %do.end
  ret void
}

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !13, !14, !15, !17, !19, !20, !21, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @ca_midi_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../sound/pci/ca0106/ca_midi.c", i32 286, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @ca_midi_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../sound/pci/ca0106/ca_midi.c", i32 287, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ca_midi_init.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../sound/pci/ca0106/ca_midi.c", i32 288, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../sound/pci/ca0106/ca_midi.c", i32 34, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ca_midi_clear_rx._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @ca_midi_clear_rx._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @ca_midi_output, !16, !"ca_midi_output", i1 false, i1 false}
!16 = !{!"../sound/pci/ca0106/ca_midi.c", i32 243, i32 37}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/pci/ca0106/ca_midi.c", i32 101, i32 3}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ca_midi_cmd._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @ca_midi_cmd._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @ca_midi_input, !23, !"ca_midi_input", i1 false, i1 false}
!23 = !{!"../sound/pci/ca0106/ca_midi.c", i32 250, i32 37}
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
