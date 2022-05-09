; ModuleID = '/llk/IR_all_yes/sound/firewire/motu/motu.c_pt.bc'
source_filename = "../sound/firewire/motu/motu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fw_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee1394_device_id = type { i32, i32, i32, i32, i32, i32 }
%struct.snd_motu_spec = type { ptr, i32, i32, [3 x i8], [3 x i8] }
%struct.fw_csr_iterator = type { ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_motu = type { ptr, ptr, %struct.mutex, %struct.spinlock, ptr, %struct.snd_motu_packet_format, %struct.snd_motu_packet_format, %struct.amdtp_stream, %struct.amdtp_stream, %struct.fw_iso_resources, %struct.fw_iso_resources, i32, %struct.fw_address_handler, i32, i32, i8, %struct.wait_queue_head, ptr, %struct.amdtp_domain, %struct.amdtp_motu_cache, ptr }
%struct.snd_motu_packet_format = type { i8, i8, i8, i8, [3 x i8] }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.92, %struct.anon.93 }
%struct.anon.92 = type { i32, i32, i32 }
%struct.anon.93 = type { i8 }
%struct.amdtp_motu_cache = type { ptr, i32, i32, i32, i32, i32 }
%struct.fw_unit = type { %struct.device, ptr, %struct.fw_attribute_group }
%struct.fw_attribute_group = type { [2 x ptr], %struct.attribute_group, [13 x ptr] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_description243 = internal constant [51 x i8] c"snd_firewire_motu.description=MOTU FireWire driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author244 = internal constant [68 x i8] c"snd_firewire_motu.author=Takashi Sakamoto <o-takashi@sakamocchi.jp>\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [61 x i8] c"snd_firewire_motu.file=sound/firewire/motu/snd-firewire-motu\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [33 x i8] c"snd_firewire_motu.license=GPL v2\00", section ".modinfo", align 1
@snd_motu_clock_rates = dso_local constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 44100, i32 48000, i32 88200, i32 96000, i32 176400, i32 192000], [40 x i8] zeroinitializer }, align 32
@motu_driver = internal global { %struct.fw_driver, [36 x i8] } { %struct.fw_driver { %struct.device_driver { ptr @.str, ptr @fw_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @motu_probe, ptr @motu_bus_update, ptr @motu_remove, ptr @motu_id_table }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_snd_firewire_motu__247_204_alsa_motu_init6 = internal global ptr @alsa_motu_init, section ".initcall6.init", align 4
@__exitcall_alsa_motu_exit = internal global ptr @alsa_motu_exit, section ".exitcall.exit", align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_firewire_motu\00", [46 x i8] zeroinitializer }, align 32
@fw_bus_type = external dso_local global %struct.bus_type, align 4
@motu_id_table = internal constant { [16 x %struct.ieee1394_device_id], [96 x i8] } { [16 x %struct.ieee1394_device_id] [%struct.ieee1394_device_id { i32 13, i32 498, i32 0, i32 498, i32 1, i32 ptrtoint (ptr @snd_motu_spec_828 to i32) }, %struct.ieee1394_device_id { i32 13, i32 498, i32 0, i32 498, i32 2, i32 ptrtoint (ptr @snd_motu_spec_896 to i32) }, %struct.ieee1394_device_id { i32 13, i32 498, i32 0, i32 498, i32 3, i32 ptrtoint (ptr @snd_motu_spec_828mk2 to i32) }, %struct.ieee1394_device_id { i32 13, i32 498, i32 0, i32 498, i32 5, i32 ptrtoint (ptr @snd_motu_spec_896hd to i32) }, %struct.ieee1394_device_id { i32 13, i32 498, i32 0, i32 498, i32 9, i32 ptrtoint (ptr @snd_motu_spec_traveler to i32) }, %struct.ieee1394_device_id { i32 13, i32 498, i32 0, i32 498, i32 13, i32 ptrtoint (ptr @snd_motu_spec_ultralite to i32) }, %struct.ieee1394_device_id { i32 13, i32 498, i32 0, i32 498, i32 15, i32 ptrtoint (ptr @snd_motu_spec_8pre to i32) }, %struct.ieee1394_device_id { i32 13, i32 498, i32 0, i32 498, i32 21, i32 ptrtoint (ptr @snd_motu_spec_828mk3_fw to i32) }, %struct.ieee1394_device_id { i32 13, i32 498, i32 0, i32 498, i32 25, i32 ptrtoint (ptr @snd_motu_spec_ultralite_mk3 to i32) }, %struct.ieee1394_device_id { i32 13, i32 498, i32 0, i32 498, i32 27, i32 ptrtoint (ptr @snd_motu_spec_traveler_mk3 to i32) }, %struct.ieee1394_device_id { i32 13, i32 498, i32 0, i32 498, i32 48, i32 ptrtoint (ptr @snd_motu_spec_ultralite_mk3 to i32) }, %struct.ieee1394_device_id { i32 13, i32 498, i32 0, i32 498, i32 53, i32 ptrtoint (ptr @snd_motu_spec_828mk3_hybrid to i32) }, %struct.ieee1394_device_id { i32 13, i32 498, i32 0, i32 498, i32 51, i32 ptrtoint (ptr @snd_motu_spec_audio_express to i32) }, %struct.ieee1394_device_id { i32 13, i32 498, i32 0, i32 498, i32 57, i32 ptrtoint (ptr @snd_motu_spec_track16 to i32) }, %struct.ieee1394_device_id { i32 13, i32 498, i32 0, i32 498, i32 69, i32 ptrtoint (ptr @snd_motu_spec_4pre to i32) }, %struct.ieee1394_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@motu_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&motu->mutex\00", [19 x i8] zeroinitializer }, align 32
@motu_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&motu->lock\00", [20 x i8] zeroinitializer }, align 32
@motu_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&motu->hwdep_wait\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"MOTU %s (version:%06x), GUID %08x%08x at %s, S%d\00", [47 x i8] zeroinitializer }, align 32
@snd_motu_spec_828 = external dso_local constant %struct.snd_motu_spec, align 4
@snd_motu_spec_896 = external dso_local constant %struct.snd_motu_spec, align 4
@snd_motu_spec_828mk2 = external dso_local constant %struct.snd_motu_spec, align 4
@snd_motu_spec_896hd = external dso_local constant %struct.snd_motu_spec, align 4
@snd_motu_spec_traveler = external dso_local constant %struct.snd_motu_spec, align 4
@snd_motu_spec_ultralite = external dso_local constant %struct.snd_motu_spec, align 4
@snd_motu_spec_8pre = external dso_local constant %struct.snd_motu_spec, align 4
@snd_motu_spec_828mk3_fw = external dso_local constant %struct.snd_motu_spec, align 4
@snd_motu_spec_ultralite_mk3 = external dso_local constant %struct.snd_motu_spec, align 4
@snd_motu_spec_traveler_mk3 = external dso_local constant %struct.snd_motu_spec, align 4
@snd_motu_spec_828mk3_hybrid = external dso_local constant %struct.snd_motu_spec, align 4
@snd_motu_spec_audio_express = external dso_local constant %struct.snd_motu_spec, align 4
@snd_motu_spec_track16 = external dso_local constant %struct.snd_motu_spec, align 4
@snd_motu_spec_4pre = external dso_local constant %struct.snd_motu_spec, align 4
@___asan_gen_.8 = private unnamed_addr constant [21 x i8] c"snd_motu_clock_rates\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 16, i32 20 }
@___asan_gen_.11 = private unnamed_addr constant [12 x i8] c"motu_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 182, i32 25 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 185, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"motu_id_table\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 162, i32 40 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 82, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 83, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 84, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [30 x i8] c"../sound/firewire/motu/motu.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 48, i32 4 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_alsa_motu_exit, ptr @__initcall__kmod_snd_firewire_motu__247_204_alsa_motu_init6, ptr @alsa_motu_exit, ptr @snd_motu_clock_rates, ptr @motu_driver, ptr @.str, ptr @motu_id_table, ptr @motu_probe.__key, ptr @.str.1, ptr @motu_probe.__key.2, ptr @.str.3, ptr @motu_probe.__key.4, ptr @.str.5, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_motu_clock_rates to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @motu_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @motu_id_table to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @motu_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @motu_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @motu_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @alsa_motu_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef nonnull @motu_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @alsa_motu_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @driver_register(ptr noundef nonnull @motu_driver) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @motu_probe(ptr noundef %unit, ptr nocapture noundef readonly %entry1) #2 align 64 {
entry:
  %it.i = alloca %struct.fw_csr_iterator, align 4
  %key.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #6
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !41
  %call = call i32 @snd_card_new(ptr noundef %unit, i32 noundef -1, ptr noundef null, ptr noundef null, i32 noundef 1240, ptr noundef nonnull %card) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 4
  %private_free = getelementptr inbounds %struct.snd_card, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @motu_card_free, ptr %private_free, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %2, i32 0, i32 9
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 8
  %call.i = call ptr @get_device(ptr noundef %unit) #6
  %unit3 = getelementptr inbounds %struct.snd_motu, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %unit3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %unit, ptr %unit3, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %driver_data.i, align 4
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %5, align 8
  %driver_data = getelementptr inbounds %struct.ieee1394_device_id, ptr %entry1, i32 0, i32 5
  %11 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %driver_data, align 4
  %13 = inttoptr i32 %12 to ptr
  %spec = getelementptr inbounds %struct.snd_motu, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %spec to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %spec, align 8
  %mutex = getelementptr inbounds %struct.snd_motu, ptr %5, i32 0, i32 2
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @motu_probe.__key) #6
  %lock = getelementptr inbounds %struct.snd_motu, ptr %5, i32 0, i32 3
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @motu_probe.__key.2, i16 noundef signext 3) #6
  %hwdep_wait = getelementptr inbounds %struct.snd_motu, ptr %5, i32 0, i32 16
  call void @__init_waitqueue_head(ptr noundef %hwdep_wait, ptr noundef nonnull @.str.5, ptr noundef nonnull @motu_probe.__key.4) #6
  %15 = ptrtoint ptr %unit3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %unit3, align 4
  %parent.i.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %it.i) #6
  %19 = ptrtoint ptr %it.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 -1 to ptr), ptr %it.i, align 4, !annotation !41
  %20 = getelementptr inbounds %struct.fw_csr_iterator, ptr %it.i, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 -1 to ptr), ptr %20, align 4, !annotation !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i) #6
  %22 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %key.i, align 4, !annotation !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %val.i, align 4, !annotation !41
  %directory.i = getelementptr inbounds %struct.fw_unit, ptr %16, i32 0, i32 1
  %24 = ptrtoint ptr %directory.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %directory.i, align 8
  call void @fw_csr_iterator_init(ptr noundef nonnull %it.i, ptr noundef %25) #6
  %call232.i = call i32 @fw_csr_iterator_next(ptr noundef nonnull %it.i, ptr noundef nonnull %key.i, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call232.i)
  %tobool.not33.i = icmp eq i32 %call232.i, 0
  br i1 %tobool.not33.i, label %if.end.while.end.i_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.while.end.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body.i:                                     ; preds = %sw.epilog.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %version.034.i = phi i32 [ %version.1.i, %sw.epilog.i.while.body.i_crit_edge ], [ 0, %if.end.while.body.i_crit_edge ]
  %26 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %key.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %27)
  %cond.i = icmp eq i32 %27, 23
  br i1 %cond.i, label %sw.bb.i, label %while.body.i.sw.epilog.i_crit_edge

