; ModuleID = '/llk/IR_all_yes/sound/firewire/oxfw/oxfw-scs1x.c_pt.bc'
source_filename = "../sound/firewire/oxfw/oxfw-scs1x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_rawmidi_ops = type { ptr, ptr, ptr, ptr }
%struct.fw_address_region = type { i64, i64 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_oxfw = type { ptr, ptr, %struct.mutex, %struct.spinlock, i32, i8, i8, [10 x ptr], [10 x ptr], i8, %struct.cmp_connection, %struct.cmp_connection, %struct.amdtp_stream, %struct.amdtp_stream, i32, i32, i32, i32, i8, %struct.wait_queue_head, ptr, %struct.amdtp_domain }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.cmp_connection = type { i32, i8, %struct.mutex, %struct.fw_iso_resources, i32, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.92, %struct.anon.93 }
%struct.anon.92 = type { i32, i32, i32 }
%struct.anon.93 = type { i8 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.fw_scs1x = type { %struct.fw_address_handler, i8, ptr, ptr, i8, i8, i8, i8, i8, %struct.work_struct, %struct.wait_queue_head, [64 x i8], i8, %struct.fw_transaction, i32, i8, ptr }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.fw_transaction = type { i32, i32, %struct.list_head, ptr, i8, %struct.timer_list, %struct.fw_packet, ptr, ptr }
%struct.fw_packet = type { i32, i32, [4 x i32], i32, ptr, i32, i32, i8, i32, ptr, i32, %struct.list_head, ptr }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.snd_rawmidi_substream = type { %struct.list_head, i32, i32, i8, i8, i8, i32, i32, i32, i32, ptr, ptr, [32 x i8], ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.fw_device = type { %struct.atomic_t, ptr, i32, i32, i32, ptr, %struct.device, %struct.mutex, %struct.list_head, ptr, i32, i32, i16, ptr, %struct.delayed_work, %struct.fw_attribute_group }
%struct.fw_attribute_group = type { [2 x ptr], %struct.attribute_group, [13 x ptr] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }

@snd_oxfw_scs1x_add.midi_capture_ops = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @midi_capture_open, ptr @midi_capture_close, ptr @midi_capture_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@snd_oxfw_scs1x_add.midi_playback_ops = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @midi_playback_open, ptr @midi_playback_close, ptr @midi_playback_trigger, ptr @midi_playback_drain }, [16 x i8] zeroinitializer }, align 32
@fw_high_memory_region = external dso_local constant %struct.fw_address_region, align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SCS.1x\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s MIDI\00", [24 x i8] zeroinitializer }, align 32
@snd_oxfw_scs1x_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&scs->work)\00", [34 x i8] zeroinitializer }, align 32
@snd_oxfw_scs1x_add.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&scs->idle_wait\00", [16 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sound/firewire/oxfw/oxfw-scs1x.c\00", [63 x i8] zeroinitializer }, align 32
@sysex_escape_prefix = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\F0\00\01`HSS", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.6 = internal global [7 x i64] [i64 5, i64 8, i64 244, i64 245, i64 247, i64 249, i64 253]
@__sancov_gen_cov_switch_values.7 = internal global [7 x i64] [i64 5, i64 8, i64 244, i64 245, i64 247, i64 249, i64 253]
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"midi_capture_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 359, i32 38 }
@___asan_gen_.11 = private unnamed_addr constant [18 x i8] c"midi_playback_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 364, i32 38 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 395, i32 36 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 402, i32 4 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 412, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 413, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 331, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [20 x i8] c"sysex_escape_prefix\00", align 1
@___asan_gen_.36 = private constant [36 x i8] c"../sound/firewire/oxfw/oxfw-scs1x.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 38, i32 17 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @snd_oxfw_scs1x_add.midi_capture_ops, ptr @snd_oxfw_scs1x_add.midi_playback_ops, ptr @.str, ptr @.str.1, ptr @snd_oxfw_scs1x_add.__key, ptr @.str.2, ptr @snd_oxfw_scs1x_add.__key.3, ptr @.str.4, ptr @.str.5, ptr @sysex_escape_prefix], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_oxfw_scs1x_add.midi_capture_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_oxfw_scs1x_add.midi_playback_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_oxfw_scs1x_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_oxfw_scs1x_add.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysex_escape_prefix to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_oxfw_scs1x_update(ptr nocapture noundef readonly %oxfw) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %spec.i = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 20
  %0 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.i) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %1, align 8
  %or.i = or i64 %3, -1080863910568919040
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %or.i, ptr %data.i, align 8
  %unit.i = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 1
  %5 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %unit.i, align 4
  %call.i = call i32 @snd_fw_transaction(ptr noundef %6, i32 noundef 1, i64 noundef 211140036188890, ptr noundef nonnull %data.i, i32 noundef 8, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_oxfw_scs1x_add(ptr nocapture noundef %oxfw) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i64, align 8
  %rmidi = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rmidi) #7
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %rmidi, align 4, !annotation !27
  %1 = ptrtoint ptr %oxfw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %oxfw, align 8
  %card_dev = getelementptr inbounds %struct.snd_card, ptr %2, i32 0, i32 28
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %card_dev, i32 noundef 376, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %unit = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 1
  %3 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %unit, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 -24
  %fw_dev = getelementptr inbounds %struct.fw_scs1x, ptr %call.i, i32 0, i32 16
  %7 = ptrtoint ptr %fw_dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i.i, ptr %fw_dev, align 4
  %spec = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 20
  %8 = ptrtoint ptr %spec to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %spec, align 8
  %length = getelementptr inbounds %struct.fw_address_handler, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 64, ptr %length, align 8
  %address_callback = getelementptr inbounds %struct.fw_address_handler, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %address_callback to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @handle_hss, ptr %address_callback, align 8
  %callback_data = getelementptr inbounds %struct.fw_address_handler, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %callback_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %callback_data, align 4
  %call5 = tail call i32 @fw_core_add_address_handler(ptr noundef nonnull %call.i, ptr noundef nonnull @fw_high_memory_region) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %12 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spec, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.i) #7
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %13, align 8
  %or.i = or i64 %15, -1080863910568919040
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %or.i, ptr %data.i, align 8
  %17 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %unit, align 4
  %call.i56 = call i32 @snd_fw_transaction(ptr noundef %18, i32 noundef 1, i64 noundef 211140036188890, ptr noundef nonnull %data.i, i32 noundef 8, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %cmp9 = icmp slt i32 %call.i56, 0
  br i1 %cmp9, label %if.end7.err_allocated_crit_edge, label %if.end11

if.end7.err_allocated_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_allocated

if.end11:                                         ; preds = %if.end7
  %19 = ptrtoint ptr %oxfw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %oxfw, align 8
  %call13 = call i32 @snd_rawmidi_new(ptr noundef %20, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %rmidi) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end11.err_allocated_crit_edge, label %if.end16

if.end11.err_allocated_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_allocated

if.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %private_data, align 4
  %private_free = getelementptr inbounds %struct.snd_rawmidi, ptr %22, i32 0, i32 10
  %24 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @remove_scs1x, ptr %private_free, align 8
  %name = getelementptr inbounds %struct.snd_rawmidi, ptr %22, i32 0, i32 5
  %25 = ptrtoint ptr %oxfw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %oxfw, align 8
  %shortname = getelementptr inbounds %struct.snd_card, ptr %26, i32 0, i32 3
  %call19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 80, ptr noundef nonnull @.str.1, ptr noundef %shortname)
  %27 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmidi, align 4
  %info_flags = getelementptr inbounds %struct.snd_rawmidi, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 7, ptr %info_flags, align 8
  call void @snd_rawmidi_set_ops(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @snd_oxfw_scs1x_add.midi_capture_ops) #7
  %30 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmidi, align 4
  call void @snd_rawmidi_set_ops(ptr noundef %31, i32 noundef 0, ptr noundef nonnull @snd_oxfw_scs1x_add.midi_playback_ops) #7
  %work = getelementptr inbounds %struct.fw_scs1x, ptr %call.i, i32 0, i32 9
  call void @__init_work(ptr noundef %work, i32 noundef 0) #7
  %32 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.fw_scs1x, ptr %call.i, i32 0, i32 9, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @snd_oxfw_scs1x_add.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry23 = getelementptr inbounds %struct.fw_scs1x, ptr %call.i, i32 0, i32 9, i32 1
  %33 = ptrtoint ptr %entry23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %entry23, ptr %entry23, align 4
  %prev.i = getelementptr inbounds %struct.fw_scs1x, ptr %call.i, i32 0, i32 9, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %entry23, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.fw_scs1x, ptr %call.i, i32 0, i32 9, i32 2
  %35 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @scs_output_work, ptr %func, align 4
  %idle_wait = getelementptr inbounds %struct.fw_scs1x, ptr %call.i, i32 0, i32 10
  call void @__init_waitqueue_head(ptr noundef %idle_wait, ptr noundef nonnull @.str.4, ptr noundef nonnull @snd_oxfw_scs1x_add.__key.3) #7
  %output_idle = getelementptr inbounds %struct.fw_scs1x, ptr %call.i, i32 0, i32 4
  %36 = ptrtoint ptr %output_idle to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %output_idle, align 4
  br label %cleanup

err_allocated:                                    ; preds = %if.end11.err_allocated_crit_edge, %if.end7.err_allocated_crit_edge
  %err.0 = phi i32 [ %call.i56, %if.end7.err_allocated_crit_edge ], [ %call13, %if.end11.err_allocated_crit_edge ]
  call void @fw_core_remove_address_handler(ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_allocated, %if.end16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_allocated ], [ 0, %if.end16 ], [ -12, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @midi_capture_open(ptr nocapture noundef readnone %stream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @midi_capture_close(ptr nocapture noundef readnone %stream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @midi_capture_trigger(ptr noundef %stream, i32 noundef %up) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %stream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %input_escape_count = getelementptr inbounds %struct.fw_scs1x, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %input_escape_count to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %input_escape_count, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi ptr [ %stream, %if.then ], [ null, %entry.if.end_crit_edge ]
  %input12 = getelementptr inbounds %struct.fw_scs1x, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %input12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %.sink, ptr %input12, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @midi_playback_open(ptr nocapture noundef readnone %stream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @midi_playback_close(ptr nocapture noundef readnone %stream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @midi_playback_trigger(ptr noundef %stream, i32 noundef %up) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %stream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  br i1 %tobool.not, label %do.body11, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %output_status = getelementptr inbounds %struct.fw_scs1x, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %output_status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %output_status, align 1
  %output_bytes = getelementptr inbounds %struct.fw_scs1x, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %output_bytes to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %output_bytes, align 2
  %output_escaped = getelementptr inbounds %struct.fw_scs1x, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %output_escaped to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %output_escaped, align 1
  %output_idle = getelementptr inbounds %struct.fw_scs1x, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %output_idle to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %output_idle, align 4
  %transaction_bytes = getelementptr inbounds %struct.fw_scs1x, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %transaction_bytes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %transaction_bytes, align 4
  %error = getelementptr inbounds %struct.fw_scs1x, ptr %3, i32 0, i32 15
  %9 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %error, align 8
  %output = getelementptr inbounds %struct.fw_scs1x, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %output to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %stream, ptr %output, align 8
  %work = getelementptr inbounds %struct.fw_scs1x, ptr %3, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %work) #7
  br label %if.end

do.body11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %output12 = getelementptr inbounds %struct.fw_scs1x, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %output12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr null, ptr %output12, align 8
  br label %if.end

if.end:                                           ; preds = %do.body11, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @midi_playback_drain(ptr nocapture noundef readonly %stream) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %stream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 331) #7
  %output_idle = getelementptr inbounds %struct.fw_scs1x, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %output_idle to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %output_idle, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %idle_wait = getelementptr inbounds %struct.fw_scs1x, ptr %3, i32 0, i32 10
  %call17 = call i32 @prepare_to_wait_event(ptr noundef %idle_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %7 = ptrtoint ptr %output_idle to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %output_idle, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not18 = icmp eq i8 %8, 0
  br i1 %tobool6.not18, label %if.end.cleanup_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #7
  %call = call i32 @prepare_to_wait_event(ptr noundef %idle_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %9 = ptrtoint ptr %output_idle to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %output_idle, align 4, !range !28
  %tobool6.not = icmp eq i8 %10, 0
  br i1 %tobool6.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %idle_wait, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %do.end11

do.end11:                                         ; preds = %for.end, %entry.do.end11_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handle_hss(ptr noundef %card, ptr noundef %request, i32 noundef %tcode, i32 noundef %destination, i32 noundef %source, i32 noundef %generation, i64 noundef %offset, ptr nocapture noundef readonly %data, i32 noundef %length, ptr noundef %callback_data) #0 align 64 {
entry:
  %nibbles.i.i = alloca [2 x i8], align 1
  %nibbles.i28.i.i = alloca [2 x i8], align 1
  %nibbles.i26.i.i = alloca [2 x i8], align 1
  %nibbles.i.i.i = alloca [2 x i8], align 1
  %byte.addr.i.i = alloca i8, align 1
  %eox.i.i = alloca i8, align 1
  %eox.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %callback_data to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %callback_data, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %offset)
  %cmp.not = icmp eq i64 %1, %offset
  br i1 %cmp.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %tcode)
  %switch = icmp ult i32 %tcode, 2
  br i1 %switch, label %if.end5, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp6.not = icmp eq i32 %length, 0
  br i1 %cmp6.not, label %if.end5.end_crit_edge, label %do.end

if.end5.end_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

do.end:                                           ; preds = %if.end5
  %input = getelementptr inbounds %struct.fw_scs1x, ptr %callback_data, i32 0, i32 2
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %input, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end.end_crit_edge, label %if.then8

do.end.end_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.then8:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %eox.i) #7
  %4 = ptrtoint ptr %eox.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -9, ptr %eox.i, align 1
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.i = icmp eq i8 %6, 0
  br i1 %cmp.i, label %for.cond.preheader.i, label %for.body8.lr.ph.i

for.cond.preheader.i:                             ; preds = %if.then8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %length)
  %cmp228.i = icmp ugt i32 %length, 1
  br i1 %cmp228.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.midi_input_packet.exit_crit_edge

for.cond.preheader.i.midi_input_packet.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %midi_input_packet.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %input_escape_count.i.i = getelementptr inbounds %struct.fw_scs1x, ptr %callback_data, i32 0, i32 1
  %7 = getelementptr inbounds [2 x i8], ptr %nibbles.i.i.i, i32 0, i32 1
  %8 = getelementptr inbounds [2 x i8], ptr %nibbles.i26.i.i, i32 0, i32 1
  %9 = getelementptr inbounds [2 x i8], ptr %nibbles.i28.i.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %midi_input_byte.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.029.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc.i, %midi_input_byte.exit.i.for.body.i_crit_edge ]
  %arrayidx4.i = getelementptr i8, ptr %data, i32 %i.029.i
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx4.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte.addr.i.i) #7
  %12 = ptrtoint ptr %byte.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %byte.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %eox.i.i) #7
  %13 = ptrtoint ptr %eox.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -9, ptr %eox.i.i, align 1
  %14 = ptrtoint ptr %input_escape_count.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %input_escape_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.not.i.i = icmp eq i8 %15, 0
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nibbles.i.i.i) #7
  %16 = lshr i8 %11, 4
  %17 = ptrtoint ptr %nibbles.i.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %nibbles.i.i.i, align 1
  %18 = and i8 %11, 15
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %7, align 1
  %call.i.i.i = call i32 @snd_rawmidi_receive(ptr noundef nonnull %3, ptr noundef nonnull %nibbles.i.i.i, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nibbles.i.i.i) #7
  %20 = ptrtoint ptr %input_escape_count.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %input_escape_count.i.i, align 8
  %dec.i.i = add i8 %21, -1
  store i8 %dec.i.i, ptr %input_escape_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i.i)
  %cmp5.i.i = icmp eq i8 %dec.i.i, 0
  br i1 %cmp5.i.i, label %if.then7.i.i, label %if.then.i.i.midi_input_byte.exit.i_crit_edge

if.then.i.i.midi_input_byte.exit.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %midi_input_byte.exit.i

if.then7.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = call i32 @snd_rawmidi_receive(ptr noundef nonnull %3, ptr noundef nonnull %eox.i.i, i32 noundef 1) #7
  br label %midi_input_byte.exit.i

if.else.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %11)
  %cmp9.i.i = icmp eq i8 %11, -7
  br i1 %cmp9.i.i, label %if.then11.i.i, label %if.else14.i.i

if.then11.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i.i = call i32 @snd_rawmidi_receive(ptr noundef nonnull %3, ptr noundef nonnull @sysex_escape_prefix, i32 noundef 7) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nibbles.i26.i.i) #7
  %22 = ptrtoint ptr %nibbles.i26.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %nibbles.i26.i.i, align 1
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %8, align 1
  %call.i27.i.i = call i32 @snd_rawmidi_receive(ptr noundef nonnull %3, ptr noundef nonnull %nibbles.i26.i.i, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nibbles.i26.i.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nibbles.i28.i.i) #7
  %24 = ptrtoint ptr %nibbles.i28.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 15, ptr %nibbles.i28.i.i, align 1
  %25 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 9, ptr %9, align 1
  %call.i29.i.i = call i32 @snd_rawmidi_receive(ptr noundef nonnull %3, ptr noundef nonnull %nibbles.i28.i.i, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nibbles.i28.i.i) #7
  %26 = ptrtoint ptr %input_escape_count.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 3, ptr %input_escape_count.i.i, align 8
  br label %midi_input_byte.exit.i

if.else14.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i.i = call i32 @snd_rawmidi_receive(ptr noundef nonnull %3, ptr noundef nonnull %byte.addr.i.i, i32 noundef 1) #7
  br label %midi_input_byte.exit.i

midi_input_byte.exit.i:                           ; preds = %if.else14.i.i, %if.then11.i.i, %if.then7.i.i, %if.then.i.i.midi_input_byte.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %eox.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte.addr.i.i) #7
  %inc.i = add nuw i32 %i.029.i, 1
  %exitcond30.not.i = icmp eq i32 %inc.i, %length
  br i1 %exitcond30.not.i, label %midi_input_byte.exit.i.midi_input_packet.exit_crit_edge, label %midi_input_byte.exit.i.for.body.i_crit_edge

midi_input_byte.exit.i.for.body.i_crit_edge:      ; preds = %midi_input_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

midi_input_byte.exit.i.midi_input_packet.exit_crit_edge: ; preds = %midi_input_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %midi_input_packet.exit

for.body8.lr.ph.i:                                ; preds = %if.then8
  %call.i = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %3, ptr noundef nonnull @sysex_escape_prefix, i32 noundef 7) #7
  %27 = getelementptr inbounds [2 x i8], ptr %nibbles.i.i, i32 0, i32 1
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.body8.i.for.body8.i_crit_edge, %for.body8.lr.ph.i
  %i.127.i = phi i32 [ 0, %for.body8.lr.ph.i ], [ %inc11.i, %for.body8.i.for.body8.i_crit_edge ]
  %arrayidx9.i = getelementptr i8, ptr %data, i32 %i.127.i
  %28 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx9.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nibbles.i.i) #7
  %30 = lshr i8 %29, 4
  %31 = ptrtoint ptr %nibbles.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %nibbles.i.i, align 1
  %32 = and i8 %29, 15
  %33 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %27, align 1
  %call.i25.i = call i32 @snd_rawmidi_receive(ptr noundef nonnull %3, ptr noundef nonnull %nibbles.i.i, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nibbles.i.i) #7
  %inc11.i = add nuw i32 %i.127.i, 1
  %exitcond.not.i = icmp eq i32 %inc11.i, %length
  br i1 %exitcond.not.i, label %for.end12.i, label %for.body8.i.for.body8.i_crit_edge

for.body8.i.for.body8.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8.i

for.end12.i:                                      ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i = call i32 @snd_rawmidi_receive(ptr noundef nonnull %3, ptr noundef nonnull %eox.i, i32 noundef 1) #7
  br label %midi_input_packet.exit

midi_input_packet.exit:                           ; preds = %for.end12.i, %midi_input_byte.exit.i.midi_input_packet.exit_crit_edge, %for.cond.preheader.i.midi_input_packet.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %eox.i) #7
  br label %end

end:                                              ; preds = %midi_input_packet.exit, %do.end.end_crit_edge, %if.end5.end_crit_edge, %if.end.end_crit_edge, %entry.end_crit_edge
  %rcode.0 = phi i32 [ 7, %entry.end_crit_edge ], [ 6, %if.end.end_crit_edge ], [ 0, %do.end.end_crit_edge ], [ 0, %midi_input_packet.exit ], [ 0, %if.end5.end_crit_edge ]
  call void @fw_send_response(ptr noundef %card, ptr noundef %request, i32 noundef %rcode.0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_core_add_address_handler(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @remove_scs1x(ptr nocapture noundef readonly %rmidi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %rmidi, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @fw_core_remove_address_handler(ptr noundef %1) #7
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_rawmidi_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scs_output_work(ptr noundef %work) #0 align 64 {
entry:
  %byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -52
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte) #7
  %0 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %byte, align 1, !annotation !27
  %transaction_running = getelementptr i8, ptr %work, i32 160
  %1 = ptrtoint ptr %transaction_running to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %transaction_running, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  %output = getelementptr i8, ptr %work, i32 -12
  %3 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %output, align 8
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %do.end.if.then4_crit_edge, label %lor.lhs.false

do.end.if.then4_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

lor.lhs.false:                                    ; preds = %do.end
  %error = getelementptr i8, ptr %work, i32 316
  %5 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %error, align 8, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %if.end5, label %lor.lhs.false.if.then4_crit_edge

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %do.end.if.then4_crit_edge
  %output_idle = getelementptr i8, ptr %work, i32 -8
  %7 = ptrtoint ptr %output_idle to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %output_idle, align 4
  %idle_wait = getelementptr i8, ptr %work, i32 44
  tail call void @__wake_up(ptr noundef %idle_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %transaction_bytes = getelementptr i8, ptr %work, i32 312
  %8 = ptrtoint ptr %transaction_bytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %transaction_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %if.end7, label %if.end5.retry_crit_edge

if.end5.retry_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry

if.end7:                                          ; preds = %if.end5
  %output_bytes = getelementptr i8, ptr %work, i32 -6
  %10 = ptrtoint ptr %output_bytes to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %output_bytes, align 2
  %conv = zext i8 %11 to i32
  %call246 = call i32 @snd_rawmidi_transmit(ptr noundef nonnull %4, ptr noundef nonnull %byte, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call246)
  %cmp8.not247 = icmp eq i32 %call246, 1
  br i1 %cmp8.not247, label %if.end15.lr.ph, label %if.end7.if.then10_crit_edge

if.end7.if.then10_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.end15.lr.ph:                                   ; preds = %if.end7
  %output_escaped = getelementptr i8, ptr %work, i32 -5
  %output_escape_high_nibble100 = getelementptr i8, ptr %work, i32 -4
  %buffer104 = getelementptr i8, ptr %work, i32 96
  %arrayidx137 = getelementptr i8, ptr %work, i32 97
  %output_status138 = getelementptr i8, ptr %work, i32 -7
  %arrayidx58236 = getelementptr i8, ptr %work, i32 98
  br label %if.end15

if.then10:                                        ; preds = %for.cond.backedge.if.then10_crit_edge, %if.end7.if.then10_crit_edge
  %i.0.lcssa = phi i32 [ %conv, %if.end7.if.then10_crit_edge ], [ %i.0.be, %for.cond.backedge.if.then10_crit_edge ]
  %conv11 = trunc i32 %i.0.lcssa to i8
  %12 = ptrtoint ptr %output_bytes to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv11, ptr %output_bytes, align 2
  %output_idle13 = getelementptr i8, ptr %work, i32 -8
  %13 = ptrtoint ptr %output_idle13 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %output_idle13, align 4
  %idle_wait14 = getelementptr i8, ptr %work, i32 44
  call void @__wake_up(ptr noundef %idle_wait14, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

if.end15:                                         ; preds = %for.cond.backedge.if.end15_crit_edge, %if.end15.lr.ph
  %i.0248 = phi i32 [ %conv, %if.end15.lr.ph ], [ %i.0.be, %for.cond.backedge.if.end15_crit_edge ]
  %14 = ptrtoint ptr %output_escaped to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %output_escaped, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool16.not = icmp eq i8 %15, 0
  %16 = ptrtoint ptr %byte to i32
  call void @__asan_load1_noabort(i32 %16)
  %.pr = load i8, ptr %byte, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %.pr)
  %cmp40 = icmp sgt i8 %.pr, -1
  br i1 %tobool16.not, label %if.else38, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end15
  br i1 %cmp40, label %if.then21, label %if.else89.thread

if.then21:                                        ; preds = %land.lhs.true
  %17 = ptrtoint ptr %output_escape_high_nibble100 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %output_escape_high_nibble100, align 8, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool22.not = icmp eq i8 %18, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %i.0248)
  %cmp24 = icmp ult i32 %i.0248, 64
  br i1 %cmp24, label %if.then26, label %if.then23.for.cond.backedge_crit_edge

if.then23.for.cond.backedge_crit_edge:            ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl i8 %.pr, 4
  %arrayidx = getelementptr [64 x i8], ptr %buffer104, i32 0, i32 %i.0248
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %shl, ptr %arrayidx, align 1
  %20 = ptrtoint ptr %output_escape_high_nibble100 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %output_escape_high_nibble100, align 8
  br label %for.cond.backedge

if.else:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i8 %.pr, 15
  %inc = add i32 %i.0248, 1
  %arrayidx33 = getelementptr [64 x i8], ptr %buffer104, i32 0, i32 %i.0248
  %21 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx33, align 1
  %or = or i8 %22, %and
  store i8 %or, ptr %arrayidx33, align 1
  %23 = ptrtoint ptr %output_escape_high_nibble100 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %output_escape_high_nibble100, align 8
  br label %for.cond.backedge

if.else38:                                        ; preds = %if.end15
  br i1 %cmp40, label %if.then42, label %if.else89

if.then42:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0248)
  %cmp43 = icmp eq i32 %i.0248, 1
  br i1 %cmp43, label %if.then45, label %if.end55

if.then45:                                        ; preds = %if.then42
  %24 = ptrtoint ptr %output_status138 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %output_status138, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %25)
  %26 = icmp slt i8 %25, -16
  br i1 %26, label %if.end55.thread, label %if.then45.for.cond.backedge_crit_edge

if.then45.for.cond.backedge_crit_edge:            ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge

if.end55.thread:                                  ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %buffer104 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %buffer104, align 4
  %28 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %25, ptr %arrayidx137, align 1
  %29 = ptrtoint ptr %arrayidx58236 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %.pr, ptr %arrayidx58236, align 1
  br label %land.lhs.true61

if.end55:                                         ; preds = %if.then42
  %arrayidx58 = getelementptr [64 x i8], ptr %buffer104, i32 0, i32 %i.0248
  %30 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %.pr, ptr %arrayidx58, align 1
  %31 = zext i32 %i.0248 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.0248, label %if.end84 [
    i32 2, label %if.end55.land.lhs.true61_crit_edge
    i32 3, label %land.lhs.true68
    i32 7, label %land.lhs.true76
  ]

if.end55.land.lhs.true61_crit_edge:               ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true61

land.lhs.true61:                                  ; preds = %if.end55.land.lhs.true61_crit_edge, %if.end55.thread
  %32 = ptrtoint ptr %output_status138 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %output_status138, align 1
  %34 = and i8 %33, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %34)
  %35 = icmp eq i8 %34, -64
  %36 = and i8 %33, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -15, i8 %36)
  %37 = icmp eq i8 %36, -15
  %38 = or i1 %37, %35
  br i1 %38, label %land.lhs.true61.for.end_crit_edge, label %land.lhs.true61.for.cond.backedge_crit_edge

land.lhs.true61.for.cond.backedge_crit_edge:      ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge

land.lhs.true61.for.end_crit_edge:                ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true68:                                  ; preds = %if.end55
  %39 = ptrtoint ptr %output_status138 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %output_status138, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %40)
  %41 = icmp slt i8 %40, -64
  br i1 %41, label %land.lhs.true68.for.end_crit_edge, label %is_three_bytes_cmd.exit

land.lhs.true68.for.end_crit_edge:                ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

is_three_bytes_cmd.exit:                          ; preds = %land.lhs.true68
  %42 = and i8 %40, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %42)
  %43 = icmp eq i8 %42, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %40)
  %cmp13.i = icmp eq i8 %40, -14
  %spec.select.i = or i1 %cmp13.i, %43
  br i1 %spec.select.i, label %is_three_bytes_cmd.exit.for.end_crit_edge, label %is_three_bytes_cmd.exit.for.cond.backedge_crit_edge

is_three_bytes_cmd.exit.for.cond.backedge_crit_edge: ; preds = %is_three_bytes_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge

is_three_bytes_cmd.exit.for.end_crit_edge:        ; preds = %is_three_bytes_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true76:                                  ; preds = %if.end55
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(7) %arrayidx137, ptr noundef nonnull dereferenceable(7) @sysex_escape_prefix, i32 7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool80.not = icmp eq i32 %bcmp, 0
  br i1 %tobool80.not, label %if.then81, label %land.lhs.true76.for.cond.backedge_crit_edge

land.lhs.true76.for.cond.backedge_crit_edge:      ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge

if.then81:                                        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %output_escaped to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %output_escaped, align 1
  %45 = ptrtoint ptr %output_escape_high_nibble100 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %output_escape_high_nibble100, align 8
  br label %for.cond.backedge

if.end84:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %inc57 = add i32 %i.0248, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %inc57)
  %cmp85 = icmp ugt i32 %inc57, 63
  %spec.select = select i1 %cmp85, i32 1, i32 %inc57
  br label %for.cond.backedge

if.else89:                                        ; preds = %if.else38
  %46 = zext i8 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %.pr, label %if.else89.land.lhs.true128_crit_edge [
    i8 -9, label %if.else111
    i8 -12, label %if.else89.for.cond.backedge_crit_edge
    i8 -11, label %if.else89.for.cond.backedge_crit_edge260
    i8 -7, label %if.else89.for.cond.backedge_crit_edge261
    i8 -3, label %if.else89.for.cond.backedge_crit_edge262
  ]

if.else89.for.cond.backedge_crit_edge262:         ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge

if.else89.for.cond.backedge_crit_edge261:         ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge

if.else89.for.cond.backedge_crit_edge260:         ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge

if.else89.for.cond.backedge_crit_edge:            ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge

if.else89.land.lhs.true128_crit_edge:             ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true128

if.else89.thread:                                 ; preds = %land.lhs.true
  %47 = zext i8 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %.pr, label %if.else89.thread.land.lhs.true128_crit_edge [
    i8 -9, label %if.then96
    i8 -12, label %if.else89.thread.for.cond.backedge_crit_edge
    i8 -11, label %if.else89.thread.for.cond.backedge_crit_edge263
    i8 -7, label %if.else89.thread.for.cond.backedge_crit_edge264
    i8 -3, label %if.else89.thread.for.cond.backedge_crit_edge265
  ]

if.else89.thread.for.cond.backedge_crit_edge265:  ; preds = %if.else89.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge

if.else89.thread.for.cond.backedge_crit_edge264:  ; preds = %if.else89.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge

if.else89.thread.for.cond.backedge_crit_edge263:  ; preds = %if.else89.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge

if.else89.thread.for.cond.backedge_crit_edge:     ; preds = %if.else89.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge

if.else89.thread.land.lhs.true128_crit_edge:      ; preds = %if.else89.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true128

if.then96:                                        ; preds = %if.else89.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0248)
  %cmp97.not = icmp eq i32 %i.0248, 0
  br i1 %cmp97.not, label %if.then96.if.end124_crit_edge, label %land.lhs.true99

if.then96.if.end124_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

land.lhs.true99:                                  ; preds = %if.then96
  %48 = ptrtoint ptr %output_escape_high_nibble100 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %output_escape_high_nibble100, align 8, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool101.not = icmp eq i8 %49, 0
  br i1 %tobool101.not, label %land.lhs.true99.if.end124_crit_edge, label %land.lhs.true103

land.lhs.true99.if.end124_crit_edge:              ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

land.lhs.true103:                                 ; preds = %land.lhs.true99
  %50 = ptrtoint ptr %buffer104 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %buffer104, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -15, i8 %51)
  %cmp107.not = icmp eq i8 %51, -15
  br i1 %cmp107.not, label %land.lhs.true103.if.end124_crit_edge, label %land.lhs.true103.for.end_crit_edge

land.lhs.true103.for.end_crit_edge:               ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true103.if.end124_crit_edge:             ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

if.else111:                                       ; preds = %if.else89
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0248)
  %cmp112 = icmp ugt i32 %i.0248, 1
  br i1 %cmp112, label %land.lhs.true114, label %if.else111.if.end124_crit_edge

if.else111.if.end124_crit_edge:                   ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

land.lhs.true114:                                 ; preds = %if.else111
  %52 = ptrtoint ptr %output_status138 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %output_status138, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %53)
  %cmp117 = icmp eq i8 %53, -16
  br i1 %cmp117, label %if.then119, label %land.lhs.true114.if.end124_crit_edge

land.lhs.true114.if.end124_crit_edge:             ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

if.then119:                                       ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #9
  %inc121 = add i32 %i.0248, 1
  %arrayidx122 = getelementptr [64 x i8], ptr %buffer104, i32 0, i32 %i.0248
  %54 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -9, ptr %arrayidx122, align 1
  br label %for.end

if.end124:                                        ; preds = %land.lhs.true114.if.end124_crit_edge, %if.else111.if.end124_crit_edge, %land.lhs.true103.if.end124_crit_edge, %land.lhs.true99.if.end124_crit_edge, %if.then96.if.end124_crit_edge
  %55 = ptrtoint ptr %output_escaped to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %output_escaped, align 1
  br label %for.cond.backedge

land.lhs.true128:                                 ; preds = %if.else89.thread.land.lhs.true128_crit_edge, %if.else89.land.lhs.true128_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -8, i8 %.pr)
  %cmp130 = icmp ult i8 %.pr, -8
  br i1 %cmp130, label %if.then132, label %land.lhs.true128.for.cond.backedge_crit_edge

land.lhs.true128.for.cond.backedge_crit_edge:     ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge

if.then132:                                       ; preds = %land.lhs.true128
  %56 = ptrtoint ptr %buffer104 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %buffer104, align 4
  %57 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %.pr, ptr %arrayidx137, align 1
  %58 = ptrtoint ptr %output_status138 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %.pr, ptr %output_status138, align 1
  %59 = ptrtoint ptr %output_escaped to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %output_escaped, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -10, i8 %.pr)
  %cmp.i = icmp eq i8 %.pr, -10
  br i1 %cmp.i, label %if.then132.for.end_crit_edge, label %if.then132.for.cond.backedge_crit_edge

if.then132.for.cond.backedge_crit_edge:           ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge

if.then132.for.end_crit_edge:                     ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.backedge:                                ; preds = %if.then132.for.cond.backedge_crit_edge, %land.lhs.true128.for.cond.backedge_crit_edge, %if.end124, %if.else89.thread.for.cond.backedge_crit_edge, %if.else89.thread.for.cond.backedge_crit_edge263, %if.else89.thread.for.cond.backedge_crit_edge264, %if.else89.thread.for.cond.backedge_crit_edge265, %if.else89.for.cond.backedge_crit_edge, %if.else89.for.cond.backedge_crit_edge260, %if.else89.for.cond.backedge_crit_edge261, %if.else89.for.cond.backedge_crit_edge262, %if.end84, %if.then81, %land.lhs.true76.for.cond.backedge_crit_edge, %is_three_bytes_cmd.exit.for.cond.backedge_crit_edge, %land.lhs.true61.for.cond.backedge_crit_edge, %if.then45.for.cond.backedge_crit_edge, %if.else, %if.then26, %if.then23.for.cond.backedge_crit_edge
  %i.0.be = phi i32 [ 1, %if.then45.for.cond.backedge_crit_edge ], [ %i.0248, %if.then26 ], [ %i.0248, %if.then23.for.cond.backedge_crit_edge ], [ %inc, %if.else ], [ 1, %if.end124 ], [ 2, %if.then132.for.cond.backedge_crit_edge ], [ %i.0248, %land.lhs.true128.for.cond.backedge_crit_edge ], [ 4, %is_three_bytes_cmd.exit.for.cond.backedge_crit_edge ], [ 3, %land.lhs.true61.for.cond.backedge_crit_edge ], [ 0, %if.then81 ], [ 8, %land.lhs.true76.for.cond.backedge_crit_edge ], [ %spec.select, %if.end84 ], [ %i.0248, %if.else89.for.cond.backedge_crit_edge ], [ %i.0248, %if.else89.for.cond.backedge_crit_edge260 ], [ %i.0248, %if.else89.for.cond.backedge_crit_edge261 ], [ %i.0248, %if.else89.for.cond.backedge_crit_edge262 ], [ %i.0248, %if.else89.thread.for.cond.backedge_crit_edge ], [ %i.0248, %if.else89.thread.for.cond.backedge_crit_edge263 ], [ %i.0248, %if.else89.thread.for.cond.backedge_crit_edge264 ], [ %i.0248, %if.else89.thread.for.cond.backedge_crit_edge265 ]
  %call = call i32 @snd_rawmidi_transmit(ptr noundef nonnull %4, ptr noundef nonnull %byte, i32 noundef 1) #7
  %cmp8.not = icmp eq i32 %call, 1
  br i1 %cmp8.not, label %for.cond.backedge.if.end15_crit_edge, label %for.cond.backedge.if.then10_crit_edge

for.cond.backedge.if.then10_crit_edge:            ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

for.cond.backedge.if.end15_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

for.end:                                          ; preds = %if.then132.for.end_crit_edge, %if.then119, %land.lhs.true103.for.end_crit_edge, %is_three_bytes_cmd.exit.for.end_crit_edge, %land.lhs.true68.for.end_crit_edge, %land.lhs.true61.for.end_crit_edge
  %i.4 = phi i32 [ %inc121, %if.then119 ], [ 4, %land.lhs.true68.for.end_crit_edge ], [ 2, %if.then132.for.end_crit_edge ], [ %i.0248, %land.lhs.true103.for.end_crit_edge ], [ 4, %is_three_bytes_cmd.exit.for.end_crit_edge ], [ 3, %land.lhs.true61.for.end_crit_edge ]
  %60 = ptrtoint ptr %output_bytes to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %output_bytes, align 2
  %61 = ptrtoint ptr %output_escaped to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %output_escaped, align 1
  %62 = ptrtoint ptr %transaction_bytes to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %i.4, ptr %transaction_bytes, align 4
  br label %retry

retry:                                            ; preds = %for.end, %if.end5.retry_crit_edge
  %63 = ptrtoint ptr %transaction_running to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %transaction_running, align 4
  %fw_dev = getelementptr i8, ptr %work, i32 320
  %64 = ptrtoint ptr %fw_dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fw_dev, align 4
  %generation151 = getelementptr inbounds %struct.fw_device, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %generation151 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %generation151, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !29
  %68 = ptrtoint ptr %fw_dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %fw_dev, align 4
  %card = getelementptr inbounds %struct.fw_device, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %card, align 4
  %transaction = getelementptr i8, ptr %work, i32 164
  %node_id = getelementptr inbounds %struct.fw_device, ptr %69, i32 0, i32 2
  %72 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %node_id, align 8
  %max_speed = getelementptr inbounds %struct.fw_device, ptr %69, i32 0, i32 4
  %74 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %max_speed, align 8
  %buffer161 = getelementptr i8, ptr %work, i32 96
  %76 = ptrtoint ptr %transaction_bytes to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %transaction_bytes, align 4
  call void @fw_send_request(ptr noundef %71, ptr noundef %transaction, i32 noundef 1, i32 noundef %73, i32 noundef %67, i32 noundef %75, i64 noundef 211140036188890, ptr noundef %buffer161, i32 noundef %77, ptr noundef nonnull @scs_write_callback, ptr noundef %add.ptr) #7
  br label %cleanup

cleanup:                                          ; preds = %retry, %if.then10, %if.then4, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_core_remove_address_handler(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_fw_transaction(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_send_response(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_receive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_send_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scs_write_callback(ptr nocapture noundef readnone %card, i32 noundef %rcode, ptr nocapture noundef readnone %data, i32 noundef %length, ptr noundef %callback_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %rcode, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %0)
  %1 = icmp eq i32 %0, 6
  br i1 %1, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rcode)
  %cmp = icmp eq i32 %rcode, 0
  br i1 %cmp, label %if.then1, label %if.then.if.end2_crit_edge

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %transaction_bytes = getelementptr inbounds %struct.fw_scs1x, ptr %callback_data, i32 0, i32 14
  %2 = ptrtoint ptr %transaction_bytes to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %transaction_bytes, align 4
  br label %if.end2

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %error = getelementptr inbounds %struct.fw_scs1x, ptr %callback_data, i32 0, i32 15
  %3 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %error, align 8
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1, %if.then.if.end2_crit_edge
  %transaction_running = getelementptr inbounds %struct.fw_scs1x, ptr %callback_data, i32 0, i32 12
  %4 = ptrtoint ptr %transaction_running to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %transaction_running, align 4
  %work = getelementptr inbounds %struct.fw_scs1x, ptr %callback_data, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %work) #7
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @snd_oxfw_scs1x_add.midi_capture_ops, !1, !"midi_capture_ops", i1 false, i1 false}
!1 = !{!"../sound/firewire/oxfw/oxfw-scs1x.c", i32 359, i32 38}
!2 = !{ptr @snd_oxfw_scs1x_add.midi_playback_ops, !3, !"midi_playback_ops", i1 false, i1 false}
!3 = !{!"../sound/firewire/oxfw/oxfw-scs1x.c", i32 364, i32 38}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/firewire/oxfw/oxfw-scs1x.c", i32 395, i32 36}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/firewire/oxfw/oxfw-scs1x.c", i32 402, i32 4}
!8 = !{ptr @snd_oxfw_scs1x_add.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../sound/firewire/oxfw/oxfw-scs1x.c", i32 412, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @snd_oxfw_scs1x_add.__key.3, !12, !"__key", i1 false, i1 false}
!12 = !{!"../sound/firewire/oxfw/oxfw-scs1x.c", i32 413, i32 2}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/firewire/oxfw/oxfw-scs1x.c", i32 331, i32 2}
!16 = !{ptr @sysex_escape_prefix, !17, !"sysex_escape_prefix", i1 false, i1 false}
!17 = !{!"../sound/firewire/oxfw/oxfw-scs1x.c", i32 38, i32 17}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"auto-init"}
!28 = !{i8 0, i8 2}
!29 = !{i64 2154557577}
