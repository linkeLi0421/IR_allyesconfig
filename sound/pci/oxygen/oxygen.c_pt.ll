; ModuleID = '/llk/IR_all_yes/sound/pci/oxygen/oxygen.c_pt.bc'
source_filename = "../sound/pci/oxygen/oxygen.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.oxygen_model = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.85, i32 }
%union.anon.85 = type { ptr }
%struct.oxygen = type { i32, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, i32, ptr, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i32, i32, [6 x ptr], [6 x ptr], %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, %union.anon.84, [2 x [64 x i16]], i32, [32 x i8], %struct.oxygen_model }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%union.anon.84 = type { [64 x i32] }
%struct.generic_data = type { i32, [4 x [5 x i8]], [3 x i16] }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.83, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.83 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.78, [128 x i8] }
%union.anon.78 = type { %union.anon.80 }
%union.anon.80 = type { [64 x i64] }

@__UNIQUE_ID_author242 = internal constant [55 x i8] c"snd_oxygen.author=Clemens Ladisch <clemens@ladisch.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [46 x i8] c"snd_oxygen.description=C-Media CMI8788 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [44 x i8] c"snd_oxygen.file=sound/pci/oxygen/snd-oxygen\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [26 x i8] c"snd_oxygen.license=GPL v2\00", section ".modinfo", align 1
@__param_str_index = internal constant [17 x i8] c"snd_oxygen.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [39 x i8] c"snd_oxygen.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [33 x i8] c"snd_oxygen.parm=index:card index\00", section ".modinfo", align 1
@__param_str_id = internal constant [14 x i8] c"snd_oxygen.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [38 x i8] c"snd_oxygen.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [29 x i8] c"snd_oxygen.parm=id:ID string\00", section ".modinfo", align 1
@__param_str_enable = internal constant [18 x i8] c"snd_oxygen.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype250 = internal constant [41 x i8] c"snd_oxygen.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable251 = internal constant [35 x i8] c"snd_oxygen.parm=enable:enable card\00", section ".modinfo", align 1
@__initcall__kmod_snd_oxygen__252_864_oxygen_driver_init6 = internal global ptr @oxygen_driver_init, section ".initcall6.init", align 4
@oxygen_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @oxygen_ids, ptr @generic_oxygen_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @oxygen_pci_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_oxygen_driver_exit = internal global ptr @oxygen_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snd_oxygen\00", [21 x i8] zeroinitializer }, align 32
@oxygen_ids = internal constant { [20 x %struct.pci_device_id], [160 x i8] } { [20 x %struct.pci_device_id] [%struct.pci_device_id { i32 5110, i32 34696, i32 4272, i32 534, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5110, i32 34696, i32 4272, i32 535, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5110, i32 34696, i32 4272, i32 536, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5110, i32 34696, i32 4272, i32 537, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5110, i32 34696, i32 5110, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5110, i32 34696, i32 5110, i32 16, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5110, i32 34696, i32 5110, i32 34696, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5110, i32 34696, i32 5242, i32 40983, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5110, i32 34696, i32 6744, i32 2320, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5110, i32 34696, i32 4163, i32 33895, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 5110, i32 34696, i32 4163, i32 34081, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 5110, i32 34696, i32 5110, i32 34690, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 5110, i32 34696, i32 5110, i32 65535, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5110, i32 34696, i32 5315, i32 5904, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 5110, i32 34696, i32 5315, i32 5905, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 5110, i32 34696, i32 16730, i32 21553, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5110, i32 34696, i32 21553, i32 378, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5110, i32 34696, i32 29316, i32 38753, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5110, i32 34696, i32 29316, i32 38785, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id zeroinitializer], [160 x i8] zeroinitializer }, align 32
@oxygen_pci_pm = external dso_local constant %struct.dev_pm_ops, align 4
@generic_oxygen_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@get_oxygen_model.names = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr null, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr null, ptr @.str.7, ptr @.str.8, ptr @.str.9], [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AuzenTech X-Meridian\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AuzenTech X-Meridian 2G\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HT-Omega Claro\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HT-Omega Claro halo\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TempoTec HiFier Fantasia\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TempoTec HiFier Serenade\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CMI8787-HG2PCI\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Xonar DG\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Xonar DGX\00", [22 x i8] zeroinitializer }, align 32
@model_generic = internal constant { %struct.oxygen_model, [56 x i8] } { %struct.oxygen_model { ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @generic_init, ptr null, ptr @generic_wm8785_mixer_init, ptr @generic_cleanup, ptr null, ptr @generic_resume, ptr null, ptr @set_ak4396_params, ptr @set_wm8785_params, ptr @update_ak4396_volume, ptr @update_ak4396_mute, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dump_oxygen_registers, ptr @ak4396_db_scale, i32 32, i32 8861, i8 8, i8 8, i8 0, i8 -1, i8 0, i8 -128, i8 1, i8 5, i16 8, i16 8 }, [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"C-Media CMI8787\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CMI8787\00", [24 x i8] zeroinitializer }, align 32
@model_xonar_dg = external dso_local local_unnamed_addr constant %struct.oxygen_model, align 4
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"C-Media CMI8788\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"C-Media Oxygen HD Audio\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CMI8788\00", [24 x i8] zeroinitializer }, align 32
@ak4396_db_scale = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 8, i32 -9999999, i32 0], [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AK4396\00", [25 x i8] zeroinitializer }, align 32
@ak4396_write.codec_spi_map = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\01\02\04", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"WM8785\00", [25 x i8] zeroinitializer }, align 32
@hpf_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 0, i32 0, ptr @hpf_info, ptr @hpf_get, ptr @hpf_put, %union.anon.85 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ADC Filter Capture Enum\00", [40 x i8] zeroinitializer }, align 32
@hpf_info.names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.18, ptr @.str.19], [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"High-pass Filter\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\0AWM8785:\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %03x\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AK5385\00", [25 x i8] zeroinitializer }, align 32
@meridian_dig_source_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 0, i32 0, ptr @meridian_dig_source_info, ptr @meridian_dig_source_get, ptr @meridian_dig_source_put, %union.anon.85 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IEC958 Source Capture Enum\00", [37 x i8] zeroinitializer }, align 32
@meridian_dig_source_info.names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.25, ptr @.str.26], [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"On-board\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Extension\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\0AAK4396 %u:\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %02x\00", [26 x i8] zeroinitializer }, align 32
@claro_dig_source_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 0, i32 0, ptr @claro_dig_source_info, ptr @claro_dig_source_get, ptr @claro_dig_source_put, %union.anon.85 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@claro_dig_source_info.names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.29, ptr @.str.30], [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Optical\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Coaxial\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CS5340\00", [25 x i8] zeroinitializer }, align 32
@rolloff_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 0, i32 0, ptr @rolloff_info, ptr @rolloff_get, ptr @rolloff_put, %union.anon.85 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DAC Filter Playback Enum\00", [39 x i8] zeroinitializer }, align 32
@rolloff_info.names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.33, ptr @.str.34], [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Sharp Roll-off\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Slow Roll-off\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"oxygen_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 853, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 60, i32 12 }
@___asan_gen_.43 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 61, i32 14 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 62, i32 13 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 864, i32 1 }
@___asan_gen_.52 = private unnamed_addr constant [11 x i8] c"oxygen_ids\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 85, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 837, i32 13 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 747, i32 27 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 748, i32 22 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 749, i32 25 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 750, i32 20 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 751, i32 24 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 752, i32 22 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 753, i32 22 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 754, i32 21 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 755, i32 29 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 756, i32 29 }
@___asan_gen_.88 = private unnamed_addr constant [14 x i8] c"model_generic\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 710, i32 34 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 799, i32 27 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 800, i32 22 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 711, i32 15 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 712, i32 14 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 713, i32 10 }
@___asan_gen_.106 = private unnamed_addr constant [16 x i8] c"ak4396_db_scale\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 708, i32 14 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 207, i32 32 }
@___asan_gen_.112 = private unnamed_addr constant [14 x i8] c"codec_spi_map\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 143, i32 18 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 234, i32 32 }
@___asan_gen_.118 = private unnamed_addr constant [12 x i8] c"hpf_control\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 513, i32 38 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 515, i32 10 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 478, i32 27 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 479, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 479, i32 11 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 695, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 697, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 698, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 214, i32 32 }
@___asan_gen_.145 = private unnamed_addr constant [28 x i8] c"meridian_dig_source_control\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 599, i32 38 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 601, i32 10 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 524, i32 27 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 524, i32 40 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 524, i32 52 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 682, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 684, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant [25 x i8] c"claro_dig_source_control\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 607, i32 38 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 532, i32 27 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 532, i32 40 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 532, i32 51 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 281, i32 32 }
@___asan_gen_.181 = private unnamed_addr constant [16 x i8] c"rolloff_control\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 468, i32 38 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 470, i32 10 }
@___asan_gen_.187 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 426, i32 27 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 427, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.194 = private constant [29 x i8] c"../sound/pci/oxygen/oxygen.c\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 427, i32 21 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_enable251, ptr @__UNIQUE_ID_enabletype250, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_license245, ptr @__exitcall_oxygen_driver_exit, ptr @__initcall__kmod_snd_oxygen__252_864_oxygen_driver_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @oxygen_driver_exit, ptr @oxygen_driver, ptr @index, ptr @id, ptr @enable, ptr @.str, ptr @oxygen_ids, ptr @generic_oxygen_probe.dev, ptr @get_oxygen_model.names, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @model_generic, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @ak4396_db_scale, ptr @.str.15, ptr @ak4396_write.codec_spi_map, ptr @.str.16, ptr @hpf_control, ptr @.str.17, ptr @hpf_info.names, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @meridian_dig_source_control, ptr @.str.24, ptr @meridian_dig_source_info.names, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @claro_dig_source_control, ptr @claro_dig_source_info.names, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @rolloff_control, ptr @.str.32, ptr @rolloff_info.names, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxygen_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxygen_ids to i32), i32 640, i32 800, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_oxygen_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_oxygen_model.names to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @model_generic to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4396_db_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4396_write.codec_spi_map to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpf_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpf_info.names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meridian_dig_source_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meridian_dig_source_info.names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @claro_dig_source_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @claro_dig_source_info.names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rolloff_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rolloff_info.names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @oxygen_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @oxygen_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @oxygen_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @oxygen_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @generic_oxygen_probe(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @generic_oxygen_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %0)
  %cmp = icmp sgt i32 %0, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end2

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end2:                                          ; preds = %if.end
  %arrayidx3 = getelementptr [32 x i32], ptr @index, i32 0, i32 %0
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr [32 x ptr], ptr @id, i32 0, i32 %0
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx4, align 4
  %call = tail call i32 @oxygen_pci_probe(ptr noundef %pci, i32 noundef %4, ptr noundef %6, ptr noundef null, ptr noundef nonnull @oxygen_ids, ptr noundef nonnull @get_oxygen_model) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp5 = icmp sgt i32 %call, -1
  br i1 %cmp5, label %if.then6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %7 = load i32, ptr @generic_oxygen_probe.dev, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then6, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %7, %if.then6 ], [ %0, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %if.then6 ], [ -2, %if.end.cleanup.sink.split_crit_edge ]
  %inc7 = add i32 %.sink, 1
  store i32 %inc7, ptr @generic_oxygen_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oxygen_pci_probe(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_oxygen_model(ptr noundef %chip, ptr nocapture noundef readonly %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %model = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28
  %0 = call ptr @memcpy(ptr %model, ptr @model_generic, i32 104)
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge140
    i32 3, label %sw.bb10
    i32 4, label %sw.bb19
    i32 5, label %entry.sw.bb36_crit_edge
    i32 6, label %entry.sw.bb36_crit_edge141
    i32 7, label %entry.sw.bb36_crit_edge142
    i32 8, label %entry.sw.bb36_crit_edge143
    i32 9, label %entry.sw.bb68_crit_edge
    i32 10, label %entry.sw.bb68_crit_edge144
  ]

entry.sw.bb68_crit_edge144:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb68

entry.sw.bb68_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb68

entry.sw.bb36_crit_edge143:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

entry.sw.bb36_crit_edge142:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

entry.sw.bb36_crit_edge141:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

entry.sw.bb36_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

entry.sw.bb_crit_edge140:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge140
  %init = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 3
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @meridian_init, ptr %init, align 4
  %mixer_init = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 5
  %5 = ptrtoint ptr %mixer_init to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @meridian_mixer_init, ptr %mixer_init, align 4
  %resume = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 8
  %6 = ptrtoint ptr %resume to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @meridian_resume, ptr %resume, align 4
  %set_adc_params = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 11
  %7 = ptrtoint ptr %set_adc_params to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @set_ak5385_params, ptr %set_adc_params, align 4
  %dump_registers = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 19
  %8 = ptrtoint ptr %dump_registers to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @dump_ak4396_registers, ptr %dump_registers, align 4
  %device_config = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 22
  %9 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 165, ptr %device_config, align 4
  %10 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  %spec.store.select = select i1 %cmp, i32 8357, i32 165
  %12 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.store.select, ptr %device_config, align 4
  br label %sw.epilogthread-pre-split

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %init12 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 3
  %13 = ptrtoint ptr %init12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @claro_init, ptr %init12, align 4
  %mixer_init14 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 5
  %14 = ptrtoint ptr %mixer_init14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @claro_mixer_init, ptr %mixer_init14, align 4
  %cleanup = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 6
  %15 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @claro_cleanup, ptr %cleanup, align 4
  %suspend = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 7
  %16 = ptrtoint ptr %suspend to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @claro_suspend, ptr %suspend, align 4
  %resume18 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 8
  %17 = ptrtoint ptr %resume18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @claro_resume, ptr %resume18, align 4
  br label %sw.epilogthread-pre-split

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %init21 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 3
  %18 = ptrtoint ptr %init21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @claro_halo_init, ptr %init21, align 4
  %mixer_init23 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 5
  %19 = ptrtoint ptr %mixer_init23 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @claro_halo_mixer_init, ptr %mixer_init23, align 4
  %cleanup25 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 6
  %20 = ptrtoint ptr %cleanup25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @claro_cleanup, ptr %cleanup25, align 4
  %suspend27 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 7
  %21 = ptrtoint ptr %suspend27 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @claro_suspend, ptr %suspend27, align 4
  %resume29 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 8
  %22 = ptrtoint ptr %resume29 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @claro_resume, ptr %resume29, align 4
  %set_adc_params31 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 11
  %23 = ptrtoint ptr %set_adc_params31 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @set_ak5385_params, ptr %set_adc_params31, align 4
  %dump_registers33 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 19
  %24 = ptrtoint ptr %dump_registers33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @dump_ak4396_registers, ptr %dump_registers33, align 4
  %device_config35 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 22
  %25 = ptrtoint ptr %device_config35 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 165, ptr %device_config35, align 4
  br label %sw.epilogthread-pre-split

sw.bb36:                                          ; preds = %entry.sw.bb36_crit_edge, %entry.sw.bb36_crit_edge141, %entry.sw.bb36_crit_edge142, %entry.sw.bb36_crit_edge143
  %26 = ptrtoint ptr %model to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.10, ptr %model, align 4
  %chip39 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 2
  %27 = ptrtoint ptr %chip39 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.11, ptr %chip39, align 4
  %28 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %29)
  %cmp41 = icmp eq i32 %29, 5
  %spec.select = select i1 %cmp41, ptr @fantasia_init, ptr @stereo_output_init
  %30 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 3
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %spec.select, ptr %30, align 4
  %resume49 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 8
  %32 = ptrtoint ptr %resume49 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @stereo_resume, ptr %resume49, align 4
  %mixer_init51 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 5
  %33 = ptrtoint ptr %mixer_init51 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @generic_mixer_init, ptr %mixer_init51, align 4
  %set_adc_params53 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 11
  %34 = ptrtoint ptr %set_adc_params53 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @set_no_params, ptr %set_adc_params53, align 4
  %dump_registers55 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 19
  %35 = ptrtoint ptr %dump_registers55 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @dump_ak4396_registers, ptr %dump_registers55, align 4
  %device_config57 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 22
  %36 = ptrtoint ptr %device_config57 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 5, ptr %device_config57, align 4
  %37 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %38)
  %cmp59 = icmp eq i32 %38, 5
  br i1 %cmp59, label %if.then60, label %sw.bb36.if.end65_crit_edge

