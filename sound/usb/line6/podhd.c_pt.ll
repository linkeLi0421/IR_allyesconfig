; ModuleID = '/llk/IR_all_yes/sound/usb/line6/podhd.c_pt.bc'
source_filename = "../sound/usb/line6/podhd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.line6_properties = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.line6_pcm_properties = type { %struct.snd_pcm_hardware, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraint_ratdens, i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraint_ratdens = type { i32, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.85, i32 }
%union.anon.85 = type { ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_ratden = type { i32, i32, i32, i32 }
%struct.usb_line6 = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.anon.82, %struct.delayed_work, ptr, ptr, ptr }
%struct.anon.82 = type { %struct.mutex, %struct.wait_queue_head, i8, %struct.anon.83 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.83 = type { %union.anon.84, [8192 x i8] }
%union.anon.84 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.usb_line6_podhd = type { %struct.usb_line6, i32, i32, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.72, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.72 = type { %struct.anon.75, [40 x i8] }
%struct.anon.75 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.81, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.81 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.76, [128 x i8] }
%union.anon.76 = type { %union.anon.78 }
%union.anon.78 = type { [64 x i64] }

@__initcall__kmod_snd_usb_podhd__243_556_podhd_driver_init6 = internal global ptr @podhd_driver_init, section ".initcall6.init", align 4
@podhd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @podhd_probe, ptr @line6_disconnect, ptr null, ptr @line6_suspend, ptr @line6_resume, ptr @line6_resume, ptr null, ptr null, ptr @podhd_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_podhd_driver_exit = internal global ptr @podhd_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description244 = internal constant [50 x i8] c"snd_usb_podhd.description=Line 6 PODHD USB driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [49 x i8] c"snd_usb_podhd.file=sound/usb/line6/snd-usb-podhd\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [26 x i8] c"snd_usb_podhd.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd_usb_podhd\00", [18 x i8] zeroinitializer }, align 32
@podhd_id_table = internal constant { [8 x %struct.usb_device_id], [32 x i8] } { [8 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3649, i16 20567, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3649, i16 20568, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 1027, i16 3649, i16 16717, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 1027, i16 3649, i16 16714, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 1027, i16 3649, i16 16715, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 1027, i16 3649, i16 16729, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 5 }, %struct.usb_device_id { i16 1027, i16 3649, i16 16726, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 6 }, %struct.usb_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Line6-PODHD\00", [20 x i8] zeroinitializer }, align 32
@podhd_properties_table = internal constant { [7 x %struct.line6_properties], [36 x i8] } { [7 x %struct.line6_properties] [%struct.line6_properties { ptr @.str.2, ptr @.str.3, i32 6, i32 5, i32 0, i32 132, i32 3, i32 130, i32 1 }, %struct.line6_properties { ptr @.str.4, ptr @.str.5, i32 6, i32 5, i32 0, i32 132, i32 3, i32 130, i32 1 }, %struct.line6_properties { ptr @.str.6, ptr @.str.7, i32 71, i32 1, i32 1, i32 129, i32 1, i32 134, i32 2 }, %struct.line6_properties { ptr @.str.8, ptr @.str.9, i32 47, i32 1, i32 1, i32 129, i32 1, i32 134, i32 2 }, %struct.line6_properties { ptr @.str.10, ptr @.str.11, i32 47, i32 1, i32 1, i32 129, i32 1, i32 134, i32 2 }, %struct.line6_properties { ptr @.str.12, ptr @.str.13, i32 7, i32 1, i32 1, i32 129, i32 1, i32 134, i32 2 }, %struct.line6_properties { ptr @.str.14, ptr @.str.15, i32 7, i32 1, i32 1, i32 129, i32 1, i32 134, i32 2 }], [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PODHD300\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"POD HD300\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PODHD400\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"POD HD400\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PODHD500\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"POD HD500\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PODX3\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"POD X3\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PODX3LIVE\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"POD X3 LIVE\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PODHD500X\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"POD HD500X\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PODHDDESKTOP\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"POD HDDESKTOP\00", [18 x i8] zeroinitializer }, align 32
@podhd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.18, i32 381, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"interface %d not found\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"podhd_init\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/usb/line6/podhd.c\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@podhd_init._entry_ptr = internal global ptr @podhd_init._entry, section ".printk_index", align 4
@podhd_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.18, i32 388, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"can't claim interface %d, error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@podhd_init._entry_ptr.23 = internal global ptr @podhd_init._entry.21, section ".printk_index", align 4
@podhd_dev_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.31, ptr null, ptr null, ptr @podhd_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@podx3_pcm_properties = internal global { %struct.line6_pcm_properties, [48 x i8] } { %struct.line6_pcm_properties { %struct.snd_pcm_hardware { i32 4784387, i64 4294967296, i32 128, i32 48000, i32 48000, i32 2, i32 2, i32 60000, i32 64, i32 8192, i32 1, i32 1024, i32 0 }, %struct.snd_pcm_hardware { i32 4260099, i64 4294967296, i32 128, i32 48000, i32 48000, i32 8, i32 8, i32 60000, i32 64, i32 8192, i32 1, i32 1024, i32 0 }, %struct.snd_pcm_hw_constraint_ratdens { i32 1, ptr @podhd_ratden }, i32 3 }, [48 x i8] zeroinitializer }, align 32
@podhd_pcm_properties = internal global { %struct.line6_pcm_properties, [48 x i8] } { %struct.line6_pcm_properties { %struct.snd_pcm_hardware { i32 4784387, i64 4294967296, i32 128, i32 48000, i32 48000, i32 2, i32 2, i32 60000, i32 64, i32 8192, i32 1, i32 1024, i32 0 }, %struct.snd_pcm_hardware { i32 4260099, i64 4294967296, i32 128, i32 48000, i32 48000, i32 2, i32 2, i32 60000, i32 64, i32 8192, i32 1, i32 1024, i32 0 }, %struct.snd_pcm_hw_constraint_ratdens { i32 1, ptr @podhd_ratden }, i32 3 }, [48 x i8] zeroinitializer }, align 32
@podhd_control_monitor = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 3, i32 0, ptr @snd_podhd_control_monitor_info, ptr @snd_podhd_control_monitor_get, ptr @snd_podhd_control_monitor_put, %union.anon.85 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@podhd_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.18, i32 235, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register POD HD card.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"podhd_startup\00", [18 x i8] zeroinitializer }, align 32
@podhd_startup._entry_ptr = internal global ptr @podhd_startup._entry, section ".printk_index", align 4
@podhd_dev_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.18, i32 195, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"read request failed (error %d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"podhd_dev_start\00", [16 x i8] zeroinitializer }, align 32
@podhd_dev_start._entry_ptr = internal global ptr @podhd_dev_start._entry, section ".printk_index", align 4
@podhd_dev_start._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.18, i32 206, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"receive length failed (error %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@podhd_dev_start._entry_ptr.30 = internal global ptr @podhd_dev_start._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"podhd\00", [26 x i8] zeroinitializer }, align 32
@podhd_dev_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_firmware_version, ptr @dev_attr_serial_number, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_firmware_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @firmware_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_serial_number = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @serial_number_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"firmware_version\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%06x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"serial_number\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@podhd_ratden = internal constant { %struct.snd_ratden, [16 x i8] } { %struct.snd_ratden { i32 48000, i32 48000, i32 1, i32 1 }, [16 x i8] zeroinitializer }, align 32
@podhd_set_monitor_level.msg = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\0C\00\01\00\02\00\04A\04\00\13\00\00\00\00\00", [16 x i8] zeroinitializer }, align 32
@float_zero_to_one_lookup = internal constant { [101 x i32], [108 x i8] } { [101 x i32] [i32 0, i32 1008981770, i32 1017370378, i32 1022739087, i32 1025758986, i32 1028443341, i32 1031127695, i32 1032805417, i32 1034147594, i32 1035489772, i32 1036831949, i32 1038174126, i32 1039516303, i32 1040522936, i32 1041194025, i32 1041865114, i32 1042536202, i32 1043207291, i32 1043878380, i32 1044549468, i32 1045220557, i32 1045891645, i32 1046562734, i32 1047233823, i32 1047904911, i32 1048576000, i32 1048911544, i32 1049247089, i32 1049582633, i32 1049918177, i32 1050253722, i32 1050589266, i32 1050924810, i32 1051260355, i32 1051595899, i32 1051931443, i32 1052266988, i32 1052602532, i32 1052938076, i32 1053273620, i32 1053609165, i32 1053944709, i32 1054280253, i32 1054615798, i32 1054951342, i32 1055286886, i32 1055622431, i32 1055957975, i32 1056293519, i32 1056629064, i32 1056964608, i32 1057132380, i32 1057300152, i32 1057467924, i32 1057635697, i32 1057803469, i32 1057971241, i32 1058139013, i32 1058306785, i32 1058474557, i32 1058642330, i32 1058810102, i32 1058977874, i32 1059145646, i32 1059313418, i32 1059481190, i32 1059648963, i32 1059816735, i32 1059984507, i32 1060152279, i32 1060320051, i32 1060487823, i32 1060655596, i32 1060823368, i32 1060991140, i32 1061158912, i32 1061326684, i32 1061494456, i32 1061662228, i32 1061830001, i32 1061997773, i32 1062165545, i32 1062333317, i32 1062501089, i32 1062668861, i32 1062836634, i32 1063004406, i32 1063172178, i32 1063339950, i32 1063507722, i32 1063675494, i32 1063843267, i32 1064011039, i32 1064178811, i32 1064346583, i32 1064514355, i32 1064682127, i32 1064849900, i32 1065017672, i32 1065185444, i32 1065353216], [108 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Monitor Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.37 = private unnamed_addr constant [13 x i8] c"podhd_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 544, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 556, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"podhd_id_table\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 434, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 539, i32 36 }
@___asan_gen_.49 = private unnamed_addr constant [23 x i8] c"podhd_properties_table\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 448, i32 38 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 450, i32 9 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 451, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 461, i32 9 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 462, i32 11 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 472, i32 9 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 473, i32 11 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 484, i32 9 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 485, i32 11 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 496, i32 9 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 497, i32 11 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 508, i32 9 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 509, i32 11 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 520, i32 9 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 521, i32 11 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 380, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 387, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant [21 x i8] c"podhd_dev_attr_group\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 170, i32 37 }
@___asan_gen_.121 = private unnamed_addr constant [21 x i8] c"podx3_pcm_properties\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 97, i32 36 }
@___asan_gen_.124 = private unnamed_addr constant [21 x i8] c"podhd_pcm_properties\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 55, i32 36 }
@___asan_gen_.127 = private unnamed_addr constant [22 x i8] c"podhd_control_monitor\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 352, i32 38 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 235, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 195, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 205, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 171, i32 10 }
@___asan_gen_.157 = private unnamed_addr constant [16 x i8] c"podhd_dev_attrs\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 164, i32 26 }
@___asan_gen_.160 = private unnamed_addr constant [26 x i8] c"dev_attr_firmware_version\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [23 x i8] c"dev_attr_serial_number\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 161, i32 8 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 158, i32 22 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 162, i32 8 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 149, i32 22 }
@___asan_gen_.178 = private unnamed_addr constant [13 x i8] c"podhd_ratden\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 48, i32 32 }
@___asan_gen_.181 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 275, i32 29 }
@___asan_gen_.184 = private unnamed_addr constant [25 x i8] c"float_zero_to_one_lookup\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 252, i32 27 }
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.188 = private constant [27 x i8] c"../sound/usb/line6/podhd.c\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 354, i32 10 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_podhd_driver_exit, ptr @__initcall__kmod_snd_usb_podhd__243_556_podhd_driver_init6, ptr @podhd_dev_start._entry, ptr @podhd_dev_start._entry.28, ptr @podhd_dev_start._entry_ptr, ptr @podhd_dev_start._entry_ptr.30, ptr @podhd_driver_exit, ptr @podhd_init._entry, ptr @podhd_init._entry.21, ptr @podhd_init._entry_ptr, ptr @podhd_init._entry_ptr.23, ptr @podhd_startup._entry, ptr @podhd_startup._entry_ptr, ptr @podhd_driver, ptr @.str, ptr @podhd_id_table, ptr @.str.1, ptr @podhd_properties_table, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @podhd_dev_attr_group, ptr @podx3_pcm_properties, ptr @podhd_pcm_properties, ptr @podhd_control_monitor, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @podhd_dev_attrs, ptr @dev_attr_firmware_version, ptr @dev_attr_serial_number, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @podhd_ratden, ptr @podhd_set_monitor_level.msg, ptr @float_zero_to_one_lookup, ptr @.str.36], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @podhd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @podhd_id_table to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @podhd_properties_table to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @podhd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @podhd_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @podhd_dev_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @podx3_pcm_properties to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @podhd_pcm_properties to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @podhd_control_monitor to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @podhd_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @podhd_dev_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @podhd_dev_start._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @podhd_dev_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_firmware_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_serial_number to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @podhd_ratden to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @podhd_set_monitor_level.msg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @float_zero_to_one_lookup to i32), i32 404, i32 512, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @podhd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @podhd_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @podhd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_deregister(ptr noundef nonnull @podhd_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @podhd_probe(ptr noundef %interface, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %0 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_info, align 4
  %arrayidx = getelementptr [7 x %struct.line6_properties], ptr @podhd_properties_table, i32 0, i32 %1
  %call = tail call i32 @line6_probe(ptr noundef %interface, ptr noundef %id, ptr noundef nonnull @.str.1, ptr noundef %arrayidx, ptr noundef nonnull @podhd_init, i32 noundef 8540) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @line6_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @line6_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @line6_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @line6_probe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @podhd_init(ptr noundef %line6, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %disconnect = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 17
  %0 = ptrtoint ptr %disconnect to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @podhd_disconnect, ptr %disconnect, align 4
  %startup = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 18
  %1 = ptrtoint ptr %startup to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @podhd_startup, ptr %startup, align 4
  %properties = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 1
  %2 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %properties, align 4
  %capabilities = getelementptr inbounds %struct.line6_properties, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capabilities, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %line6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %line6, align 4
  %ctrl_if = getelementptr inbounds %struct.line6_properties, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %ctrl_if to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctrl_if, align 4
  %call = tail call ptr @usb_ifnum_to_if(ptr noundef %7, i32 noundef %9) #10
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %ifcdev = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 6
  %10 = ptrtoint ptr %ifcdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ifcdev, align 4
  %12 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %properties, align 4
  %ctrl_if9 = getelementptr inbounds %struct.line6_properties, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %ctrl_if9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ctrl_if9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.16, i32 noundef %15) #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call10 = tail call i32 @usb_driver_claim_interface(ptr noundef nonnull @podhd_driver, ptr noundef nonnull %call, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp.not = icmp eq i32 %call10, 0
  br i1 %cmp.not, label %if.end.if.end21_crit_edge, label %do.end14

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ifcdev16 = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 6
  %16 = ptrtoint ptr %ifcdev16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ifcdev16, align 4
  %18 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %properties, align 4
  %ctrl_if19 = getelementptr inbounds %struct.line6_properties, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %ctrl_if19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ctrl_if19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.22, i32 noundef %21, i32 noundef %call10) #13
  br label %cleanup

