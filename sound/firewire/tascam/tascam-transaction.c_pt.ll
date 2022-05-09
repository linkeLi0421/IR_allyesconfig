; ModuleID = '/llk/IR_all_yes/sound/firewire/tascam/tascam-transaction.c_pt.bc'
source_filename = "../sound/firewire/tascam/tascam-transaction.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fw_address_region = type { i64, i64 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_fw_async_midi_port = type { ptr, %struct.work_struct, i8, i64, i8, %struct.fw_transaction, [4 x i8], i8, i8, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fw_transaction = type { i32, i32, %struct.list_head, ptr, i8, %struct.timer_list, %struct.fw_packet, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.fw_packet = type { i32, i32, [4 x i32], i32, ptr, i32, i32, i8, i32, ptr, i32, %struct.list_head, ptr }
%struct.snd_tscm = type { ptr, ptr, %struct.mutex, %struct.spinlock, ptr, %struct.fw_iso_resources, %struct.fw_iso_resources, %struct.amdtp_stream, %struct.amdtp_stream, i32, i32, i8, %struct.wait_queue_head, %struct.fw_address_handler, [4 x ptr], [4 x %struct.snd_fw_async_midi_port], [64 x i32], ptr, [16 x %struct.snd_firewire_tascam_change], i32, i32, %struct.amdtp_domain, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.snd_firewire_tascam_change = type { i32, i32, i32 }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.82, %struct.anon.83 }
%struct.anon.82 = type { i32, i32, i32 }
%struct.anon.83 = type { i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.snd_tscm_spec = type { ptr, i8, i8, i32, i32, i32, i32 }
%struct.fw_card = type { ptr, ptr, %struct.kref, %struct.completion, i32, i32, i32, i64, %struct.list_head, i64, i32, i32, i32, i32, i64, i32, i32, i32, %struct.spinlock, ptr, ptr, ptr, i8, i32, i8, i32, %struct.list_head, %struct.list_head, %struct.delayed_work, i8, %struct.delayed_work, i32, i32, i32, i8, i8, i8, i8, i32, [256 x i32], i32 }
%struct.snd_rawmidi_substream = type { %struct.list_head, i32, i32, i8, i8, i8, i32, i32, i32, i32, ptr, ptr, [32 x i8], ptr, ptr, ptr }
%struct.fw_device = type { %struct.atomic_t, ptr, i32, i32, i32, ptr, %struct.device, %struct.mutex, %struct.list_head, ptr, i32, i32, i16, ptr, %struct.delayed_work, %struct.fw_attribute_group }
%struct.fw_attribute_group = type { [2 x ptr], %struct.attribute_group, [13 x ptr] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }

@snd_tscm_transaction_register.resp_register_region = internal constant { %struct.fw_address_region, [16 x i8] } { %struct.fw_address_region { i64 281474439839744, i64 281474439905279 }, [16 x i8] zeroinitializer }, align 32
@snd_tscm_transaction_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&tscm->out_ports[i].work)\00", [52 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@switch.table.handle_midi_tx = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 3, i32 3, i32 3, i32 3, i32 2, i32 2, i32 3], [36 x i8] zeroinitializer }, align 32
@switch.table.midi_port_work = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 3, i32 3, i32 3, i32 3, i32 2, i32 2, i32 3], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 8, i64 240, i64 241, i64 242, i64 243, i64 244, i64 245, i64 246, i64 247, i64 248, i64 249, i64 250, i64 251, i64 252, i64 253, i64 254, i64 255]
@__sancov_gen_cov_switch_values.1 = internal global [18 x i64] [i64 16, i64 8, i64 240, i64 241, i64 242, i64 243, i64 244, i64 245, i64 246, i64 247, i64 248, i64 249, i64 250, i64 251, i64 252, i64 253, i64 254, i64 255]
@___asan_gen_.2 = private unnamed_addr constant [21 x i8] c"resp_register_region\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 294, i32 40 }
@___asan_gen_.5 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [46 x i8] c"../sound/firewire/tascam/tascam-transaction.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 322, i32 3 }
@___asan_gen_.11 = private unnamed_addr constant [28 x i8] c"switch.table.handle_midi_tx\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [28 x i8] c"switch.table.midi_port_work\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @snd_tscm_transaction_register.resp_register_region, ptr @snd_tscm_transaction_register.__key, ptr @.str, ptr @switch.table.handle_midi_tx, ptr @switch.table.midi_port_work], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_tscm_transaction_register.resp_register_region to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_tscm_transaction_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.handle_midi_tx to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.midi_port_work to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @snd_fw_async_midi_port_init(ptr nocapture noundef writeonly %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %idling = getelementptr inbounds %struct.snd_fw_async_midi_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %idling to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %idling, align 8
  %error = getelementptr inbounds %struct.snd_fw_async_midi_port, ptr %port, i32 0, i32 4
  %1 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %error, align 8
  %running_status = getelementptr inbounds %struct.snd_fw_async_midi_port, ptr %port, i32 0, i32 7
  %2 = ptrtoint ptr %running_status to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %running_status, align 4
  %on_sysex = getelementptr inbounds %struct.snd_fw_async_midi_port, ptr %port, i32 0, i32 8
  %3 = ptrtoint ptr %on_sysex to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %on_sysex, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_tscm_transaction_register(ptr noundef %tscm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %async_handler = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 13
  %length = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 13, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 64, ptr %length, align 8
  %address_callback = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 13, i32 2
  %1 = ptrtoint ptr %address_callback to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @handle_midi_tx, ptr %address_callback, align 8
  %callback_data = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 13, i32 3
  %2 = ptrtoint ptr %callback_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tscm, ptr %callback_data, align 4
  %call = tail call i32 @fw_core_add_address_handler(ptr noundef %async_handler, ptr noundef nonnull @snd_tscm_transaction_register.resp_register_region) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @snd_tscm_transaction_reregister(ptr noundef %tscm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %error, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %unit = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 1
  %3 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %unit, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 -24
  %arrayidx = getelementptr %struct.snd_tscm, ptr %tscm, i32 0, i32 15, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i.i, ptr %arrayidx, align 8
  %next_ktime = getelementptr %struct.snd_tscm, ptr %tscm, i32 0, i32 15, i32 0, i32 3
  %8 = ptrtoint ptr %next_ktime to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %next_ktime, align 8
  %work = getelementptr %struct.snd_tscm, ptr %tscm, i32 0, i32 15, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #5
  %9 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr %struct.snd_tscm, ptr %tscm, i32 0, i32 15, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @snd_tscm_transaction_register.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry23 = getelementptr %struct.snd_tscm, ptr %tscm, i32 0, i32 15, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %entry23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry23, ptr %entry23, align 4
  %prev.i = getelementptr %struct.snd_tscm, ptr %tscm, i32 0, i32 15, i32 0, i32 1, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry23, ptr %prev.i, align 4
  %func = getelementptr %struct.snd_tscm, ptr %tscm, i32 0, i32 15, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @midi_port_work, ptr %func, align 4
  %13 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %unit, align 4
  %parent.i.1 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %parent.i.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent.i.1, align 8
  %add.ptr.i.i.1 = getelementptr i8, ptr %16, i32 -24
  %arrayidx.1 = getelementptr %struct.snd_tscm, ptr %tscm, i32 0, i32 15, i32 1
  %17 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i.i.1, ptr %arrayidx.1, align 8
  %next_ktime.1 = getelementptr %struct.snd_tscm, ptr %tscm, i32 0, i32 15, i32 1, i32 3
  %18 = ptrtoint ptr %next_ktime.1 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %next_ktime.1, align 8
  %work.1 = getelementptr %struct.snd_tscm, ptr %tscm, i32 0, i32 15, i32 1, i32 1
  tail call void @__init_work(ptr noundef %work.1, i32 noundef 0) #5
  %19 = ptrtoint ptr %work.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -64, ptr %work.1, align 4
  %lockdep_map.1 = getelementptr %struct.snd_tscm, ptr %tscm, i32 0, i32 15, i32 1, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.1, ptr noundef nonnull @.str, ptr noundef nonnull @snd_tscm_transaction_register.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry23.1 = getelementptr %struct.snd_tscm, ptr %tscm, i32 0, i32 15, i32 1, i32 1, i32 1
  %20 = ptrtoint ptr %entry23.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %entry23.1, ptr %entry23.1, align 4
  %prev.i.1 = getelementptr %struct.snd_tscm, ptr %tscm, i32 0, i32 15, i32 1, i32 1, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %entry23.1, ptr %prev.i.1, align 4
  %func.1 = getelementptr %struct.snd_tscm, ptr %tscm, i32 0, i32 15, i32 1, i32 1, i32 2
  %22 = ptrtoint ptr %func.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @midi_port_work, ptr %func.1, align 4
  %23 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %unit, align 4
  %parent.i.2 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %parent.i.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent.i.2, align 8
  %add.ptr.i.i.2 = getelementptr i8, ptr %26, i32 -24
  %arrayidx.2 = getelementptr %struct.snd_tscm, ptr %tscm, i32 0, i32 15, i32 2
  %27 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr.i.i.2, ptr %arrayidx.2, align 8
  %next_ktime.2 = getelementptr %struct.snd_tscm, ptr %tscm, i32 0, i32 15, i32 2, i32 3
  %28 = ptrtoint ptr %next_ktime.2 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 0, ptr %next_ktime.2, align 8
  %work.2 = getelementptr %struct.snd_tscm, ptr %tscm, i32 0, i32 15, i32 2, i32 1
  tail call void @__init_work(ptr noundef %work.2, i32 noundef 0) #5
  %29 = ptrtoint ptr %work.2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -64, ptr %work.2, align 4
  %lockdep_map.2 = getelementptr %struct.snd_tscm, ptr %tscm, i32 0, i32 15, i32 2, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.2, ptr noundef nonnull @.str, ptr noundef nonnull @snd_tscm_transaction_register.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry23.2 = getelementptr %struct.snd_tscm, ptr %tscm, i32 0, i32 15, i32 2, i32 1, i32 1
  %30 = ptrtoint ptr %entry23.2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %entry23.2, ptr %entry23.2, align 4
  %prev.i.2 = getelementptr %struct.snd_tscm, ptr %tscm, i32 0, i32 15, i32 2, i32 1, i32 1, i32 1
  %31 = ptrtoint ptr %prev.i.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %entry23.2, ptr %prev.i.2, align 4
  %func.2 = getelementptr %struct.snd_tscm, ptr %tscm, i32 0, i32 15, i32 2, i32 1, i32 2
  %32 = ptrtoint ptr %func.2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @midi_port_work, ptr %func.2, align 4
  %33 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %unit, align 4
  %parent.i.3 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %parent.i.3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parent.i.3, align 8
  %add.ptr.i.i.3 = getelementptr i8, ptr %36, i32 -24
  %arrayidx.3 = getelementptr %struct.snd_tscm, ptr %tscm, i32 0, i32 15, i32 3
  %37 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr.i.i.3, ptr %arrayidx.3, align 8
  %next_ktime.3 = getelementptr %struct.snd_tscm, ptr %tscm, i32 0, i32 15, i32 3, i32 3
  %38 = ptrtoint ptr %next_ktime.3 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 0, ptr %next_ktime.3, align 8
  %work.3 = getelementptr %struct.snd_tscm, ptr %tscm, i32 0, i32 15, i32 3, i32 1
  tail call void @__init_work(ptr noundef %work.3, i32 noundef 0) #5
  %39 = ptrtoint ptr %work.3 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -64, ptr %work.3, align 4
  %lockdep_map.3 = getelementptr %struct.snd_tscm, ptr %tscm, i32 0, i32 15, i32 3, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.3, ptr noundef nonnull @.str, ptr noundef nonnull @snd_tscm_transaction_register.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry23.3 = getelementptr %struct.snd_tscm, ptr %tscm, i32 0, i32 15, i32 3, i32 1, i32 1
  %40 = ptrtoint ptr %entry23.3 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %entry23.3, ptr %entry23.3, align 4
  %prev.i.3 = getelementptr %struct.snd_tscm, ptr %tscm, i32 0, i32 15, i32 3, i32 1, i32 1, i32 1
  %41 = ptrtoint ptr %prev.i.3 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %entry23.3, ptr %prev.i.3, align 4
  %func.3 = getelementptr %struct.snd_tscm, ptr %tscm, i32 0, i32 15, i32 3, i32 1, i32 2
  %42 = ptrtoint ptr %func.3 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @midi_port_work, ptr %func.3, align 4
  br label %cleanup

error:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @fw_core_remove_address_handler(ptr noundef %async_handler) #5
  %43 = ptrtoint ptr %callback_data to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %callback_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %error, %for.cond.preheader, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %error ], [ %call, %entry.cleanup_crit_edge ], [ %call4, %for.cond.preheader ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handle_midi_tx(ptr noundef %card, ptr noundef %request, i32 noundef %tcode, i32 noundef %destination, i32 noundef %source, i32 noundef %generation, i64 noundef %offset, ptr noundef %data, i32 noundef %length, ptr noundef %callback_data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %async_handler = getelementptr inbounds %struct.snd_tscm, ptr %callback_data, i32 0, i32 13
  %0 = ptrtoint ptr %async_handler to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %async_handler, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %offset)
  %cmp.not = icmp ne i64 %1, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %length)
  %cmp254.not = icmp ult i32 %length, 8
  %or.cond = or i1 %cmp.not, %cmp254.not
  br i1 %or.cond, label %entry.end_crit_edge, label %for.body.lr.ph

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.body.lr.ph:                                   ; preds = %entry
  %div50 = lshr i32 %length, 3
  %spec = getelementptr inbounds %struct.snd_tscm, ptr %callback_data, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc33.for.body_crit_edge, %for.body.lr.ph
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inc34, %for.inc33.for.body_crit_edge ]
  %mul = shl nuw i32 %i.055, 1
  %add.ptr = getelementptr i32, ptr %data, i32 %mul
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr, align 1
  %4 = lshr i8 %3, 4
  %5 = zext i8 %4 to i32
  %6 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spec, align 8
  %midi_capture_ports = getelementptr inbounds %struct.snd_tscm_spec, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %midi_capture_ports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %midi_capture_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp3.not = icmp ugt i32 %9, %5
  br i1 %cmp3.not, label %if.end6, label %for.body.end_crit_edge

for.body.end_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end6:                                          ; preds = %for.body
  %arrayidx7 = getelementptr i8, ptr %add.ptr, i32 1
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx7, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %sw.default.i [
    i8 -10, label %if.end6.do.end_crit_edge
    i8 -8, label %if.end6.do.end_crit_edge56
    i8 -6, label %if.end6.do.end_crit_edge57
    i8 -5, label %if.end6.do.end_crit_edge58
    i8 -4, label %if.end6.do.end_crit_edge59
    i8 -2, label %if.end6.do.end_crit_edge60
    i8 -1, label %if.end6.do.end_crit_edge61
    i8 -15, label %if.end6.sw.bb1.i_crit_edge
    i8 -13, label %if.end6.sw.bb1.i_crit_edge62
    i8 -14, label %sw.bb2.i
    i8 -16, label %if.end6.calculate_message_bytes.exit_crit_edge
    i8 -9, label %if.end6.calculate_message_bytes.exit_crit_edge63
    i8 -12, label %if.end6.calculate_message_bytes.exit_crit_edge64
    i8 -11, label %if.end6.calculate_message_bytes.exit_crit_edge65
    i8 -7, label %if.end6.calculate_message_bytes.exit_crit_edge66
    i8 -3, label %if.end6.calculate_message_bytes.exit_crit_edge67
  ]

if.end6.calculate_message_bytes.exit_crit_edge67: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %calculate_message_bytes.exit

if.end6.calculate_message_bytes.exit_crit_edge66: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %calculate_message_bytes.exit

if.end6.calculate_message_bytes.exit_crit_edge65: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %calculate_message_bytes.exit

if.end6.calculate_message_bytes.exit_crit_edge64: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %calculate_message_bytes.exit

if.end6.calculate_message_bytes.exit_crit_edge63: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %calculate_message_bytes.exit

if.end6.calculate_message_bytes.exit_crit_edge:   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %calculate_message_bytes.exit

if.end6.sw.bb1.i_crit_edge62:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

if.end6.sw.bb1.i_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

if.end6.do.end_crit_edge61:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end6.do.end_crit_edge60:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end6.do.end_crit_edge59:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end6.do.end_crit_edge58:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end6.do.end_crit_edge57:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end6.do.end_crit_edge56:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end6.do.end_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

sw.bb1.i:                                         ; preds = %if.end6.sw.bb1.i_crit_edge, %if.end6.sw.bb1.i_crit_edge62
  br label %do.end

sw.bb2.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

sw.default.i:                                     ; preds = %if.end6
  %13 = and i8 %11, -16
  %and.i = zext i8 %13 to i32
  %14 = add nsw i32 %and.i, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %14)
  %15 = icmp ult i32 %14, 112
  br i1 %15, label %switch.lookup, label %calculate_message_bytes.exitthread-pre-split