while.body.i.sw.epilog.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %while.body.i.sw.epilog.i_crit_edge
  %version.1.i = phi i32 [ %29, %sw.bb.i ], [ %version.034.i, %while.body.i.sw.epilog.i_crit_edge ]
  %call2.i = call i32 @fw_csr_iterator_next(ptr noundef nonnull %it.i, ptr noundef nonnull %key.i, ptr noundef nonnull %val.i) #6
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %sw.epilog.i.while.end.i_crit_edge, label %sw.epilog.i.while.body.i_crit_edge

sw.epilog.i.while.body.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

sw.epilog.i.while.end.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.end.i:                                      ; preds = %sw.epilog.i.while.end.i_crit_edge, %if.end.while.end.i_crit_edge
  %version.0.lcssa.i = phi i32 [ 0, %if.end.while.end.i_crit_edge ], [ %version.1.i, %sw.epilog.i.while.end.i_crit_edge ]
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %5, align 8
  %driver.i = getelementptr inbounds %struct.snd_card, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %driver.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 5068569715695441152, ptr %driver.i, align 1
  %33 = load ptr, ptr %5, align 8
  %shortname.i = getelementptr inbounds %struct.snd_card, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %spec, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %call6.i = call ptr @strcpy(ptr noundef %shortname.i, ptr noundef %37) #9
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %5, align 8
  %mixername.i = getelementptr inbounds %struct.snd_card, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %spec, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %call11.i = call ptr @strcpy(ptr noundef %mixername.i, ptr noundef %43) #9
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %5, align 8
  %46 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %spec, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %config_rom.i = getelementptr i8, ptr %18, i32 1028
  %50 = ptrtoint ptr %config_rom.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %config_rom.i, align 4
  %arrayidx.i = getelementptr i32, ptr %51, i32 3
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i, align 4
  %arrayidx17.i = getelementptr i32, ptr %51, i32 4
  %54 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx17.i, align 4
  %56 = ptrtoint ptr %unit3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %unit3, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %59, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.end.i.name_card.exit_crit_edge