if.end21:                                         ; preds = %if.end.if.end21_crit_edge, %entry.if.end21_crit_edge
  %22 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %properties, align 4
  %capabilities24 = getelementptr inbounds %struct.line6_properties, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %capabilities24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %capabilities24, align 4
  %and25 = and i32 %25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end21.if.end32_crit_edge, label %if.then27

if.end21.if.end32_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then27:                                        ; preds = %if.end21
  %card = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 7
  %26 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card, align 4
  %call28 = tail call i32 @snd_card_add_dev_attr(ptr noundef %27, ptr noundef nonnull @podhd_dev_attr_group) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then27.cleanup_crit_edge, label %if.then27.if.end32_crit_edge

if.then27.if.end32_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end32:                                         ; preds = %if.then27.if.end32_crit_edge, %if.end21.if.end32_crit_edge
  %28 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %properties, align 4
  %capabilities35 = getelementptr inbounds %struct.line6_properties, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %capabilities35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %capabilities35, align 4
  %and36 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end32.if.end46_crit_edge, label %if.then38

if.end32.if.end46_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then38:                                        ; preds = %if.end32
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %32 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %driver_info, align 4
  %34 = add i32 %33, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %35 = icmp ult i32 %34, 2
  %36 = select i1 %35, ptr @podx3_pcm_properties, ptr @podhd_pcm_properties
  %call42 = tail call i32 @line6_init_pcm(ptr noundef %line6, ptr noundef nonnull %36) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.then38.cleanup_crit_edge, label %if.then38.if.end46_crit_edge