sw.bb36.if.end65_crit_edge:                       ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then60:                                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %device_config57 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 21, ptr %device_config57, align 4
  %adc_mclks = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 30
  %40 = ptrtoint ptr %adc_mclks to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %adc_mclks, align 1
  br label %if.end65

if.end65:                                         ; preds = %if.then60, %sw.bb36.if.end65_crit_edge
  %dac_channels_pcm = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 23
  %41 = ptrtoint ptr %dac_channels_pcm to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 2, ptr %dac_channels_pcm, align 4
  %dac_channels_mixer = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 24
  %42 = ptrtoint ptr %dac_channels_mixer to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 2, ptr %dac_channels_mixer, align 1
  br label %sw.epilogthread-pre-split

sw.bb68:                                          ; preds = %entry.sw.bb68_crit_edge, %entry.sw.bb68_crit_edge144
  %43 = call ptr @memcpy(ptr %model, ptr @model_xonar_dg, i32 104)
  br label %sw.epilogthread-pre-split

sw.epilogthread-pre-split:                        ; preds = %sw.bb68, %if.end65, %sw.bb19, %sw.bb10, %sw.bb
  %44 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr = load i32, ptr %driver_data, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %entry.sw.epilog_crit_edge
  %45 = phi i32 [ %.pr, %sw.epilogthread-pre-split ], [ %2, %entry.sw.epilog_crit_edge ]
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %45, label %sw.epilog.if.end82_crit_edge [
    i32 1, label %sw.epilog.if.then77_crit_edge
    i32 2, label %sw.epilog.if.then77_crit_edge145
    i32 4, label %sw.epilog.if.then77_crit_edge146
  ]

