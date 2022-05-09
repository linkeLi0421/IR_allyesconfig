; ModuleID = '/llk/IR_all_yes/sound/firewire/tascam/tascam.c_pt.bc'
source_filename = "../sound/firewire/tascam/tascam.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_tscm_spec = type { ptr, i8, i8, i32, i32, i32, i32 }
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
%struct.snd_tscm = type { ptr, ptr, %struct.mutex, %struct.spinlock, ptr, %struct.fw_iso_resources, %struct.fw_iso_resources, %struct.amdtp_stream, %struct.amdtp_stream, i32, i32, i8, %struct.wait_queue_head, %struct.fw_address_handler, [4 x ptr], [4 x %struct.snd_fw_async_midi_port], [64 x i32], ptr, [16 x %struct.snd_firewire_tascam_change], i32, i32, %struct.amdtp_domain, i8 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.snd_fw_async_midi_port = type { ptr, %struct.work_struct, i8, i64, i8, %struct.fw_transaction, [4 x i8], i8, i8, ptr, i32 }
%struct.fw_transaction = type { i32, i32, %struct.list_head, ptr, i8, %struct.timer_list, %struct.fw_packet, ptr, ptr }
%struct.fw_packet = type { i32, i32, [4 x i32], i32, ptr, i32, i32, i8, i32, ptr, i32, %struct.list_head, ptr }
%struct.snd_firewire_tascam_change = type { i32, i32, i32 }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.82, %struct.anon.83 }
%struct.anon.82 = type { i32, i32, i32 }
%struct.anon.83 = type { i8 }