if.then38.if.end46_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end46:                                         ; preds = %if.then38.if.end46_crit_edge, %if.end32.if.end46_crit_edge
  %37 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %properties, align 4
  %capabilities49 = getelementptr inbounds %struct.line6_properties, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %capabilities49 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %capabilities49, align 4
  %and50 = and i32 %40, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end46.if.end59_crit_edge, label %if.then52

if.end46.if.end59_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then52:                                        ; preds = %if.end46
  %call.i = tail call ptr @kmemdup(ptr noundef nonnull @podhd_set_monitor_level.msg, i32 noundef 16, i32 noundef 3264) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then52.podhd_set_monitor_level.exit_crit_edge, label %if.end.i

if.then52.podhd_set_monitor_level.exit_crit_edge: ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %podhd_set_monitor_level.exit

if.end.i:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx6.i = getelementptr i8, ptr %call.i, i32 12
  %41 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx6.i, align 1
  %arrayidx10.i = getelementptr i8, ptr %call.i, i32 13
  %42 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %arrayidx10.i, align 1
  %arrayidx14.i = getelementptr i8, ptr %call.i, i32 14
  %43 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -128, ptr %arrayidx14.i, align 1
  %arrayidx18.i = getelementptr i8, ptr %call.i, i32 15
  %44 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 63, ptr %arrayidx18.i, align 1
  %call19.i = tail call i32 @line6_send_raw_message(ptr noundef %line6, ptr noundef nonnull %call.i, i32 noundef 16) #10
  tail call void @kfree(ptr noundef nonnull %call.i) #10
  %monitor_level.i = getelementptr inbounds %struct.usb_line6_podhd, ptr %line6, i32 0, i32 3
  %45 = ptrtoint ptr %monitor_level.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 100, ptr %monitor_level.i, align 4
  br label %podhd_set_monitor_level.exit