sw.epilog.if.then77_crit_edge146:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then77

sw.epilog.if.then77_crit_edge145:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then77

sw.epilog.if.then77_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then77

sw.epilog.if.end82_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then77:                                        ; preds = %sw.epilog.if.then77_crit_edge, %sw.epilog.if.then77_crit_edge145, %sw.epilog.if.then77_crit_edge146
  %misc_flags = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 27
  %47 = ptrtoint ptr %misc_flags to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 64, ptr %misc_flags, align 4
  %device_config80 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 22
  %48 = ptrtoint ptr %device_config80 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %device_config80, align 4
  %or81 = or i32 %49, 6144
  store i32 %or81, ptr %device_config80, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then77, %sw.epilog.if.end82_crit_edge
  %50 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %51)
  %cmp84 = icmp ult i32 %51, 11
  br i1 %cmp84, label %land.lhs.true, label %if.end82.if.end91_crit_edge

if.end82.if.end91_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

land.lhs.true:                                    ; preds = %if.end82
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %51, label %if.then86 [
    i32 7, label %land.lhs.true.if.end91_crit_edge
    i32 0, label %land.lhs.true.if.end91_crit_edge147
  ]

land.lhs.true.if.end91_crit_edge147:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

land.lhs.true.if.end91_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

if.then86:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [11 x ptr], ptr @get_oxygen_model.names, i32 0, i32 %51
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx, align 4
  %55 = ptrtoint ptr %model to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %model, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then86, %land.lhs.true.if.end91_crit_edge, %land.lhs.true.if.end91_crit_edge147, %if.end82.if.end91_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meridian_init(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 168, i16 noundef zeroext 80, i16 noundef zeroext 80) #7
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 166, i16 noundef zeroext 64, i16 noundef zeroext 80) #7
  %model_data.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data.i, align 4
  %dac_channels_pcm.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 23
  %2 = ptrtoint ptr %dac_channels_pcm.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dac_channels_pcm.i, align 4
  %4 = lshr i8 %3, 1
  %div.i = zext i8 %4 to i32
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div.i, ptr %1, align 4
  %arrayidx1.i = getelementptr %struct.generic_data, ptr %1, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %arrayidx1.i, align 1
  tail call fastcc void @ak4396_registers_init(ptr noundef %chip) #7
  %card.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %7 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card.i, align 4
  %call.i = tail call i32 @snd_component_add(ptr noundef %8, ptr noundef nonnull @.str.15) #7
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 168, i16 noundef zeroext 3, i16 noundef zeroext 3) #7
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 166, i16 noundef zeroext 0, i16 noundef zeroext 3) #7
  %9 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card.i, align 4
  %call.i5 = tail call i32 @snd_component_add(ptr noundef %10, ptr noundef nonnull @.str.23) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meridian_mixer_init(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %card.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card.i, align 4
  %call.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @rolloff_control, ptr noundef %chip) #7
  %call1.i = tail call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card.i, align 4
  %call1 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @meridian_dig_source_control, ptr noundef %chip) #7
  %call2 = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %call1) #7
  %4 = tail call i32 @llvm.smin.i32(i32 %call2, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %entry.cleanup_crit_edge ], [ %4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meridian_resume(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ak4396_registers_init(ptr noundef %chip)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_ak5385_params(ptr noundef %chip, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 54001, i32 %1)
  %cmp = icmp ult i32 %1, 54001
  call void @__sanitizer_cov_trace_const_cmp4(i32 108001, i32 %1)
  %cmp2 = icmp ult i32 %1, 108001
  %. = select i1 %cmp2, i16 1, i16 2
  %value.0 = select i1 %cmp, i16 0, i16 %.
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 166, i16 noundef zeroext %value.0, i16 noundef zeroext 3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dump_ak4396_registers(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %buffer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp20.not = icmp eq i32 %3, 0
  br i1 %cmp20.not, label %entry.for.end9_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end9

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %dac.021 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  %add = add nuw i32 %dac.021, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.27, i32 noundef %add) #7
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  %arrayidx6 = getelementptr %struct.generic_data, ptr %1, i32 0, i32 1, i32 %dac.021, i32 0
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx6, align 1
  %conv = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str.28, i32 noundef %conv) #7
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  %arrayidx6.1 = getelementptr %struct.generic_data, ptr %1, i32 0, i32 1, i32 %dac.021, i32 1
  %12 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx6.1, align 1
  %conv.1 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.28, i32 noundef %conv.1) #7
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  %arrayidx6.2 = getelementptr %struct.generic_data, ptr %1, i32 0, i32 1, i32 %dac.021, i32 2
  %16 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx6.2, align 1
  %conv.2 = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %15, ptr noundef nonnull @.str.28, i32 noundef %conv.2) #7
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer, align 4
  %arrayidx6.3 = getelementptr %struct.generic_data, ptr %1, i32 0, i32 1, i32 %dac.021, i32 3
  %20 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx6.3, align 1
  %conv.3 = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %19, ptr noundef nonnull @.str.28, i32 noundef %conv.3) #7
  %22 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer, align 4
  %arrayidx6.4 = getelementptr %struct.generic_data, ptr %1, i32 0, i32 1, i32 %dac.021, i32 4
  %24 = ptrtoint ptr %arrayidx6.4 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx6.4, align 1
  %conv.4 = zext i8 %25 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %23, ptr noundef nonnull @.str.28, i32 noundef %conv.4) #7
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %1, align 4
  %cmp = icmp ult i32 %add, %27
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end9_crit_edge