calculate_message_bytes.exitthread-pre-split:     ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %16)
  %.pr = load i8, ptr %arrayidx7, align 1
  br label %calculate_message_bytes.exit

calculate_message_bytes.exit:                     ; preds = %calculate_message_bytes.exitthread-pre-split, %if.end6.calculate_message_bytes.exit_crit_edge, %if.end6.calculate_message_bytes.exit_crit_edge63, %if.end6.calculate_message_bytes.exit_crit_edge64, %if.end6.calculate_message_bytes.exit_crit_edge65, %if.end6.calculate_message_bytes.exit_crit_edge66, %if.end6.calculate_message_bytes.exit_crit_edge67
  %17 = phi i8 [ %.pr, %calculate_message_bytes.exitthread-pre-split ], [ %11, %if.end6.calculate_message_bytes.exit_crit_edge ], [ %11, %if.end6.calculate_message_bytes.exit_crit_edge63 ], [ %11, %if.end6.calculate_message_bytes.exit_crit_edge64 ], [ %11, %if.end6.calculate_message_bytes.exit_crit_edge65 ], [ %11, %if.end6.calculate_message_bytes.exit_crit_edge66 ], [ %11, %if.end6.calculate_message_bytes.exit_crit_edge67 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %17)
  %cmp17 = icmp eq i8 %17, -9
  br i1 %cmp17, label %calculate_message_bytes.exit.do.end_crit_edge, label %for.inc