podhd_set_monitor_level.exit:                     ; preds = %if.end.i, %if.then52.podhd_set_monitor_level.exit_crit_edge
  %card53 = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 7
  %46 = ptrtoint ptr %card53 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %card53, align 4
  %line6pcm = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 8
  %48 = ptrtoint ptr %line6pcm to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %line6pcm, align 4
  %call54 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @podhd_control_monitor, ptr noundef %49) #10
  %call55 = tail call i32 @snd_ctl_add(ptr noundef %47, ptr noundef %call54) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %podhd_set_monitor_level.exit.cleanup_crit_edge, label %podhd_set_monitor_level.exit.if.end59_crit_edge

podhd_set_monitor_level.exit.if.end59_crit_edge:  ; preds = %podhd_set_monitor_level.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

podhd_set_monitor_level.exit.cleanup_crit_edge:   ; preds = %podhd_set_monitor_level.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end59:                                         ; preds = %podhd_set_monitor_level.exit.if.end59_crit_edge, %if.end46.if.end59_crit_edge
  %50 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %properties, align 4
  %capabilities62 = getelementptr inbounds %struct.line6_properties, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %capabilities62 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %capabilities62, align 4
  %and63 = and i32 %53, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.then65, label %if.end68

if.then65:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %card66 = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 7
  %54 = ptrtoint ptr %card66 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %card66, align 4
  %call67 = tail call i32 @snd_card_register(ptr noundef %55) #10
  br label %cleanup