for.body.for.end9_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end9

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end9:                                         ; preds = %for.body.for.end9_crit_edge, %entry.for.end9_crit_edge
  %28 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %29, ptr noundef nonnull @.str.22) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @claro_init(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 168, i16 noundef zeroext 64, i16 noundef zeroext 64) #7
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 166, i16 noundef zeroext 0, i16 noundef zeroext 64) #7
  %model_data.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data.i, align 4
  %dac_channels_pcm.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 23
  %2 = ptrtoint ptr %dac_channels_pcm.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dac_channels_pcm.i, align 4
  %4 = lshr i8 %3, 1
  %div.i = zext i8 %4 to i32
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div.i, ptr %1, align 4
  %arrayidx1.i = getelementptr %struct.generic_data, ptr %1, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %arrayidx1.i, align 1
  tail call fastcc void @ak4396_registers_init(ptr noundef %chip) #7
  %card.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %7 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card.i, align 4
  %call.i = tail call i32 @snd_component_add(ptr noundef %8, ptr noundef nonnull @.str.15) #7
  %9 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %model_data.i, align 4
  %wm8785_regs.i = getelementptr inbounds %struct.generic_data, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %wm8785_regs.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 32, ptr %wm8785_regs.i, align 4
  %arrayidx2.i = getelementptr %struct.generic_data, ptr %10, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 3, ptr %arrayidx2.i, align 4
  %13 = load ptr, ptr %model_data.i, align 4
  %call.i.i.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 49, i32 noundef 3584) #7
  %wm8785_regs.i.i = getelementptr inbounds %struct.generic_data, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %wm8785_regs.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %wm8785_regs.i.i, align 4
  %conv.i.i = zext i16 %15 to i32
  %16 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %model_data.i, align 4
  %call.i9.i.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 49, i32 noundef %conv.i.i) #7
  %arrayidx.i.i.i = getelementptr %struct.generic_data, ptr %17, i32 0, i32 2, i32 0
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %15, ptr %arrayidx.i.i.i, align 2
  %arrayidx2.i.i = getelementptr %struct.generic_data, ptr %13, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx2.i.i, align 4
  %21 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %model_data.i, align 4
  %23 = or i16 %20, 1024
  %or.i.i.i = zext i16 %23 to i32
  %call.i11.i.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 49, i32 noundef %or.i.i.i) #7
  %arrayidx.i12.i.i = getelementptr %struct.generic_data, ptr %22, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %arrayidx.i12.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %20, ptr %arrayidx.i12.i.i, align 2
  %25 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card.i, align 4
  %call.i7 = tail call i32 @snd_component_add(ptr noundef %26, ptr noundef nonnull @.str.16) #7
  tail call void @msleep(i32 noundef 300) #7
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 168, i16 noundef zeroext 256, i16 noundef zeroext 256) #7
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 166, i16 noundef zeroext 256, i16 noundef zeroext 256) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @claro_mixer_init(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %card.i.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card.i.i, align 4
  %call.i.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @rolloff_control, ptr noundef %chip) #7
  %call1.i.i = tail call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %generic_wm8785_mixer_init.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

generic_wm8785_mixer_init.exit:                   ; preds = %entry
  %2 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card.i.i, align 4
  %call1.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @hpf_control, ptr noundef %chip) #7
  %call2.i = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %call1.i) #7
  %4 = tail call i32 @llvm.smin.i32(i32 %call2.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %generic_wm8785_mixer_init.exit.cleanup_crit_edge, label %if.end

generic_wm8785_mixer_init.exit.cleanup_crit_edge: ; preds = %generic_wm8785_mixer_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %generic_wm8785_mixer_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card.i.i, align 4
  %call1 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @claro_dig_source_control, ptr noundef %chip) #7
  %call2 = tail call i32 @snd_ctl_add(ptr noundef %6, ptr noundef %call1) #7
  %7 = tail call i32 @llvm.smin.i32(i32 %call2, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %generic_wm8785_mixer_init.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %generic_wm8785_mixer_init.exit.cleanup_crit_edge ], [ %7, %if.end ], [ %call1.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @claro_cleanup(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 166, i16 noundef zeroext 0, i16 noundef zeroext 256) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @claro_suspend(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 166, i16 noundef zeroext 0, i16 noundef zeroext 256) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @claro_resume(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ak4396_registers_init(ptr noundef %chip)
  tail call void @msleep(i32 noundef 300) #7
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 168, i16 noundef zeroext 256, i16 noundef zeroext 256) #7
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 166, i16 noundef zeroext 256, i16 noundef zeroext 256) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @claro_halo_init(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 168, i16 noundef zeroext 64, i16 noundef zeroext 64) #7
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 166, i16 noundef zeroext 0, i16 noundef zeroext 64) #7
  %model_data.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data.i, align 4
  %dac_channels_pcm.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 23
  %2 = ptrtoint ptr %dac_channels_pcm.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dac_channels_pcm.i, align 4
  %4 = lshr i8 %3, 1
  %div.i = zext i8 %4 to i32
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div.i, ptr %1, align 4
  %arrayidx1.i = getelementptr %struct.generic_data, ptr %1, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %arrayidx1.i, align 1
  tail call fastcc void @ak4396_registers_init(ptr noundef %chip) #7
  %card.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %7 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card.i, align 4
  %call.i = tail call i32 @snd_component_add(ptr noundef %8, ptr noundef nonnull @.str.15) #7
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 168, i16 noundef zeroext 3, i16 noundef zeroext 3) #7
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 166, i16 noundef zeroext 0, i16 noundef zeroext 3) #7
  %9 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card.i, align 4
  %call.i6 = tail call i32 @snd_component_add(ptr noundef %10, ptr noundef nonnull @.str.23) #7
  tail call void @msleep(i32 noundef 300) #7
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 168, i16 noundef zeroext 256, i16 noundef zeroext 256) #7
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 166, i16 noundef zeroext 256, i16 noundef zeroext 256) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @claro_halo_mixer_init(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %card.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card.i, align 4
  %call.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @rolloff_control, ptr noundef %chip) #7
  %call1.i = tail call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card.i, align 4
  %call1 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @claro_dig_source_control, ptr noundef %chip) #7
  %call2 = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %call1) #7
  %4 = tail call i32 @llvm.smin.i32(i32 %call2, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %entry.cleanup_crit_edge ], [ %4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fantasia_init(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data.i, align 4
  %dac_channels_pcm.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 23
  %2 = ptrtoint ptr %dac_channels_pcm.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dac_channels_pcm.i, align 4
  %4 = lshr i8 %3, 1
  %div.i = zext i8 %4 to i32
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div.i, ptr %1, align 4
  %arrayidx1.i = getelementptr %struct.generic_data, ptr %1, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %arrayidx1.i, align 1
  tail call fastcc void @ak4396_registers_init(ptr noundef %chip) #7
  %card.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %7 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card.i, align 4
  %call.i = tail call i32 @snd_component_add(ptr noundef %8, ptr noundef nonnull @.str.15) #7
  %9 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card.i, align 4
  %call = tail call i32 @snd_component_add(ptr noundef %10, ptr noundef nonnull @.str.31) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stereo_output_init(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data.i, align 4
  %dac_channels_pcm.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 23
  %2 = ptrtoint ptr %dac_channels_pcm.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dac_channels_pcm.i, align 4
  %4 = lshr i8 %3, 1
  %div.i = zext i8 %4 to i32
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div.i, ptr %1, align 4
  %arrayidx1.i = getelementptr %struct.generic_data, ptr %1, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %arrayidx1.i, align 1
  tail call fastcc void @ak4396_registers_init(ptr noundef %chip) #7
  %card.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %7 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card.i, align 4
  %call.i = tail call i32 @snd_component_add(ptr noundef %8, ptr noundef nonnull @.str.15) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stereo_resume(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ak4396_registers_init(ptr noundef %chip)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @generic_mixer_init(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %call = tail call ptr @snd_ctl_new1(ptr noundef nonnull @rolloff_control, ptr noundef %chip) #7
  %call1 = tail call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call) #7
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @set_no_params(ptr nocapture noundef %chip, ptr nocapture noundef %params) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @generic_init(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data.i, align 4
  %dac_channels_pcm.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 23
  %2 = ptrtoint ptr %dac_channels_pcm.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dac_channels_pcm.i, align 4
  %4 = lshr i8 %3, 1
  %div.i = zext i8 %4 to i32
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div.i, ptr %1, align 4
  %arrayidx1.i = getelementptr %struct.generic_data, ptr %1, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %arrayidx1.i, align 1
  tail call fastcc void @ak4396_registers_init(ptr noundef %chip) #7
  %card.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %7 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card.i, align 4
  %call.i = tail call i32 @snd_component_add(ptr noundef %8, ptr noundef nonnull @.str.15) #7
  %9 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %model_data.i, align 4
  %wm8785_regs.i = getelementptr inbounds %struct.generic_data, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %wm8785_regs.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 32, ptr %wm8785_regs.i, align 4
  %arrayidx2.i = getelementptr %struct.generic_data, ptr %10, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 3, ptr %arrayidx2.i, align 4
  %13 = load ptr, ptr %model_data.i, align 4
  %call.i.i.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 49, i32 noundef 3584) #7
  %wm8785_regs.i.i = getelementptr inbounds %struct.generic_data, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %wm8785_regs.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %wm8785_regs.i.i, align 4
  %conv.i.i = zext i16 %15 to i32
  %16 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %model_data.i, align 4
  %call.i9.i.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 49, i32 noundef %conv.i.i) #7
  %arrayidx.i.i.i = getelementptr %struct.generic_data, ptr %17, i32 0, i32 2, i32 0
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %15, ptr %arrayidx.i.i.i, align 2
  %arrayidx2.i.i = getelementptr %struct.generic_data, ptr %13, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx2.i.i, align 4
  %21 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %model_data.i, align 4
  %23 = or i16 %20, 1024
  %or.i.i.i = zext i16 %23 to i32
  %call.i11.i.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 49, i32 noundef %or.i.i.i) #7
  %arrayidx.i12.i.i = getelementptr %struct.generic_data, ptr %22, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %arrayidx.i12.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %20, ptr %arrayidx.i12.i.i, align 2
  %25 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card.i, align 4
  %call.i4 = tail call i32 @snd_component_add(ptr noundef %26, ptr noundef nonnull @.str.16) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @generic_wm8785_mixer_init(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %card.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card.i, align 4
  %call.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @rolloff_control, ptr noundef %chip) #7
  %call1.i = tail call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card.i, align 4
  %call1 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @hpf_control, ptr noundef %chip) #7
  %call2 = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %call1) #7
  %4 = tail call i32 @llvm.smin.i32(i32 %call2, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %entry.cleanup_crit_edge ], [ %4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @generic_cleanup(ptr nocapture noundef %chip) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @generic_resume(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ak4396_registers_init(ptr noundef %chip)
  %model_data.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data.i, align 4
  %call.i.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 49, i32 noundef 3584) #7
  %wm8785_regs.i = getelementptr inbounds %struct.generic_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %wm8785_regs.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %wm8785_regs.i, align 4
  %conv.i = zext i16 %3 to i32
  %4 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %model_data.i, align 4
  %call.i9.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 49, i32 noundef %conv.i) #7
  %arrayidx.i.i = getelementptr %struct.generic_data, ptr %5, i32 0, i32 2, i32 0
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %3, ptr %arrayidx.i.i, align 2
  %arrayidx2.i = getelementptr %struct.generic_data, ptr %1, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx2.i, align 4
  %9 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %model_data.i, align 4
  %11 = or i16 %8, 1024
  %or.i.i = zext i16 %11 to i32
  %call.i11.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 49, i32 noundef %or.i.i) #7
  %arrayidx.i12.i = getelementptr %struct.generic_data, ptr %10, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %arrayidx.i12.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %8, ptr %arrayidx.i12.i, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_ak4396_params(ptr noundef %chip, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %arrayidx1 = getelementptr %struct.generic_data, ptr %1, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %4 = and i8 %3, -25
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 54001, i32 %6)
  %cmp = icmp ult i32 %6, 54001
  br i1 %cmp, label %entry.if.end17_crit_edge, label %if.else

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 108001, i32 %6)
  %cmp7 = icmp ult i32 %6, 108001
  br i1 %cmp7, label %if.then9, label %if.else13

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %7 = or i8 %4, 8
  br label %if.end17

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %8 = or i8 %4, 16
  br label %if.end17