@__UNIQUE_ID_description239 = internal constant [62 x i8] c"snd_firewire_tascam.description=TASCAM FireWire series Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [70 x i8] c"snd_firewire_tascam.author=Takashi Sakamoto <o-takashi@sakamocchi.jp>\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [67 x i8] c"snd_firewire_tascam.file=sound/firewire/tascam/snd-firewire-tascam\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [35 x i8] c"snd_firewire_tascam.license=GPL v2\00", section ".modinfo", align 1
@tscm_driver = internal global { %struct.fw_driver, [36 x i8] } { %struct.fw_driver { %struct.device_driver { ptr @.str, ptr @fw_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @snd_tscm_probe, ptr @snd_tscm_update, ptr @snd_tscm_remove, ptr @snd_tscm_id_table }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_snd_firewire_tascam__243_235_snd_tscm_init6 = internal global ptr @snd_tscm_init, section ".initcall6.init", align 4
@__exitcall_snd_tscm_exit = internal global ptr @snd_tscm_exit, section ".exitcall.exit", align 4
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snd_firewire_tascam\00", [44 x i8] zeroinitializer }, align 32
@fw_bus_type = external dso_local global %struct.bus_type, align 4
@snd_tscm_id_table = internal constant { [4 x %struct.ieee1394_device_id], [32 x i8] } { [4 x %struct.ieee1394_device_id] [%struct.ieee1394_device_id { i32 13, i32 558, i32 0, i32 558, i32 8388608, i32 0 }, %struct.ieee1394_device_id { i32 13, i32 558, i32 0, i32 558, i32 8388611, i32 0 }, %struct.ieee1394_device_id { i32 13, i32 558, i32 0, i32 558, i32 8388612, i32 0 }, %struct.ieee1394_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_tscm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&tscm->mutex\00", [19 x i8] zeroinitializer }, align 32
@snd_tscm_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&tscm->lock\00", [20 x i8] zeroinitializer }, align 32
@snd_tscm_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&tscm->hwdep_wait\00", [46 x i8] zeroinitializer }, align 32
@identify_model._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 54, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Configuration ROM is too short.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"identify_model\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound/firewire/tascam/tascam.c\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@identify_model._entry_ptr = internal global ptr @identify_model._entry, section ".printk_index", align 4
@model_specs = internal constant { [3 x %struct.snd_tscm_spec], [56 x i8] } { [3 x %struct.snd_tscm_spec] [%struct.snd_tscm_spec { ptr @.str.13, i8 1, i8 1, i32 8, i32 8, i32 4, i32 4 }, %struct.snd_tscm_spec { ptr @.str.14, i8 0, i8 1, i32 8, i32 2, i32 2, i32 2 }, %struct.snd_tscm_spec { ptr @.str.15, i8 1, i8 1, i32 8, i32 2, i32 2, i32 4 }], [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FW-TASCAM\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"TASCAM %s, GUID %08x%08x at %s, S%d\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FW-1884\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FW-1082\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FW-1804\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [12 x i8] c"tscm_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 213, i32 25 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 216, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [18 x i8] c"snd_tscm_id_table\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 174, i32 40 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 115, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 116, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 117, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 53, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [12 x i8] c"model_specs\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 14, i32 35 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 76, i32 29 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 80, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 16, i32 11 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 25, i32 11 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [34 x i8] c"../sound/firewire/tascam/tascam.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 34, i32 11 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_snd_tscm_exit, ptr @__initcall__kmod_snd_firewire_tascam__243_235_snd_tscm_init6, ptr @identify_model._entry, ptr @identify_model._entry_ptr, ptr @snd_tscm_exit, ptr @tscm_driver, ptr @.str, ptr @snd_tscm_id_table, ptr @snd_tscm_probe.__key, ptr @.str.1, ptr @snd_tscm_probe.__key.2, ptr @.str.3, ptr @snd_tscm_probe.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @model_specs, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscm_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_tscm_id_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_tscm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_tscm_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_tscm_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @identify_model._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @model_specs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @snd_tscm_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @driver_unregister(ptr noundef nonnull @tscm_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_tscm_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @driver_register(ptr noundef nonnull @tscm_driver) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_tscm_probe(ptr noundef %unit, ptr nocapture noundef readnone %entry1) #2 align 64 {
entry:
  %model.i = alloca [9 x i8], align 1
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #8
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !55
  %call = call i32 @snd_card_new(ptr noundef %unit, i32 noundef -1, ptr noundef null, ptr noundef null, i32 noundef 2592, ptr noundef nonnull %card) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 4
  %private_free = getelementptr inbounds %struct.snd_card, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @tscm_card_free, ptr %private_free, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %2, i32 0, i32 9
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 8
  %call.i = call ptr @get_device(ptr noundef %unit) #8
  %unit3 = getelementptr inbounds %struct.snd_tscm, ptr %5, i32 0, i32 1
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
  %mutex = getelementptr inbounds %struct.snd_tscm, ptr %5, i32 0, i32 2
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @snd_tscm_probe.__key) #8
  %lock = getelementptr inbounds %struct.snd_tscm, ptr %5, i32 0, i32 3
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @snd_tscm_probe.__key.2, i16 noundef signext 3) #8
  %hwdep_wait = getelementptr inbounds %struct.snd_tscm, ptr %5, i32 0, i32 12
  call void @__init_waitqueue_head(ptr noundef %hwdep_wait, ptr noundef nonnull @.str.5, ptr noundef nonnull @snd_tscm_probe.__key.4) #8
  %11 = ptrtoint ptr %unit3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %unit3, align 4
  %parent.i.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i.i, align 8
  %config_rom1.i = getelementptr i8, ptr %14, i32 1028
  %15 = ptrtoint ptr %config_rom1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %config_rom1.i, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %model.i) #8
  %17 = getelementptr inbounds [9 x i8], ptr %model.i, i32 0, i32 1
  %18 = getelementptr inbounds [9 x i8], ptr %model.i, i32 0, i32 2
  %19 = getelementptr inbounds [9 x i8], ptr %model.i, i32 0, i32 3
  %20 = getelementptr inbounds [9 x i8], ptr %model.i, i32 0, i32 4
  %21 = getelementptr inbounds [9 x i8], ptr %model.i, i32 0, i32 5
  %22 = getelementptr inbounds [9 x i8], ptr %model.i, i32 0, i32 6
  %23 = getelementptr inbounds [9 x i8], ptr %model.i, i32 0, i32 7
  %config_rom_length.i = getelementptr i8, ptr %14, i32 1032
  %24 = call ptr @memset(ptr %model.i, i32 255, i32 9)
  %25 = ptrtoint ptr %config_rom_length.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %config_rom_length.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %26)
  %cmp.i = icmp ult i32 %26, 30
  br i1 %cmp.i, label %do.end.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end
  %arrayidx.i = getelementptr i32, ptr %16, i32 28
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %28)
  %cmp5.i = icmp ult i32 %28, 16777216
  br i1 %cmp5.i, label %for.body.preheader.i.for.end.i_crit_edge, label %if.end8.i

for.body.preheader.i.for.end.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.6) #11
  br label %identify_model.exit.thread