if.end68:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %startup_work = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %56 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %56, ptr noundef %startup_work, i32 noundef 50) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.then65, %podhd_set_monitor_level.exit.cleanup_crit_edge, %if.then38.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %do.end14, %do.end
  %retval.0 = phi i32 [ %call10, %do.end14 ], [ 0, %if.end68 ], [ %call67, %if.then65 ], [ -19, %do.end ], [ %call28, %if.then27.cleanup_crit_edge ], [ %call42, %if.then38.cleanup_crit_edge ], [ %call55, %podhd_set_monitor_level.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @podhd_disconnect(ptr nocapture noundef readonly %line6) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %properties = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 1
  %0 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %properties, align 4
  %capabilities = getelementptr inbounds %struct.line6_properties, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %capabilities, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %line6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %line6, align 4
  %ctrl_if = getelementptr inbounds %struct.line6_properties, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %ctrl_if to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctrl_if, align 4
  %call = tail call ptr @usb_ifnum_to_if(ptr noundef %5, i32 noundef %7) #10
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then5

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_driver_release_interface(ptr noundef nonnull @podhd_driver, ptr noundef nonnull %call) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @podhd_startup(ptr noundef %line6) #2 align 64 {
entry:
  %init_bytes.i = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %init_bytes.i) #10
  %0 = getelementptr inbounds [8 x i8], ptr %init_bytes.i, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %init_bytes.i, i32 0, i32 2
  %2 = ptrtoint ptr %init_bytes.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %init_bytes.i, align 8
  %3 = ptrtoint ptr %line6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %line6, align 4
  %call.i = tail call i32 @usb_control_msg_send(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext 103, i8 noundef zeroext 64, i16 noundef zeroext 17, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ifcdev.i = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 6
  %5 = ptrtoint ptr %ifcdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ifcdev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.26, i32 noundef %call.i) #13
  br label %podhd_dev_start.exit