if.end17:                                         ; preds = %if.else13, %if.then9, %entry.if.end17_crit_edge
  %value.0 = phi i8 [ %7, %if.then9 ], [ %8, %if.else13 ], [ %4, %entry.if.end17_crit_edge ]
  tail call void @msleep(i32 noundef 1) #7
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %value.0, i8 %10)
  %cmp23.not = icmp eq i8 %value.0, %10
  br i1 %cmp23.not, label %if.end17.if.end28_crit_edge, label %for.cond.preheader

if.end17.if.end28_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

for.cond.preheader:                               ; preds = %if.end17
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp2656.not = icmp eq i32 %12, 0
  br i1 %cmp2656.not, label %for.cond.preheader.if.end28_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end28_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv6.i = zext i8 %value.0 to i32
  %or7.i = or i32 %conv6.i, 8448
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %13 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %model_data, align 4
  %arrayidx.i = getelementptr [4 x i8], ptr @ak4396_write.codec_spi_map, i32 0, i32 %i.057
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 1
  %shl.i = shl i8 %16, 4
  %or1.i = or i8 %shl.i, -127
  %call.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext %or1.i, i32 noundef 8196) #7
  %arrayidx9.i = getelementptr %struct.generic_data, ptr %14, i32 0, i32 1, i32 %i.057, i32 0
  %17 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 4, ptr %arrayidx9.i, align 1
  %18 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %model_data, align 4
  %call.i48 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext %or1.i, i32 noundef %or7.i) #7
  %arrayidx9.i49 = getelementptr %struct.generic_data, ptr %19, i32 0, i32 1, i32 %i.057, i32 1
  %20 = ptrtoint ptr %arrayidx9.i49 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %value.0, ptr %arrayidx9.i49, align 1
  %21 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %model_data, align 4
  %call.i54 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext %or1.i, i32 noundef 8197) #7
  %arrayidx9.i55 = getelementptr %struct.generic_data, ptr %22, i32 0, i32 1, i32 %i.057, i32 0
  %23 = ptrtoint ptr %arrayidx9.i55 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 5, ptr %arrayidx9.i55, align 1
  %inc = add nuw i32 %i.057, 1
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 4
  %cmp26 = icmp ult i32 %inc, %25
  br i1 %cmp26, label %for.body.for.body_crit_edge, label %for.body.if.end28_crit_edge