if.end8.i:                                        ; preds = %for.body.preheader.i
  %shr.i = lshr i32 %28, 24
  %conv.i = trunc i32 %shr.i to i8
  %29 = ptrtoint ptr %model.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv.i, ptr %model.i, align 1
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  %32 = and i32 %31, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp5.1.i = icmp eq i32 %32, 0
  br i1 %cmp5.1.i, label %if.end8.i.for.end.i_crit_edge, label %if.end8.1.i

if.end8.i.for.end.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end8.1.i:                                      ; preds = %if.end8.i
  %shr.1.i = lshr i32 %31, 16
  %conv.1.i = trunc i32 %shr.1.i to i8
  %33 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.1.i, ptr %17, align 1
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i, align 4
  %36 = and i32 %35, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp5.2.i = icmp eq i32 %36, 0
  br i1 %cmp5.2.i, label %if.end8.1.i.for.end.i_crit_edge, label %if.end8.2.i

if.end8.1.i.for.end.i_crit_edge:                  ; preds = %if.end8.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end8.2.i:                                      ; preds = %if.end8.1.i
  %shr.2.i = lshr i32 %35, 8
  %conv.2.i = trunc i32 %shr.2.i to i8
  %37 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv.2.i, ptr %18, align 1
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i, align 4
  %conv4.3.i = and i32 %39, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4.3.i)
  %cmp5.3.i = icmp eq i32 %conv4.3.i, 0
  br i1 %cmp5.3.i, label %if.end8.2.i.for.end.i_crit_edge, label %if.end8.3.i

if.end8.2.i.for.end.i_crit_edge:                  ; preds = %if.end8.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end8.3.i:                                      ; preds = %if.end8.2.i
  %conv.3.i = trunc i32 %39 to i8
  %40 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv.3.i, ptr %19, align 1
  %arrayidx.4.i = getelementptr i32, ptr %16, i32 29
  %41 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %42)
  %cmp5.4.i = icmp ult i32 %42, 16777216
  br i1 %cmp5.4.i, label %if.end8.3.i.for.end.i_crit_edge, label %if.end8.4.i

if.end8.3.i.for.end.i_crit_edge:                  ; preds = %if.end8.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end8.4.i:                                      ; preds = %if.end8.3.i
  %shr.4.i = lshr i32 %42, 24
  %conv.4.i = trunc i32 %shr.4.i to i8
  %43 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv.4.i, ptr %20, align 1
  %44 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.4.i, align 4
  %46 = and i32 %45, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp5.5.i = icmp eq i32 %46, 0
  br i1 %cmp5.5.i, label %if.end8.4.i.for.end.i_crit_edge, label %if.end8.5.i

if.end8.4.i.for.end.i_crit_edge:                  ; preds = %if.end8.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end8.5.i:                                      ; preds = %if.end8.4.i
  %shr.5.i = lshr i32 %45, 16
  %conv.5.i = trunc i32 %shr.5.i to i8
  %47 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv.5.i, ptr %21, align 1
  %48 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.4.i, align 4
  %50 = and i32 %49, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp5.6.i = icmp eq i32 %50, 0
  br i1 %cmp5.6.i, label %if.end8.5.i.for.end.i_crit_edge, label %if.end8.6.i

if.end8.5.i.for.end.i_crit_edge:                  ; preds = %if.end8.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end8.6.i:                                      ; preds = %if.end8.5.i
  %shr.6.i = lshr i32 %49, 8
  %conv.6.i = trunc i32 %shr.6.i to i8
  %51 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv.6.i, ptr %22, align 1
  %52 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.4.i, align 4
  %conv4.7.i = and i32 %53, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4.7.i)
  %cmp5.7.i = icmp eq i32 %conv4.7.i, 0
  br i1 %cmp5.7.i, label %if.end8.6.i.for.end.i_crit_edge, label %if.end8.7.i