calculate_message_bytes.exit.do.end_crit_edge:    ; preds = %calculate_message_bytes.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.inc:                                          ; preds = %calculate_message_bytes.exit
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx15.1 = getelementptr i8, ptr %add.ptr, i32 2
  %18 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx15.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %19)
  %cmp17.1 = icmp eq i8 %19, -9
  %spec.select = select i1 %cmp17.1, i32 2, i32 3
  br label %do.end

switch.lookup:                                    ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = lshr exact i32 %14, 4
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.handle_midi_tx, i32 0, i32 %20
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %do.end

do.end:                                           ; preds = %switch.lookup, %for.inc, %calculate_message_bytes.exit.do.end_crit_edge, %sw.bb2.i, %sw.bb1.i, %if.end6.do.end_crit_edge, %if.end6.do.end_crit_edge56, %if.end6.do.end_crit_edge57, %if.end6.do.end_crit_edge58, %if.end6.do.end_crit_edge59, %if.end6.do.end_crit_edge60, %if.end6.do.end_crit_edge61
  %bytes.1 = phi i32 [ 1, %if.end6.do.end_crit_edge ], [ 1, %if.end6.do.end_crit_edge56 ], [ 1, %if.end6.do.end_crit_edge57 ], [ 1, %if.end6.do.end_crit_edge58 ], [ 1, %if.end6.do.end_crit_edge59 ], [ 1, %if.end6.do.end_crit_edge60 ], [ 1, %if.end6.do.end_crit_edge61 ], [ 2, %sw.bb1.i ], [ 3, %sw.bb2.i ], [ 1, %calculate_message_bytes.exit.do.end_crit_edge ], [ %spec.select, %for.inc ], [ %switch.load, %switch.lookup ]
  %arrayidx26 = getelementptr %struct.snd_tscm, ptr %callback_data, i32 0, i32 14, i32 %5
  %22 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %arrayidx26, align 4
  %cmp27.not = icmp eq ptr %23, null
  br i1 %cmp27.not, label %do.end.for.inc33_crit_edge, label %if.then29