if.end.i:                                         ; preds = %entry
  %call3.i = call i32 @usb_control_msg_recv(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext 103, i8 noundef zeroext -64, i16 noundef zeroext 17, i16 noundef zeroext 0, ptr noundef nonnull %init_bytes.i, i16 noundef zeroext 3, i32 noundef 1000, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end11.i, label %do.end8.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %ifcdev10.i = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 6
  %7 = ptrtoint ptr %ifcdev10.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ifcdev10.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.29, i32 noundef %call3.i) #13
  br label %podhd_dev_start.exit

if.end11.i:                                       ; preds = %if.end.i
  %9 = ptrtoint ptr %init_bytes.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %init_bytes.i, align 8
  %conv.i = zext i8 %10 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %0, align 1
  %conv13.i = zext i8 %12 to i32
  %shl14.i = shl nuw nsw i32 %conv13.i, 8
  %or.i = or i32 %shl14.i, %shl.i
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %1, align 2
  %conv16.i = zext i8 %14 to i32
  %or18.i = or i32 %or.i, %conv16.i
  %firmware_version.i = getelementptr inbounds %struct.usb_line6_podhd, ptr %line6, i32 0, i32 2
  %15 = ptrtoint ptr %firmware_version.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or18.i, ptr %firmware_version.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 17
  br i1 %exitcond.not.i, label %for.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end11.i
  %i.01.i = phi i32 [ 0, %if.end11.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %mul.i = shl i32 %i.01.i, 3
  %add.i = add nuw nsw i32 %mul.i, 61440
  %call22.i = call i32 @line6_read_data(ptr noundef %line6, i32 noundef %add.i, ptr noundef nonnull %init_bytes.i, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %for.body.i.podhd_dev_start.exit_crit_edge, label %for.cond.i

for.body.i.podhd_dev_start.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %podhd_dev_start.exit

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i = call i32 @usb_control_msg_send(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000, i32 noundef 3264) #10
  br label %podhd_dev_start.exit

podhd_dev_start.exit:                             ; preds = %for.end.i, %for.body.i.podhd_dev_start.exit_crit_edge, %do.end8.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %init_bytes.i) #10
  %serial_number = getelementptr inbounds %struct.usb_line6_podhd, ptr %line6, i32 0, i32 1
  %call2 = call i32 @line6_read_serial_number(ptr noundef %line6, ptr noundef %serial_number) #10
  %card = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 7
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 4
  %call3 = call i32 @snd_card_register(ptr noundef %17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %podhd_dev_start.exit.if.end_crit_edge, label %do.end

podhd_dev_start.exit.if.end_crit_edge:            ; preds = %podhd_dev_start.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %podhd_dev_start.exit
  call void @__sanitizer_cov_trace_pc() #12
  %ifcdev = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 6
  %18 = ptrtoint ptr %ifcdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ifcdev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.24) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %podhd_dev_start.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_driver_claim_interface(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_add_dev_attr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @line6_init_pcm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_driver_release_interface(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @line6_read_serial_number(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg_recv(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @line6_read_data(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @firmware_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr i8, ptr %dev, i32 -1192
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %firmware_version = getelementptr inbounds %struct.usb_line6_podhd, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %firmware_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %firmware_version, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.33, i32 noundef %3)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_number_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr i8, ptr %dev, i32 -1192
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %serial_number = getelementptr inbounds %struct.usb_line6_podhd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %serial_number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %serial_number, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.35, i32 noundef %3)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @line6_send_raw_message(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_podhd_control_monitor_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 100, ptr %max, align 4
  %step = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 2
  %4 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %step, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_podhd_control_monitor_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %monitor_level = getelementptr inbounds %struct.usb_line6_podhd, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %monitor_level to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %monitor_level, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_podhd_control_monitor_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %monitor_level = getelementptr inbounds %struct.usb_line6_podhd, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %monitor_level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %monitor_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @kmemdup(ptr noundef nonnull @podhd_set_monitor_level.msg, i32 noundef 16, i32 noundef 3264) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = tail call i32 @llvm.smax.i32(i32 %5, i32 0) #10
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 100) #10
  %arrayidx.i = getelementptr [101 x i32], ptr @float_zero_to_one_lookup, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %conv.i = trunc i32 %11 to i8
  %arrayidx6.i = getelementptr i8, ptr %call.i, i32 12
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %arrayidx6.i, align 1
  %shr7.i = lshr i32 %11, 8
  %conv9.i = trunc i32 %shr7.i to i8
  %arrayidx10.i = getelementptr i8, ptr %call.i, i32 13
  %13 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv9.i, ptr %arrayidx10.i, align 1
  %shr11.i = lshr i32 %11, 16
  %conv13.i = trunc i32 %shr11.i to i8
  %arrayidx14.i = getelementptr i8, ptr %call.i, i32 14
  %14 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv13.i, ptr %arrayidx14.i, align 1
  %shr15.i = lshr i32 %11, 24
  %conv17.i = trunc i32 %shr15.i to i8
  %arrayidx18.i = getelementptr i8, ptr %call.i, i32 15
  %15 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv17.i, ptr %arrayidx18.i, align 1
  %call19.i = tail call i32 @line6_send_raw_message(ptr noundef %3, ptr noundef nonnull %call.i, i32 noundef 16) #10
  tail call void @kfree(ptr noundef nonnull %call.i) #10
  %16 = ptrtoint ptr %monitor_level to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %9, ptr %monitor_level, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !46, !47, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !73, !75, !77, !78, !80, !82, !83, !85, !87, !89, !91, !93, !95, !97, !99}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @__initcall__kmod_snd_usb_podhd__243_556_podhd_driver_init6, !1, !"__initcall__kmod_snd_usb_podhd__243_556_podhd_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/usb/line6/podhd.c", i32 556, i32 1}
!2 = !{ptr @__exitcall_podhd_driver_exit, !1, !"__exitcall_podhd_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description244, !4, !"__UNIQUE_ID_description244", i1 false, i1 false}
!4 = !{!"../sound/usb/line6/podhd.c", i32 558, i32 1}
!5 = !{ptr @__UNIQUE_ID_file245, !6, !"__UNIQUE_ID_file245", i1 false, i1 false}
!6 = !{!"../sound/usb/line6/podhd.c", i32 559, i32 1}
!7 = !{ptr @__UNIQUE_ID_license246, !6, !"__UNIQUE_ID_license246", i1 false, i1 false}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @podhd_driver, !10, !"podhd_driver", i1 false, i1 false}
!10 = !{!"../sound/usb/line6/podhd.c", i32 544, i32 26}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/usb/line6/podhd.c", i32 539, i32 36}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/usb/line6/podhd.c", i32 450, i32 9}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/usb/line6/podhd.c", i32 451, i32 11}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/usb/line6/podhd.c", i32 461, i32 9}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/usb/line6/podhd.c", i32 462, i32 11}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/usb/line6/podhd.c", i32 472, i32 9}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/usb/line6/podhd.c", i32 473, i32 11}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/usb/line6/podhd.c", i32 484, i32 9}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/usb/line6/podhd.c", i32 485, i32 11}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/usb/line6/podhd.c", i32 496, i32 9}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/usb/line6/podhd.c", i32 497, i32 11}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/usb/line6/podhd.c", i32 508, i32 9}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/usb/line6/podhd.c", i32 509, i32 11}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/usb/line6/podhd.c", i32 520, i32 9}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/usb/line6/podhd.c", i32 521, i32 11}
!41 = !{ptr @podhd_properties_table, !42, !"podhd_properties_table", i1 false, i1 false}
!42 = !{!"../sound/usb/line6/podhd.c", i32 448, i32 38}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/usb/line6/podhd.c", i32 380, i32 4}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @podhd_init._entry, !44, !"_entry", i1 false, i1 false}
!50 = !{ptr @podhd_init._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/usb/line6/podhd.c", i32 387, i32 4}
!53 = !{ptr @podhd_init._entry.21, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @podhd_init._entry_ptr.23, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/usb/line6/podhd.c", i32 235, i32 3}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @podhd_startup._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @podhd_startup._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/usb/line6/podhd.c", i32 195, i32 3}
!62 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @podhd_dev_start._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @podhd_dev_start._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/usb/line6/podhd.c", i32 205, i32 3}
!67 = !{ptr @podhd_dev_start._entry.28, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @podhd_dev_start._entry_ptr.30, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/usb/line6/podhd.c", i32 171, i32 10}
!71 = !{ptr @podhd_dev_attr_group, !72, !"podhd_dev_attr_group", i1 false, i1 false}
!72 = !{!"../sound/usb/line6/podhd.c", i32 170, i32 37}
!73 = !{ptr @podhd_dev_attrs, !74, !"podhd_dev_attrs", i1 false, i1 false}
!74 = !{!"../sound/usb/line6/podhd.c", i32 164, i32 26}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/usb/line6/podhd.c", i32 161, i32 8}
!77 = !{ptr @dev_attr_firmware_version, !76, !"dev_attr_firmware_version", i1 false, i1 false}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/usb/line6/podhd.c", i32 158, i32 22}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/usb/line6/podhd.c", i32 162, i32 8}
!82 = !{ptr @dev_attr_serial_number, !81, !"dev_attr_serial_number", i1 false, i1 false}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/usb/line6/podhd.c", i32 149, i32 22}
!85 = !{ptr @podx3_pcm_properties, !86, !"podx3_pcm_properties", i1 false, i1 false}
!86 = !{!"../sound/usb/line6/podhd.c", i32 97, i32 36}
!87 = !{ptr @podhd_ratden, !88, !"podhd_ratden", i1 false, i1 false}
!88 = !{!"../sound/usb/line6/podhd.c", i32 48, i32 32}
!89 = !{ptr @podhd_pcm_properties, !90, !"podhd_pcm_properties", i1 false, i1 false}
!90 = !{!"../sound/usb/line6/podhd.c", i32 55, i32 36}
!91 = !{ptr @podhd_set_monitor_level.msg, !92, !"msg", i1 false, i1 false}
!92 = !{!"../sound/usb/line6/podhd.c", i32 275, i32 29}
!93 = !{ptr @float_zero_to_one_lookup, !94, !"float_zero_to_one_lookup", i1 false, i1 false}
!94 = !{!"../sound/usb/line6/podhd.c", i32 252, i32 27}
!95 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/usb/line6/podhd.c", i32 354, i32 10}
!97 = !{ptr @podhd_control_monitor, !98, !"podhd_control_monitor", i1 false, i1 false}
!98 = !{!"../sound/usb/line6/podhd.c", i32 352, i32 38}
!99 = !{ptr @podhd_id_table, !100, !"podhd_id_table", i1 false, i1 false}
!100 = !{!"../sound/usb/line6/podhd.c", i32 434, i32 35}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