if.end8.6.i.for.end.i_crit_edge:                  ; preds = %if.end8.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end8.7.i:                                      ; preds = %if.end8.6.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.7.i = trunc i32 %53 to i8
  %54 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv.7.i, ptr %23, align 1
  br label %for.end.i

for.end.i:                                        ; preds = %if.end8.7.i, %if.end8.6.i.for.end.i_crit_edge, %if.end8.5.i.for.end.i_crit_edge, %if.end8.4.i.for.end.i_crit_edge, %if.end8.3.i.for.end.i_crit_edge, %if.end8.2.i.for.end.i_crit_edge, %if.end8.1.i.for.end.i_crit_edge, %if.end8.i.for.end.i_crit_edge, %for.body.preheader.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %for.body.preheader.i.for.end.i_crit_edge ], [ 1, %if.end8.i.for.end.i_crit_edge ], [ 2, %if.end8.1.i.for.end.i_crit_edge ], [ 3, %if.end8.2.i.for.end.i_crit_edge ], [ 4, %if.end8.3.i.for.end.i_crit_edge ], [ 5, %if.end8.4.i.for.end.i_crit_edge ], [ 6, %if.end8.5.i.for.end.i_crit_edge ], [ 7, %if.end8.6.i.for.end.i_crit_edge ], [ 8, %if.end8.7.i ]
  %arrayidx10.i = getelementptr [9 x i8], ptr %model.i, i32 0, i32 %i.0.lcssa.i
  %55 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %arrayidx10.i, align 1
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %model.i, ptr noundef nonnull dereferenceable(8) @.str.13, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp17.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp17.i, label %for.end.i.if.then19.i_crit_edge, label %for.cond11.i

for.end.i.if.then19.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19.i

for.cond11.i:                                     ; preds = %for.end.i
  %bcmp81.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %model.i, ptr noundef nonnull dereferenceable(8) @.str.14, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp81.i)
  %cmp17.1.i = icmp eq i32 %bcmp81.i, 0
  br i1 %cmp17.1.i, label %for.cond11.i.if.then19.i_crit_edge, label %for.cond11.1.i

for.cond11.i.if.then19.i_crit_edge:               ; preds = %for.cond11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19.i

for.cond11.1.i:                                   ; preds = %for.cond11.i
  %bcmp82.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %model.i, ptr noundef nonnull dereferenceable(8) @.str.15, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp82.i)
  %cmp17.2.i = icmp eq i32 %bcmp82.i, 0
  br i1 %cmp17.2.i, label %for.cond11.1.i.if.then19.i_crit_edge, label %for.cond11.1.i.for.end24.i_crit_edge

for.cond11.1.i.for.end24.i_crit_edge:             ; preds = %for.cond11.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end24.i

for.cond11.1.i.if.then19.i_crit_edge:             ; preds = %for.cond11.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19.i

if.then19.i:                                      ; preds = %for.cond11.1.i.if.then19.i_crit_edge, %for.cond11.i.if.then19.i_crit_edge, %for.end.i.if.then19.i_crit_edge
  %arrayidx15.lcssa.i = phi ptr [ @model_specs, %for.end.i.if.then19.i_crit_edge ], [ getelementptr inbounds ([3 x %struct.snd_tscm_spec], ptr @model_specs, i32 0, i32 1), %for.cond11.i.if.then19.i_crit_edge ], [ getelementptr inbounds ([3 x %struct.snd_tscm_spec], ptr @model_specs, i32 0, i32 2), %for.cond11.1.i.if.then19.i_crit_edge ]
  %spec.i = getelementptr inbounds %struct.snd_tscm, ptr %5, i32 0, i32 4
  %56 = ptrtoint ptr %spec.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %arrayidx15.lcssa.i, ptr %spec.i, align 8
  br label %for.end24.i

for.end24.i:                                      ; preds = %if.then19.i, %for.cond11.1.i.for.end24.i_crit_edge
  %spec25.i = getelementptr inbounds %struct.snd_tscm, ptr %5, i32 0, i32 4
  %57 = ptrtoint ptr %spec25.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %spec25.i, align 8
  %cmp26.i = icmp eq ptr %58, null
  br i1 %cmp26.i, label %for.end24.i.identify_model.exit.thread_crit_edge, label %if.end29.i