do.end.for.inc33_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc33

if.then29:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call31 = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %23, ptr noundef %arrayidx7, i32 noundef %bytes.1) #5
  br label %for.inc33

for.inc33:                                        ; preds = %if.then29, %do.end.for.inc33_crit_edge
  %inc34 = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc34, %div50
  br i1 %exitcond.not, label %for.inc33.end_crit_edge, label %for.inc33.for.body_crit_edge

for.inc33.for.body_crit_edge:                     ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc33.end_crit_edge:                          ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

end:                                              ; preds = %for.inc33.end_crit_edge, %for.body.end_crit_edge, %entry.end_crit_edge
  tail call void @fw_send_response(ptr noundef %card, ptr noundef %request, i32 noundef 0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_core_add_address_handler(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_tscm_transaction_reregister(ptr nocapture noundef readonly %tscm) local_unnamed_addr #1 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %unit = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 1
  %0 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unit, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #5
  %card = getelementptr i8, ptr %3, i32 -4
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %node_id = getelementptr inbounds %struct.fw_card, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %node_id, align 4
  %shl = shl i32 %7, 16
  %async_handler = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 13
  %8 = ptrtoint ptr %async_handler to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %async_handler, align 8
  %shr = lshr i64 %9, 32
  %10 = trunc i64 %shr to i32
  %conv1 = or i32 %shl, %10
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv1, ptr %reg, align 4
  %call3 = call i32 @snd_fw_transaction(ptr noundef %1, i32 noundef 0, i64 noundef 281470681744132, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %async_handler to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %async_handler, align 8
  %conv7 = trunc i64 %13 to i32
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv7, ptr %reg, align 4
  %15 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %unit, align 4
  %call9 = call i32 @snd_fw_transaction(ptr noundef %16, i32 noundef 0, i64 noundef 281470681744136, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %reg, align 4
  %18 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %unit, align 4
  %call15 = call i32 @snd_fw_transaction(ptr noundef %19, i32 noundef 0, i64 noundef 281470681744128, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end13.cleanup_crit_edge, label %if.end19

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 65678, ptr %reg, align 4
  %21 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %unit, align 4
  %call21 = call i32 @snd_fw_transaction(ptr noundef %22, i32 noundef 0, i64 noundef 281470681744388, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end19 ], [ %call3, %entry.cleanup_crit_edge ], [ %call9, %if.end.cleanup_crit_edge ], [ %call15, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @midi_port_work(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %substream2 = getelementptr i8, ptr %work, i32 220
  %0 = ptrtoint ptr %substream2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %substream2, align 8
  %idling = getelementptr i8, ptr %work, i32 44
  %2 = ptrtoint ptr %idling to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %idling, align 8, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %error = getelementptr i8, ptr %work, i32 60
  %4 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %error, align 8, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp ne i8 %5, 0
  %cmp = icmp eq ptr %1, null
  %or.cond = select i1 %tobool3.not, i1 true, i1 %cmp
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call = tail call i32 @snd_rawmidi_transmit_empty(ptr noundef nonnull %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false4
  %next_ktime = getelementptr i8, ptr %work, i32 52
  %6 = ptrtoint ptr %next_ktime to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %next_ktime, align 8
  %call8 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %call8)
  %cmp3.i.i = icmp sgt i64 %7, %call8
  br i1 %cmp3.i.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work) #5
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %buf = getelementptr i8, ptr %work, i32 212
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %buf, align 8
  %add.ptr.i = getelementptr i8, ptr %work, i32 213
  %call.i = tail call i32 @snd_rawmidi_transmit_peek(ptr noundef nonnull %1, ptr noundef %add.ptr.i, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end13.if.then17.thread_crit_edge, label %if.end.i

if.end13.if.then17.thread_crit_edge:              ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17.thread

if.end.i:                                         ; preds = %if.end13
  %on_sysex.i = getelementptr i8, ptr %work, i32 217
  %10 = ptrtoint ptr %on_sysex.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %on_sysex.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.else24.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4149.i = icmp sgt i32 %call.i, 0
  br i1 %cmp4149.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.then17.thread_crit_edge

for.cond.preheader.i.if.then17.thread_crit_edge:  ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17.thread

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0150.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %add.ptr.i, i32 %i.0150.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %13)
  %cmp5.i = icmp eq i8 %13, -9
  br i1 %cmp5.i, label %if.then12.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.0150.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i
  br i1 %exitcond.not.i, label %if.else.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.then12.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %on_sysex.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %on_sysex.i, align 1
  %add.i = add nuw i32 %i.0150.i, 1
  %number.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %number.i, align 4
  %.tr134.i = trunc i32 %16 to i8
  %17 = shl i8 %.tr134.i, 4
  %conv13.i = or i8 %17, 7
  br label %if.end77.i

if.else.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp14.i = icmp eq i32 %call.i, 3
  br i1 %cmp14.i, label %fill_message.exit.thread75, label %if.else.i.if.then17.thread_crit_edge

if.else.i.if.then17.thread_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17.thread

fill_message.exit.thread75:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %number17.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %number17.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %number17.i, align 4
  %.tr136.i = trunc i32 %19 to i8
  %20 = shl i8 %.tr136.i, 4
  %conv20.i = or i8 %20, 4
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv20.i, ptr %buf, align 1
  %consume_bytes77 = getelementptr i8, ptr %work, i32 224
  %22 = ptrtoint ptr %consume_bytes77 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %consume_bytes77, align 4
  br label %if.end26

if.else24.i:                                      ; preds = %if.end.i
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %24)
  %cmp27.i = icmp eq i8 %24, -16
  br i1 %cmp27.i, label %if.then29.i, label %if.else31.i

if.then29.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %on_sysex.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %on_sysex.i, align 1
  br label %if.then17.thread

if.else31.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp34.not.i = icmp slt i8 %24, 0
  br i1 %cmp34.not.i, label %if.else31.i.if.end39.i_crit_edge, label %if.then36.i

if.else31.i.if.end39.i_crit_edge:                 ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i

if.then36.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #7
  %running_status.i = getelementptr i8, ptr %work, i32 216
  %26 = ptrtoint ptr %running_status.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %running_status.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then36.i, %if.else31.i.if.end39.i_crit_edge
  %status.0.i = phi i8 [ %27, %if.then36.i ], [ %24, %if.else31.i.if.end39.i_crit_edge ]
  %28 = zext i8 %status.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %status.0.i, label %sw.default.i.i [
    i8 -10, label %if.end39.i.if.end44.i_crit_edge
    i8 -8, label %if.end39.i.if.end44.i_crit_edge88
    i8 -6, label %if.end39.i.if.end44.i_crit_edge89
    i8 -5, label %if.end39.i.if.end44.i_crit_edge90
    i8 -4, label %if.end39.i.if.end44.i_crit_edge91
    i8 -2, label %if.end39.i.if.end44.i_crit_edge92
    i8 -1, label %if.end39.i.if.end44.i_crit_edge93
    i8 -15, label %if.end39.i.sw.bb1.i.i_crit_edge
    i8 -13, label %if.end39.i.sw.bb1.i.i_crit_edge94
    i8 -14, label %sw.bb2.i.i
    i8 -16, label %if.end39.i.if.then17.thread_crit_edge
    i8 -9, label %if.end39.i.if.then17.thread_crit_edge95
    i8 -12, label %if.end39.i.if.then17.thread_crit_edge96
    i8 -11, label %if.end39.i.if.then17.thread_crit_edge97
    i8 -7, label %if.end39.i.if.then17.thread_crit_edge98
    i8 -3, label %if.end39.i.if.then17.thread_crit_edge99
  ]

if.end39.i.if.then17.thread_crit_edge99:          ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17.thread

if.end39.i.if.then17.thread_crit_edge98:          ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17.thread

if.end39.i.if.then17.thread_crit_edge97:          ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17.thread

if.end39.i.if.then17.thread_crit_edge96:          ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17.thread

if.end39.i.if.then17.thread_crit_edge95:          ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17.thread

if.end39.i.if.then17.thread_crit_edge:            ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17.thread

if.end39.i.sw.bb1.i.i_crit_edge94:                ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i.i

if.end39.i.sw.bb1.i.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i.i

if.end39.i.if.end44.i_crit_edge93:                ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44.i

if.end39.i.if.end44.i_crit_edge92:                ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44.i

if.end39.i.if.end44.i_crit_edge91:                ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44.i

if.end39.i.if.end44.i_crit_edge90:                ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44.i

if.end39.i.if.end44.i_crit_edge89:                ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44.i

if.end39.i.if.end44.i_crit_edge88:                ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44.i

if.end39.i.if.end44.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44.i

sw.bb1.i.i:                                       ; preds = %if.end39.i.sw.bb1.i.i_crit_edge, %if.end39.i.sw.bb1.i.i_crit_edge94
  br label %if.end44.i

sw.bb2.i.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44.i

sw.default.i.i:                                   ; preds = %if.end39.i
  %29 = and i8 %status.0.i, -16
  %and.i.i = zext i8 %29 to i32
  %30 = add nsw i32 %and.i.i, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %30)
  %31 = icmp ult i32 %30, 112
  br i1 %31, label %switch.lookup, label %sw.default.i.i.if.then17.thread_crit_edge

sw.default.i.i.if.then17.thread_crit_edge:        ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17.thread

switch.lookup:                                    ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %32 = lshr exact i32 %30, 4
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.midi_port_work, i32 0, i32 %32
  %33 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %33)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %switch.lookup, %sw.bb2.i.i, %sw.bb1.i.i, %if.end39.i.if.end44.i_crit_edge, %if.end39.i.if.end44.i_crit_edge88, %if.end39.i.if.end44.i_crit_edge89, %if.end39.i.if.end44.i_crit_edge90, %if.end39.i.if.end44.i_crit_edge91, %if.end39.i.if.end44.i_crit_edge92, %if.end39.i.if.end44.i_crit_edge93
  %retval.0.i.ph.i = phi i32 [ 1, %if.end39.i.if.end44.i_crit_edge ], [ 1, %if.end39.i.if.end44.i_crit_edge88 ], [ 1, %if.end39.i.if.end44.i_crit_edge89 ], [ 1, %if.end39.i.if.end44.i_crit_edge90 ], [ 1, %if.end39.i.if.end44.i_crit_edge91 ], [ 1, %if.end39.i.if.end44.i_crit_edge92 ], [ 1, %if.end39.i.if.end44.i_crit_edge93 ], [ 2, %sw.bb1.i.i ], [ 3, %sw.bb2.i.i ], [ %switch.load, %switch.lookup ]
  br i1 %cmp34.not.i, label %if.else62.i, label %if.then50.i

if.then50.i:                                      ; preds = %if.end44.i
  %sub.i = add nsw i32 %retval.0.i.ph.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %sub.i)
  %cmp51.i = icmp slt i32 %call.i, %sub.i
  br i1 %cmp51.i, label %if.then50.i.if.then17.thread_crit_edge, label %if.end54.i

if.then50.i.if.then17.thread_crit_edge:           ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17.thread

if.end54.i:                                       ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx56.i = getelementptr i8, ptr %work, i32 214
  %34 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx56.i, align 1
  %arrayidx57.i = getelementptr i8, ptr %work, i32 215
  %36 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx57.i, align 1
  store i8 %24, ptr %arrayidx56.i, align 1
  %running_status60.i = getelementptr i8, ptr %work, i32 216
  %37 = ptrtoint ptr %running_status60.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %running_status60.i, align 4
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %add.ptr.i, align 1
  br label %if.end70.i

if.else62.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %retval.0.i.ph.i)
  %cmp63.i = icmp slt i32 %call.i, %retval.0.i.ph.i
  br i1 %cmp63.i, label %if.else62.i.if.then17.thread_crit_edge, label %if.end66.i

if.else62.i.if.then17.thread_crit_edge:           ; preds = %if.else62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17.thread

if.end66.i:                                       ; preds = %if.else62.i
  call void @__sanitizer_cov_trace_pc() #7
  %running_status68.i = getelementptr i8, ptr %work, i32 216
  %40 = ptrtoint ptr %running_status68.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %24, ptr %running_status68.i, align 4
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.end66.i, %if.end54.i
  %consume.1.i = phi i32 [ %sub.i, %if.end54.i ], [ %retval.0.i.ph.i, %if.end66.i ]
  %number71.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %1, i32 0, i32 2
  %41 = ptrtoint ptr %number71.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %number71.i, align 4
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %add.ptr.i, align 1
  %.tr.i = trunc i32 %42 to i8
  %conv76.i = tail call i8 @llvm.fshl.i8(i8 %.tr.i, i8 %44, i8 4) #5
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.end70.i, %if.then12.i
  %storemerge135.i = phi i8 [ %conv76.i, %if.end70.i ], [ %conv13.i, %if.then12.i ]
  %len.0.i = phi i32 [ %retval.0.i.ph.i, %if.end70.i ], [ %add.i, %if.then12.i ]
  %consume.2.i = phi i32 [ %consume.1.i, %if.end70.i ], [ %add.i, %if.then12.i ]
  %45 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %storemerge135.i, ptr %buf, align 1
  %46 = add i32 %len.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %47 = icmp ult i32 %46, 2
  br i1 %47, label %if.then82.i, label %if.end77.i.fill_message.exit_crit_edge

if.end77.i.fill_message.exit_crit_edge:           ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fill_message.exit

if.then82.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr83.i = getelementptr i8, ptr %add.ptr.i, i32 %len.0.i
  %sub84.i = sub nuw nsw i32 3, %len.0.i
  %48 = call ptr @memset(ptr %add.ptr83.i, i32 0, i32 %sub84.i)
  br label %fill_message.exit

if.then17.thread:                                 ; preds = %if.else62.i.if.then17.thread_crit_edge, %if.then50.i.if.then17.thread_crit_edge, %sw.default.i.i.if.then17.thread_crit_edge, %if.end39.i.if.then17.thread_crit_edge, %if.end39.i.if.then17.thread_crit_edge95, %if.end39.i.if.then17.thread_crit_edge96, %if.end39.i.if.then17.thread_crit_edge97, %if.end39.i.if.then17.thread_crit_edge98, %if.end39.i.if.then17.thread_crit_edge99, %if.then29.i, %if.else.i.if.then17.thread_crit_edge, %for.cond.preheader.i.if.then17.thread_crit_edge, %if.end13.if.then17.thread_crit_edge
  %consume_bytes72 = getelementptr i8, ptr %work, i32 224
  %49 = ptrtoint ptr %consume_bytes72 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %consume_bytes72, align 4
  br label %if.then20

fill_message.exit:                                ; preds = %if.then82.i, %if.end77.i.fill_message.exit_crit_edge
  %consume_bytes = getelementptr i8, ptr %work, i32 224
  %50 = ptrtoint ptr %consume_bytes to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %consume.2.i, ptr %consume_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %consume.2.i)
  %cmp16 = icmp slt i32 %consume.2.i, 1
  br i1 %cmp16, label %if.then17, label %fill_message.exit.if.end26_crit_edge

