; ModuleID = '/llk/IR_all_yes/sound/firewire/bebob/bebob_maudio.c_pt.bc'
source_filename = "../sound/firewire/bebob/bebob_maudio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_bebob_clock_spec = type { i32, ptr, ptr, ptr }
%struct.snd_bebob_rate_spec = type { ptr, ptr }
%struct.snd_bebob_meter_spec = type { i32, ptr, ptr }
%struct.snd_bebob_spec = type { ptr, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.94, i32 }
%union.anon.94 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_bebob = type { ptr, ptr, i32, %struct.mutex, %struct.spinlock, ptr, i32, i32, i32, %struct.amdtp_stream, %struct.amdtp_stream, %struct.cmp_connection, %struct.cmp_connection, i32, [7 x %struct.snd_bebob_stream_formation], [7 x %struct.snd_bebob_stream_formation], i32, i32, i8, %struct.wait_queue_head, ptr, %struct.amdtp_domain }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.cmp_connection = type { i32, i8, %struct.mutex, %struct.fw_iso_resources, i32, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.snd_bebob_stream_formation = type { i32, i32 }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.92, %struct.anon.93 }
%struct.anon.92 = type { i32, i32, i32 }
%struct.anon.93 = type { i8 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.91, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.91 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.special_params = type { i8, i32, i32, i32, i32, ptr }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.86, [128 x i8] }
%union.anon.86 = type { %union.anon.88 }
%union.anon.88 = type { [64 x i64] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.82, [64 x i8] }
%union.anon.82 = type { %struct.anon.85, [40 x i8] }
%struct.anon.85 = type { i32, i32, [64 x i8], i64, i32 }