for.end24.i.identify_model.exit.thread_crit_edge: ; preds = %for.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %identify_model.exit.thread

if.end29.i:                                       ; preds = %for.end24.i
  %59 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %5, align 8
  %driver.i = getelementptr inbounds %struct.snd_card, ptr %60, i32 0, i32 2
  %61 = call ptr @memcpy(ptr %driver.i, ptr @.str.11, i32 10)
  %62 = load ptr, ptr %5, align 8
  %shortname.i = getelementptr inbounds %struct.snd_card, ptr %62, i32 0, i32 3
  %call35.i = call ptr @strcpy(ptr noundef %shortname.i, ptr noundef nonnull %model.i) #12
  %63 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %5, align 8
  %mixername.i = getelementptr inbounds %struct.snd_card, ptr %64, i32 0, i32 6
  %call39.i = call ptr @strcpy(ptr noundef %mixername.i, ptr noundef nonnull %model.i) #12
  %65 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %5, align 8
  %longname.i = getelementptr inbounds %struct.snd_card, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %config_rom1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %config_rom1.i, align 4
  %arrayidx44.i = getelementptr i32, ptr %68, i32 3
  %69 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx44.i, align 4
  %arrayidx46.i = getelementptr i32, ptr %68, i32 4
  %71 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx46.i, align 4
  %73 = ptrtoint ptr %unit3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %unit3, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %76, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end29.i.if.end16_crit_edge

if.end29.i.if.end16_crit_edge:                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end.i.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %74, align 4
  br label %if.end16

identify_model.exit.thread:                       ; preds = %for.end24.i.identify_model.exit.thread_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %model.i) #8
  br label %error