fill_message.exit.if.end26_crit_edge:             ; preds = %fill_message.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then17:                                        ; preds = %fill_message.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %consume.2.i)
  %cmp19 = icmp eq i32 %consume.2.i, 0
  br i1 %cmp19, label %if.then17.if.then20_crit_edge, label %if.else

if.then17.if.then20_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20

if.then20:                                        ; preds = %if.then17.if.then20_crit_edge, %if.then17.thread
  %51 = ptrtoint ptr %next_ktime to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 0, ptr %next_ktime, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %52 = load ptr, ptr @system_wq, align 4
  %call.i.i70 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %52, ptr noundef %work) #5
  br label %cleanup

if.else:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %error, align 8
  br label %cleanup

if.end26:                                         ; preds = %fill_message.exit.if.end26_crit_edge, %fill_message.exit.thread75
  %consume_bytes79 = phi ptr [ %consume_bytes77, %fill_message.exit.thread75 ], [ %consume_bytes, %fill_message.exit.if.end26_crit_edge ]
  %call27 = tail call i64 @ktime_get() #5
  %54 = ptrtoint ptr %consume_bytes79 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %consume_bytes79, align 4
  %mul29 = mul i32 %55, 256000
  %conv = sext i32 %mul29 to i64
  %add = add i64 %call27, %conv
  %56 = ptrtoint ptr %next_ktime to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %add, ptr %next_ktime, align 8
  %57 = ptrtoint ptr %idling to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %idling, align 8
  %58 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr, align 8
  %generation32 = getelementptr inbounds %struct.fw_device, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %generation32 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %generation32, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !15
  %62 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %add.ptr, align 8
  %card = getelementptr inbounds %struct.fw_device, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %card, align 4
  %transaction = getelementptr i8, ptr %work, i32 64
  %node_id = getelementptr inbounds %struct.fw_device, ptr %63, i32 0, i32 2
  %66 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %node_id, align 8
  %max_speed = getelementptr inbounds %struct.fw_device, ptr %63, i32 0, i32 4
  %68 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %max_speed, align 8
  tail call void @fw_send_request(ptr noundef %65, ptr noundef %transaction, i32 noundef 0, i32 noundef %67, i32 noundef %61, i32 noundef %69, i64 noundef 281470681759744, ptr noundef %buf, i32 noundef 4, ptr noundef nonnull @async_midi_port_callback, ptr noundef %add.ptr) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.else, %if.then20, %if.then10, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_core_remove_address_handler(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_fw_transaction(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_tscm_transaction_unregister(ptr noundef %tscm) local_unnamed_addr #1 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #5
  %callback_data = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 13, i32 3
  %0 = ptrtoint ptr %callback_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %callback_data, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %async_handler = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 13
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 142, ptr %reg, align 4
  %unit = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 1
  %3 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %unit, align 4
  %call = call i32 @snd_fw_transaction(ptr noundef %4, i32 noundef 0, i64 noundef 281470681744388, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #5
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %reg, align 4
  %6 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unit, align 4
  %call2 = call i32 @snd_fw_transaction(ptr noundef %7, i32 noundef 0, i64 noundef 281470681744128, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #5
  %8 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unit, align 4
  %call4 = call i32 @snd_fw_transaction(ptr noundef %9, i32 noundef 0, i64 noundef 281470681744132, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #5
  %10 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %unit, align 4
  %call6 = call i32 @snd_fw_transaction(ptr noundef %11, i32 noundef 0, i64 noundef 281470681744136, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #5
  call void @fw_core_remove_address_handler(ptr noundef %async_handler) #5
  %12 = ptrtoint ptr %callback_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %callback_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_receive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_send_response(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_send_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @async_midi_port_callback(ptr nocapture noundef readnone %card, i32 noundef %rcode, ptr nocapture noundef readnone %data, i32 noundef %length, ptr noundef %callback_data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %substream1 = getelementptr inbounds %struct.snd_fw_async_midi_port, ptr %callback_data, i32 0, i32 9
  %0 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %substream1, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rcode)
  %cmp2 = icmp eq i32 %rcode, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %consume_bytes = getelementptr inbounds %struct.snd_fw_async_midi_port, ptr %callback_data, i32 0, i32 10
  %2 = ptrtoint ptr %consume_bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %consume_bytes, align 4
  %call = tail call i32 @snd_rawmidi_transmit_ack(ptr noundef nonnull %1, i32 noundef %3) #5
  br label %if.end8

if.else:                                          ; preds = %if.end
  %4 = and i32 %rcode, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %5 = icmp eq i32 %4, 6
  br i1 %5, label %if.else6, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %next_ktime = getelementptr inbounds %struct.snd_fw_async_midi_port, ptr %callback_data, i32 0, i32 3
  %6 = ptrtoint ptr %next_ktime to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %next_ktime, align 8
  br label %if.end8

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %error = getelementptr inbounds %struct.snd_fw_async_midi_port, ptr %callback_data, i32 0, i32 4
  %7 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %error, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.else6, %if.then5, %if.then3
  %idling = getelementptr inbounds %struct.snd_fw_async_midi_port, ptr %callback_data, i32 0, i32 2
  %8 = ptrtoint ptr %idling to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %idling, align 8
  %call9 = tail call i32 @snd_rawmidi_transmit_empty(ptr noundef nonnull %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then10, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %work = getelementptr inbounds %struct.snd_fw_async_midi_port, ptr %callback_data, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %work) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit_peek(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit_ack(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @snd_tscm_transaction_register.resp_register_region, !1, !"resp_register_region", i1 false, i1 false}
!1 = !{!"../sound/firewire/tascam/tascam-transaction.c", i32 294, i32 40}
!2 = !{ptr @snd_tscm_transaction_register.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../sound/firewire/tascam/tascam-transaction.c", i32 322, i32 3}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{i8 0, i8 2}
!15 = !{i64 2154533634}