@snd_bebob_maudio_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 111, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Use firmware version 5058 or later\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"snd_bebob_maudio_load_firmware\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sound/firewire/bebob/bebob_maudio.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_bebob_maudio_load_firmware._entry_ptr = internal global ptr @snd_bebob_maudio_load_firmware._entry, section ".printk_index", align 4
@snd_bebob_maudio_load_firmware._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 130, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to send a cue to load firmware\0A\00", [57 x i8] zeroinitializer }, align 32
@snd_bebob_maudio_load_firmware._entry_ptr.7 = internal global ptr @snd_bebob_maudio_load_firmware._entry.5, section ".printk_index", align 4
@snd_bebob_maudio_special_discover._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 279, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"fail to initialize clock params: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"snd_bebob_maudio_special_discover\00", [62 x i8] zeroinitializer }, align 32
@snd_bebob_maudio_special_discover._entry_ptr = internal global ptr @snd_bebob_maudio_special_discover._entry, section ".printk_index", align 4
@special_clk_spec = internal constant { %struct.snd_bebob_clock_spec, [16 x i8] } { %struct.snd_bebob_clock_spec { i32 4, ptr null, ptr @special_clk_types, ptr @special_clk_get }, [16 x i8] zeroinitializer }, align 32
@special_rate_spec = internal constant { %struct.snd_bebob_rate_spec, [24 x i8] } { %struct.snd_bebob_rate_spec { ptr @special_get_rate, ptr @special_set_rate }, [24 x i8] zeroinitializer }, align 32
@special_meter_spec = internal constant { %struct.snd_bebob_meter_spec, [20 x i8] } { %struct.snd_bebob_meter_spec { i32 19, ptr @special_meter_labels, ptr @special_meter_get }, [20 x i8] zeroinitializer }, align 32
@maudio_special_spec = dso_local constant { %struct.snd_bebob_spec, [20 x i8] } { %struct.snd_bebob_spec { ptr @special_clk_spec, ptr @special_rate_spec, ptr @special_meter_spec }, [20 x i8] zeroinitializer }, align 32
@usual_rate_spec = internal constant { %struct.snd_bebob_rate_spec, [24 x i8] } { %struct.snd_bebob_rate_spec { ptr @snd_bebob_stream_get_rate, ptr @snd_bebob_stream_set_rate }, [24 x i8] zeroinitializer }, align 32
@fw410_meter_spec = internal constant { %struct.snd_bebob_meter_spec, [20 x i8] } { %struct.snd_bebob_meter_spec { i32 8, ptr @fw410_meter_labels, ptr @normal_meter_get }, [20 x i8] zeroinitializer }, align 32
@maudio_fw410_spec = dso_local constant { %struct.snd_bebob_spec, [20 x i8] } { %struct.snd_bebob_spec { ptr null, ptr @usual_rate_spec, ptr @fw410_meter_spec }, [20 x i8] zeroinitializer }, align 32
@audiophile_meter_spec = internal constant { %struct.snd_bebob_meter_spec, [20 x i8] } { %struct.snd_bebob_meter_spec { i32 7, ptr @audiophile_meter_labels, ptr @normal_meter_get }, [20 x i8] zeroinitializer }, align 32
@maudio_audiophile_spec = dso_local constant { %struct.snd_bebob_spec, [20 x i8] } { %struct.snd_bebob_spec { ptr null, ptr @usual_rate_spec, ptr @audiophile_meter_spec }, [20 x i8] zeroinitializer }, align 32
@solo_meter_spec = internal constant { %struct.snd_bebob_meter_spec, [20 x i8] } { %struct.snd_bebob_meter_spec { i32 6, ptr @solo_meter_labels, ptr @normal_meter_get }, [20 x i8] zeroinitializer }, align 32
@maudio_solo_spec = dso_local constant { %struct.snd_bebob_spec, [20 x i8] } { %struct.snd_bebob_spec { ptr null, ptr @usual_rate_spec, ptr @solo_meter_spec }, [20 x i8] zeroinitializer }, align 32
@ozonic_meter_spec = internal constant { %struct.snd_bebob_meter_spec, [20 x i8] } { %struct.snd_bebob_meter_spec { i32 6, ptr @ozonic_meter_labels, ptr @normal_meter_get }, [20 x i8] zeroinitializer }, align 32
@maudio_ozonic_spec = dso_local constant { %struct.snd_bebob_spec, [20 x i8] } { %struct.snd_bebob_spec { ptr null, ptr @usual_rate_spec, ptr @ozonic_meter_spec }, [20 x i8] zeroinitializer }, align 32
@nrv10_meter_spec = internal constant { %struct.snd_bebob_meter_spec, [20 x i8] } { %struct.snd_bebob_meter_spec { i32 10, ptr @nrv10_meter_labels, ptr @normal_meter_get }, [20 x i8] zeroinitializer }, align 32
@maudio_nrv10_spec = dso_local constant { %struct.snd_bebob_spec, [20 x i8] } { %struct.snd_bebob_spec { ptr null, ptr @usual_rate_spec, ptr @nrv10_meter_spec }, [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@special_stream_formation_set.ch_table = internal constant { [2 x [2 x [3 x i32]]], [48 x i8] } { [2 x [2 x [3 x i32]]] [[2 x [3 x i32]] [[3 x i32] [i32 6, i32 6, i32 4], [3 x i32] [i32 12, i32 8, i32 4]], [2 x [3 x i32]] [[3 x i32] [i32 10, i32 10, i32 2], [3 x i32] [i32 16, i32 12, i32 2]]], [48 x i8] zeroinitializer }, align 32
@special_clk_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.10, i32 0, i32 3, i32 0, ptr @special_clk_ctl_info, ptr @special_clk_ctl_get, ptr @special_clk_ctl_put, %union.anon.94 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@special_sync_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 1, i32 0, ptr @special_sync_ctl_info, ptr @special_sync_ctl_get, ptr null, %union.anon.94 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@special_dig_in_iface_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 3, i32 0, ptr @special_dig_in_iface_ctl_info, ptr @special_dig_in_iface_ctl_get, ptr @special_dig_in_iface_ctl_set, %union.anon.94 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@special_dig_out_iface_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 3, i32 0, ptr @special_dig_out_iface_ctl_info, ptr @special_dig_out_iface_ctl_get, ptr @special_dig_out_iface_ctl_set, %union.anon.94 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Clock Source\00", [19 x i8] zeroinitializer }, align 32
@special_clk_ctl_info.special_clk_labels = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Internal with Digital Mute\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Digital\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Word Clock\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Internal\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Sync Status\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Digital Input Interface\00", [40 x i8] zeroinitializer }, align 32
@special_dig_in_iface_labels = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19], [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"S/PDIF Optical\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"S/PDIF Coaxial\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADAT Optical\00", [19 x i8] zeroinitializer }, align 32
@special_dig_in_iface_ctl_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 465, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"fail to get digital input interface: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"special_dig_in_iface_ctl_get\00", [35 x i8] zeroinitializer }, align 32
@special_dig_in_iface_ctl_get._entry_ptr = internal global ptr @special_dig_in_iface_ctl_get._entry, section ".printk_index", align 4
@special_dig_in_iface_ctl_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 517, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"fail to set digital input interface: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"special_dig_in_iface_ctl_set\00", [35 x i8] zeroinitializer }, align 32
@special_dig_in_iface_ctl_set._entry_ptr = internal global ptr @special_dig_in_iface_ctl_set._entry, section ".printk_index", align 4
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Digital Output Interface\00", [39 x i8] zeroinitializer }, align 32
@special_dig_out_iface_labels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.25, ptr @.str.19], [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"S/PDIF Optical and Coaxial\00", [37 x i8] zeroinitializer }, align 32
@special_clk_types = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 1, i32 0], [16 x i8] zeroinitializer }, align 32
@special_meter_labels = internal constant { [19 x ptr], [52 x i8] } { [19 x ptr] [ptr @.str.26, ptr @.str.26, ptr @.str.26, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.28, ptr @.str.28, ptr @.str.28, ptr @.str.29, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.32, ptr @.str.32, ptr @.str.33], [52 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Analog In\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"S/PDIF In\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADAT In\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Analog Out\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"S/PDIF Out\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADAT Out\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HP Out\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Aux Out\00", [24 x i8] zeroinitializer }, align 32
@fw410_meter_labels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.26, ptr @.str.34, ptr @.str.29, ptr @.str.29, ptr @.str.29, ptr @.str.29, ptr @.str.35, ptr @.str.32], [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Digital In\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Digital Out\00", [20 x i8] zeroinitializer }, align 32
@solo_meter_labels = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.26, ptr @.str.34, ptr @.str.36, ptr @.str.36, ptr @.str.29, ptr @.str.35], [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Stream In\00", [22 x i8] zeroinitializer }, align 32
@audiophile_meter_labels = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.26, ptr @.str.34, ptr @.str.29, ptr @.str.29, ptr @.str.35, ptr @.str.32, ptr @.str.33], [36 x i8] zeroinitializer }, align 32
@ozonic_meter_labels = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.26, ptr @.str.26, ptr @.str.36, ptr @.str.36, ptr @.str.29, ptr @.str.29], [40 x i8] zeroinitializer }, align 32
@nrv10_meter_labels = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.26, ptr @.str.26, ptr @.str.26, ptr @.str.26, ptr @.str.34, ptr @.str.29, ptr @.str.29, ptr @.str.29, ptr @.str.29, ptr @.str.34], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 10]
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 110, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 129, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 278, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"special_clk_spec\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 719, i32 42 }
@___asan_gen_.73 = private unnamed_addr constant [18 x i8] c"special_rate_spec\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 715, i32 41 }
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c"special_meter_spec\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 724, i32 42 }
@___asan_gen_.79 = private unnamed_addr constant [20 x i8] c"maudio_special_spec\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 729, i32 29 }
@___asan_gen_.82 = private unnamed_addr constant [16 x i8] c"usual_rate_spec\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 736, i32 41 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"fw410_meter_spec\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 740, i32 42 }
@___asan_gen_.88 = private unnamed_addr constant [18 x i8] c"maudio_fw410_spec\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 745, i32 29 }
@___asan_gen_.91 = private unnamed_addr constant [22 x i8] c"audiophile_meter_spec\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 752, i32 42 }
@___asan_gen_.94 = private unnamed_addr constant [23 x i8] c"maudio_audiophile_spec\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 757, i32 29 }
@___asan_gen_.97 = private unnamed_addr constant [16 x i8] c"solo_meter_spec\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 764, i32 42 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"maudio_solo_spec\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 769, i32 29 }
@___asan_gen_.103 = private unnamed_addr constant [18 x i8] c"ozonic_meter_spec\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 776, i32 42 }
@___asan_gen_.106 = private unnamed_addr constant [19 x i8] c"maudio_ozonic_spec\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 781, i32 29 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"nrv10_meter_spec\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 788, i32 42 }
@___asan_gen_.112 = private unnamed_addr constant [18 x i8] c"maudio_nrv10_spec\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 793, i32 29 }
@___asan_gen_.115 = private unnamed_addr constant [9 x i8] c"ch_table\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 230, i32 28 }
@___asan_gen_.118 = private unnamed_addr constant [16 x i8] c"special_clk_ctl\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 399, i32 38 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"special_sync_ctl\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 432, i32 38 }
@___asan_gen_.124 = private unnamed_addr constant [25 x i8] c"special_dig_in_iface_ctl\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 524, i32 38 }
@___asan_gen_.127 = private unnamed_addr constant [26 x i8] c"special_dig_out_iface_ctl\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 580, i32 38 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 400, i32 10 }
@___asan_gen_.133 = private unnamed_addr constant [19 x i8] c"special_clk_labels\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 358, i32 27 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 359, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 360, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 361, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 362, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 433, i32 10 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 525, i32 10 }
@___asan_gen_.154 = private unnamed_addr constant [28 x i8] c"special_dig_in_iface_labels\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 441, i32 26 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 442, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 442, i32 20 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 442, i32 38 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 464, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 516, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 581, i32 10 }
@___asan_gen_.187 = private unnamed_addr constant [29 x i8] c"special_dig_out_iface_labels\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 534, i32 26 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 535, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [18 x i8] c"special_clk_types\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 343, i32 40 }
@___asan_gen_.196 = private unnamed_addr constant [21 x i8] c"special_meter_labels\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 618, i32 26 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 619, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 620, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 621, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 622, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 623, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 624, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 625, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 626, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [19 x i8] c"fw410_meter_labels\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 658, i32 26 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 659, i32 10 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 660, i32 38 }
@___asan_gen_.232 = private unnamed_addr constant [18 x i8] c"solo_meter_labels\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 668, i32 26 }
@___asan_gen_.235 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 670, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant [24 x i8] c"audiophile_meter_labels\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 663, i32 26 }
@___asan_gen_.241 = private unnamed_addr constant [20 x i8] c"ozonic_meter_labels\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 675, i32 26 }
@___asan_gen_.244 = private unnamed_addr constant [19 x i8] c"nrv10_meter_labels\00", align 1
@___asan_gen_.245 = private constant [39 x i8] c"../sound/firewire/bebob/bebob_maudio.c\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 681, i32 26 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @snd_bebob_maudio_load_firmware._entry, ptr @snd_bebob_maudio_load_firmware._entry.5, ptr @snd_bebob_maudio_load_firmware._entry_ptr, ptr @snd_bebob_maudio_load_firmware._entry_ptr.7, ptr @snd_bebob_maudio_special_discover._entry, ptr @snd_bebob_maudio_special_discover._entry_ptr, ptr @special_dig_in_iface_ctl_get._entry, ptr @special_dig_in_iface_ctl_get._entry_ptr, ptr @special_dig_in_iface_ctl_set._entry, ptr @special_dig_in_iface_ctl_set._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @special_clk_spec, ptr @special_rate_spec, ptr @special_meter_spec, ptr @maudio_special_spec, ptr @usual_rate_spec, ptr @fw410_meter_spec, ptr @maudio_fw410_spec, ptr @audiophile_meter_spec, ptr @maudio_audiophile_spec, ptr @solo_meter_spec, ptr @maudio_solo_spec, ptr @ozonic_meter_spec, ptr @maudio_ozonic_spec, ptr @nrv10_meter_spec, ptr @maudio_nrv10_spec, ptr @special_stream_formation_set.ch_table, ptr @special_clk_ctl, ptr @special_sync_ctl, ptr @special_dig_in_iface_ctl, ptr @special_dig_out_iface_ctl, ptr @.str.10, ptr @special_clk_ctl_info.special_clk_labels, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @special_dig_in_iface_labels, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @special_dig_out_iface_labels, ptr @.str.25, ptr @special_clk_types, ptr @special_meter_labels, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @fw410_meter_labels, ptr @.str.34, ptr @.str.35, ptr @solo_meter_labels, ptr @.str.36, ptr @audiophile_meter_labels, ptr @ozonic_meter_labels, ptr @nrv10_meter_labels], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bebob_maudio_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bebob_maudio_load_firmware._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bebob_maudio_special_discover._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @special_clk_spec to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @special_rate_spec to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @special_meter_spec to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maudio_special_spec to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usual_rate_spec to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw410_meter_spec to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maudio_fw410_spec to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audiophile_meter_spec to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maudio_audiophile_spec to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_meter_spec to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maudio_solo_spec to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ozonic_meter_spec to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maudio_ozonic_spec to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nrv10_meter_spec to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maudio_nrv10_spec to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @special_stream_formation_set.ch_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @special_clk_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @special_sync_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @special_dig_in_iface_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @special_dig_out_iface_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @special_clk_ctl_info.special_clk_labels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @special_dig_in_iface_labels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @special_dig_in_iface_ctl_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @special_dig_in_iface_ctl_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @special_dig_out_iface_labels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @special_clk_types to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @special_meter_labels to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw410_meter_labels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_meter_labels to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audiophile_meter_labels to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ozonic_meter_labels to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nrv10_meter_labels to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_bebob_maudio_load_firmware(ptr noundef %unit) local_unnamed_addr #0 align 64 {
entry:
  %date = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %date) #8
  %2 = ptrtoint ptr %date to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %date, align 8, !annotation !142
  %call.i = call i32 @snd_fw_transaction(ptr noundef %unit, i32 noundef 5, i64 noundef 281474037317664, ptr noundef nonnull %date, i32 noundef 8, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %date to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %date, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 3616443514368569393, i64 %4)
  %cmp2 = icmp ult i64 %4, 3616443514368569393
  br i1 %cmp2, label %if.end.cleanup.sink.split_crit_edge, label %if.end5

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 12) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16777216, ptr %call7.i.i, align 8
  %arrayidx9 = getelementptr i32, ptr %call7.i.i, i32 1
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4353, ptr %arrayidx9, align 4
  %arrayidx10 = getelementptr i32, ptr %call7.i.i, i32 2
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx10, align 8
  %card = getelementptr i8, ptr %1, i32 -4
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card, align 4
  %node_id = getelementptr i8, ptr %1, i32 -16
  %11 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %node_id, align 8
  %generation = getelementptr i8, ptr %1, i32 -12
  %13 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %generation, align 4
  %max_speed = getelementptr i8, ptr %1, i32 -8
  %15 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_speed, align 8
  %call11 = call i32 @fw_run_transaction(ptr noundef %10, i32 noundef 1, i32 noundef %12, i32 noundef %14, i32 noundef %16, i64 noundef 281474037321728, ptr noundef nonnull %call7.i.i, i32 noundef 12) #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12.not = icmp eq i32 %call11, 0
  br i1 %cmp12.not, label %if.end8.cleanup_crit_edge, label %if.end8.cleanup.sink.split_crit_edge

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end8.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.str.6.sink = phi ptr [ @.str, %if.end.cleanup.sink.split_crit_edge ], [ @.str.6, %if.end8.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -6, %if.end.cleanup.sink.split_crit_edge ], [ -5, %if.end8.cleanup.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %unit, ptr noundef nonnull %.str.6.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ %call.i, %if.end8.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %date) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_run_transaction(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_bebob_maudio_special_discover(ptr noundef %bebob, i1 noundef zeroext %is1814) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bebob to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bebob, align 8
  %card_dev = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 28
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %card_dev, i32 noundef 24, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %frombool = zext i1 %is1814 to i8
  %mutex = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %maudio_special_quirk = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 20
  %2 = ptrtoint ptr %maudio_special_quirk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %maudio_special_quirk, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %call.i, align 4
  %context = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 10, i32 4
  %4 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %context, align 4
  %context6 = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 9, i32 4
  %5 = ptrtoint ptr %context6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %context6, align 4
  %call7 = tail call fastcc i32 @avc_maudio_set_special_clk(ptr noundef %bebob, i32 noundef 3, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %unit = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 1
  %6 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unit, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.8, i32 noundef %call7) #12
  br label %end

if.end9:                                          ; preds = %if.end
  %8 = ptrtoint ptr %maudio_special_quirk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %maudio_special_quirk, align 4
  %call.i41 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @special_clk_ctl, ptr noundef %bebob) #8
  %10 = ptrtoint ptr %bebob to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bebob, align 8
  %call1.i = tail call i32 @snd_ctl_add(ptr noundef %11, ptr noundef %call.i41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.end9.end_crit_edge, label %if.end.i

if.end9.end_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.end.i:                                         ; preds = %if.end9
  %call2.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @special_sync_ctl, ptr noundef %bebob) #8
  %12 = ptrtoint ptr %bebob to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bebob, align 8
  %call4.i = tail call i32 @snd_ctl_add(ptr noundef %13, ptr noundef %call2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i.end_crit_edge, label %if.end7.i

if.end.i.end_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.end7.i:                                        ; preds = %if.end.i
  %id.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call2.i, i32 0, i32 1
  %ctl_id_sync.i = getelementptr inbounds %struct.special_params, ptr %9, i32 0, i32 5
  %14 = ptrtoint ptr %ctl_id_sync.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %id.i, ptr %ctl_id_sync.i, align 4
  %call8.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @special_dig_in_iface_ctl, ptr noundef %bebob) #8
  %15 = ptrtoint ptr %bebob to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bebob, align 8
  %call10.i = tail call i32 @snd_ctl_add(ptr noundef %16, ptr noundef %call8.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.end7.i.end_crit_edge, label %add_special_controls.exit

if.end7.i.end_crit_edge:                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

add_special_controls.exit:                        ; preds = %if.end7.i
  %call14.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @special_dig_out_iface_ctl, ptr noundef %bebob) #8
  %17 = ptrtoint ptr %bebob to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bebob, align 8
  %call16.i = tail call i32 @snd_ctl_add(ptr noundef %18, ptr noundef %call14.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp11 = icmp slt i32 %call16.i, 0
  br i1 %cmp11, label %add_special_controls.exit.end_crit_edge, label %if.end13

add_special_controls.exit.end_crit_edge:          ; preds = %add_special_controls.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.end13:                                         ; preds = %add_special_controls.exit
  %19 = ptrtoint ptr %maudio_special_quirk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %maudio_special_quirk, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 4, !range !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  %dig_in_fmt.i = getelementptr inbounds %struct.special_params, ptr %20, i32 0, i32 2
  %dig_out_fmt.i = getelementptr inbounds %struct.special_params, ptr %20, i32 0, i32 3
  %23 = ptrtoint ptr %dig_in_fmt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dig_in_fmt.i, align 4
  %arrayidx1.i = getelementptr [2 x [2 x [3 x i32]]], ptr @special_stream_formation_set.ch_table, i32 0, i32 1, i32 %24, i32 0
  %25 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr %struct.snd_bebob, ptr %bebob, i32 0, i32 14, i32 1
  %27 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx2.i, align 4
  %midi.i = getelementptr %struct.snd_bebob, ptr %bebob, i32 0, i32 14, i32 1, i32 1
  %28 = ptrtoint ptr %midi.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %midi.i, align 4
  %29 = ptrtoint ptr %dig_out_fmt.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dig_out_fmt.i, align 4
  %arrayidx8.i = getelementptr [2 x [3 x i32]], ptr @special_stream_formation_set.ch_table, i32 0, i32 %30, i32 0
  %31 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx8.i, align 4
  %arrayidx10.i = getelementptr %struct.snd_bebob, ptr %bebob, i32 0, i32 15, i32 1
  %33 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx10.i, align 4
  %midi15.i = getelementptr %struct.snd_bebob, ptr %bebob, i32 0, i32 15, i32 1, i32 1
  %34 = ptrtoint ptr %midi15.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %midi15.i, align 4
  %35 = load i32, ptr %dig_in_fmt.i, align 4
  %arrayidx1.i.1 = getelementptr [2 x [2 x [3 x i32]]], ptr @special_stream_formation_set.ch_table, i32 0, i32 1, i32 %35, i32 0
  %36 = ptrtoint ptr %arrayidx1.i.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx1.i.1, align 4
  %arrayidx2.i.1 = getelementptr %struct.snd_bebob, ptr %bebob, i32 0, i32 14, i32 2
  %38 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx2.i.1, align 4
  %midi.i.1 = getelementptr %struct.snd_bebob, ptr %bebob, i32 0, i32 14, i32 2, i32 1
  %39 = ptrtoint ptr %midi.i.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %midi.i.1, align 4
  %40 = load i32, ptr %dig_out_fmt.i, align 4
  %arrayidx8.i.1 = getelementptr [2 x [3 x i32]], ptr @special_stream_formation_set.ch_table, i32 0, i32 %40, i32 0
  %41 = ptrtoint ptr %arrayidx8.i.1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx8.i.1, align 4
  %arrayidx10.i.1 = getelementptr %struct.snd_bebob, ptr %bebob, i32 0, i32 15, i32 2
  %43 = ptrtoint ptr %arrayidx10.i.1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx10.i.1, align 4
  %midi15.i.1 = getelementptr %struct.snd_bebob, ptr %bebob, i32 0, i32 15, i32 2, i32 1
  %44 = ptrtoint ptr %midi15.i.1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %midi15.i.1, align 4
  %45 = load i32, ptr %dig_in_fmt.i, align 4
  %arrayidx1.i.2 = getelementptr [2 x [2 x [3 x i32]]], ptr @special_stream_formation_set.ch_table, i32 0, i32 1, i32 %45, i32 1
  %46 = ptrtoint ptr %arrayidx1.i.2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx1.i.2, align 4
  %arrayidx2.i.2 = getelementptr %struct.snd_bebob, ptr %bebob, i32 0, i32 14, i32 3
  %48 = ptrtoint ptr %arrayidx2.i.2 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx2.i.2, align 4
  %midi.i.2 = getelementptr %struct.snd_bebob, ptr %bebob, i32 0, i32 14, i32 3, i32 1
  %49 = ptrtoint ptr %midi.i.2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %midi.i.2, align 4
  %50 = load i32, ptr %dig_out_fmt.i, align 4
  %arrayidx8.i.2 = getelementptr [2 x [3 x i32]], ptr @special_stream_formation_set.ch_table, i32 0, i32 %50, i32 1
  %51 = ptrtoint ptr %arrayidx8.i.2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx8.i.2, align 4
  %arrayidx10.i.2 = getelementptr %struct.snd_bebob, ptr %bebob, i32 0, i32 15, i32 3
  %53 = ptrtoint ptr %arrayidx10.i.2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx10.i.2, align 4
  %midi15.i.2 = getelementptr %struct.snd_bebob, ptr %bebob, i32 0, i32 15, i32 3, i32 1
  %54 = ptrtoint ptr %midi15.i.2 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %midi15.i.2, align 4
  %55 = load i32, ptr %dig_in_fmt.i, align 4
  %arrayidx1.i.3 = getelementptr [2 x [2 x [3 x i32]]], ptr @special_stream_formation_set.ch_table, i32 0, i32 1, i32 %55, i32 1
  %56 = ptrtoint ptr %arrayidx1.i.3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx1.i.3, align 4
  %arrayidx2.i.3 = getelementptr %struct.snd_bebob, ptr %bebob, i32 0, i32 14, i32 4
  %58 = ptrtoint ptr %arrayidx2.i.3 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %arrayidx2.i.3, align 4
  %midi.i.3 = getelementptr %struct.snd_bebob, ptr %bebob, i32 0, i32 14, i32 4, i32 1
  %59 = ptrtoint ptr %midi.i.3 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %midi.i.3, align 4
  %60 = load i32, ptr %dig_out_fmt.i, align 4
  %arrayidx8.i.3 = getelementptr [2 x [3 x i32]], ptr @special_stream_formation_set.ch_table, i32 0, i32 %60, i32 1
  %61 = ptrtoint ptr %arrayidx8.i.3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx8.i.3, align 4
  %arrayidx10.i.3 = getelementptr %struct.snd_bebob, ptr %bebob, i32 0, i32 15, i32 4
  %63 = ptrtoint ptr %arrayidx10.i.3 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %arrayidx10.i.3, align 4
  %midi15.i.3 = getelementptr %struct.snd_bebob, ptr %bebob, i32 0, i32 15, i32 4, i32 1
  %64 = ptrtoint ptr %midi15.i.3 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %midi15.i.3, align 4
  br i1 %tobool.not.i, label %if.end13.special_stream_formation_set.exit_crit_edge, label %for.body.i.4

if.end13.special_stream_formation_set.exit_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %special_stream_formation_set.exit

for.body.i.4:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %dig_in_fmt.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dig_in_fmt.i, align 4
  %arrayidx1.i.4 = getelementptr [2 x [2 x [3 x i32]]], ptr @special_stream_formation_set.ch_table, i32 0, i32 1, i32 %66, i32 2
  %67 = ptrtoint ptr %arrayidx1.i.4 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx1.i.4, align 4
  %arrayidx2.i.4 = getelementptr %struct.snd_bebob, ptr %bebob, i32 0, i32 14, i32 5
  %69 = ptrtoint ptr %arrayidx2.i.4 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %arrayidx2.i.4, align 4
  %midi.i.4 = getelementptr %struct.snd_bebob, ptr %bebob, i32 0, i32 14, i32 5, i32 1
  %70 = ptrtoint ptr %midi.i.4 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %midi.i.4, align 4
  %71 = ptrtoint ptr %dig_out_fmt.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dig_out_fmt.i, align 4
  %arrayidx8.i.4 = getelementptr [2 x [3 x i32]], ptr @special_stream_formation_set.ch_table, i32 0, i32 %72, i32 2
  %73 = ptrtoint ptr %arrayidx8.i.4 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx8.i.4, align 4
  %arrayidx10.i.4 = getelementptr %struct.snd_bebob, ptr %bebob, i32 0, i32 15, i32 5
  %75 = ptrtoint ptr %arrayidx10.i.4 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %arrayidx10.i.4, align 4
  %midi15.i.4 = getelementptr %struct.snd_bebob, ptr %bebob, i32 0, i32 15, i32 5, i32 1
  %76 = ptrtoint ptr %midi15.i.4 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %midi15.i.4, align 4
  %77 = load i32, ptr %dig_in_fmt.i, align 4
  %arrayidx1.i.5 = getelementptr [2 x [2 x [3 x i32]]], ptr @special_stream_formation_set.ch_table, i32 0, i32 1, i32 %77, i32 2
  %78 = ptrtoint ptr %arrayidx1.i.5 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx1.i.5, align 4
  %arrayidx2.i.5 = getelementptr %struct.snd_bebob, ptr %bebob, i32 0, i32 14, i32 6
  %80 = ptrtoint ptr %arrayidx2.i.5 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %arrayidx2.i.5, align 4
  %midi.i.5 = getelementptr %struct.snd_bebob, ptr %bebob, i32 0, i32 14, i32 6, i32 1
  %81 = ptrtoint ptr %midi.i.5 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %midi.i.5, align 4
  %82 = load i32, ptr %dig_out_fmt.i, align 4
  %arrayidx8.i.5 = getelementptr [2 x [3 x i32]], ptr @special_stream_formation_set.ch_table, i32 0, i32 %82, i32 2
  %83 = ptrtoint ptr %arrayidx8.i.5 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx8.i.5, align 4
  %arrayidx10.i.5 = getelementptr %struct.snd_bebob, ptr %bebob, i32 0, i32 15, i32 6
  %85 = ptrtoint ptr %arrayidx10.i.5 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %arrayidx10.i.5, align 4
  %midi15.i.5 = getelementptr %struct.snd_bebob, ptr %bebob, i32 0, i32 15, i32 6, i32 1
  %86 = ptrtoint ptr %midi15.i.5 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %midi15.i.5, align 4
  br label %special_stream_formation_set.exit

special_stream_formation_set.exit:                ; preds = %for.body.i.4, %if.end13.special_stream_formation_set.exit_crit_edge
  %87 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %call.i, align 4, !range !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool15.not = icmp eq i8 %88, 0
  %midi_input_ports17 = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 7
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %special_stream_formation_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %midi_input_ports17 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %midi_input_ports17, align 4
  %midi_output_ports = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 8
  %90 = ptrtoint ptr %midi_output_ports to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %midi_output_ports, align 8
  br label %end

if.else:                                          ; preds = %special_stream_formation_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %midi_input_ports17 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 2, ptr %midi_input_ports17, align 4
  %midi_output_ports18 = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 8
  %92 = ptrtoint ptr %midi_output_ports18 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 2, ptr %midi_output_ports18, align 8
  br label %end

end:                                              ; preds = %if.else, %if.then16, %add_special_controls.exit.end_crit_edge, %if.end7.i.end_crit_edge, %if.end.i.end_crit_edge, %if.end9.end_crit_edge, %do.end
  %err.0 = phi i32 [ %call7, %do.end ], [ %call16.i, %add_special_controls.exit.end_crit_edge ], [ %call16.i, %if.then16 ], [ %call16.i, %if.else ], [ %call10.i, %if.end7.i.end_crit_edge ], [ %call4.i, %if.end.i.end_crit_edge ], [ %call1.i, %if.end9.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @avc_maudio_set_special_clk(ptr nocapture noundef readonly %bebob, i32 noundef %clk_src, i32 noundef %dig_in_fmt, i32 noundef %dig_out_fmt, i32 noundef %clk_lock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %maudio_special_quirk = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 20
  %0 = ptrtoint ptr %maudio_special_quirk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %maudio_special_quirk, align 4
  %context.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 10, i32 4
  %2 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context.i, align 4
  %cmp.i.i.not = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %context.i96 = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 9, i32 4
  %4 = ptrtoint ptr %context.i96 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context.i96, align 4
  %cmp.i.i97.not = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i97.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 12) #11
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %call7.i, align 8
  %arrayidx5 = getelementptr i8, ptr %call7.i, i32 1
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %arrayidx5, align 1
  %arrayidx6 = getelementptr i8, ptr %call7.i, i32 2
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx6, align 2
  %arrayidx7 = getelementptr i8, ptr %call7.i, i32 3
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 4, ptr %arrayidx7, align 1
  %arrayidx8 = getelementptr i8, ptr %call7.i, i32 4
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx8, align 4
  %arrayidx9 = getelementptr i8, ptr %call7.i, i32 5
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 4, ptr %arrayidx9, align 1
  %conv = trunc i32 %clk_src to i8
  %arrayidx10 = getelementptr i8, ptr %call7.i, i32 6
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %arrayidx10, align 2
  %conv12 = trunc i32 %dig_in_fmt to i8
  %arrayidx13 = getelementptr i8, ptr %call7.i, i32 7
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv12, ptr %arrayidx13, align 1
  %conv15 = trunc i32 %dig_out_fmt to i8
  %arrayidx16 = getelementptr i8, ptr %call7.i, i32 8
  %15 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv15, ptr %arrayidx16, align 8
  %conv18 = trunc i32 %clk_lock to i8
  %arrayidx19 = getelementptr i8, ptr %call7.i, i32 9
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv18, ptr %arrayidx19, align 1
  %arrayidx20 = getelementptr i8, ptr %call7.i, i32 10
  %17 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx20, align 2
  %arrayidx21 = getelementptr i8, ptr %call7.i, i32 11
  %18 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx21, align 1
  %unit = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 1
  %19 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %unit, align 4
  %call22 = tail call i32 @fcp_avc_transaction(ptr noundef %20, ptr noundef nonnull %call7.i, i32 noundef 12, ptr noundef nonnull %call7.i, i32 noundef 12, i32 noundef 1022) #8
  %21 = add i32 %call22, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %21)
  %22 = icmp ult i32 %21, 9
  br i1 %22, label %if.end4.end_crit_edge, label %if.else

if.end4.end_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.else:                                          ; preds = %if.end4
  %23 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %call7.i, align 8
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i8 %24, label %if.end41 [
    i8 8, label %if.else.end_crit_edge
    i8 10, label %if.then38
  ]

if.else.end_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.then38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.end41:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp42 = icmp slt i32 %call22, 0
  br i1 %cmp42, label %if.end41.end_crit_edge, label %if.end45

if.end41.end_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.end45:                                         ; preds = %if.end41
  %26 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx10, align 2
  %conv47 = zext i8 %27 to i32
  %clk_src48 = getelementptr inbounds %struct.special_params, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %clk_src48 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv47, ptr %clk_src48, align 4
  %29 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx13, align 1
  %conv50 = zext i8 %30 to i32
  %dig_in_fmt51 = getelementptr inbounds %struct.special_params, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %dig_in_fmt51 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv50, ptr %dig_in_fmt51, align 4
  %32 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx16, align 8
  %conv53 = zext i8 %33 to i32
  %dig_out_fmt54 = getelementptr inbounds %struct.special_params, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %dig_out_fmt54 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv53, ptr %dig_out_fmt54, align 4
  %35 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx19, align 1
  %conv56 = zext i8 %36 to i32
  %clk_lock57 = getelementptr inbounds %struct.special_params, ptr %1, i32 0, i32 4
  %37 = ptrtoint ptr %clk_lock57 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv56, ptr %clk_lock57, align 4
  %ctl_id_sync = getelementptr inbounds %struct.special_params, ptr %1, i32 0, i32 5
  %38 = ptrtoint ptr %ctl_id_sync to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctl_id_sync, align 4
  %tobool.not = icmp eq ptr %39, null
  br i1 %tobool.not, label %if.end45.end_crit_edge, label %if.then58

if.end45.end_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.then58:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %bebob to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bebob, align 8
  tail call void @snd_ctl_notify(ptr noundef %41, i32 noundef 1, ptr noundef nonnull %39) #8
  br label %end

end:                                              ; preds = %if.then58, %if.end45.end_crit_edge, %if.end41.end_crit_edge, %if.then38, %if.else.end_crit_edge, %if.end4.end_crit_edge
  %err.1 = phi i32 [ %call22, %if.end41.end_crit_edge ], [ 0, %if.then58 ], [ 0, %if.end45.end_crit_edge ], [ -38, %if.else.end_crit_edge ], [ -5, %if.end4.end_crit_edge ], [ -22, %if.then38 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %end, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %end ], [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_fw_transaction(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcp_avc_transaction(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @special_clk_ctl_info(ptr nocapture noundef readnone %kctl, ptr noundef %einf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %einf, i32 noundef 1, i32 noundef 4, ptr noundef nonnull @special_clk_ctl_info.special_clk_labels) #8
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @special_clk_ctl_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %uval) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %maudio_special_quirk = getelementptr inbounds %struct.snd_bebob, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %maudio_special_quirk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %maudio_special_quirk, align 4
  %clk_src = getelementptr inbounds %struct.special_params, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %clk_src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clk_src, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uval, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @special_clk_ctl_put(ptr nocapture noundef readonly %kctl, ptr nocapture noundef readonly %uval) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uval, i32 0, i32 2
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %maudio_special_quirk = getelementptr inbounds %struct.snd_bebob, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %maudio_special_quirk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %maudio_special_quirk, align 4
  %mutex = getelementptr inbounds %struct.snd_bebob, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %dig_in_fmt = getelementptr inbounds %struct.special_params, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dig_in_fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dig_in_fmt, align 4
  %dig_out_fmt = getelementptr inbounds %struct.special_params, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %dig_out_fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dig_out_fmt, align 4
  %clk_lock = getelementptr inbounds %struct.special_params, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %clk_lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clk_lock, align 4
  %call = tail call fastcc i32 @avc_maudio_set_special_clk(ptr noundef %3, i32 noundef %1, i32 noundef %7, i32 noundef %9, i32 noundef %11)
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp2 = icmp sgt i32 %call, -1
  %spec.store.select = select i1 %cmp2, i32 1, i32 %call
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @special_sync_ctl_info(ptr nocapture noundef readnone %kctl, ptr nocapture noundef writeonly %einf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %einf, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %einf, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %einf, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %einf, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @special_sync_ctl_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %uval) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 84) #11
  %cmp.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %unit.i.i = getelementptr inbounds %struct.snd_bebob, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %unit.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %unit.i.i, align 4
  %call.i.i = tail call i32 @snd_fw_transaction(ptr noundef %4, i32 noundef 5, i64 noundef 281230169866240, ptr noundef nonnull %call7.i.i, i32 noundef 84, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %check_clk_sync.exit, label %if.then

check_clk_sync.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %if.end

if.then:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr i8, ptr %call7.i.i, i32 82
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp5.i = icmp ne i8 %6, -1
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %7 = zext i1 %cmp5.i to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uval, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %check_clk_sync.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @special_dig_in_iface_ctl_info(ptr nocapture noundef readnone %kctl, ptr noundef %einf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %einf, i32 noundef 1, i32 noundef 3, ptr noundef nonnull @special_dig_in_iface_labels) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @special_dig_in_iface_ctl_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %uval) #0 align 64 {
entry:
  %dig_in_iface = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %maudio_special_quirk = getelementptr inbounds %struct.snd_bebob, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %maudio_special_quirk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %maudio_special_quirk, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dig_in_iface) #8
  %4 = ptrtoint ptr %dig_in_iface to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %dig_in_iface, align 4, !annotation !142
  %mutex = getelementptr inbounds %struct.snd_bebob, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %unit = getelementptr inbounds %struct.snd_bebob, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %unit, align 4
  %call = call i32 @avc_audio_get_selector(ptr noundef %6, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %dig_in_iface) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %unit, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.20, i32 noundef %call) #12
  br label %end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dig_in_fmt = getelementptr inbounds %struct.special_params, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %dig_in_fmt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dig_in_fmt, align 4
  %shl = shl i32 %10, 1
  %11 = ptrtoint ptr %dig_in_iface to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dig_in_iface, align 4
  %and = and i32 %12, 1
  %or = or i32 %and, %shl
  %13 = call i32 @llvm.smin.i32(i32 %or, i32 2)
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uval, i32 0, i32 2
  %14 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %value, align 8
  br label %end