while.end.i.name_card.exit_crit_edge:             ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %name_card.exit

if.end.i.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %57, align 4
  br label %name_card.exit

name_card.exit:                                   ; preds = %if.end.i.i, %while.end.i.name_card.exit_crit_edge
  %retval.0.i.i = phi ptr [ %61, %if.end.i.i ], [ %59, %while.end.i.name_card.exit_crit_edge ]
  %longname.i = getelementptr inbounds %struct.snd_card, ptr %45, i32 0, i32 4
  %max_speed.i = getelementptr i8, ptr %18, i32 -8
  %62 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %max_speed.i, align 8
  %shl.i = shl i32 100, %63
  %call20.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %longname.i, i32 noundef 80, ptr noundef nonnull @.str.7, ptr noundef %49, i32 noundef %version.0.lcssa.i, i32 noundef %53, i32 noundef %55, ptr noundef %retval.0.i.i, i32 noundef %shl.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %it.i) #6
  %call13 = call i32 @snd_motu_transaction_register(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %name_card.exit.error_crit_edge, label %if.end16

name_card.exit.error_crit_edge:                   ; preds = %name_card.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end16:                                         ; preds = %name_card.exit
  %call17 = call i32 @snd_motu_stream_init_duplex(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end16.error_crit_edge, label %if.end20

if.end16.error_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end20:                                         ; preds = %if.end16
  call void @snd_motu_proc_init(ptr noundef %5) #6
  %call21 = call i32 @snd_motu_create_pcm_devices(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end20.error_crit_edge, label %if.end24

if.end20.error_crit_edge:                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end24:                                         ; preds = %if.end20
  %64 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %spec, align 8
  %flags = getelementptr inbounds %struct.snd_motu_spec, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags, align 4
  %68 = and i32 %67, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %if.end24.if.end45_crit_edge, label %if.then40

if.end24.if.end45_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then40:                                        ; preds = %if.end24
  %call41 = call i32 @snd_motu_create_midi_devices(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then40.error_crit_edge, label %if.then40.if.end45_crit_edge

if.then40.if.end45_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then40.error_crit_edge:                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end45:                                         ; preds = %if.then40.if.end45_crit_edge, %if.end24.if.end45_crit_edge
  %call46 = call i32 @snd_motu_create_hwdep_device(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.end45.error_crit_edge, label %if.end49

if.end45.error_crit_edge:                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end49:                                         ; preds = %if.end45
  %70 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %spec, align 8
  %flags51 = getelementptr inbounds %struct.snd_motu_spec, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %flags51 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags51, align 4
  %and52 = and i32 %73, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.else, label %if.then54

if.then54:                                        ; preds = %if.end49
  %call55 = call i32 @snd_motu_register_dsp_message_parser_new(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.then54.error_crit_edge, label %if.then54.if.end69_crit_edge

if.then54.if.end69_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then54.error_crit_edge:                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.else:                                          ; preds = %if.end49
  %and61 = and i32 %73, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.else.if.end69_crit_edge, label %if.then63

if.else.if.end69_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then63:                                        ; preds = %if.else
  %call64 = call i32 @snd_motu_command_dsp_message_parser_new(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %if.then63.error_crit_edge, label %if.then63.if.end69_crit_edge

if.then63.if.end69_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then63.error_crit_edge:                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end69:                                         ; preds = %if.then63.if.end69_crit_edge, %if.else.if.end69_crit_edge, %if.then54.if.end69_crit_edge
  %74 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %card, align 4
  %call70 = call i32 @snd_card_register(ptr noundef %75) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.end69.error_crit_edge, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end69.error_crit_edge:                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

error:                                            ; preds = %if.end69.error_crit_edge, %if.then63.error_crit_edge, %if.then54.error_crit_edge, %if.end45.error_crit_edge, %if.then40.error_crit_edge, %if.end20.error_crit_edge, %if.end16.error_crit_edge, %name_card.exit.error_crit_edge
  %err.0 = phi i32 [ %call13, %name_card.exit.error_crit_edge ], [ %call17, %if.end16.error_crit_edge ], [ %call21, %if.end20.error_crit_edge ], [ %call41, %if.then40.error_crit_edge ], [ %call46, %if.end45.error_crit_edge ], [ %call55, %if.then54.error_crit_edge ], [ %call70, %if.end69.error_crit_edge ], [ %call64, %if.then63.error_crit_edge ]
  %76 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %card, align 4
  %call74 = call i32 @snd_card_free(ptr noundef %77) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end69.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end69.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @motu_bus_update(ptr nocapture noundef readonly %unit) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @snd_motu_transaction_reregister(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @motu_remove(ptr nocapture noundef readonly %unit) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call1 = tail call i32 @snd_card_free(ptr noundef %3) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @motu_card_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  tail call void @snd_motu_transaction_unregister(ptr noundef %1) #6
  tail call void @snd_motu_stream_destroy_duplex(ptr noundef %1) #6
  %mutex = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %mutex) #6
  %unit = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit, align 4
  tail call void @put_device(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_transaction_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_stream_init_duplex(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_motu_proc_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_create_pcm_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_create_midi_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_create_hwdep_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_register_dsp_message_parser_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_command_dsp_message_parser_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_motu_transaction_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_motu_stream_destroy_duplex(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_csr_iterator_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_csr_iterator_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_transaction_reregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !22, !23, !25, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__UNIQUE_ID_description243, !1, !"__UNIQUE_ID_description243", i1 false, i1 false}
!1 = !{!"../sound/firewire/motu/motu.c", i32 12, i32 1}
!2 = !{ptr @__UNIQUE_ID_author244, !3, !"__UNIQUE_ID_author244", i1 false, i1 false}
!3 = !{!"../sound/firewire/motu/motu.c", i32 13, i32 1}
!4 = !{ptr @__UNIQUE_ID_file245, !5, !"__UNIQUE_ID_file245", i1 false, i1 false}
!5 = !{!"../sound/firewire/motu/motu.c", i32 14, i32 1}
!6 = !{ptr @__UNIQUE_ID_license246, !5, !"__UNIQUE_ID_license246", i1 false, i1 false}
!7 = !{ptr @snd_motu_clock_rates, !8, !"snd_motu_clock_rates", i1 false, i1 false}
!8 = !{!"../sound/firewire/motu/motu.c", i32 16, i32 20}
!9 = !{ptr @__initcall__kmod_snd_firewire_motu__247_204_alsa_motu_init6, !10, !"__initcall__kmod_snd_firewire_motu__247_204_alsa_motu_init6", i1 false, i1 false}
!10 = !{!"../sound/firewire/motu/motu.c", i32 204, i32 1}
!11 = !{ptr @__exitcall_alsa_motu_exit, !12, !"__exitcall_alsa_motu_exit", i1 false, i1 false}
!12 = !{!"../sound/firewire/motu/motu.c", i32 205, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/firewire/motu/motu.c", i32 185, i32 11}
!15 = !{ptr @motu_driver, !16, !"motu_driver", i1 false, i1 false}
!16 = !{!"../sound/firewire/motu/motu.c", i32 182, i32 25}
!17 = !{ptr @motu_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../sound/firewire/motu/motu.c", i32 82, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @motu_probe.__key.2, !21, !"__key", i1 false, i1 false}
!21 = !{!"../sound/firewire/motu/motu.c", i32 83, i32 2}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @motu_probe.__key.4, !24, !"__key", i1 false, i1 false}
!24 = !{!"../sound/firewire/motu/motu.c", i32 84, i32 2}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/firewire/motu/motu.c", i32 44, i32 29}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/firewire/motu/motu.c", i32 48, i32 4}
!30 = !{ptr @motu_id_table, !31, !"motu_id_table", i1 false, i1 false}
!31 = !{!"../sound/firewire/motu/motu.c", i32 162, i32 40}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"auto-init"}