for.body.if.end28_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end28:                                         ; preds = %for.body.if.end28_crit_edge, %for.cond.preheader.if.end28_crit_edge, %if.end17.if.end28_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_wm8785_params(ptr noundef %chip, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48001, i32 %3)
  %cmp = icmp ult i32 %3, 48001
  call void @__sanitizer_cov_trace_const_cmp4(i32 96001, i32 %3)
  %cmp2 = icmp ult i32 %3, 96001
  %. = select i1 %cmp2, i32 40, i32 48
  %value.0 = select i1 %cmp, i32 32, i32 %.
  %wm8785_regs = getelementptr inbounds %struct.generic_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %wm8785_regs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %wm8785_regs, align 4
  %conv = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %value.0, i32 %conv)
  %cmp8.not = icmp eq i32 %value.0, %conv
  br i1 %cmp8.not, label %entry.if.end14_crit_edge, label %if.then10

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 49, i32 noundef 3584) #7
  %6 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %model_data, align 4
  %call.i26 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 49, i32 noundef %value.0) #7
  %conv3.i = trunc i32 %value.0 to i16
  %arrayidx.i = getelementptr %struct.generic_data, ptr %7, i32 0, i32 2, i32 0
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv3.i, ptr %arrayidx.i, align 2
  %arrayidx12 = getelementptr %struct.generic_data, ptr %1, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx12, align 4
  %11 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %model_data, align 4
  %13 = or i16 %10, 1024
  %or.i = zext i16 %13 to i32
  %call.i28 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext 49, i32 noundef %or.i) #7
  %arrayidx.i29 = getelementptr %struct.generic_data, ptr %12, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %10, ptr %arrayidx.i29, align 2
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update_ak4396_volume(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp25.not = icmp eq i32 %3, 0
  br i1 %cmp25.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %ak4396_write_cached.exit24.for.body_crit_edge, %entry.for.body_crit_edge
  %i.026 = phi i32 [ %inc, %ak4396_write_cached.exit24.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl i32 %i.026, 1
  %arrayidx = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 %mul
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %model_data, align 4
  %arrayidx1.i = getelementptr %struct.generic_data, ptr %7, i32 0, i32 1, i32 %i.026, i32 3
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %5)
  %cmp.not.i = icmp eq i8 %9, %5
  br i1 %cmp.not.i, label %for.body.ak4396_write_cached.exit_crit_edge, label %if.then.i

for.body.ak4396_write_cached.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %ak4396_write_cached.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr [4 x i8], ptr @ak4396_write.codec_spi_map, i32 0, i32 %i.026
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i, align 1
  %shl.i.i = shl i8 %11, 4
  %or1.i.i = or i8 %shl.i.i, -127
  %conv6.i.i = zext i8 %5 to i32
  %or7.i.i = or i32 %conv6.i.i, 8960
  %call.i.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext %or1.i.i, i32 noundef %or7.i.i) #7
  %12 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %5, ptr %arrayidx1.i, align 1
  br label %ak4396_write_cached.exit

ak4396_write_cached.exit:                         ; preds = %if.then.i, %for.body.ak4396_write_cached.exit_crit_edge
  %add = or i32 %mul, 1
  %arrayidx3 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 %add
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx3, align 1
  %15 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %model_data, align 4
  %arrayidx1.i14 = getelementptr %struct.generic_data, ptr %16, i32 0, i32 1, i32 %i.026, i32 4
  %17 = ptrtoint ptr %arrayidx1.i14 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx1.i14, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %14)
  %cmp.not.i15 = icmp eq i8 %18, %14
  br i1 %cmp.not.i15, label %ak4396_write_cached.exit.ak4396_write_cached.exit24_crit_edge, label %if.then.i23

ak4396_write_cached.exit.ak4396_write_cached.exit24_crit_edge: ; preds = %ak4396_write_cached.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ak4396_write_cached.exit24

if.then.i23:                                      ; preds = %ak4396_write_cached.exit
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i16 = getelementptr [4 x i8], ptr @ak4396_write.codec_spi_map, i32 0, i32 %i.026
  %19 = ptrtoint ptr %arrayidx.i.i16 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i16, align 1
  %shl.i.i17 = shl i8 %20, 4
  %or1.i.i18 = or i8 %shl.i.i17, -127
  %conv6.i.i19 = zext i8 %14 to i32
  %or7.i.i21 = or i32 %conv6.i.i19, 9216
  %call.i.i22 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext %or1.i.i18, i32 noundef %or7.i.i21) #7
  %21 = ptrtoint ptr %arrayidx1.i14 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %14, ptr %arrayidx1.i14, align 1
  br label %ak4396_write_cached.exit24

ak4396_write_cached.exit24:                       ; preds = %if.then.i23, %ak4396_write_cached.exit.ak4396_write_cached.exit24_crit_edge
  %inc = add nuw i32 %i.026, 1
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %ak4396_write_cached.exit24.for.body_crit_edge, label %ak4396_write_cached.exit24.for.end_crit_edge

ak4396_write_cached.exit24.for.end_crit_edge:     ; preds = %ak4396_write_cached.exit24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

ak4396_write_cached.exit24.for.body_crit_edge:    ; preds = %ak4396_write_cached.exit24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %ak4396_write_cached.exit24.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update_ak4396_mute(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %arrayidx1 = getelementptr %struct.generic_data, ptr %1, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %4 = and i8 %3, -2
  %dac_mute = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 10
  %5 = ptrtoint ptr %dac_mute to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dac_mute, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp ne i8 %6, 0
  %masksel = zext i1 %tobool.not to i8
  %spec.select = or i8 %4, %masksel
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp12.not = icmp eq i32 %8, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv6.i.i = zext i8 %spec.select to i32
  %or7.i.i = or i32 %conv6.i.i, 8448
  br label %for.body

for.body:                                         ; preds = %ak4396_write_cached.exit.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %ak4396_write_cached.exit.for.body_crit_edge ]
  %9 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %model_data, align 4
  %arrayidx1.i = getelementptr %struct.generic_data, ptr %10, i32 0, i32 1, i32 %i.013, i32 1
  %11 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %spec.select)
  %cmp.not.i = icmp eq i8 %12, %spec.select
  br i1 %cmp.not.i, label %for.body.ak4396_write_cached.exit_crit_edge, label %if.then.i

for.body.ak4396_write_cached.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %ak4396_write_cached.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr [4 x i8], ptr @ak4396_write.codec_spi_map, i32 0, i32 %i.013
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.i, align 1
  %shl.i.i = shl i8 %14, 4
  %or1.i.i = or i8 %shl.i.i, -127
  %call.i.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext %or1.i.i, i32 noundef %or7.i.i) #7
  %15 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %spec.select, ptr %arrayidx1.i, align 1
  br label %ak4396_write_cached.exit

ak4396_write_cached.exit:                         ; preds = %if.then.i, %for.body.ak4396_write_cached.exit_crit_edge
  %inc = add nuw i32 %i.013, 1
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %ak4396_write_cached.exit.for.body_crit_edge, label %ak4396_write_cached.exit.for.end_crit_edge

ak4396_write_cached.exit.for.end_crit_edge:       ; preds = %ak4396_write_cached.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