end:                                              ; preds = %if.end, %do.end
  call void @mutex_unlock(ptr noundef %mutex) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dig_in_iface) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @special_dig_in_iface_ctl_set(ptr nocapture noundef readonly %kctl, ptr nocapture noundef readonly %uval) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %maudio_special_quirk = getelementptr inbounds %struct.snd_bebob, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %maudio_special_quirk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %maudio_special_quirk, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uval, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ugt i32 %5, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i32 %5, 1
  %and1 = and i32 %5, 1
  %mutex = getelementptr inbounds %struct.snd_bebob, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %clk_src = getelementptr inbounds %struct.special_params, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %clk_src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clk_src, align 4
  %dig_out_fmt = getelementptr inbounds %struct.special_params, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %dig_out_fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dig_out_fmt, align 4
  %clk_lock = getelementptr inbounds %struct.special_params, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %clk_lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clk_lock, align 4
  %call = tail call fastcc i32 @avc_maudio_set_special_clk(ptr noundef %1, i32 noundef %7, i32 noundef %shr, i32 noundef %9, i32 noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.end.end_crit_edge, label %if.end4

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.end4:                                          ; preds = %if.end
  %dig_in_fmt5 = getelementptr inbounds %struct.special_params, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %dig_in_fmt5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dig_in_fmt5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp6.not = icmp eq i32 %13, 0
  br i1 %cmp6.not, label %if.end8, label %if.end4.end_crit_edge

if.end4.end_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.end8:                                          ; preds = %if.end4
  %unit = getelementptr inbounds %struct.snd_bebob, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %unit, align 4
  %call9 = tail call i32 @avc_audio_set_selector(ptr noundef %15, i32 noundef 0, i32 noundef 4, i32 noundef %and1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end, label %if.end8.end_crit_edge

if.end8.end_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %unit, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.22, i32 noundef %call9) #12
  br label %end

end:                                              ; preds = %do.end, %if.end8.end_crit_edge, %if.end4.end_crit_edge, %if.end.end_crit_edge
  %err.0 = phi i32 [ %call, %if.end.end_crit_edge ], [ 1, %if.end4.end_crit_edge ], [ 1, %do.end ], [ 1, %if.end8.end_crit_edge ]
  %18 = ptrtoint ptr %maudio_special_quirk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %maudio_special_quirk, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 4, !range !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  %dig_in_fmt.i = getelementptr inbounds %struct.special_params, ptr %19, i32 0, i32 2
  %dig_out_fmt.i = getelementptr inbounds %struct.special_params, ptr %19, i32 0, i32 3
  %22 = ptrtoint ptr %dig_in_fmt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dig_in_fmt.i, align 4
  %arrayidx1.i = getelementptr [2 x [2 x [3 x i32]]], ptr @special_stream_formation_set.ch_table, i32 0, i32 1, i32 %23, i32 0
  %24 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 1
  %26 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx2.i, align 4
  %midi.i = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 1, i32 1
  %27 = ptrtoint ptr %midi.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %midi.i, align 4
  %28 = ptrtoint ptr %dig_out_fmt.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dig_out_fmt.i, align 4
  %arrayidx8.i = getelementptr [2 x [3 x i32]], ptr @special_stream_formation_set.ch_table, i32 0, i32 %29, i32 0
  %30 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx8.i, align 4
  %arrayidx10.i = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 1
  %32 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx10.i, align 4
  %midi15.i = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 1, i32 1
  %33 = ptrtoint ptr %midi15.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %midi15.i, align 4
  %34 = load i32, ptr %dig_in_fmt.i, align 4
  %arrayidx1.i.1 = getelementptr [2 x [2 x [3 x i32]]], ptr @special_stream_formation_set.ch_table, i32 0, i32 1, i32 %34, i32 0
  %35 = ptrtoint ptr %arrayidx1.i.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx1.i.1, align 4
  %arrayidx2.i.1 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 2
  %37 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx2.i.1, align 4
  %midi.i.1 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 2, i32 1
  %38 = ptrtoint ptr %midi.i.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %midi.i.1, align 4
  %39 = load i32, ptr %dig_out_fmt.i, align 4
  %arrayidx8.i.1 = getelementptr [2 x [3 x i32]], ptr @special_stream_formation_set.ch_table, i32 0, i32 %39, i32 0
  %40 = ptrtoint ptr %arrayidx8.i.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx8.i.1, align 4
  %arrayidx10.i.1 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 2
  %42 = ptrtoint ptr %arrayidx10.i.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx10.i.1, align 4
  %midi15.i.1 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 2, i32 1
  %43 = ptrtoint ptr %midi15.i.1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %midi15.i.1, align 4
  %44 = load i32, ptr %dig_in_fmt.i, align 4
  %arrayidx1.i.2 = getelementptr [2 x [2 x [3 x i32]]], ptr @special_stream_formation_set.ch_table, i32 0, i32 1, i32 %44, i32 1
  %45 = ptrtoint ptr %arrayidx1.i.2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx1.i.2, align 4
  %arrayidx2.i.2 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 3
  %47 = ptrtoint ptr %arrayidx2.i.2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx2.i.2, align 4
  %midi.i.2 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 3, i32 1
  %48 = ptrtoint ptr %midi.i.2 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %midi.i.2, align 4
  %49 = load i32, ptr %dig_out_fmt.i, align 4
  %arrayidx8.i.2 = getelementptr [2 x [3 x i32]], ptr @special_stream_formation_set.ch_table, i32 0, i32 %49, i32 1
  %50 = ptrtoint ptr %arrayidx8.i.2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx8.i.2, align 4
  %arrayidx10.i.2 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 3
  %52 = ptrtoint ptr %arrayidx10.i.2 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx10.i.2, align 4
  %midi15.i.2 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 3, i32 1
  %53 = ptrtoint ptr %midi15.i.2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %midi15.i.2, align 4
  %54 = load i32, ptr %dig_in_fmt.i, align 4
  %arrayidx1.i.3 = getelementptr [2 x [2 x [3 x i32]]], ptr @special_stream_formation_set.ch_table, i32 0, i32 1, i32 %54, i32 1
  %55 = ptrtoint ptr %arrayidx1.i.3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx1.i.3, align 4
  %arrayidx2.i.3 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 4
  %57 = ptrtoint ptr %arrayidx2.i.3 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx2.i.3, align 4
  %midi.i.3 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 4, i32 1
  %58 = ptrtoint ptr %midi.i.3 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %midi.i.3, align 4
  %59 = load i32, ptr %dig_out_fmt.i, align 4
  %arrayidx8.i.3 = getelementptr [2 x [3 x i32]], ptr @special_stream_formation_set.ch_table, i32 0, i32 %59, i32 1
  %60 = ptrtoint ptr %arrayidx8.i.3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx8.i.3, align 4
  %arrayidx10.i.3 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 4
  %62 = ptrtoint ptr %arrayidx10.i.3 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %arrayidx10.i.3, align 4
  %midi15.i.3 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 4, i32 1
  %63 = ptrtoint ptr %midi15.i.3 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %midi15.i.3, align 4
  br i1 %tobool.not.i, label %end.special_stream_formation_set.exit_crit_edge, label %for.body.i.4

end.special_stream_formation_set.exit_crit_edge:  ; preds = %end
  call void @__sanitizer_cov_trace_pc() #10
  br label %special_stream_formation_set.exit

for.body.i.4:                                     ; preds = %end
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %dig_in_fmt.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dig_in_fmt.i, align 4
  %arrayidx1.i.4 = getelementptr [2 x [2 x [3 x i32]]], ptr @special_stream_formation_set.ch_table, i32 0, i32 1, i32 %65, i32 2
  %66 = ptrtoint ptr %arrayidx1.i.4 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx1.i.4, align 4
  %arrayidx2.i.4 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 5
  %68 = ptrtoint ptr %arrayidx2.i.4 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %arrayidx2.i.4, align 4
  %midi.i.4 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 5, i32 1
  %69 = ptrtoint ptr %midi.i.4 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %midi.i.4, align 4
  %70 = ptrtoint ptr %dig_out_fmt.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dig_out_fmt.i, align 4
  %arrayidx8.i.4 = getelementptr [2 x [3 x i32]], ptr @special_stream_formation_set.ch_table, i32 0, i32 %71, i32 2
  %72 = ptrtoint ptr %arrayidx8.i.4 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx8.i.4, align 4
  %arrayidx10.i.4 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 5
  %74 = ptrtoint ptr %arrayidx10.i.4 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %arrayidx10.i.4, align 4
  %midi15.i.4 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 5, i32 1
  %75 = ptrtoint ptr %midi15.i.4 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %midi15.i.4, align 4
  %76 = load i32, ptr %dig_in_fmt.i, align 4
  %arrayidx1.i.5 = getelementptr [2 x [2 x [3 x i32]]], ptr @special_stream_formation_set.ch_table, i32 0, i32 1, i32 %76, i32 2
  %77 = ptrtoint ptr %arrayidx1.i.5 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx1.i.5, align 4
  %arrayidx2.i.5 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 6
  %79 = ptrtoint ptr %arrayidx2.i.5 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %arrayidx2.i.5, align 4
  %midi.i.5 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 6, i32 1
  %80 = ptrtoint ptr %midi.i.5 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %midi.i.5, align 4
  %81 = load i32, ptr %dig_out_fmt.i, align 4
  %arrayidx8.i.5 = getelementptr [2 x [3 x i32]], ptr @special_stream_formation_set.ch_table, i32 0, i32 %81, i32 2
  %82 = ptrtoint ptr %arrayidx8.i.5 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx8.i.5, align 4
  %arrayidx10.i.5 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 6
  %84 = ptrtoint ptr %arrayidx10.i.5 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %arrayidx10.i.5, align 4
  %midi15.i.5 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 6, i32 1
  %85 = ptrtoint ptr %midi15.i.5 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %midi15.i.5, align 4
  br label %special_stream_formation_set.exit

special_stream_formation_set.exit:                ; preds = %for.body.i.4, %end.special_stream_formation_set.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %special_stream_formation_set.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %special_stream_formation_set.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_audio_get_selector(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_audio_set_selector(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @special_dig_out_iface_ctl_info(ptr nocapture noundef readnone %kctl, ptr noundef %einf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %einf, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @special_dig_out_iface_labels) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @special_dig_out_iface_ctl_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %uval) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %maudio_special_quirk = getelementptr inbounds %struct.snd_bebob, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %maudio_special_quirk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %maudio_special_quirk, align 4
  %mutex = getelementptr inbounds %struct.snd_bebob, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %dig_out_fmt = getelementptr inbounds %struct.special_params, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dig_out_fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dig_out_fmt, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uval, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @special_dig_out_iface_ctl_set(ptr nocapture noundef readonly %kctl, ptr nocapture noundef readonly %uval) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uval, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %maudio_special_quirk = getelementptr inbounds %struct.snd_bebob, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %maudio_special_quirk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %maudio_special_quirk, align 4
  %mutex = getelementptr inbounds %struct.snd_bebob, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %clk_src = getelementptr inbounds %struct.special_params, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %clk_src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clk_src, align 4
  %dig_in_fmt = getelementptr inbounds %struct.special_params, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %dig_in_fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dig_in_fmt, align 4
  %clk_lock = getelementptr inbounds %struct.special_params, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %clk_lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clk_lock, align 4
  %call = tail call fastcc i32 @avc_maudio_set_special_clk(ptr noundef %1, i32 noundef %7, i32 noundef %9, i32 noundef %3, i32 noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp1 = icmp sgt i32 %call, -1
  br i1 %cmp1, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %if.end
  %12 = ptrtoint ptr %maudio_special_quirk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %maudio_special_quirk, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4, !range !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  %dig_in_fmt.i = getelementptr inbounds %struct.special_params, ptr %13, i32 0, i32 2
  %dig_out_fmt.i = getelementptr inbounds %struct.special_params, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %dig_in_fmt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dig_in_fmt.i, align 4
  %arrayidx1.i = getelementptr [2 x [2 x [3 x i32]]], ptr @special_stream_formation_set.ch_table, i32 0, i32 1, i32 %17, i32 0
  %18 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 1
  %20 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx2.i, align 4
  %midi.i = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 1, i32 1
  %21 = ptrtoint ptr %midi.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %midi.i, align 4
  %22 = ptrtoint ptr %dig_out_fmt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dig_out_fmt.i, align 4
  %arrayidx8.i = getelementptr [2 x [3 x i32]], ptr @special_stream_formation_set.ch_table, i32 0, i32 %23, i32 0
  %24 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx8.i, align 4
  %arrayidx10.i = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 1
  %26 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx10.i, align 4
  %midi15.i = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 1, i32 1
  %27 = ptrtoint ptr %midi15.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %midi15.i, align 4
  %28 = load i32, ptr %dig_in_fmt.i, align 4
  %arrayidx1.i.1 = getelementptr [2 x [2 x [3 x i32]]], ptr @special_stream_formation_set.ch_table, i32 0, i32 1, i32 %28, i32 0
  %29 = ptrtoint ptr %arrayidx1.i.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx1.i.1, align 4
  %arrayidx2.i.1 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 2
  %31 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx2.i.1, align 4
  %midi.i.1 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 2, i32 1
  %32 = ptrtoint ptr %midi.i.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %midi.i.1, align 4
  %33 = load i32, ptr %dig_out_fmt.i, align 4
  %arrayidx8.i.1 = getelementptr [2 x [3 x i32]], ptr @special_stream_formation_set.ch_table, i32 0, i32 %33, i32 0
  %34 = ptrtoint ptr %arrayidx8.i.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx8.i.1, align 4
  %arrayidx10.i.1 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 2
  %36 = ptrtoint ptr %arrayidx10.i.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx10.i.1, align 4
  %midi15.i.1 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 2, i32 1
  %37 = ptrtoint ptr %midi15.i.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %midi15.i.1, align 4
  %38 = load i32, ptr %dig_in_fmt.i, align 4
  %arrayidx1.i.2 = getelementptr [2 x [2 x [3 x i32]]], ptr @special_stream_formation_set.ch_table, i32 0, i32 1, i32 %38, i32 1
  %39 = ptrtoint ptr %arrayidx1.i.2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx1.i.2, align 4
  %arrayidx2.i.2 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 3
  %41 = ptrtoint ptr %arrayidx2.i.2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx2.i.2, align 4
  %midi.i.2 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 3, i32 1
  %42 = ptrtoint ptr %midi.i.2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %midi.i.2, align 4
  %43 = load i32, ptr %dig_out_fmt.i, align 4
  %arrayidx8.i.2 = getelementptr [2 x [3 x i32]], ptr @special_stream_formation_set.ch_table, i32 0, i32 %43, i32 1
  %44 = ptrtoint ptr %arrayidx8.i.2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx8.i.2, align 4
  %arrayidx10.i.2 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 3
  %46 = ptrtoint ptr %arrayidx10.i.2 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx10.i.2, align 4
  %midi15.i.2 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 3, i32 1
  %47 = ptrtoint ptr %midi15.i.2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %midi15.i.2, align 4
  %48 = load i32, ptr %dig_in_fmt.i, align 4
  %arrayidx1.i.3 = getelementptr [2 x [2 x [3 x i32]]], ptr @special_stream_formation_set.ch_table, i32 0, i32 1, i32 %48, i32 1
  %49 = ptrtoint ptr %arrayidx1.i.3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx1.i.3, align 4
  %arrayidx2.i.3 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 4
  %51 = ptrtoint ptr %arrayidx2.i.3 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx2.i.3, align 4
  %midi.i.3 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 4, i32 1
  %52 = ptrtoint ptr %midi.i.3 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %midi.i.3, align 4
  %53 = load i32, ptr %dig_out_fmt.i, align 4
  %arrayidx8.i.3 = getelementptr [2 x [3 x i32]], ptr @special_stream_formation_set.ch_table, i32 0, i32 %53, i32 1
  %54 = ptrtoint ptr %arrayidx8.i.3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx8.i.3, align 4
  %arrayidx10.i.3 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 4
  %56 = ptrtoint ptr %arrayidx10.i.3 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %arrayidx10.i.3, align 4
  %midi15.i.3 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 4, i32 1
  %57 = ptrtoint ptr %midi15.i.3 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %midi15.i.3, align 4
  br i1 %tobool.not.i, label %if.then2.if.end3_crit_edge, label %for.body.i.4

if.then2.if.end3_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

for.body.i.4:                                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %dig_in_fmt.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dig_in_fmt.i, align 4
  %arrayidx1.i.4 = getelementptr [2 x [2 x [3 x i32]]], ptr @special_stream_formation_set.ch_table, i32 0, i32 1, i32 %59, i32 2
  %60 = ptrtoint ptr %arrayidx1.i.4 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx1.i.4, align 4
  %arrayidx2.i.4 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 5
  %62 = ptrtoint ptr %arrayidx2.i.4 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %arrayidx2.i.4, align 4
  %midi.i.4 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 5, i32 1
  %63 = ptrtoint ptr %midi.i.4 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %midi.i.4, align 4
  %64 = ptrtoint ptr %dig_out_fmt.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dig_out_fmt.i, align 4
  %arrayidx8.i.4 = getelementptr [2 x [3 x i32]], ptr @special_stream_formation_set.ch_table, i32 0, i32 %65, i32 2
  %66 = ptrtoint ptr %arrayidx8.i.4 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx8.i.4, align 4
  %arrayidx10.i.4 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 5
  %68 = ptrtoint ptr %arrayidx10.i.4 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %arrayidx10.i.4, align 4
  %midi15.i.4 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 5, i32 1
  %69 = ptrtoint ptr %midi15.i.4 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %midi15.i.4, align 4
  %70 = load i32, ptr %dig_in_fmt.i, align 4
  %arrayidx1.i.5 = getelementptr [2 x [2 x [3 x i32]]], ptr @special_stream_formation_set.ch_table, i32 0, i32 1, i32 %70, i32 2
  %71 = ptrtoint ptr %arrayidx1.i.5 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx1.i.5, align 4
  %arrayidx2.i.5 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 6
  %73 = ptrtoint ptr %arrayidx2.i.5 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %arrayidx2.i.5, align 4
  %midi.i.5 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 14, i32 6, i32 1
  %74 = ptrtoint ptr %midi.i.5 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %midi.i.5, align 4
  %75 = load i32, ptr %dig_out_fmt.i, align 4
  %arrayidx8.i.5 = getelementptr [2 x [3 x i32]], ptr @special_stream_formation_set.ch_table, i32 0, i32 %75, i32 2
  %76 = ptrtoint ptr %arrayidx8.i.5 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx8.i.5, align 4
  %arrayidx10.i.5 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 6
  %78 = ptrtoint ptr %arrayidx10.i.5 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %arrayidx10.i.5, align 4
  %midi15.i.5 = getelementptr %struct.snd_bebob, ptr %1, i32 0, i32 15, i32 6, i32 1
  %79 = ptrtoint ptr %midi15.i.5 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %midi15.i.5, align 4
  br label %if.end3

if.end3:                                          ; preds = %for.body.i.4, %if.then2.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %err.0 = phi i32 [ %call, %if.end.if.end3_crit_edge ], [ 1, %for.body.i.4 ], [ 1, %if.then2.if.end3_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @special_clk_get(ptr nocapture noundef readonly %bebob, ptr nocapture noundef writeonly %id) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %maudio_special_quirk = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 20
  %0 = ptrtoint ptr %maudio_special_quirk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %maudio_special_quirk, align 4
  %clk_src = getelementptr inbounds %struct.special_params, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clk_src, align 4
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %id, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @special_get_rate(ptr nocapture noundef readonly %bebob, ptr noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %unit = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 1
  %0 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unit, align 4
  %call = tail call i32 @avc_general_get_sig_fmt(ptr noundef %1, ptr noundef %rate, i32 noundef 0, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call)
  %cmp = icmp eq i32 %call, -11
  br i1 %cmp, label %do.body.1, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.body.1:                                        ; preds = %entry
  %2 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit, align 4
  %call.1 = tail call i32 @avc_general_get_sig_fmt(ptr noundef %3, ptr noundef %rate, i32 noundef 0, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.1)
  %cmp.1 = icmp eq i32 %call.1, -11
  br i1 %cmp.1, label %do.body.2, label %do.body.1.do.end_crit_edge

do.body.1.do.end_crit_edge:                       ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.body.2:                                        ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unit, align 4
  %call.2 = tail call i32 @avc_general_get_sig_fmt(ptr noundef %5, ptr noundef %rate, i32 noundef 0, i16 noundef zeroext 0) #8
  br label %do.end

do.end:                                           ; preds = %do.body.2, %do.body.1.do.end_crit_edge, %entry.do.end_crit_edge
  %call.lcssa = phi i32 [ %call, %entry.do.end_crit_edge ], [ %call.1, %do.body.1.do.end_crit_edge ], [ %call.2, %do.body.2 ]
  ret i32 %call.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @special_set_rate(ptr nocapture noundef readonly %bebob, i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %maudio_special_quirk = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 20
  %0 = ptrtoint ptr %maudio_special_quirk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %maudio_special_quirk, align 4
  %unit = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 1
  %2 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit, align 4
  %call = tail call i32 @avc_general_set_sig_fmt(ptr noundef %3, i32 noundef %rate, i32 noundef 1, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.end_crit_edge, label %if.end

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 100) #8
  %4 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unit, align 4
  %call2 = tail call i32 @avc_general_set_sig_fmt(ptr noundef %5, i32 noundef %rate, i32 noundef 0, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.end_crit_edge, label %if.end5

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.end5:                                          ; preds = %if.end
  %ctl_id_sync = getelementptr inbounds %struct.special_params, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %ctl_id_sync to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctl_id_sync, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end5.end_crit_edge, label %if.then6

if.end5.end_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %bebob to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bebob, align 8
  tail call void @snd_ctl_notify(ptr noundef %9, i32 noundef 1, ptr noundef nonnull %7) #8
  br label %end

end:                                              ; preds = %if.then6, %if.end5.end_crit_edge, %if.end.end_crit_edge, %entry.end_crit_edge
  %err.0 = phi i32 [ %call, %entry.end_crit_edge ], [ %call2, %if.end.end_crit_edge ], [ %call2, %if.then6 ], [ %call2, %if.end5.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_general_get_sig_fmt(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_general_set_sig_fmt(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @special_meter_get(ptr nocapture noundef readonly %bebob, ptr nocapture noundef writeonly %target, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 152, i32 %size)
  %cmp = icmp ult i32 %size, 152
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 80) #11
  %cmp1 = icmp eq ptr %call7.i, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %unit.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 1
  %1 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %unit.i, align 4
  %call.i = tail call i32 @snd_fw_transaction(ptr noundef %2, i32 noundef 5, i64 noundef 281230169866240, ptr noundef nonnull %call7.i, i32 noundef 80, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5 = icmp slt i32 %call.i, 0
  br i1 %cmp5, label %if.end3.end_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.end_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end3.for.body_crit_edge
  %c.023 = phi i32 [ %inc10, %for.body.for.body_crit_edge ], [ 2, %if.end3.for.body_crit_edge ]
  %i.022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end3.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %call7.i, i32 %c.023
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %4 to i32
  %shl = shl nuw i32 %conv, 16
  %inc = add nuw nsw i32 %i.022, 1
  %arrayidx9 = getelementptr i32, ptr %target, i32 %i.022
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shl, ptr %arrayidx9, align 4
  %inc10 = add nuw nsw i32 %c.023, 1
  %exitcond.not = icmp eq i32 %inc, 38
  br i1 %exitcond.not, label %for.body.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.end_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

end:                                              ; preds = %for.body.end_crit_edge, %if.end3.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %end ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_bebob_stream_get_rate(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_bebob_stream_set_rate(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @normal_meter_get(ptr nocapture noundef readonly %bebob, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 5
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  %meter = getelementptr inbounds %struct.snd_bebob_spec, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %meter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %meter, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %mul2 = shl i32 %5, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul2, i32 %size)
  %cmp = icmp ugt i32 %mul2, %size
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %unit.i = getelementptr inbounds %struct.snd_bebob, ptr %bebob, i32 0, i32 1
  %6 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unit.i, align 4
  %call.i = tail call i32 @snd_fw_transaction(ptr noundef %7, i32 noundef 5, i64 noundef 281230169866240, ptr noundef %buf, i32 noundef %size, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %labels = getelementptr inbounds %struct.snd_bebob_meter_spec, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %labels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %labels, align 4
  %cmp7 = icmp eq ptr %9, @solo_meter_labels
  br i1 %cmp7, label %do.body9, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body9:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx10 = getelementptr i32, ptr %buf, i32 4
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx10, align 4
  %arrayidx11 = getelementptr i32, ptr %buf, i32 6
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx11, align 4
  store i32 %13, ptr %arrayidx10, align 4
  store i32 %11, ptr %arrayidx11, align 4
  %arrayidx18 = getelementptr i32, ptr %buf, i32 5
  %14 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx18, align 4
  %arrayidx19 = getelementptr i32, ptr %buf, i32 7
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx19, align 4
  store i32 %17, ptr %arrayidx18, align 4
  store i32 %15, ptr %arrayidx19, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body9, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i, %for.cond.preheader.cleanup_crit_edge ], [ %call.i, %do.body9 ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 110, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @snd_bebob_maudio_load_firmware._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @snd_bebob_maudio_load_firmware._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 129, i32 3}
!10 = !{ptr @snd_bebob_maudio_load_firmware._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @snd_bebob_maudio_load_firmware._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 278, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @snd_bebob_maudio_special_discover._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @snd_bebob_maudio_special_discover._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @maudio_special_spec, !18, !"maudio_special_spec", i1 false, i1 false}
!18 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 729, i32 29}
!19 = !{ptr @maudio_fw410_spec, !20, !"maudio_fw410_spec", i1 false, i1 false}
!20 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 745, i32 29}
!21 = !{ptr @maudio_audiophile_spec, !22, !"maudio_audiophile_spec", i1 false, i1 false}
!22 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 757, i32 29}
!23 = !{ptr @maudio_solo_spec, !24, !"maudio_solo_spec", i1 false, i1 false}
!24 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 769, i32 29}
!25 = !{ptr @maudio_ozonic_spec, !26, !"maudio_ozonic_spec", i1 false, i1 false}
!26 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 781, i32 29}
!27 = !{ptr @maudio_nrv10_spec, !28, !"maudio_nrv10_spec", i1 false, i1 false}
!28 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 793, i32 29}
!29 = !{ptr @special_stream_formation_set.ch_table, !30, !"ch_table", i1 false, i1 false}
!30 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 230, i32 28}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 400, i32 10}
!33 = !{ptr @special_clk_ctl, !34, !"special_clk_ctl", i1 false, i1 false}
!34 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 399, i32 38}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 359, i32 3}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 360, i32 3}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 361, i32 3}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 362, i32 3}
!43 = !{ptr @special_clk_ctl_info.special_clk_labels, !44, !"special_clk_labels", i1 false, i1 false}
!44 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 358, i32 27}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 433, i32 10}
!47 = !{ptr @special_sync_ctl, !48, !"special_sync_ctl", i1 false, i1 false}
!48 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 432, i32 38}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 525, i32 10}
!51 = !{ptr @special_dig_in_iface_ctl, !52, !"special_dig_in_iface_ctl", i1 false, i1 false}
!52 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 524, i32 38}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 442, i32 2}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 442, i32 20}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 442, i32 38}
!59 = !{ptr @special_dig_in_iface_labels, !60, !"special_dig_in_iface_labels", i1 false, i1 false}
!60 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 441, i32 26}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 464, i32 3}
!63 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @special_dig_in_iface_ctl_get._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @special_dig_in_iface_ctl_get._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 516, i32 3}
!68 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @special_dig_in_iface_ctl_set._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @special_dig_in_iface_ctl_set._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 581, i32 10}
!73 = !{ptr @special_dig_out_iface_ctl, !74, !"special_dig_out_iface_ctl", i1 false, i1 false}
!74 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 580, i32 38}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 535, i32 2}
!77 = !{ptr @special_dig_out_iface_labels, !78, !"special_dig_out_iface_labels", i1 false, i1 false}
!78 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 534, i32 26}
!79 = !{ptr @special_clk_spec, !80, !"special_clk_spec", i1 false, i1 false}
!80 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 719, i32 42}
!81 = !{ptr @special_clk_types, !82, !"special_clk_types", i1 false, i1 false}
!82 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 343, i32 40}
!83 = !{ptr @special_rate_spec, !84, !"special_rate_spec", i1 false, i1 false}
!84 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 715, i32 41}
!85 = !{ptr @special_meter_spec, !86, !"special_meter_spec", i1 false, i1 false}
!86 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 724, i32 42}
!87 = !{ptr @.str.26, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 619, i32 2}
!89 = !{ptr @.str.27, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 620, i32 2}
!91 = !{ptr @.str.28, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 621, i32 2}
!93 = !{ptr @.str.29, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 622, i32 2}
!95 = !{ptr @.str.30, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 623, i32 2}
!97 = !{ptr @.str.31, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 624, i32 2}
!99 = !{ptr @.str.32, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 625, i32 2}
!101 = !{ptr @.str.33, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 626, i32 2}
!103 = !{ptr @special_meter_labels, !104, !"special_meter_labels", i1 false, i1 false}
!104 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 618, i32 26}
!105 = !{ptr @usual_rate_spec, !106, !"usual_rate_spec", i1 false, i1 false}
!106 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 736, i32 41}
!107 = !{ptr @fw410_meter_spec, !108, !"fw410_meter_spec", i1 false, i1 false}
!108 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 740, i32 42}
!109 = !{ptr @.str.34, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 659, i32 10}
!111 = !{ptr @.str.35, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 660, i32 38}
!113 = !{ptr @fw410_meter_labels, !114, !"fw410_meter_labels", i1 false, i1 false}
!114 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 658, i32 26}
!115 = !{ptr @.str.36, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 670, i32 2}
!117 = !{ptr @solo_meter_labels, !118, !"solo_meter_labels", i1 false, i1 false}
!118 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 668, i32 26}
!119 = !{ptr @audiophile_meter_spec, !120, !"audiophile_meter_spec", i1 false, i1 false}
!120 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 752, i32 42}
!121 = !{ptr @audiophile_meter_labels, !122, !"audiophile_meter_labels", i1 false, i1 false}
!122 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 663, i32 26}
!123 = !{ptr @solo_meter_spec, !124, !"solo_meter_spec", i1 false, i1 false}
!124 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 764, i32 42}
!125 = !{ptr @ozonic_meter_spec, !126, !"ozonic_meter_spec", i1 false, i1 false}
!126 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 776, i32 42}
!127 = !{ptr @ozonic_meter_labels, !128, !"ozonic_meter_labels", i1 false, i1 false}
!128 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 675, i32 26}
!129 = !{ptr @nrv10_meter_spec, !130, !"nrv10_meter_spec", i1 false, i1 false}
!130 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 788, i32 42}
!131 = !{ptr @nrv10_meter_labels, !132, !"nrv10_meter_labels", i1 false, i1 false}
!132 = !{!"../sound/firewire/bebob/bebob_maudio.c", i32 681, i32 26}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 1, !"min_enum_size", i32 4}
!135 = !{i32 8, !"branch-target-enforcement", i32 0}
!136 = !{i32 8, !"sign-return-address", i32 0}
!137 = !{i32 8, !"sign-return-address-all", i32 0}
!138 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!139 = !{i32 7, !"uwtable", i32 1}
!140 = !{i32 7, !"frame-pointer", i32 2}
!141 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!142 = !{!"auto-init"}
!143 = !{i8 0, i8 2}