if.end16:                                         ; preds = %if.end.i.i, %if.end29.i.if.end16_crit_edge
  %retval.0.i.i = phi ptr [ %78, %if.end.i.i ], [ %76, %if.end29.i.if.end16_crit_edge ]
  %max_speed.i = getelementptr i8, ptr %14, i32 -8
  %79 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %max_speed.i, align 8
  %shl.i = shl i32 100, %80
  %call50.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %longname.i, i32 noundef 80, ptr noundef nonnull @.str.12, ptr noundef nonnull %model.i, i32 noundef %70, i32 noundef %72, ptr noundef %retval.0.i.i, i32 noundef %shl.i) #8
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %model.i) #8
  %call17 = call i32 @snd_tscm_transaction_register(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end16.error_crit_edge, label %if.end20

if.end16.error_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end20:                                         ; preds = %if.end16
  %call21 = call i32 @snd_tscm_stream_init_duplex(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end20.error_crit_edge, label %if.end24

if.end20.error_crit_edge:                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end24:                                         ; preds = %if.end20
  call void @snd_tscm_proc_init(ptr noundef %5) #8
  %call25 = call i32 @snd_tscm_create_pcm_devices(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end24.error_crit_edge, label %if.end28

if.end24.error_crit_edge:                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end28:                                         ; preds = %if.end24
  %call29 = call i32 @snd_tscm_create_midi_devices(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end28.error_crit_edge, label %if.end32

if.end28.error_crit_edge:                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end32:                                         ; preds = %if.end28
  %call33 = call i32 @snd_tscm_create_hwdep_device(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end32.error_crit_edge, label %if.end36

if.end32.error_crit_edge:                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end36:                                         ; preds = %if.end32
  %81 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %card, align 4
  %call37 = call i32 @snd_card_register(ptr noundef %82) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end36.error_crit_edge, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36.error_crit_edge:                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

error:                                            ; preds = %if.end36.error_crit_edge, %if.end32.error_crit_edge, %if.end28.error_crit_edge, %if.end24.error_crit_edge, %if.end20.error_crit_edge, %if.end16.error_crit_edge, %identify_model.exit.thread
  %err.0 = phi i32 [ %call17, %if.end16.error_crit_edge ], [ %call21, %if.end20.error_crit_edge ], [ %call25, %if.end24.error_crit_edge ], [ %call29, %if.end28.error_crit_edge ], [ %call33, %if.end32.error_crit_edge ], [ %call37, %if.end36.error_crit_edge ], [ -19, %identify_model.exit.thread ]
  %83 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %card, align 4
  %call41 = call i32 @snd_card_free(ptr noundef %84) #8
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end36.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_tscm_update(ptr nocapture noundef readonly %unit) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @snd_tscm_transaction_reregister(ptr noundef %1) #8
  %mutex = getelementptr inbounds %struct.snd_tscm, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call void @snd_tscm_stream_update_duplex(ptr noundef %1) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_tscm_remove(ptr nocapture noundef readonly %unit) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call1 = tail call i32 @snd_card_free(ptr noundef %3) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tscm_card_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  tail call void @snd_tscm_transaction_unregister(ptr noundef %1) #8
  tail call void @snd_tscm_stream_destroy_duplex(ptr noundef %1) #8
  %mutex = getelementptr inbounds %struct.snd_tscm, ptr %1, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %mutex) #8
  %unit = getelementptr inbounds %struct.snd_tscm, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit, align 4
  tail call void @put_device(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_tscm_transaction_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_tscm_stream_init_duplex(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_tscm_proc_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_tscm_create_pcm_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_tscm_create_midi_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_tscm_create_hwdep_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_tscm_transaction_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_tscm_stream_destroy_duplex(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_tscm_transaction_reregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_tscm_stream_update_duplex(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !20, !21, !23, !24, !26, !27, !28, !29, !30, !31, !32, !34, !36, !38, !40, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__UNIQUE_ID_description239, !1, !"__UNIQUE_ID_description239", i1 false, i1 false}
!1 = !{!"../sound/firewire/tascam/tascam.c", i32 10, i32 1}
!2 = !{ptr @__UNIQUE_ID_author240, !3, !"__UNIQUE_ID_author240", i1 false, i1 false}
!3 = !{!"../sound/firewire/tascam/tascam.c", i32 11, i32 1}
!4 = !{ptr @__UNIQUE_ID_file241, !5, !"__UNIQUE_ID_file241", i1 false, i1 false}
!5 = !{!"../sound/firewire/tascam/tascam.c", i32 12, i32 1}
!6 = !{ptr @__UNIQUE_ID_license242, !5, !"__UNIQUE_ID_license242", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_snd_firewire_tascam__243_235_snd_tscm_init6, !8, !"__initcall__kmod_snd_firewire_tascam__243_235_snd_tscm_init6", i1 false, i1 false}
!8 = !{!"../sound/firewire/tascam/tascam.c", i32 235, i32 1}
!9 = !{ptr @__exitcall_snd_tscm_exit, !10, !"__exitcall_snd_tscm_exit", i1 false, i1 false}
!10 = !{!"../sound/firewire/tascam/tascam.c", i32 236, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/firewire/tascam/tascam.c", i32 216, i32 11}
!13 = !{ptr @tscm_driver, !14, !"tscm_driver", i1 false, i1 false}
!14 = !{!"../sound/firewire/tascam/tascam.c", i32 213, i32 25}
!15 = !{ptr @snd_tscm_probe.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../sound/firewire/tascam/tascam.c", i32 115, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @snd_tscm_probe.__key.2, !19, !"__key", i1 false, i1 false}
!19 = !{!"../sound/firewire/tascam/tascam.c", i32 116, i32 2}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @snd_tscm_probe.__key.4, !22, !"__key", i1 false, i1 false}
!22 = !{!"../sound/firewire/tascam/tascam.c", i32 117, i32 2}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/firewire/tascam/tascam.c", i32 53, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @identify_model._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @identify_model._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/firewire/tascam/tascam.c", i32 76, i32 29}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/firewire/tascam/tascam.c", i32 80, i32 4}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/firewire/tascam/tascam.c", i32 16, i32 11}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/firewire/tascam/tascam.c", i32 25, i32 11}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/firewire/tascam/tascam.c", i32 34, i32 11}
!42 = !{ptr @model_specs, !43, !"model_specs", i1 false, i1 false}
!43 = !{!"../sound/firewire/tascam/tascam.c", i32 14, i32 35}
!44 = !{ptr @snd_tscm_id_table, !45, !"snd_tscm_id_table", i1 false, i1 false}
!45 = !{!"../sound/firewire/tascam/tascam.c", i32 174, i32 40}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"auto-init"}