ak4396_write_cached.exit.for.body_crit_edge:      ; preds = %ak4396_write_cached.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %ak4396_write_cached.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dump_oxygen_registers(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %buffer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dump_ak4396_registers(ptr noundef %chip, ptr noundef %buffer)
  %model_data.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data.i, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.20) #7
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  %arrayidx.i = getelementptr %struct.generic_data, ptr %1, i32 0, i32 2, i32 0
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.21, i32 noundef %conv.i) #7
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %arrayidx.1.i = getelementptr %struct.generic_data, ptr %1, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.1.i, align 2
  %conv.1.i = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.21, i32 noundef %conv.1.i) #7
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer, align 4
  %arrayidx.2.i = getelementptr %struct.generic_data, ptr %1, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.2.i, align 2
  %conv.2.i = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef nonnull @.str.21, i32 noundef %conv.2.i) #7
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.22) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ak4396_registers_init(ptr noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp52.not = icmp eq i32 %3, 0
  br i1 %cmp52.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx1 = getelementptr %struct.generic_data, ptr %1, i32 0, i32 1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %model_data, align 4
  %arrayidx.i = getelementptr [4 x i8], ptr @ak4396_write.codec_spi_map, i32 0, i32 %i.053
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %shl.i = shl i8 %7, 4
  %or1.i = or i8 %shl.i, -127
  %call.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext %or1.i, i32 noundef 8197) #7
  %arrayidx9.i = getelementptr %struct.generic_data, ptr %5, i32 0, i32 1, i32 %i.053, i32 0
  %8 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 5, ptr %arrayidx9.i, align 1
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx1, align 1
  %11 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %model_data, align 4
  %conv6.i = zext i8 %10 to i32
  %or7.i = or i32 %conv6.i, 8448
  %call.i26 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext %or1.i, i32 noundef %or7.i) #7
  %arrayidx9.i27 = getelementptr %struct.generic_data, ptr %12, i32 0, i32 1, i32 %i.053, i32 1
  %13 = ptrtoint ptr %arrayidx9.i27 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %10, ptr %arrayidx9.i27, align 1
  %14 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %model_data, align 4
  %call.i32 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext %or1.i, i32 noundef 8704) #7
  %arrayidx9.i33 = getelementptr %struct.generic_data, ptr %15, i32 0, i32 1, i32 %i.053, i32 2
  %16 = ptrtoint ptr %arrayidx9.i33 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx9.i33, align 1
  %mul = shl i32 %i.053, 1
  %arrayidx2 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 %mul
  %17 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx2, align 1
  %19 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %model_data, align 4
  %conv6.i38 = zext i8 %18 to i32
  %or7.i40 = or i32 %conv6.i38, 8960
  %call.i41 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext %or1.i, i32 noundef %or7.i40) #7
  %arrayidx9.i42 = getelementptr %struct.generic_data, ptr %20, i32 0, i32 1, i32 %i.053, i32 3
  %21 = ptrtoint ptr %arrayidx9.i42 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %18, ptr %arrayidx9.i42, align 1
  %add = or i32 %mul, 1
  %arrayidx5 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 %add
  %22 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx5, align 1
  %24 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %model_data, align 4
  %conv6.i47 = zext i8 %23 to i32
  %or7.i49 = or i32 %conv6.i47, 9216
  %call.i50 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext %or1.i, i32 noundef %or7.i49) #7
  %arrayidx9.i51 = getelementptr %struct.generic_data, ptr %25, i32 0, i32 1, i32 %i.053, i32 4
  %26 = ptrtoint ptr %arrayidx9.i51 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %23, ptr %arrayidx9.i51, align 1
  %inc = add nuw i32 %i.053, 1
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %1, align 4
  %cmp = icmp ult i32 %inc, %28
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oxygen_write_spi(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpf_info(ptr nocapture noundef readnone %ctl, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %info, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @hpf_info.names) #7
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hpf_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %arrayidx = getelementptr %struct.generic_data, ptr %3, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 4
  %6 = and i16 %5, 1
  %7 = zext i16 %6 to i32
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %8 = ptrtoint ptr %value2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value2, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpf_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %arrayidx = getelementptr %struct.generic_data, ptr %3, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 4
  %6 = and i16 %5, -4
  %and = zext i16 %6 to i32
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %7 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %or = or i32 %and, 3
  %spec.select = select i1 %tobool.not, i32 %and, i32 %or
  %conv5 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %conv5)
  %cmp = icmp ne i32 %spec.select, %conv5
  br i1 %cmp, label %if.then8, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %model_data, align 4
  %or.i = or i32 %spec.select, 1024
  %call.i = tail call i32 @oxygen_write_spi(ptr noundef %1, i8 noundef zeroext 49, i32 noundef %or.i) #7
  %conv3.i = trunc i32 %spec.select to i16
  %arrayidx.i = getelementptr %struct.generic_data, ptr %10, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv3.i, ptr %arrayidx.i, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %entry.if.end9_crit_edge
  %conv6 = zext i1 %cmp to i32
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %conv6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write16_masked(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meridian_dig_source_info(ptr nocapture noundef readnone %ctl, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %info, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @meridian_dig_source_info.names) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meridian_dig_source_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call zeroext i16 @oxygen_read16(ptr noundef %1, i32 noundef 166) #7
  %2 = lshr i16 %call, 4
  %.lobit = and i16 %2, 1
  %3 = zext i16 %.lobit to i32
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %value2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value2, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meridian_dig_source_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %call = tail call zeroext i16 @oxygen_read16(ptr noundef %1, i32 noundef 166) #7
  %and = and i16 %call, -81
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %2 = ptrtoint ptr %value2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %new_reg.0.v = select i1 %cmp, i16 64, i16 16
  %new_reg.0 = or i16 %new_reg.0.v, %and
  call void @__sanitizer_cov_trace_cmp2(i16 %new_reg.0, i16 %call)
  %cmp11 = icmp ne i16 %new_reg.0, %call
  br i1 %cmp11, label %if.then13, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @oxygen_write16(ptr noundef %1, i32 noundef 166, i16 noundef zeroext %new_reg.0) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %entry.if.end14_crit_edge
  %conv12 = zext i1 %cmp11 to i32
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %conv12
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @oxygen_read16(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write16(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @claro_dig_source_info(ptr nocapture noundef readnone %ctl, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %info, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @claro_dig_source_info.names) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @claro_dig_source_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call zeroext i16 @oxygen_read16(ptr noundef %1, i32 noundef 166) #7
  %2 = lshr i16 %call, 6
  %.lobit = and i16 %2, 1
  %3 = zext i16 %.lobit to i32
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %value2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value2, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @claro_dig_source_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %call = tail call zeroext i16 @oxygen_read16(ptr noundef %1, i32 noundef 166) #7
  %and = and i16 %call, -65
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %2 = ptrtoint ptr %value2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %masksel = select i1 %tobool.not, i16 0, i16 64
  %spec.select = or i16 %masksel, %and
  call void @__sanitizer_cov_trace_cmp2(i16 %spec.select, i16 %call)
  %cmp = icmp ne i16 %spec.select, %call
  br i1 %cmp, label %if.then9, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @oxygen_write16(ptr noundef %1, i32 noundef 166, i16 noundef zeroext %spec.select) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %entry.if.end10_crit_edge
  %conv7 = zext i1 %cmp to i32
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %conv7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rolloff_info(ptr nocapture noundef readnone %ctl, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %info, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @rolloff_info.names) #7
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rolloff_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %arrayidx1 = getelementptr %struct.generic_data, ptr %3, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 1
  %6 = lshr i8 %5, 5
  %.lobit = and i8 %6, 1
  %7 = zext i8 %.lobit to i32
  %value3 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %8 = ptrtoint ptr %value3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value3, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rolloff_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %arrayidx1 = getelementptr %struct.generic_data, ptr %3, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 1
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %6 = ptrtoint ptr %value2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %8 = and i8 %5, -33
  %masksel = select i1 %tobool.not, i8 0, i8 32
  %reg.0 = or i8 %masksel, %8
  call void @__sanitizer_cov_trace_cmp1(i8 %reg.0, i8 %5)
  %cmp = icmp ne i8 %reg.0, %5
  br i1 %cmp, label %for.cond.preheader, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

for.cond.preheader:                               ; preds = %entry
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1530.not = icmp eq i32 %10, 0
  br i1 %cmp1530.not, label %for.cond.preheader.if.end17_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end17_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv6.i = zext i8 %reg.0 to i32
  %or7.i = or i32 %conv6.i, 8448
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %11 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %model_data, align 4
  %arrayidx.i = getelementptr [4 x i8], ptr @ak4396_write.codec_spi_map, i32 0, i32 %i.031
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  %shl.i = shl i8 %14, 4
  %or1.i = or i8 %shl.i, -127
  %call.i = tail call i32 @oxygen_write_spi(ptr noundef %1, i8 noundef zeroext %or1.i, i32 noundef %or7.i) #7
  %arrayidx9.i = getelementptr %struct.generic_data, ptr %12, i32 0, i32 1, i32 %i.031, i32 1
  %15 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %reg.0, ptr %arrayidx9.i, align 1
  %inc = add nuw i32 %i.031, 1
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %3, align 4
  %cmp15 = icmp ult i32 %inc, %17
  br i1 %cmp15, label %for.body.for.body_crit_edge, label %for.body.if.end17_crit_edge

for.body.if.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end17:                                         ; preds = %for.body.if.end17_crit_edge, %for.cond.preheader.if.end17_crit_edge, %entry.if.end17_crit_edge
  %conv12 = zext i1 %cmp to i32
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %conv12
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/oxygen/oxygen.c", i32 56, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/oxygen/oxygen.c", i32 57, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/oxygen/oxygen.c", i32 58, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/oxygen/oxygen.c", i32 64, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype246, !8, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index247, !11, !"__UNIQUE_ID_index247", i1 false, i1 false}
!11 = !{!"../sound/pci/oxygen/oxygen.c", i32 65, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/oxygen/oxygen.c", i32 66, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype248, !13, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id249, !16, !"__UNIQUE_ID_id249", i1 false, i1 false}
!16 = !{!"../sound/pci/oxygen/oxygen.c", i32 67, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/pci/oxygen/oxygen.c", i32 68, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype250, !18, !"__UNIQUE_ID_enabletype250", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable251, !21, !"__UNIQUE_ID_enable251", i1 false, i1 false}
!21 = !{!"../sound/pci/oxygen/oxygen.c", i32 69, i32 1}
!22 = !{ptr @__initcall__kmod_snd_oxygen__252_864_oxygen_driver_init6, !23, !"__initcall__kmod_snd_oxygen__252_864_oxygen_driver_init6", i1 false, i1 false}
!23 = !{!"../sound/pci/oxygen/oxygen.c", i32 864, i32 1}
!24 = !{ptr @__exitcall_oxygen_driver_exit, !23, !"__exitcall_oxygen_driver_exit", i1 false, i1 false}
!25 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!26 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!27 = !{ptr @index, !28, !"index", i1 false, i1 false}
!28 = !{!"../sound/pci/oxygen/oxygen.c", i32 60, i32 12}
!29 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!30 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!31 = !{ptr @id, !32, !"id", i1 false, i1 false}
!32 = !{!"../sound/pci/oxygen/oxygen.c", i32 61, i32 14}
!33 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!34 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!35 = !{ptr @enable, !36, !"enable", i1 false, i1 false}
!36 = !{!"../sound/pci/oxygen/oxygen.c", i32 62, i32 13}
!37 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @oxygen_driver, !39, !"oxygen_driver", i1 false, i1 false}
!39 = !{!"../sound/pci/oxygen/oxygen.c", i32 853, i32 26}
!40 = !{ptr @oxygen_ids, !41, !"oxygen_ids", i1 false, i1 false}
!41 = !{!"../sound/pci/oxygen/oxygen.c", i32 85, i32 35}
!42 = !{ptr @generic_oxygen_probe.dev, !43, !"dev", i1 false, i1 false}
!43 = !{!"../sound/pci/oxygen/oxygen.c", i32 837, i32 13}
!44 = !{ptr @.str.1, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/pci/oxygen/oxygen.c", i32 748, i32 22}
!46 = !{ptr @.str.2, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/pci/oxygen/oxygen.c", i32 749, i32 25}
!48 = !{ptr @.str.3, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/pci/oxygen/oxygen.c", i32 750, i32 20}
!50 = !{ptr @.str.4, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/pci/oxygen/oxygen.c", i32 751, i32 24}
!52 = !{ptr @.str.5, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/oxygen/oxygen.c", i32 752, i32 22}
!54 = !{ptr @.str.6, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/pci/oxygen/oxygen.c", i32 753, i32 22}
!56 = !{ptr @.str.7, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/pci/oxygen/oxygen.c", i32 754, i32 21}
!58 = !{ptr @.str.8, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/pci/oxygen/oxygen.c", i32 755, i32 29}
!60 = !{ptr @.str.9, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/pci/oxygen/oxygen.c", i32 756, i32 29}
!62 = !{ptr @get_oxygen_model.names, !63, !"names", i1 false, i1 false}
!63 = !{!"../sound/pci/oxygen/oxygen.c", i32 747, i32 27}
!64 = !{ptr @.str.10, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/pci/oxygen/oxygen.c", i32 799, i32 27}
!66 = !{ptr @.str.11, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/pci/oxygen/oxygen.c", i32 800, i32 22}
!68 = !{ptr @.str.12, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/pci/oxygen/oxygen.c", i32 711, i32 15}
!70 = !{ptr @.str.13, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/pci/oxygen/oxygen.c", i32 712, i32 14}
!72 = !{ptr @.str.14, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/pci/oxygen/oxygen.c", i32 713, i32 10}
!74 = !{ptr @model_generic, !75, !"model_generic", i1 false, i1 false}
!75 = !{!"../sound/pci/oxygen/oxygen.c", i32 710, i32 34}
!76 = !{ptr @.str.15, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/pci/oxygen/oxygen.c", i32 207, i32 32}
!78 = !{ptr @ak4396_write.codec_spi_map, !79, !"codec_spi_map", i1 false, i1 false}
!79 = !{!"../sound/pci/oxygen/oxygen.c", i32 143, i32 18}
!80 = !{ptr @.str.16, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/pci/oxygen/oxygen.c", i32 234, i32 32}
!82 = !{ptr @.str.17, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/pci/oxygen/oxygen.c", i32 515, i32 10}
!84 = !{ptr @hpf_control, !85, !"hpf_control", i1 false, i1 false}
!85 = !{!"../sound/pci/oxygen/oxygen.c", i32 513, i32 38}
!86 = !{ptr @.str.18, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/pci/oxygen/oxygen.c", i32 479, i32 3}
!88 = !{ptr @.str.19, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/pci/oxygen/oxygen.c", i32 479, i32 11}
!90 = !{ptr @hpf_info.names, !91, !"names", i1 false, i1 false}
!91 = !{!"../sound/pci/oxygen/oxygen.c", i32 478, i32 27}
!92 = !{ptr @.str.20, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/pci/oxygen/oxygen.c", i32 695, i32 2}
!94 = !{ptr @.str.21, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/pci/oxygen/oxygen.c", i32 697, i32 3}
!96 = !{ptr @.str.22, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/pci/oxygen/oxygen.c", i32 698, i32 2}
!98 = !{ptr @ak4396_db_scale, !99, !"ak4396_db_scale", i1 false, i1 false}
!99 = !{!"../sound/pci/oxygen/oxygen.c", i32 708, i32 14}
!100 = !{ptr @.str.23, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/pci/oxygen/oxygen.c", i32 214, i32 32}
!102 = !{ptr @.str.24, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/pci/oxygen/oxygen.c", i32 601, i32 10}
!104 = !{ptr @meridian_dig_source_control, !105, !"meridian_dig_source_control", i1 false, i1 false}
!105 = !{!"../sound/pci/oxygen/oxygen.c", i32 599, i32 38}
!106 = !{ptr @.str.25, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/pci/oxygen/oxygen.c", i32 524, i32 40}
!108 = !{ptr @.str.26, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/oxygen/oxygen.c", i32 524, i32 52}
!110 = !{ptr @meridian_dig_source_info.names, !111, !"names", i1 false, i1 false}
!111 = !{!"../sound/pci/oxygen/oxygen.c", i32 524, i32 27}
!112 = !{ptr @.str.27, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/oxygen/oxygen.c", i32 682, i32 3}
!114 = !{ptr @.str.28, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/pci/oxygen/oxygen.c", i32 684, i32 4}
!116 = !{ptr @claro_dig_source_control, !117, !"claro_dig_source_control", i1 false, i1 false}
!117 = !{!"../sound/pci/oxygen/oxygen.c", i32 607, i32 38}
!118 = !{ptr @.str.29, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/oxygen/oxygen.c", i32 532, i32 40}
!120 = !{ptr @.str.30, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/pci/oxygen/oxygen.c", i32 532, i32 51}
!122 = !{ptr @claro_dig_source_info.names, !123, !"names", i1 false, i1 false}
!123 = !{!"../sound/pci/oxygen/oxygen.c", i32 532, i32 27}
!124 = !{ptr @.str.31, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/pci/oxygen/oxygen.c", i32 281, i32 32}
!126 = !{ptr @.str.32, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/pci/oxygen/oxygen.c", i32 470, i32 10}
!128 = !{ptr @rolloff_control, !129, !"rolloff_control", i1 false, i1 false}
!129 = !{!"../sound/pci/oxygen/oxygen.c", i32 468, i32 38}
!130 = !{ptr @.str.33, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/pci/oxygen/oxygen.c", i32 427, i32 3}
!132 = !{ptr @.str.34, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/pci/oxygen/oxygen.c", i32 427, i32 21}
!134 = !{ptr @rolloff_info.names, !135, !"names", i1 false, i1 false}
!135 = !{!"../sound/pci/oxygen/oxygen.c", i32 426, i32 27}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{i8 0, i8 2}
