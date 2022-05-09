; ModuleID = '/llk/IR_all_yes/sound/usb/mixer_us16x08.c_pt.bc'
source_filename = "../sound/usb/mixer_us16x08.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.79, i32 }
%union.anon.79 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.snd_us16x08_control_params = type { ptr, i32, i32, i32, ptr, i32 }
%struct.usb_mixer_interface = type { ptr, ptr, %struct.list_head, i32, ptr, ptr, i32, ptr, ptr, i32, %struct.wait_queue_head, ptr, ptr, [6 x i8], ptr, i8, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_mixer_elem_info = type { %struct.usb_mixer_elem_list, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], i8, i8, ptr }
%struct.usb_mixer_elem_list = type { ptr, ptr, ptr, i32, i8, ptr, ptr }
%struct.snd_usb_audio = type { i32, ptr, ptr, [16 x ptr], i32, i16, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i8, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head, i32, i8, i8, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.snd_us16x08_meter_store = type { [16 x i32], [2 x i32], i32, i32, [16 x i32], ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.78, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.78 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.73, [128 x i8] }
%union.anon.73 = type { %union.anon.75 }
%union.anon.75 = type { [64 x i64] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.69, [64 x i8] }
%union.anon.69 = type { %struct.anon.72, [40 x i8] }
%struct.anon.72 = type { i32, i32, [64 x i8], i64, i32 }

@snd_us16x08_route_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 8, ptr @snd_us16x08_route_info, ptr @snd_us16x08_route_get, ptr @snd_us16x08_route_put, %union.anon.79 zeroinitializer, i32 65545 }, [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Line Out Route\00", [17 x i8] zeroinitializer }, align 32
@snd_us16x08_controls_create.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 1, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd_usb_audio\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"snd_us16x08_controls_create\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/usb/mixer_us16x08.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to create route control, err:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@channel_controls = internal constant { [4 x %struct.snd_us16x08_control_params], [32 x i8] } { [4 x %struct.snd_us16x08_control_params] [%struct.snd_us16x08_control_params { ptr @snd_us16x08_ch_boolean_ctl, i32 133, i32 0, i32 16, ptr @.str.28, i32 0 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_ch_int_ctl, i32 129, i32 3, i32 16, ptr @.str.29, i32 127 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_ch_boolean_ctl, i32 131, i32 0, i32 16, ptr @.str.30, i32 0 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_pan_int_ctl, i32 130, i32 5, i32 16, ptr @.str.31, i32 127 }], [32 x i8] zeroinitializer }, align 32
@eq_controls = internal constant { [11 x %struct.snd_us16x08_control_params], [88 x i8] } { [11 x %struct.snd_us16x08_control_params] [%struct.snd_us16x08_control_params { ptr @snd_us16x08_eq_switch_ctl, i32 48, i32 0, i32 16, ptr @.str.34, i32 0 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_eq_gain_ctl, i32 1, i32 3, i32 16, ptr @.str.35, i32 0 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_eq_low_freq_ctl, i32 17, i32 3, i32 16, ptr @.str.36, i32 0 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_eq_gain_ctl, i32 2, i32 3, i32 16, ptr @.str.37, i32 0 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_eq_mid_freq_ctl, i32 18, i32 3, i32 16, ptr @.str.38, i32 0 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_eq_mid_width_ctl, i32 34, i32 3, i32 16, ptr @.str.39, i32 0 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_eq_gain_ctl, i32 3, i32 3, i32 16, ptr @.str.40, i32 0 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_eq_mid_freq_ctl, i32 19, i32 3, i32 16, ptr @.str.41, i32 0 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_eq_mid_width_ctl, i32 35, i32 3, i32 16, ptr @.str.42, i32 0 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_eq_gain_ctl, i32 4, i32 3, i32 16, ptr @.str.43, i32 0 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_eq_high_freq_ctl, i32 20, i32 3, i32 16, ptr @.str.44, i32 0 }], [88 x i8] zeroinitializer }, align 32
@snd_us16x08_meter_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 1, ptr @snd_us16x08_meter_info, ptr @snd_us16x08_meter_get, ptr @snd_us16x08_meter_put, %union.anon.79 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Level Meter\00", [20 x i8] zeroinitializer }, align 32
@add_new_ctl.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.3, ptr @.str.7, i8 1, i8 7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"add_new_ctl\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"us16x08 add mixer %s\0A\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@route_names = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Master Left\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Master Right\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Output 1\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Output 2\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Output 3\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Output 4\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Output 5\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Output 6\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Output 7\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Output 8\00", [23 x i8] zeroinitializer }, align 32
@route_msg = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"a\02\03b\02\01A\01a\02\01b\02\01B\01C\01\00\00", [44 x i8] zeroinitializer }, align 32
@snd_us16x08_route_put.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 0, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_us16x08_route_put\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set routing, err:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@snd_us16x08_master_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 1, ptr @snd_us16x08_master_info, ptr @snd_us16x08_master_get, ptr @snd_us16x08_master_put, %union.anon.79 zeroinitializer, i32 2130772101 }, [48 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Master Volume\00", [18 x i8] zeroinitializer }, align 32
@snd_us16x08_bus_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 1, ptr @snd_ctl_boolean_mono_info, ptr @snd_us16x08_bus_get, ptr @snd_us16x08_bus_put, %union.anon.79 zeroinitializer, i32 65537 }, [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DSP Bypass Switch\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Buss Out Switch\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Master Mute Switch\00", [45 x i8] zeroinitializer }, align 32
@mix_msg_out = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"a\02\02b\02\01\81\02\00\00\00", [21 x i8] zeroinitializer }, align 32
@snd_us16x08_master_put.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_us16x08_master_put\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to set master, err:%d\0A\00", [34 x i8] zeroinitializer }, align 32
@bypass_msg_out = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"E\02\01\00\00", [27 x i8] zeroinitializer }, align 32
@bus_msg_out = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"D\02\01\00\00", [27 x i8] zeroinitializer }, align 32
@snd_us16x08_bus_put.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snd_us16x08_bus_put\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to set bus parameter, err:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@snd_us16x08_ch_boolean_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 16, ptr @snd_ctl_boolean_mono_info, ptr @snd_us16x08_channel_get, ptr @snd_us16x08_channel_put, %union.anon.79 zeroinitializer, i32 65537 }, [48 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Phase Switch\00", [19 x i8] zeroinitializer }, align 32
@snd_us16x08_ch_int_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 16, ptr @snd_us16x08_mix_info, ptr @snd_us16x08_channel_get, ptr @snd_us16x08_channel_put, %union.anon.79 zeroinitializer, i32 2130772101 }, [48 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Line Volume\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Mute Switch\00", [20 x i8] zeroinitializer }, align 32
@snd_us16x08_pan_int_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 16, ptr @snd_us16x08_mix_info, ptr @snd_us16x08_channel_get, ptr @snd_us16x08_channel_put, %union.anon.79 zeroinitializer, i32 2130772223 }, [48 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Pan Left-Right Volume\00", [42 x i8] zeroinitializer }, align 32
@mix_msg_in = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"a\02\04b\02\01\81\02\00\00\00", [21 x i8] zeroinitializer }, align 32
@snd_us16x08_channel_put.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snd_us16x08_channel_put\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set channel, err:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@snd_us16x08_eq_switch_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 16, ptr @snd_ctl_boolean_mono_info, ptr @snd_us16x08_eqswitch_get, ptr @snd_us16x08_eqswitch_put, %union.anon.79 zeroinitializer, i32 65537 }, [48 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EQ Switch\00", [22 x i8] zeroinitializer }, align 32
@snd_us16x08_eq_gain_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 16, ptr @snd_us16x08_mix_info, ptr @snd_us16x08_eq_get, ptr @snd_us16x08_eq_put, %union.anon.79 zeroinitializer, i32 65560 }, [48 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"EQ Low Volume\00", [18 x i8] zeroinitializer }, align 32
@snd_us16x08_eq_low_freq_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 16, ptr @snd_us16x08_mix_info, ptr @snd_us16x08_eq_get, ptr @snd_us16x08_eq_put, %union.anon.79 zeroinitializer, i32 65567 }, [48 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EQ Low Frequency\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EQ MidLow Volume\00", [47 x i8] zeroinitializer }, align 32
@snd_us16x08_eq_mid_freq_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 16, ptr @snd_us16x08_mix_info, ptr @snd_us16x08_eq_get, ptr @snd_us16x08_eq_put, %union.anon.79 zeroinitializer, i32 65599 }, [48 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EQ MidLow Frequency\00", [44 x i8] zeroinitializer }, align 32
@snd_us16x08_eq_mid_width_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 16, ptr @snd_us16x08_mix_info, ptr @snd_us16x08_eq_get, ptr @snd_us16x08_eq_put, %union.anon.79 zeroinitializer, i32 65542 }, [48 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"EQ MidLow Q\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EQ MidHigh Volume\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EQ MidHigh Frequency\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EQ MidHigh Q\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EQ High Volume\00", [17 x i8] zeroinitializer }, align 32
@snd_us16x08_eq_high_freq_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 16, ptr @snd_us16x08_mix_info, ptr @snd_us16x08_eq_get, ptr @snd_us16x08_eq_put, %union.anon.79 zeroinitializer, i32 536936479 }, [48 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EQ High Frequency\00", [46 x i8] zeroinitializer }, align 32
@eqs_msq = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"a\02\04b\02\01Q\02\04R\02\0CS\02\0FT\02\02U\02\01\00\00", [41 x i8] zeroinitializer }, align 32
@snd_us16x08_eqswitch_put.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.45, ptr @.str.3, ptr @.str.46, i8 0, i8 -122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_us16x08_eqswitch_put\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set eq switch, err:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@snd_us16x08_eq_put.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.47, ptr @.str.3, ptr @.str.48, i8 0, i8 -106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_us16x08_eq_put\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to set eq param, err:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@snd_us16x08_compswitch_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 16, ptr @snd_ctl_boolean_mono_info, ptr @snd_us16x08_comp_get, ptr @snd_us16x08_comp_put, %union.anon.79 zeroinitializer, i32 65537 }, [48 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Compressor Switch\00", [46 x i8] zeroinitializer }, align 32
@snd_us16x08_comp_threshold_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 16, ptr @snd_us16x08_mix_info, ptr @snd_us16x08_comp_get, ptr @snd_us16x08_comp_put, %union.anon.79 zeroinitializer, i32 536936480 }, [48 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Compressor Threshold Volume\00", [36 x i8] zeroinitializer }, align 32
@snd_us16x08_comp_ratio_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 16, ptr @snd_us16x08_mix_info, ptr @snd_us16x08_comp_get, ptr @snd_us16x08_comp_put, %union.anon.79 zeroinitializer, i32 65550 }, [48 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Compressor Ratio\00", [47 x i8] zeroinitializer }, align 32
@snd_us16x08_comp_attack_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 16, ptr @snd_us16x08_mix_info, ptr @snd_us16x08_comp_get, ptr @snd_us16x08_comp_put, %union.anon.79 zeroinitializer, i32 33620166 }, [48 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Compressor Attack\00", [46 x i8] zeroinitializer }, align 32
@snd_us16x08_comp_release_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 16, ptr @snd_us16x08_mix_info, ptr @snd_us16x08_comp_get, ptr @snd_us16x08_comp_put, %union.anon.79 zeroinitializer, i32 16842851 }, [48 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Compressor Release\00", [45 x i8] zeroinitializer }, align 32
@snd_us16x08_comp_gain_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 16, ptr @snd_us16x08_mix_info, ptr @snd_us16x08_comp_get, ptr @snd_us16x08_comp_put, %union.anon.79 zeroinitializer, i32 65556 }, [48 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Compressor Volume\00", [46 x i8] zeroinitializer }, align 32
@comp_msg = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"a\02\04b\02\01\91\02\F0\92\02\0A\93\02\02\94\02\01\95\02\03\96\02\01\97\02\01\00\00", [35 x i8] zeroinitializer }, align 32
@ratio_map = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\0A\0B\0D\0F\11\14\19\1E#(2<P\A0\FF", [17 x i8] zeroinitializer }, align 32
@snd_us16x08_comp_put.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.55, ptr @.str.3, ptr @.str.56, i8 0, i8 119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_us16x08_comp_put\00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to set compressor, err:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@mix_init_msg2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"b\02\00a\02\04\B1\01\00\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 68, i64 69, i64 131]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 32, i64 68, i64 69, i64 131]
@__sancov_gen_cov_switch_values.58 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.59 = private unnamed_addr constant [22 x i8] c"snd_us16x08_route_ctl\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 803, i32 38 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1305, i32 43 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1308, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"channel_controls\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1219, i32 48 }
@___asan_gen_.80 = private unnamed_addr constant [12 x i8] c"eq_controls\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1092, i32 48 }
@___asan_gen_.83 = private unnamed_addr constant [22 x i8] c"snd_us16x08_meter_ctl\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 948, i32 38 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1406, i32 44 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1053, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [12 x i8] c"route_names\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 146, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 147, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 147, i32 17 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 147, i32 33 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 147, i32 45 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 147, i32 57 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 148, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 148, i32 14 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 148, i32 26 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 148, i32 38 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 148, i32 50 }
@___asan_gen_.128 = private unnamed_addr constant [10 x i8] c"route_msg\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 22, i32 19 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 232, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [23 x i8] c"snd_us16x08_master_ctl\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 793, i32 38 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1261, i32 11 }
@___asan_gen_.143 = private unnamed_addr constant [20 x i8] c"snd_us16x08_bus_ctl\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 813, i32 38 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1269, i32 11 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1277, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1285, i32 11 }
@___asan_gen_.155 = private unnamed_addr constant [12 x i8] c"mix_msg_out\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 63, i32 19 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 291, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [15 x i8] c"bypass_msg_out\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 73, i32 19 }
@___asan_gen_.167 = private unnamed_addr constant [12 x i8] c"bus_msg_out\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 81, i32 19 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 332, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [27 x i8] c"snd_us16x08_ch_boolean_ctl\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 763, i32 38 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1225, i32 11 }
@___asan_gen_.182 = private unnamed_addr constant [23 x i8] c"snd_us16x08_ch_int_ctl\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 773, i32 38 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1233, i32 11 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1241, i32 11 }
@___asan_gen_.191 = private unnamed_addr constant [24 x i8] c"snd_us16x08_pan_int_ctl\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 783, i32 38 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1249, i32 11 }
@___asan_gen_.197 = private unnamed_addr constant [11 x i8] c"mix_msg_in\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 53, i32 19 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 400, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant [26 x i8] c"snd_us16x08_eq_switch_ctl\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 938, i32 38 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1098, i32 11 }
@___asan_gen_.212 = private unnamed_addr constant [24 x i8] c"snd_us16x08_eq_gain_ctl\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 887, i32 38 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1105, i32 11 }
@___asan_gen_.218 = private unnamed_addr constant [28 x i8] c"snd_us16x08_eq_low_freq_ctl\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 897, i32 38 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1112, i32 11 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1119, i32 11 }
@___asan_gen_.227 = private unnamed_addr constant [28 x i8] c"snd_us16x08_eq_mid_freq_ctl\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 907, i32 38 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1126, i32 11 }
@___asan_gen_.233 = private unnamed_addr constant [29 x i8] c"snd_us16x08_eq_mid_width_ctl\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 917, i32 38 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1133, i32 11 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1140, i32 11 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1147, i32 11 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1154, i32 11 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1161, i32 11 }
@___asan_gen_.251 = private unnamed_addr constant [29 x i8] c"snd_us16x08_eq_high_freq_ctl\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 927, i32 38 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1168, i32 11 }
@___asan_gen_.257 = private unnamed_addr constant [8 x i8] c"eqs_msq\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 117, i32 19 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 537, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 601, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant [27 x i8] c"snd_us16x08_compswitch_ctl\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 823, i32 38 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1179, i32 11 }
@___asan_gen_.278 = private unnamed_addr constant [31 x i8] c"snd_us16x08_comp_threshold_ctl\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 833, i32 38 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1186, i32 11 }
@___asan_gen_.284 = private unnamed_addr constant [27 x i8] c"snd_us16x08_comp_ratio_ctl\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 844, i32 38 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1193, i32 11 }
@___asan_gen_.290 = private unnamed_addr constant [28 x i8] c"snd_us16x08_comp_attack_ctl\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 865, i32 38 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1200, i32 11 }
@___asan_gen_.296 = private unnamed_addr constant [29 x i8] c"snd_us16x08_comp_release_ctl\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 876, i32 38 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1207, i32 11 }
@___asan_gen_.302 = private unnamed_addr constant [26 x i8] c"snd_us16x08_comp_gain_ctl\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 855, i32 38 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1214, i32 11 }
@___asan_gen_.308 = private unnamed_addr constant [9 x i8] c"comp_msg\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 89, i32 19 }
@___asan_gen_.311 = private unnamed_addr constant [10 x i8] c"ratio_map\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 140, i32 19 }
@___asan_gen_.317 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 478, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant [14 x i8] c"mix_init_msg2\00", align 1
@___asan_gen_.321 = private constant [29 x i8] c"../sound/usb/mixer_us16x08.c\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 49, i32 19 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @snd_us16x08_route_ctl, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @channel_controls, ptr @eq_controls, ptr @snd_us16x08_meter_ctl, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @route_names, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @route_msg, ptr @.str.18, ptr @.str.19, ptr @snd_us16x08_master_ctl, ptr @.str.20, ptr @snd_us16x08_bus_ctl, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @mix_msg_out, ptr @.str.24, ptr @.str.25, ptr @bypass_msg_out, ptr @bus_msg_out, ptr @.str.26, ptr @.str.27, ptr @snd_us16x08_ch_boolean_ctl, ptr @.str.28, ptr @snd_us16x08_ch_int_ctl, ptr @.str.29, ptr @.str.30, ptr @snd_us16x08_pan_int_ctl, ptr @.str.31, ptr @mix_msg_in, ptr @.str.32, ptr @.str.33, ptr @snd_us16x08_eq_switch_ctl, ptr @.str.34, ptr @snd_us16x08_eq_gain_ctl, ptr @.str.35, ptr @snd_us16x08_eq_low_freq_ctl, ptr @.str.36, ptr @.str.37, ptr @snd_us16x08_eq_mid_freq_ctl, ptr @.str.38, ptr @snd_us16x08_eq_mid_width_ctl, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @snd_us16x08_eq_high_freq_ctl, ptr @.str.44, ptr @eqs_msq, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @snd_us16x08_compswitch_ctl, ptr @.str.49, ptr @snd_us16x08_comp_threshold_ctl, ptr @.str.50, ptr @snd_us16x08_comp_ratio_ctl, ptr @.str.51, ptr @snd_us16x08_comp_attack_ctl, ptr @.str.52, ptr @snd_us16x08_comp_release_ctl, ptr @.str.53, ptr @snd_us16x08_comp_gain_ctl, ptr @.str.54, ptr @comp_msg, ptr @ratio_map, ptr @.str.55, ptr @.str.56, ptr @mix_init_msg2], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_us16x08_route_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq_controls to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_us16x08_meter_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @route_names to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @route_msg to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_us16x08_master_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_us16x08_bus_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mix_msg_out to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bypass_msg_out to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_msg_out to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_us16x08_ch_boolean_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_us16x08_ch_int_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_us16x08_pan_int_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mix_msg_in to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_us16x08_eq_switch_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_us16x08_eq_gain_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_us16x08_eq_low_freq_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_us16x08_eq_mid_freq_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_us16x08_eq_mid_width_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_us16x08_eq_high_freq_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eqs_msq to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_us16x08_compswitch_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_us16x08_comp_threshold_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_us16x08_comp_ratio_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_us16x08_comp_attack_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_us16x08_comp_release_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_us16x08_comp_gain_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp_msg to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ratio_map to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mix_init_msg2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_us16x08_controls_create(ptr noundef %mixer) local_unnamed_addr #0 align 64 {
entry:
  %elem = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elem) #7
  %0 = ptrtoint ptr %elem to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %elem, align 4, !annotation !189
  %hostif = getelementptr inbounds %struct.usb_mixer_interface, ptr %mixer, i32 0, i32 1
  %1 = ptrtoint ptr %hostif to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hostif, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %4)
  %cmp = icmp eq i8 %4, 3
  br i1 %cmp, label %if.then, label %entry.if.end136_crit_edge

entry.if.end136_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @add_new_ctl(ptr noundef %mixer, ptr noundef nonnull @snd_us16x08_route_ctl, i32 noundef 0, i32 noundef 3, i32 noundef 8, ptr noundef nonnull @.str, ptr noundef null, i1 noundef zeroext false, ptr noundef nonnull %elem)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %do.body, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then
  %5 = ptrtoint ptr %elem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %elem, align 4
  %arrayidx = getelementptr %struct.usb_mixer_elem_info, ptr %6, i32 0, i32 14, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arrayidx, align 4
  %8 = load ptr, ptr %elem, align 4
  %arrayidx.1 = getelementptr %struct.usb_mixer_elem_info, ptr %8, i32 0, i32 14, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %arrayidx.1, align 4
  %10 = load ptr, ptr %elem, align 4
  %arrayidx.2 = getelementptr %struct.usb_mixer_elem_info, ptr %10, i32 0, i32 14, i32 2
  %11 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %arrayidx.2, align 4
  %12 = load ptr, ptr %elem, align 4
  %arrayidx.3 = getelementptr %struct.usb_mixer_elem_info, ptr %12, i32 0, i32 14, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 5, ptr %arrayidx.3, align 4
  %14 = load ptr, ptr %elem, align 4
  %arrayidx.4 = getelementptr %struct.usb_mixer_elem_info, ptr %14, i32 0, i32 14, i32 4
  %15 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 6, ptr %arrayidx.4, align 4
  %16 = load ptr, ptr %elem, align 4
  %arrayidx.5 = getelementptr %struct.usb_mixer_elem_info, ptr %16, i32 0, i32 14, i32 5
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 7, ptr %arrayidx.5, align 4
  %18 = load ptr, ptr %elem, align 4
  %arrayidx.6 = getelementptr %struct.usb_mixer_elem_info, ptr %18, i32 0, i32 14, i32 6
  %19 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %arrayidx.6, align 4
  %20 = load ptr, ptr %elem, align 4
  %arrayidx.7 = getelementptr %struct.usb_mixer_elem_info, ptr %20, i32 0, i32 14, i32 7
  %21 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 9, ptr %arrayidx.7, align 4
  %22 = load ptr, ptr %elem, align 4
  %cached = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %22, i32 0, i32 13
  %23 = ptrtoint ptr %cached to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 255, ptr %cached, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3264, i32 noundef 96) #10
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %for.body.preheader.cleanup_crit_edge, label %snd_us16x08_create_comp_store.exit

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_us16x08_controls_create.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_us16x08_controls_create, %if.then8)) #7
          to label %cleanup [label %if.then8], !srcloc !190

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mixer, align 4
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %dev9 = getelementptr inbounds %struct.usb_device, ptr %28, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_us16x08_controls_create.__UNIQUE_ID_ddebug246, ptr noundef %dev9, ptr noundef nonnull @.str.4, i32 noundef %call) #7
  br label %cleanup

snd_us16x08_create_comp_store.exit:               ; preds = %for.body.preheader
  %29 = call ptr @memset(ptr %call7.i.i, i32 32, i32 16)
  %uglygep.i = getelementptr i8, ptr %call7.i.i, i32 16
  %30 = call ptr @memset(ptr %uglygep.i, i32 0, i32 80)
  %call30 = call fastcc i32 @add_new_ctl(ptr noundef %mixer, ptr noundef nonnull @snd_us16x08_master_ctl, i32 noundef 129, i32 noundef 3, i32 noundef 16, ptr noundef nonnull @.str.20, ptr noundef nonnull %call7.i.i, i1 noundef zeroext true, ptr noundef nonnull %elem)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %snd_us16x08_create_comp_store.exit.cleanup_crit_edge, label %if.end34

snd_us16x08_create_comp_store.exit.cleanup_crit_edge: ; preds = %snd_us16x08_create_comp_store.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %snd_us16x08_create_comp_store.exit
  %31 = ptrtoint ptr %elem to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %elem, align 4
  %cache_val36 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %32, i32 0, i32 14
  %33 = ptrtoint ptr %cache_val36 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 127, ptr %cache_val36, align 4
  %cached38 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %32, i32 0, i32 13
  %34 = ptrtoint ptr %cached38 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %cached38, align 4
  %call30.1 = call fastcc i32 @add_new_ctl(ptr noundef %mixer, ptr noundef nonnull @snd_us16x08_bus_ctl, i32 noundef 69, i32 noundef 0, i32 noundef 16, ptr noundef nonnull @.str.21, ptr noundef nonnull %call7.i.i, i1 noundef zeroext false, ptr noundef nonnull %elem)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.1)
  %cmp31.1 = icmp slt i32 %call30.1, 0
  br i1 %cmp31.1, label %if.end34.cleanup_crit_edge, label %if.end34.1

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34.1:                                       ; preds = %if.end34
  %35 = ptrtoint ptr %elem to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %elem, align 4
  %cache_val36.1 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %36, i32 0, i32 14
  %37 = ptrtoint ptr %cache_val36.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %cache_val36.1, align 4
  %cached38.1 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %36, i32 0, i32 13
  %38 = ptrtoint ptr %cached38.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %cached38.1, align 4
  %call30.2 = call fastcc i32 @add_new_ctl(ptr noundef %mixer, ptr noundef nonnull @snd_us16x08_bus_ctl, i32 noundef 68, i32 noundef 0, i32 noundef 16, ptr noundef nonnull @.str.22, ptr noundef nonnull %call7.i.i, i1 noundef zeroext false, ptr noundef nonnull %elem)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.2)
  %cmp31.2 = icmp slt i32 %call30.2, 0
  br i1 %cmp31.2, label %if.end34.1.cleanup_crit_edge, label %if.end34.2

if.end34.1.cleanup_crit_edge:                     ; preds = %if.end34.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34.2:                                       ; preds = %if.end34.1
  %39 = ptrtoint ptr %elem to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %elem, align 4
  %cache_val36.2 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %40, i32 0, i32 14
  %41 = ptrtoint ptr %cache_val36.2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %cache_val36.2, align 4
  %cached38.2 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %40, i32 0, i32 13
  %42 = ptrtoint ptr %cached38.2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %cached38.2, align 4
  %call30.3 = call fastcc i32 @add_new_ctl(ptr noundef %mixer, ptr noundef nonnull @snd_us16x08_bus_ctl, i32 noundef 131, i32 noundef 0, i32 noundef 16, ptr noundef nonnull @.str.23, ptr noundef nonnull %call7.i.i, i1 noundef zeroext false, ptr noundef nonnull %elem)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.3)
  %cmp31.3 = icmp slt i32 %call30.3, 0
  br i1 %cmp31.3, label %if.end34.2.cleanup_crit_edge, label %if.end34.3

if.end34.2.cleanup_crit_edge:                     ; preds = %if.end34.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34.3:                                       ; preds = %if.end34.2
  %43 = ptrtoint ptr %elem to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %elem, align 4
  %cache_val36.3 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %44, i32 0, i32 14
  %45 = ptrtoint ptr %cache_val36.3 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %cache_val36.3, align 4
  %cached38.3 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %44, i32 0, i32 13
  %46 = ptrtoint ptr %cached38.3 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %cached38.3, align 4
  br label %for.body45

for.body45:                                       ; preds = %for.cond61.preheader.for.body45_crit_edge, %if.end34.3
  %i.2218 = phi i32 [ %inc74, %for.cond61.preheader.for.body45_crit_edge ], [ 0, %if.end34.3 ]
  %arrayidx46 = getelementptr [4 x %struct.snd_us16x08_control_params], ptr @channel_controls, i32 0, i32 %i.2218
  %47 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx46, align 4
  %control_id49 = getelementptr [4 x %struct.snd_us16x08_control_params], ptr @channel_controls, i32 0, i32 %i.2218, i32 1
  %49 = ptrtoint ptr %control_id49 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %control_id49, align 4
  %type51 = getelementptr [4 x %struct.snd_us16x08_control_params], ptr @channel_controls, i32 0, i32 %i.2218, i32 2
  %51 = ptrtoint ptr %type51 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %type51, align 4
  %num_channels53 = getelementptr [4 x %struct.snd_us16x08_control_params], ptr @channel_controls, i32 0, i32 %i.2218, i32 3
  %53 = ptrtoint ptr %num_channels53 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_channels53, align 4
  %name55 = getelementptr [4 x %struct.snd_us16x08_control_params], ptr @channel_controls, i32 0, i32 %i.2218, i32 4
  %55 = ptrtoint ptr %name55 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name55, align 4
  %call56 = call fastcc i32 @add_new_ctl(ptr noundef %mixer, ptr noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef %54, ptr noundef %56, ptr noundef nonnull %call7.i.i, i1 noundef zeroext false, ptr noundef nonnull %elem)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %for.body45.cleanup_crit_edge, label %for.cond61.preheader

for.body45.cleanup_crit_edge:                     ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond61.preheader:                             ; preds = %for.body45
  %default_val66 = getelementptr [4 x %struct.snd_us16x08_control_params], ptr @channel_controls, i32 0, i32 %i.2218, i32 5
  %57 = ptrtoint ptr %default_val66 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %default_val66, align 4
  %59 = ptrtoint ptr %elem to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %elem, align 4
  %arrayidx68 = getelementptr %struct.usb_mixer_elem_info, ptr %60, i32 0, i32 14, i32 0
  %61 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %58, ptr %arrayidx68, align 4
  %62 = load ptr, ptr %elem, align 4
  %arrayidx68.1 = getelementptr %struct.usb_mixer_elem_info, ptr %62, i32 0, i32 14, i32 1
  %63 = ptrtoint ptr %arrayidx68.1 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %58, ptr %arrayidx68.1, align 4
  %64 = load ptr, ptr %elem, align 4
  %arrayidx68.2 = getelementptr %struct.usb_mixer_elem_info, ptr %64, i32 0, i32 14, i32 2
  %65 = ptrtoint ptr %arrayidx68.2 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %58, ptr %arrayidx68.2, align 4
  %66 = load ptr, ptr %elem, align 4
  %arrayidx68.3 = getelementptr %struct.usb_mixer_elem_info, ptr %66, i32 0, i32 14, i32 3
  %67 = ptrtoint ptr %arrayidx68.3 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %58, ptr %arrayidx68.3, align 4
  %68 = load ptr, ptr %elem, align 4
  %arrayidx68.4 = getelementptr %struct.usb_mixer_elem_info, ptr %68, i32 0, i32 14, i32 4
  %69 = ptrtoint ptr %arrayidx68.4 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %58, ptr %arrayidx68.4, align 4
  %70 = load ptr, ptr %elem, align 4
  %arrayidx68.5 = getelementptr %struct.usb_mixer_elem_info, ptr %70, i32 0, i32 14, i32 5
  %71 = ptrtoint ptr %arrayidx68.5 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %58, ptr %arrayidx68.5, align 4
  %72 = load ptr, ptr %elem, align 4
  %arrayidx68.6 = getelementptr %struct.usb_mixer_elem_info, ptr %72, i32 0, i32 14, i32 6
  %73 = ptrtoint ptr %arrayidx68.6 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %58, ptr %arrayidx68.6, align 4
  %74 = load ptr, ptr %elem, align 4
  %arrayidx68.7 = getelementptr %struct.usb_mixer_elem_info, ptr %74, i32 0, i32 14, i32 7
  %75 = ptrtoint ptr %arrayidx68.7 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %58, ptr %arrayidx68.7, align 4
  %76 = load ptr, ptr %elem, align 4
  %arrayidx68.8 = getelementptr %struct.usb_mixer_elem_info, ptr %76, i32 0, i32 14, i32 8
  %77 = ptrtoint ptr %arrayidx68.8 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %58, ptr %arrayidx68.8, align 4
  %78 = load ptr, ptr %elem, align 4
  %arrayidx68.9 = getelementptr %struct.usb_mixer_elem_info, ptr %78, i32 0, i32 14, i32 9
  %79 = ptrtoint ptr %arrayidx68.9 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %58, ptr %arrayidx68.9, align 4
  %80 = load ptr, ptr %elem, align 4
  %arrayidx68.10 = getelementptr %struct.usb_mixer_elem_info, ptr %80, i32 0, i32 14, i32 10
  %81 = ptrtoint ptr %arrayidx68.10 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %58, ptr %arrayidx68.10, align 4
  %82 = load ptr, ptr %elem, align 4
  %arrayidx68.11 = getelementptr %struct.usb_mixer_elem_info, ptr %82, i32 0, i32 14, i32 11
  %83 = ptrtoint ptr %arrayidx68.11 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %58, ptr %arrayidx68.11, align 4
  %84 = load ptr, ptr %elem, align 4
  %arrayidx68.12 = getelementptr %struct.usb_mixer_elem_info, ptr %84, i32 0, i32 14, i32 12
  %85 = ptrtoint ptr %arrayidx68.12 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %58, ptr %arrayidx68.12, align 4
  %86 = load ptr, ptr %elem, align 4
  %arrayidx68.13 = getelementptr %struct.usb_mixer_elem_info, ptr %86, i32 0, i32 14, i32 13
  %87 = ptrtoint ptr %arrayidx68.13 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %58, ptr %arrayidx68.13, align 4
  %88 = load ptr, ptr %elem, align 4
  %arrayidx68.14 = getelementptr %struct.usb_mixer_elem_info, ptr %88, i32 0, i32 14, i32 14
  %89 = ptrtoint ptr %arrayidx68.14 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %58, ptr %arrayidx68.14, align 4
  %90 = load ptr, ptr %elem, align 4
  %arrayidx68.15 = getelementptr %struct.usb_mixer_elem_info, ptr %90, i32 0, i32 14, i32 15
  %91 = ptrtoint ptr %arrayidx68.15 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %58, ptr %arrayidx68.15, align 4
  %92 = load ptr, ptr %elem, align 4
  %cached72 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %92, i32 0, i32 13
  %93 = ptrtoint ptr %cached72 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 65535, ptr %cached72, align 4
  %inc74 = add nuw nsw i32 %i.2218, 1
  %exitcond.not = icmp eq i32 %inc74, 4
  br i1 %exitcond.not, label %for.end75, label %for.cond61.preheader.for.body45_crit_edge

for.cond61.preheader.for.body45_crit_edge:        ; preds = %for.cond61.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body45

for.end75:                                        ; preds = %for.cond61.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %94 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i208 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %94, i32 noundef 3264, i32 noundef 256) #10
  %tobool.not.i209 = icmp eq ptr %call7.i.i208, null
  br i1 %tobool.not.i209, label %for.end75.cleanup_crit_edge, label %for.cond1.preheader.preheader.i

for.end75.cleanup_crit_edge:                      ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond1.preheader.preheader.i:                  ; preds = %for.end75
  %arrayidx.1.i = getelementptr [4 x [4 x [16 x i8]]], ptr %call7.i.i208, i32 0, i32 1
  %arrayidx.2.i = getelementptr [4 x [4 x [16 x i8]]], ptr %call7.i.i208, i32 0, i32 2
  %arrayidx.3.i = getelementptr [4 x [4 x [16 x i8]]], ptr %call7.i.i208, i32 0, i32 3
  %95 = call ptr @memset(ptr %call7.i.i208, i32 12, i32 16)
  %uglygep = getelementptr i8, ptr %call7.i.i208, i32 16
  %96 = call ptr @memset(ptr %uglygep, i32 5, i32 16)
  %uglygep228 = getelementptr i8, ptr %call7.i.i208, i32 32
  %97 = call ptr @memset(ptr %uglygep228, i32 255, i32 16)
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %for.inc.3.i.for.inc.3.i_crit_edge, %for.cond1.preheader.preheader.i
  %i.086.i = phi i32 [ %inc46.i, %for.inc.3.i.for.inc.3.i_crit_edge ], [ 0, %for.cond1.preheader.preheader.i ]
  %arrayidx9.i = getelementptr [4 x [4 x [16 x i8]]], ptr %call7.i.i208, i32 0, i32 0, i32 3, i32 %i.086.i
  %98 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %arrayidx9.i, align 1
  %arrayidx5.1.i = getelementptr [16 x i8], ptr %arrayidx.1.i, i32 0, i32 %i.086.i
  %99 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 12, ptr %arrayidx5.1.i, align 1
  %arrayidx9.1.i = getelementptr [4 x [4 x [16 x i8]]], ptr %call7.i.i208, i32 0, i32 1, i32 3, i32 %i.086.i
  %100 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %arrayidx9.1.i, align 1
  %arrayidx22.1.i = getelementptr [4 x [4 x [16 x i8]]], ptr %call7.i.i208, i32 0, i32 1, i32 1, i32 %i.086.i
  %101 = ptrtoint ptr %arrayidx22.1.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 14, ptr %arrayidx22.1.i, align 1
  %arrayidx26.1.i = getelementptr [4 x [4 x [16 x i8]]], ptr %call7.i.i208, i32 0, i32 1, i32 2, i32 %i.086.i
  %102 = ptrtoint ptr %arrayidx26.1.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 2, ptr %arrayidx26.1.i, align 1
  %arrayidx5.2.i = getelementptr [16 x i8], ptr %arrayidx.2.i, i32 0, i32 %i.086.i
  %103 = ptrtoint ptr %arrayidx5.2.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 12, ptr %arrayidx5.2.i, align 1
  %arrayidx9.2.i = getelementptr [4 x [4 x [16 x i8]]], ptr %call7.i.i208, i32 0, i32 2, i32 3, i32 %i.086.i
  %104 = ptrtoint ptr %arrayidx9.2.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %arrayidx9.2.i, align 1
  %arrayidx31.2.i = getelementptr [4 x [4 x [16 x i8]]], ptr %call7.i.i208, i32 0, i32 2, i32 1, i32 %i.086.i
  %105 = ptrtoint ptr %arrayidx31.2.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 27, ptr %arrayidx31.2.i, align 1
  %arrayidx35.2.i = getelementptr [4 x [4 x [16 x i8]]], ptr %call7.i.i208, i32 0, i32 2, i32 2, i32 %i.086.i
  %106 = ptrtoint ptr %arrayidx35.2.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 2, ptr %arrayidx35.2.i, align 1
  %arrayidx5.3.i = getelementptr [16 x i8], ptr %arrayidx.3.i, i32 0, i32 %i.086.i
  %107 = ptrtoint ptr %arrayidx5.3.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 12, ptr %arrayidx5.3.i, align 1
  %arrayidx9.3.i = getelementptr [4 x [4 x [16 x i8]]], ptr %call7.i.i208, i32 0, i32 3, i32 3, i32 %i.086.i
  %108 = ptrtoint ptr %arrayidx9.3.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %arrayidx9.3.i, align 1
  %arrayidx40.3.i = getelementptr [4 x [4 x [16 x i8]]], ptr %call7.i.i208, i32 0, i32 3, i32 1, i32 %i.086.i
  %109 = ptrtoint ptr %arrayidx40.3.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 15, ptr %arrayidx40.3.i, align 1
  %arrayidx44.3.i = getelementptr [4 x [4 x [16 x i8]]], ptr %call7.i.i208, i32 0, i32 3, i32 2, i32 %i.086.i
  %110 = ptrtoint ptr %arrayidx44.3.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 -1, ptr %arrayidx44.3.i, align 1
  %inc46.i = add nuw nsw i32 %i.086.i, 1
  %exitcond.not.i = icmp eq i32 %inc46.i, 16
  br i1 %exitcond.not.i, label %for.inc.3.i.for.body83_crit_edge, label %for.inc.3.i.for.inc.3.i_crit_edge

for.inc.3.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

for.inc.3.i.for.body83_crit_edge:                 ; preds = %for.inc.3.i
  br label %for.body83

for.cond80:                                       ; preds = %for.body83
  %inc102 = add nuw nsw i32 %i.3219, 1
  %exitcond238.not = icmp eq i32 %inc102, 11
  br i1 %exitcond238.not, label %for.body107.preheader, label %for.cond80.for.body83_crit_edge

for.cond80.for.body83_crit_edge:                  ; preds = %for.cond80
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body83

for.body107.preheader:                            ; preds = %for.cond80
  %call118 = call fastcc i32 @add_new_ctl(ptr noundef %mixer, ptr noundef nonnull @snd_us16x08_compswitch_ctl, i32 noundef 55, i32 noundef 0, i32 noundef 16, ptr noundef nonnull @.str.49, ptr noundef nonnull %call7.i.i, i1 noundef zeroext false, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %cmp119 = icmp slt i32 %call118, 0
  br i1 %cmp119, label %for.body107.preheader.cleanup_crit_edge, label %for.cond104

for.body107.preheader.cleanup_crit_edge:          ; preds = %for.body107.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body83:                                       ; preds = %for.cond80.for.body83_crit_edge, %for.inc.3.i.for.body83_crit_edge
  %i.3219 = phi i32 [ %inc102, %for.cond80.for.body83_crit_edge ], [ 0, %for.inc.3.i.for.body83_crit_edge ]
  %arrayidx84 = getelementptr [11 x %struct.snd_us16x08_control_params], ptr @eq_controls, i32 0, i32 %i.3219
  %111 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx84, align 4
  %control_id87 = getelementptr [11 x %struct.snd_us16x08_control_params], ptr @eq_controls, i32 0, i32 %i.3219, i32 1
  %113 = ptrtoint ptr %control_id87 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %control_id87, align 4
  %type89 = getelementptr [11 x %struct.snd_us16x08_control_params], ptr @eq_controls, i32 0, i32 %i.3219, i32 2
  %115 = ptrtoint ptr %type89 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %type89, align 4
  %num_channels91 = getelementptr [11 x %struct.snd_us16x08_control_params], ptr @eq_controls, i32 0, i32 %i.3219, i32 3
  %117 = ptrtoint ptr %num_channels91 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %num_channels91, align 4
  %name93 = getelementptr [11 x %struct.snd_us16x08_control_params], ptr @eq_controls, i32 0, i32 %i.3219, i32 4
  %119 = ptrtoint ptr %name93 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %name93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.3219)
  %cmp94 = icmp eq i32 %i.3219, 0
  %call96 = call fastcc i32 @add_new_ctl(ptr noundef %mixer, ptr noundef %112, i32 noundef %114, i32 noundef %116, i32 noundef %118, ptr noundef %120, ptr noundef nonnull %call7.i.i208, i1 noundef zeroext %cmp94, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %for.body83.cleanup_crit_edge, label %for.cond80

for.body83.cleanup_crit_edge:                     ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond104:                                      ; preds = %for.body107.preheader
  %call118.1 = call fastcc i32 @add_new_ctl(ptr noundef %mixer, ptr noundef nonnull @snd_us16x08_comp_threshold_ctl, i32 noundef 50, i32 noundef 3, i32 noundef 16, ptr noundef nonnull @.str.50, ptr noundef nonnull %call7.i.i, i1 noundef zeroext false, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118.1)
  %cmp119.1 = icmp slt i32 %call118.1, 0
  br i1 %cmp119.1, label %for.cond104.cleanup_crit_edge, label %for.cond104.1

for.cond104.cleanup_crit_edge:                    ; preds = %for.cond104
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond104.1:                                    ; preds = %for.cond104
  %call118.2 = call fastcc i32 @add_new_ctl(ptr noundef %mixer, ptr noundef nonnull @snd_us16x08_comp_ratio_ctl, i32 noundef 51, i32 noundef 3, i32 noundef 16, ptr noundef nonnull @.str.51, ptr noundef nonnull %call7.i.i, i1 noundef zeroext false, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118.2)
  %cmp119.2 = icmp slt i32 %call118.2, 0
  br i1 %cmp119.2, label %for.cond104.1.cleanup_crit_edge, label %for.cond104.2

for.cond104.1.cleanup_crit_edge:                  ; preds = %for.cond104.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond104.2:                                    ; preds = %for.cond104.1
  %call118.3 = call fastcc i32 @add_new_ctl(ptr noundef %mixer, ptr noundef nonnull @snd_us16x08_comp_attack_ctl, i32 noundef 52, i32 noundef 3, i32 noundef 16, ptr noundef nonnull @.str.52, ptr noundef nonnull %call7.i.i, i1 noundef zeroext false, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118.3)
  %cmp119.3 = icmp slt i32 %call118.3, 0
  br i1 %cmp119.3, label %for.cond104.2.cleanup_crit_edge, label %for.cond104.3

for.cond104.2.cleanup_crit_edge:                  ; preds = %for.cond104.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond104.3:                                    ; preds = %for.cond104.2
  %call118.4 = call fastcc i32 @add_new_ctl(ptr noundef %mixer, ptr noundef nonnull @snd_us16x08_comp_release_ctl, i32 noundef 53, i32 noundef 3, i32 noundef 16, ptr noundef nonnull @.str.53, ptr noundef nonnull %call7.i.i, i1 noundef zeroext false, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118.4)
  %cmp119.4 = icmp slt i32 %call118.4, 0
  br i1 %cmp119.4, label %for.cond104.3.cleanup_crit_edge, label %for.cond104.4

for.cond104.3.cleanup_crit_edge:                  ; preds = %for.cond104.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond104.4:                                    ; preds = %for.cond104.3
  %call118.5 = call fastcc i32 @add_new_ctl(ptr noundef %mixer, ptr noundef nonnull @snd_us16x08_comp_gain_ctl, i32 noundef 54, i32 noundef 3, i32 noundef 16, ptr noundef nonnull @.str.54, ptr noundef nonnull %call7.i.i, i1 noundef zeroext false, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118.5)
  %cmp119.5 = icmp slt i32 %call118.5, 0
  br i1 %cmp119.5, label %for.cond104.4.cleanup_crit_edge, label %for.cond104.5

for.cond104.4.cleanup_crit_edge:                  ; preds = %for.cond104.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond104.5:                                    ; preds = %for.cond104.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %121 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %121, i32 noundef 3520, i32 noundef 148) #10
  %tobool.not.i210 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i210, label %for.cond104.5.cleanup_crit_edge, label %if.end129

for.cond104.5.cleanup_crit_edge:                  ; preds = %for.cond104.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end129:                                        ; preds = %for.cond104.5
  %comp_index.i = getelementptr inbounds %struct.snd_us16x08_meter_store, ptr %call7.i.i.i, i32 0, i32 2
  %122 = ptrtoint ptr %comp_index.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 1, ptr %comp_index.i, align 8
  %comp_active_index.i = getelementptr inbounds %struct.snd_us16x08_meter_store, ptr %call7.i.i.i, i32 0, i32 3
  %123 = ptrtoint ptr %comp_active_index.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %comp_active_index.i, align 4
  %comp_store130 = getelementptr inbounds %struct.snd_us16x08_meter_store, ptr %call7.i.i.i, i32 0, i32 5
  %124 = ptrtoint ptr %comp_store130 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call7.i.i, ptr %comp_store130, align 8
  %call131 = call fastcc i32 @add_new_ctl(ptr noundef %mixer, ptr noundef nonnull @snd_us16x08_meter_ctl, i32 noundef 177, i32 noundef 5, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull %call7.i.i.i, i1 noundef zeroext true, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %cmp132 = icmp slt i32 %call131, 0
  br i1 %cmp132, label %if.end129.cleanup_crit_edge, label %if.end129.if.end136_crit_edge

if.end129.if.end136_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136

if.end129.cleanup_crit_edge:                      ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end136:                                        ; preds = %if.end129.if.end136_crit_edge, %entry.if.end136_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end136, %if.end129.cleanup_crit_edge, %for.cond104.5.cleanup_crit_edge, %for.cond104.4.cleanup_crit_edge, %for.cond104.3.cleanup_crit_edge, %for.cond104.2.cleanup_crit_edge, %for.cond104.1.cleanup_crit_edge, %for.cond104.cleanup_crit_edge, %for.body83.cleanup_crit_edge, %for.body107.preheader.cleanup_crit_edge, %for.end75.cleanup_crit_edge, %for.body45.cleanup_crit_edge, %if.end34.2.cleanup_crit_edge, %if.end34.1.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %snd_us16x08_create_comp_store.exit.cleanup_crit_edge, %if.then8, %do.body, %for.body.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end136 ], [ %call, %if.then8 ], [ %call131, %if.end129.cleanup_crit_edge ], [ %call, %do.body ], [ -12, %for.body.preheader.cleanup_crit_edge ], [ -12, %for.end75.cleanup_crit_edge ], [ -12, %for.cond104.5.cleanup_crit_edge ], [ %call118, %for.body107.preheader.cleanup_crit_edge ], [ %call118.1, %for.cond104.cleanup_crit_edge ], [ %call118.2, %for.cond104.1.cleanup_crit_edge ], [ %call118.3, %for.cond104.2.cleanup_crit_edge ], [ %call118.4, %for.cond104.3.cleanup_crit_edge ], [ %call118.5, %for.cond104.4.cleanup_crit_edge ], [ %call30, %snd_us16x08_create_comp_store.exit.cleanup_crit_edge ], [ %call30.1, %if.end34.cleanup_crit_edge ], [ %call30.2, %if.end34.1.cleanup_crit_edge ], [ %call30.3, %if.end34.2.cleanup_crit_edge ], [ %call96, %for.body83.cleanup_crit_edge ], [ %call56, %for.body45.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elem) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_new_ctl(ptr noundef %mixer, ptr noundef %ncontrol, i32 noundef %index, i32 noundef %val_type, i32 noundef %channels, ptr noundef %name, ptr noundef %opt, i1 noundef zeroext %do_private_free, ptr noundef writeonly %elem_ret) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_new_ctl.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_new_ctl, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !190

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mixer, align 4
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @add_new_ctl.__UNIQUE_ID_ddebug245, ptr noundef %dev4, ptr noundef nonnull @.str.7, ptr noundef %name) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 152) #10
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mixer, ptr %call7.i.i, align 8
  %resume = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %resume to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %resume, align 8
  %control = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %control, align 4
  %idx_off = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %idx_off to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %idx_off, align 4
  %id = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %index, ptr %id, align 4
  %val_type12 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %val_type12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %val_type, ptr %val_type12, align 4
  %channels13 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %channels13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %channels, ptr %channels13, align 8
  %private_data = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %call7.i.i, i32 0, i32 17
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %opt, ptr %private_data, align 4
  %call14 = tail call ptr @snd_ctl_new1(ptr noundef %ncontrol, ptr noundef nonnull %call7.i.i) #7
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %spec.select = select i1 %do_private_free, ptr @elem_private_free, ptr @snd_usb_mixer_elem_free
  %13 = getelementptr inbounds %struct.snd_kcontrol, ptr %call14, i32 0, i32 9
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %spec.select, ptr %13, align 4
  %name23 = getelementptr inbounds %struct.snd_kcontrol, ptr %call14, i32 0, i32 1, i32 4
  %call24 = tail call i32 @strscpy(ptr noundef %name23, ptr noundef %name, i32 noundef 44) #7
  %call26 = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call14, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %if.end17.cleanup_crit_edge, label %if.end28

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.end17
  %tobool29.not = icmp eq ptr %elem_ret, null
  br i1 %tobool29.not, label %if.end28.cleanup_crit_edge, label %if.then30

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %elem_ret to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %elem_ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end28.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then16, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then16 ], [ -12, %do.end.cleanup_crit_edge ], [ %call26, %if.end17.cleanup_crit_edge ], [ 0, %if.then30 ], [ 0, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @elem_private_free(ptr nocapture noundef %kctl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %private_data1 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data1, align 4
  tail call void @kfree(ptr noundef %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %1) #7
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %private_data, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_mixer_elem_free(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_mixer_add_list(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_us16x08_route_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 10, ptr noundef nonnull @route_names) #7
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_us16x08_route_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index1 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index1, align 4
  %arrayidx = getelementptr %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 14, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_us16x08_route_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %index2 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %6 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index2, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #7
  %8 = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i32 2
  %9 = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i32 5
  %10 = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i32 13
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %12)
  %13 = icmp ugt i32 %12, 9
  br i1 %13, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = call ptr @memcpy(ptr %buf, ptr @route_msg, i32 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp4 = icmp ult i32 %12, 2
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %8, align 1
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 3, ptr %8, align 1
  %sub = add nsw i32 %12, -2
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %val_org.0 = phi i32 [ %12, %if.then5 ], [ %sub, %if.else ]
  %17 = trunc i32 %val_org.0 to i8
  %conv10 = add nuw nsw i8 %17, 1
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv10, ptr %9, align 1
  %19 = trunc i32 %7 to i8
  %conv13 = add i8 %19, 1
  %20 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv13, ptr %10, align 1
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i.i = shl i32 %24, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = call i32 @snd_usb_ctl_msg(ptr noundef %22, i32 noundef %or.i, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf, i16 noundef zeroext 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp16 = icmp sgt i32 %call2.i, 0
  br i1 %cmp16, label %if.then18, label %do.body

if.then18:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw i32 1, %7
  %cached = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 13
  %25 = ptrtoint ptr %cached to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cached, align 4
  %or = or i32 %26, %shl
  store i32 %or, ptr %cached, align 4
  %arrayidx19 = getelementptr %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 14, i32 %7
  %27 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %12, ptr %arrayidx19, align 4
  br label %if.end27

do.body:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_us16x08_route_put.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_us16x08_route_put, %if.then24)) #7
          to label %if.end27 [label %if.then24], !srcloc !190

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  %dev25 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_us16x08_route_put.__UNIQUE_ID_ddebug238, ptr noundef %dev25, ptr noundef nonnull @.str.19, i32 noundef %call2.i) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %do.body, %if.then18
  %cond = zext i1 %cmp16 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end27 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_ctl_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_us16x08_master_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %0 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %count, align 8
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %type, align 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and = and i32 %3, 255
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %4 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %max, align 4
  %5 = load i32, ptr %private_value, align 4
  %shr2 = lshr i32 %5, 8
  %and3 = and i32 %shr2, 255
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and3, ptr %value, align 8
  %7 = load i32, ptr %private_value, align 4
  %shr6 = lshr i32 %7, 16
  %and7 = and i32 %shr6, 255
  %step = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 2
  %8 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and7, ptr %step, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_us16x08_master_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index1 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index1, align 4
  %arrayidx = getelementptr %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 14, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_us16x08_master_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %buf = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buf) #7
  %index2 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %6 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index2, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %10 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %11, 8
  %and = and i32 %shr, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %and)
  %cmp = icmp ult i32 %9, %and
  %and5 = and i32 %11, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %and5)
  %cmp6 = icmp ugt i32 %9, %and5
  %or.cond = select i1 %cmp, i1 true, i1 %cmp6
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 8
  %13 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 6
  %14 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 5
  %15 = call ptr @memcpy(ptr %buf, ptr @mix_msg_out, i32 11)
  %shr8 = lshr i32 %11, 24
  %sub = sub i32 %9, %shr8
  %conv = trunc i32 %sub to i8
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %12, align 1
  %id12 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %id12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id12, align 4
  %conv13 = trunc i32 %18 to i8
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv13, ptr %13, align 1
  %20 = trunc i32 %7 to i8
  %conv15 = add i8 %20, 1
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv15, ptr %14, align 1
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 1
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %shl.i.i = shl i32 %25, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = call i32 @snd_usb_ctl_msg(ptr noundef %23, i32 noundef %or.i, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf, i16 noundef zeroext 11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp18 = icmp sgt i32 %call2.i, 0
  br i1 %cmp18, label %if.then20, label %do.body

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw i32 1, %7
  %cached = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 13
  %26 = ptrtoint ptr %cached to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cached, align 4
  %or = or i32 %27, %shl
  store i32 %or, ptr %cached, align 4
  %arrayidx21 = getelementptr %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 14, i32 %7
  %28 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %9, ptr %arrayidx21, align 4
  br label %if.end28

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_us16x08_master_put.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_us16x08_master_put, %if.then25)) #7
          to label %if.end28 [label %if.then25], !srcloc !190

if.then25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  %dev26 = getelementptr inbounds %struct.usb_device, ptr %30, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_us16x08_master_put.__UNIQUE_ID_ddebug239, ptr noundef %dev26, ptr noundef nonnull @.str.25, i32 noundef %call2.i) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %do.body, %if.then20
  %cond = zext i1 %cmp18 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end28 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_us16x08_bus_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %id = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 68, label %entry.sw.epilog.sink.split_crit_edge
    i32 69, label %entry.sw.epilog.sink.split_crit_edge17
    i32 131, label %entry.sw.epilog.sink.split_crit_edge18
  ]

entry.sw.epilog.sink.split_crit_edge18:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge17:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %entry.sw.epilog.sink.split_crit_edge, %entry.sw.epilog.sink.split_crit_edge17, %entry.sw.epilog.sink.split_crit_edge18
  %cache_val8 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %cache_val8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cache_val8, align 4
  %value10 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %value10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %value10, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_us16x08_bus_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %buf = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buf) #7
  %6 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 2
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = call ptr @memset(ptr %buf, i32 255, i32 11)
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  %id = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %11, label %entry.do.body_crit_edge [
    i32 69, label %sw.bb
    i32 68, label %sw.bb5
    i32 131, label %sw.bb11
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = call ptr @memcpy(ptr %buf, ptr @bypass_msg_out, i32 5)
  %conv = trunc i32 %9 to i8
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %6, align 1
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i.i = shl i32 %18, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = call i32 @snd_usb_ctl_msg(ptr noundef %16, i32 noundef %or.i, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf, i16 noundef zeroext 5) #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %19 = call ptr @memcpy(ptr %buf, ptr @bus_msg_out, i32 5)
  %conv7 = trunc i32 %9 to i8
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv7, ptr %6, align 1
  %dev.i44 = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %dev.i44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i44, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i.i45 = shl i32 %24, 8
  %or.i46 = or i32 %shl.i.i45, -2147483648
  %call2.i47 = call i32 @snd_usb_ctl_msg(ptr noundef %22, i32 noundef %or.i46, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf, i16 noundef zeroext 5) #7
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %25 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 8
  %26 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 6
  %27 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 5
  %28 = call ptr @memcpy(ptr %buf, ptr @mix_msg_out, i32 11)
  %conv13 = trunc i32 %9 to i8
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv13, ptr %25, align 1
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -125, ptr %26, align 1
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %27, align 1
  %dev.i48 = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 1
  %32 = ptrtoint ptr %dev.i48 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i48, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %shl.i.i49 = shl i32 %35, 8
  %or.i50 = or i32 %shl.i.i49, -2147483648
  %call2.i51 = call i32 @snd_usb_ctl_msg(ptr noundef %33, i32 noundef %or.i50, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf, i16 noundef zeroext 11) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb5, %sw.bb
  %err.0 = phi i32 [ %call2.i51, %sw.bb11 ], [ %call2.i47, %sw.bb5 ], [ %call2.i, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp = icmp sgt i32 %err.0, 0
  br i1 %cmp, label %if.then, label %sw.epilog.do.body_crit_edge

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %cached = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 13
  %36 = ptrtoint ptr %cached to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cached, align 4
  %or = or i32 %37, 1
  store i32 %or, ptr %cached, align 4
  %cache_val = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 14
  %38 = ptrtoint ptr %cache_val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %9, ptr %cache_val, align 4
  br label %if.end29

do.body:                                          ; preds = %sw.epilog.do.body_crit_edge, %entry.do.body_crit_edge
  %err.054 = phi i32 [ %err.0, %sw.epilog.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_us16x08_bus_put.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_us16x08_bus_put, %if.then27)) #7
          to label %if.end29 [label %if.then27], !srcloc !190

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 1
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  %dev28 = getelementptr inbounds %struct.usb_device, ptr %40, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_us16x08_bus_put.__UNIQUE_ID_ddebug240, ptr noundef %dev28, ptr noundef nonnull @.str.27, i32 noundef %err.054) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %do.body, %if.then
  %cmp55 = phi i32 [ 0, %if.then27 ], [ 1, %if.then ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf) #7
  ret i32 %cmp55
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_us16x08_channel_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index1 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index1, align 4
  %arrayidx = getelementptr %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 14, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_us16x08_channel_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %buf = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buf) #7
  %index2 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %6 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index2, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %10 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %11, 8
  %and = and i32 %shr, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %and)
  %cmp = icmp ult i32 %9, %and
  %and5 = and i32 %11, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %and5)
  %cmp6 = icmp ugt i32 %9, %and5
  %or.cond = select i1 %cmp, i1 true, i1 %cmp6
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 8
  %13 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 6
  %14 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 5
  %15 = call ptr @memcpy(ptr %buf, ptr @mix_msg_in, i32 11)
  %shr8 = lshr i32 %11, 24
  %sub = sub i32 %9, %shr8
  %conv = trunc i32 %sub to i8
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %12, align 1
  %id12 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %id12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id12, align 4
  %conv13 = trunc i32 %18 to i8
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv13, ptr %13, align 1
  %20 = trunc i32 %7 to i8
  %conv15 = add i8 %20, 1
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv15, ptr %14, align 1
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 1
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %shl.i.i = shl i32 %25, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = call i32 @snd_usb_ctl_msg(ptr noundef %23, i32 noundef %or.i, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf, i16 noundef zeroext 11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp18 = icmp sgt i32 %call2.i, 0
  br i1 %cmp18, label %if.then20, label %do.body

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw i32 1, %7
  %cached = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 13
  %26 = ptrtoint ptr %cached to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cached, align 4
  %or = or i32 %27, %shl
  store i32 %or, ptr %cached, align 4
  %arrayidx21 = getelementptr %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 14, i32 %7
  %28 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %9, ptr %arrayidx21, align 4
  br label %if.end28

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_us16x08_channel_put.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_us16x08_channel_put, %if.then25)) #7
          to label %if.end28 [label %if.then25], !srcloc !190

if.then25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  %dev26 = getelementptr inbounds %struct.usb_device, ptr %30, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_us16x08_channel_put.__UNIQUE_ID_ddebug241, ptr noundef %dev26, ptr noundef nonnull @.str.33, i32 noundef %call2.i) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %do.body, %if.then20
  %cond = zext i1 %cmp18 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end28 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_us16x08_mix_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %0 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %count, align 8
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %type, align 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and = and i32 %3, 255
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %4 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %max, align 4
  %5 = load i32, ptr %private_value, align 4
  %shr2 = lshr i32 %5, 8
  %and3 = and i32 %shr2, 255
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and3, ptr %value, align 8
  %7 = load i32, ptr %private_value, align 4
  %shr6 = lshr i32 %7, 16
  %and7 = and i32 %shr6, 255
  %step = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 2
  %8 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and7, ptr %step, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_us16x08_eqswitch_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_data1 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data1, align 4
  %index2 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %4 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index2, align 4
  %id4 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %id4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id4, align 4
  %and = and i32 %7, 15
  %and7 = lshr i32 %7, 4
  %shr = and i32 %and7, 15
  %arrayidx9 = getelementptr [4 x [4 x [16 x i8]]], ptr %3, i32 0, i32 %and, i32 %shr, i32 %5
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx9, align 1
  %conv = zext i8 %9 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_us16x08_eqswitch_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %buf = alloca [23 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %private_data2 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data2, align 4
  %index3 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %8 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index3, align 4
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %buf) #7
  %10 = getelementptr inbounds [23 x i8], ptr %buf, i32 0, i32 5
  %11 = getelementptr inbounds [23 x i8], ptr %buf, i32 0, i32 8
  %12 = getelementptr inbounds [23 x i8], ptr %buf, i32 0, i32 11
  %13 = getelementptr inbounds [23 x i8], ptr %buf, i32 0, i32 14
  %14 = getelementptr inbounds [23 x i8], ptr %buf, i32 0, i32 17
  %15 = getelementptr inbounds [23 x i8], ptr %buf, i32 0, i32 20
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %16 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value, align 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %18 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %19, 24
  %add = add i32 %shr, %17
  %20 = call ptr @memcpy(ptr %buf, ptr @eqs_msq, i32 23)
  %21 = trunc i32 %9 to i8
  %conv = add i8 %21, 1
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv, ptr %10, align 1
  %conv7 = trunc i32 %add to i8
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 1
  %23 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv7, ptr %15, align 1
  %arrayidx12 = getelementptr [4 x [4 x [16 x i8]]], ptr %7, i32 0, i32 0, i32 2, i32 %9
  %24 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx12, align 1
  %26 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %14, align 1
  %arrayidx17 = getelementptr [4 x [4 x [16 x i8]]], ptr %7, i32 0, i32 0, i32 1, i32 %9
  %27 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx17, align 1
  %29 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %13, align 1
  %arrayidx22 = getelementptr [16 x i8], ptr %7, i32 0, i32 %9
  %30 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx22, align 1
  %32 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %12, align 1
  %33 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %11, align 1
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %shl.i.i = shl i32 %37, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = call i32 @snd_usb_ctl_msg(ptr noundef %35, i32 noundef %or.i, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf, i16 noundef zeroext 23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp28 = icmp slt i32 %call2.i, 0
  br i1 %cmp28, label %entry.do.body_crit_edge, label %if.end

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end:                                           ; preds = %entry
  %arrayidx34 = getelementptr [4 x [4 x [16 x i8]]], ptr %7, i32 0, i32 0, i32 3, i32 %9
  %38 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv7, ptr %arrayidx34, align 1
  call void @msleep(i32 noundef 15) #7
  %39 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv7, ptr %15, align 1
  %arrayidx10.1 = getelementptr [4 x [4 x [16 x i8]]], ptr %7, i32 0, i32 1
  %arrayidx12.1 = getelementptr [4 x [4 x [16 x i8]]], ptr %7, i32 0, i32 1, i32 2, i32 %9
  %40 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx12.1, align 1
  %42 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %14, align 1
  %arrayidx17.1 = getelementptr [4 x [4 x [16 x i8]]], ptr %7, i32 0, i32 1, i32 1, i32 %9
  %43 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx17.1, align 1
  %45 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %13, align 1
  %arrayidx22.1 = getelementptr [16 x i8], ptr %arrayidx10.1, i32 0, i32 %9
  %46 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx22.1, align 1
  %48 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %12, align 1
  %49 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 2, ptr %11, align 1
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 8
  %shl.i.i.1 = shl i32 %53, 8
  %or.i.1 = or i32 %shl.i.i.1, -2147483648
  %call2.i.1 = call i32 @snd_usb_ctl_msg(ptr noundef %51, i32 noundef %or.i.1, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf, i16 noundef zeroext 23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.1)
  %cmp28.1 = icmp slt i32 %call2.i.1, 0
  br i1 %cmp28.1, label %if.end.do.body_crit_edge, label %if.end.1

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.1:                                         ; preds = %if.end
  %arrayidx34.1 = getelementptr [4 x [4 x [16 x i8]]], ptr %7, i32 0, i32 1, i32 3, i32 %9
  %54 = ptrtoint ptr %arrayidx34.1 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv7, ptr %arrayidx34.1, align 1
  call void @msleep(i32 noundef 15) #7
  %55 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv7, ptr %15, align 1
  %arrayidx10.2 = getelementptr [4 x [4 x [16 x i8]]], ptr %7, i32 0, i32 2
  %arrayidx12.2 = getelementptr [4 x [4 x [16 x i8]]], ptr %7, i32 0, i32 2, i32 2, i32 %9
  %56 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx12.2, align 1
  %58 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %14, align 1
  %arrayidx17.2 = getelementptr [4 x [4 x [16 x i8]]], ptr %7, i32 0, i32 2, i32 1, i32 %9
  %59 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx17.2, align 1
  %61 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %13, align 1
  %arrayidx22.2 = getelementptr [16 x i8], ptr %arrayidx10.2, i32 0, i32 %9
  %62 = ptrtoint ptr %arrayidx22.2 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx22.2, align 1
  %64 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %12, align 1
  %65 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 3, ptr %11, align 1
  %66 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 8
  %shl.i.i.2 = shl i32 %69, 8
  %or.i.2 = or i32 %shl.i.i.2, -2147483648
  %call2.i.2 = call i32 @snd_usb_ctl_msg(ptr noundef %67, i32 noundef %or.i.2, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf, i16 noundef zeroext 23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.2)
  %cmp28.2 = icmp slt i32 %call2.i.2, 0
  br i1 %cmp28.2, label %if.end.1.do.body_crit_edge, label %if.end.2

if.end.1.do.body_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.2:                                         ; preds = %if.end.1
  %arrayidx34.2 = getelementptr [4 x [4 x [16 x i8]]], ptr %7, i32 0, i32 2, i32 3, i32 %9
  %70 = ptrtoint ptr %arrayidx34.2 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv7, ptr %arrayidx34.2, align 1
  call void @msleep(i32 noundef 15) #7
  %71 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv7, ptr %15, align 1
  %arrayidx10.3 = getelementptr [4 x [4 x [16 x i8]]], ptr %7, i32 0, i32 3
  %arrayidx12.3 = getelementptr [4 x [4 x [16 x i8]]], ptr %7, i32 0, i32 3, i32 2, i32 %9
  %72 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx12.3, align 1
  %74 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %14, align 1
  %arrayidx17.3 = getelementptr [4 x [4 x [16 x i8]]], ptr %7, i32 0, i32 3, i32 1, i32 %9
  %75 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx17.3, align 1
  %77 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %13, align 1
  %arrayidx22.3 = getelementptr [16 x i8], ptr %arrayidx10.3, i32 0, i32 %9
  %78 = ptrtoint ptr %arrayidx22.3 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx22.3, align 1
  %80 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %12, align 1
  %81 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 4, ptr %11, align 1
  %82 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 8
  %shl.i.i.3 = shl i32 %85, 8
  %or.i.3 = or i32 %shl.i.i.3, -2147483648
  %call2.i.3 = call i32 @snd_usb_ctl_msg(ptr noundef %83, i32 noundef %or.i.3, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf, i16 noundef zeroext 23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.3)
  %cmp28.3 = icmp slt i32 %call2.i.3, 0
  br i1 %cmp28.3, label %if.end.2.do.body_crit_edge, label %if.end.3

if.end.2.do.body_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.3:                                         ; preds = %if.end.2
  %arrayidx34.3 = getelementptr [4 x [4 x [16 x i8]]], ptr %7, i32 0, i32 3, i32 3, i32 %9
  %86 = ptrtoint ptr %arrayidx34.3 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv7, ptr %arrayidx34.3, align 1
  call void @msleep(i32 noundef 15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.3)
  %cmp35.not = icmp eq i32 %call2.i.3, 0
  br i1 %cmp35.not, label %if.end.3.do.body_crit_edge, label %if.then37

if.end.3.do.body_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then37:                                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw i32 1, %9
  %cached = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 13
  %87 = ptrtoint ptr %cached to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cached, align 4
  %or = or i32 %88, %shl
  store i32 %or, ptr %cached, align 4
  %arrayidx38 = getelementptr %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 14, i32 %9
  %89 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %add, ptr %arrayidx38, align 4
  br label %if.end45

do.body:                                          ; preds = %if.end.3.do.body_crit_edge, %if.end.2.do.body_crit_edge, %if.end.1.do.body_crit_edge, %if.end.do.body_crit_edge, %entry.do.body_crit_edge
  %err.173 = phi i32 [ 0, %if.end.3.do.body_crit_edge ], [ %call2.i, %entry.do.body_crit_edge ], [ %call2.i.1, %if.end.do.body_crit_edge ], [ %call2.i.2, %if.end.1.do.body_crit_edge ], [ %call2.i.3, %if.end.2.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_us16x08_eqswitch_put.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_us16x08_eqswitch_put, %if.then42)) #7
          to label %if.end45 [label %if.then42], !srcloc !190

if.then42:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev.i, align 4
  %dev43 = getelementptr inbounds %struct.usb_device, ptr %91, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_us16x08_eqswitch_put.__UNIQUE_ID_ddebug243, ptr noundef %dev43, ptr noundef nonnull @.str.46, i32 noundef %err.173) #7
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %do.body, %if.then37
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %buf) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_us16x08_eq_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_data1 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data1, align 4
  %index2 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %4 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index2, align 4
  %id3 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id3, align 4
  %and = and i32 %7, 15
  %sub = add nsw i32 %and, -1
  %and6 = lshr i32 %7, 4
  %shr = and i32 %and6, 15
  %arrayidx9 = getelementptr [4 x [4 x [16 x i8]]], ptr %3, i32 0, i32 %sub, i32 %shr, i32 %5
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx9, align 1
  %conv = zext i8 %9 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_us16x08_eq_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %buf = alloca [23 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %private_data2 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data2, align 4
  %index3 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %8 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index3, align 4
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %buf) #7
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = call ptr @memset(ptr %buf, i32 255, i32 23)
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %13 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %private_value, align 4
  %shr9 = lshr i32 %14, 8
  %and10 = and i32 %shr9, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %and10)
  %cmp = icmp ult i32 %12, %and10
  %and13 = and i32 %14, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %and13)
  %cmp14 = icmp ugt i32 %12, %and13
  %or.cond = select i1 %cmp, i1 true, i1 %cmp14
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = getelementptr inbounds [23 x i8], ptr %buf, i32 0, i32 20
  %16 = getelementptr inbounds [23 x i8], ptr %buf, i32 0, i32 17
  %17 = getelementptr inbounds [23 x i8], ptr %buf, i32 0, i32 14
  %18 = getelementptr inbounds [23 x i8], ptr %buf, i32 0, i32 11
  %19 = getelementptr inbounds [23 x i8], ptr %buf, i32 0, i32 8
  %20 = getelementptr inbounds [23 x i8], ptr %buf, i32 0, i32 5
  %id5 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id5, align 4
  %and8 = lshr i32 %22, 4
  %shr = and i32 %and8, 15
  %and = and i32 %22, 15
  %sub = add nsw i32 %and, -1
  %23 = call ptr @memcpy(ptr %buf, ptr @eqs_msq, i32 23)
  %conv = trunc i32 %12 to i8
  %arrayidx16 = getelementptr [4 x [4 x [16 x i8]]], ptr %7, i32 0, i32 %sub
  %arrayidx18 = getelementptr [4 x [4 x [16 x i8]]], ptr %7, i32 0, i32 %sub, i32 %shr, i32 %9
  %24 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv, ptr %arrayidx18, align 1
  %arrayidx22 = getelementptr [4 x [4 x [16 x i8]]], ptr %7, i32 0, i32 %sub, i32 3, i32 %9
  %25 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx22, align 1
  %27 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %15, align 1
  %arrayidx27 = getelementptr [4 x [4 x [16 x i8]]], ptr %7, i32 0, i32 %sub, i32 2, i32 %9
  %28 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx27, align 1
  %30 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %16, align 1
  %arrayidx32 = getelementptr [4 x [4 x [16 x i8]]], ptr %7, i32 0, i32 %sub, i32 1, i32 %9
  %31 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx32, align 1
  %33 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %17, align 1
  %arrayidx37 = getelementptr [16 x i8], ptr %arrayidx16, i32 0, i32 %9
  %34 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx37, align 1
  %36 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %18, align 1
  %37 = trunc i32 %9 to i8
  %conv39 = add i8 %37, 1
  %38 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv39, ptr %20, align 1
  %conv42 = trunc i32 %and to i8
  %39 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv42, ptr %19, align 1
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 1
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %shl.i.i = shl i32 %43, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = call i32 @snd_usb_ctl_msg(ptr noundef %41, i32 noundef %or.i, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf, i16 noundef zeroext 23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp45 = icmp sgt i32 %call2.i, 0
  br i1 %cmp45, label %if.then47, label %do.body

if.then47:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw i32 1, %9
  %cached = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 13
  %44 = ptrtoint ptr %cached to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cached, align 4
  %or = or i32 %45, %shl
  store i32 %or, ptr %cached, align 4
  %arrayidx48 = getelementptr %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 14, i32 %9
  %46 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %12, ptr %arrayidx48, align 4
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_us16x08_eq_put.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_us16x08_eq_put, %if.then52)) #7
          to label %cleanup [label %if.then52], !srcloc !190

if.then52:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 4
  %dev53 = getelementptr inbounds %struct.usb_device, ptr %48, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_us16x08_eq_put.__UNIQUE_ID_ddebug244, ptr noundef %dev53, ptr noundef nonnull @.str.48, i32 noundef %call2.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %do.body, %if.then47, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 1, %if.then52 ], [ 1, %if.then47 ], [ 1, %do.body ]
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_us16x08_comp_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_data1 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data1, align 4
  %index2 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %4 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index2, align 4
  %id3 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id3, align 4
  %sub = add i32 %7, -50
  %arrayidx4 = getelementptr [6 x [16 x i8]], ptr %3, i32 0, i32 %sub, i32 %5
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4, align 1
  %conv = zext i8 %9 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_us16x08_comp_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %buf = alloca [29 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %private_data2 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data2, align 4
  %index3 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %8 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index3, align 4
  call void @llvm.lifetime.start.p0(i64 29, ptr nonnull %buf) #7
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = call ptr @memset(ptr %buf, i32 255, i32 29)
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %13 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %14, 8
  %and = and i32 %shr, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %and)
  %cmp = icmp ult i32 %12, %and
  %and6 = and i32 %14, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %and6)
  %cmp7 = icmp ugt i32 %12, %and6
  %or.cond = select i1 %cmp, i1 true, i1 %cmp7
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = getelementptr inbounds [29 x i8], ptr %buf, i32 0, i32 26
  %16 = getelementptr inbounds [29 x i8], ptr %buf, i32 0, i32 20
  %17 = getelementptr inbounds [29 x i8], ptr %buf, i32 0, i32 17
  %18 = getelementptr inbounds [29 x i8], ptr %buf, i32 0, i32 14
  %19 = getelementptr inbounds [29 x i8], ptr %buf, i32 0, i32 11
  %20 = getelementptr inbounds [29 x i8], ptr %buf, i32 0, i32 8
  %21 = getelementptr inbounds [29 x i8], ptr %buf, i32 0, i32 5
  %id9 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %id9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id9, align 4
  %sub = add i32 %23, -50
  %conv = trunc i32 %12 to i8
  %arrayidx14 = getelementptr [6 x [16 x i8]], ptr %7, i32 0, i32 %sub, i32 %9
  %24 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv, ptr %arrayidx14, align 1
  %25 = call ptr @memcpy(ptr %buf, ptr @comp_msg, i32 29)
  %arrayidx17 = getelementptr [16 x i8], ptr %7, i32 0, i32 %9
  %26 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx17, align 1
  %sub19 = add i8 %27, -32
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %sub19, ptr %20, align 1
  %arrayidx24 = getelementptr [6 x [16 x i8]], ptr %7, i32 0, i32 1, i32 %9
  %29 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx24, align 1
  %idxprom = zext i8 %30 to i32
  %arrayidx25 = getelementptr [15 x i8], ptr @ratio_map, i32 0, i32 %idxprom
  %31 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx25, align 1
  %33 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %19, align 1
  %arrayidx29 = getelementptr [6 x [16 x i8]], ptr %7, i32 0, i32 2, i32 %9
  %34 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx29, align 1
  %add = add i8 %35, 2
  %36 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %add, ptr %18, align 1
  %arrayidx35 = getelementptr [6 x [16 x i8]], ptr %7, i32 0, i32 3, i32 %9
  %37 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx35, align 1
  %add37 = add i8 %38, 1
  %39 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %add37, ptr %17, align 1
  %arrayidx42 = getelementptr [6 x [16 x i8]], ptr %7, i32 0, i32 4, i32 %9
  %40 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx42, align 1
  %42 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %16, align 1
  %arrayidx46 = getelementptr [6 x [16 x i8]], ptr %7, i32 0, i32 5, i32 %9
  %43 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx46, align 1
  %45 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %15, align 1
  %46 = trunc i32 %9 to i8
  %conv49 = add i8 %46, 1
  %47 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv49, ptr %21, align 1
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 1
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 8
  %shl.i.i = shl i32 %51, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = call i32 @snd_usb_ctl_msg(ptr noundef %49, i32 noundef %or.i, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf, i16 noundef zeroext 29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp52 = icmp sgt i32 %call2.i, 0
  br i1 %cmp52, label %if.then54, label %do.body

if.then54:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw i32 1, %9
  %cached = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 13
  %52 = ptrtoint ptr %cached to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cached, align 4
  %or = or i32 %53, %shl
  store i32 %or, ptr %cached, align 4
  %arrayidx55 = getelementptr %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 14, i32 %9
  %54 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %12, ptr %arrayidx55, align 4
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_us16x08_comp_put.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_us16x08_comp_put, %if.then59)) #7
          to label %cleanup [label %if.then59], !srcloc !190

if.then59:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i, align 4
  %dev60 = getelementptr inbounds %struct.usb_device, ptr %56, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_us16x08_comp_put.__UNIQUE_ID_ddebug242, ptr noundef %dev60, ptr noundef nonnull @.str.56, i32 noundef %call2.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %do.body, %if.then54, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 1, %if.then59 ], [ 1, %if.then54 ], [ 1, %do.body ]
  call void @llvm.lifetime.end.p0(i64 29, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_us16x08_meter_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %0 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 34, ptr %count, align 8
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %type, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %2 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 32767, ptr %max, align 4
  %3 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_us16x08_meter_get(ptr nocapture noundef %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %meter_urb = alloca [64 x i8], align 1
  %tmp = alloca [4 x i8], align 4
  %tmp18 = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %private_data2 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data2, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %meter_urb) #7
  %8 = call ptr @memset(ptr %meter_urb, i32 255, i32 64)
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %9 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %private_value, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %10, label %entry.for.body.preheader_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb12
    i32 3, label %sw.bb17
  ]

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #7
  %12 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1895890944, ptr %tmp, align 4
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i.i = shl i32 %16, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = call i32 @snd_usb_ctl_msg(ptr noundef %14, i32 noundef %or.i, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %tmp, i16 noundef zeroext 4) #7
  %mutex.i = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i107 = shl i32 %20, 8
  %or2.i = or i32 %shl.i.i107, -2147483520
  %call3.i = call i32 @snd_usb_ctl_msg(ptr noundef %18, i32 noundef %or2.i, i8 noundef zeroext 30, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %meter_urb, i16 noundef zeroext 64) #7
  call void @mutex_unlock(ptr noundef %mutex.i) #7
  %21 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %private_value, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %private_value, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #7
  br label %for.body.preheader

for.body.preheader:                               ; preds = %snd_get_meter_comp_index.exit, %sw.bb12, %sw.bb7, %sw.bb, %entry.for.body.preheader_crit_edge
  br label %for.body

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mutex.i108 = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex.i108, i32 noundef 0) #7
  %dev.i109 = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 1
  %23 = ptrtoint ptr %dev.i109 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i109, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %shl.i.i110 = shl i32 %26, 8
  %or2.i111 = or i32 %shl.i.i110, -2147483520
  %call3.i112 = call i32 @snd_usb_ctl_msg(ptr noundef %24, i32 noundef %or2.i111, i8 noundef zeroext 30, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %meter_urb, i16 noundef zeroext 64) #7
  call void @mutex_unlock(ptr noundef %mutex.i108) #7
  %27 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %private_value, align 4
  %inc11 = add i32 %28, 1
  store i32 %inc11, ptr %private_value, align 4
  br label %for.body.preheader

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mutex.i113 = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex.i113, i32 noundef 0) #7
  %dev.i114 = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 1
  %29 = ptrtoint ptr %dev.i114 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i114, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  %shl.i.i115 = shl i32 %32, 8
  %or2.i116 = or i32 %shl.i.i115, -2147483520
  %call3.i117 = call i32 @snd_usb_ctl_msg(ptr noundef %30, i32 noundef %or2.i116, i8 noundef zeroext 30, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %meter_urb, i16 noundef zeroext 64) #7
  call void @mutex_unlock(ptr noundef %mutex.i113) #7
  %33 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %private_value, align 4
  %inc16 = add i32 %34, 1
  store i32 %inc16, ptr %private_value, align 4
  br label %for.body.preheader

sw.bb17:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %tmp18) #7
  %35 = getelementptr inbounds [10 x i8], ptr %tmp18, i32 0, i32 2
  %36 = call ptr @memcpy(ptr %tmp18, ptr @mix_init_msg2, i32 10)
  %comp_active_index.i = getelementptr inbounds %struct.snd_us16x08_meter_store, ptr %7, i32 0, i32 3
  %37 = ptrtoint ptr %comp_active_index.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %comp_active_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i, label %while.cond.preheader.i, label %if.then.i

while.cond.preheader.i:                           ; preds = %sw.bb17
  %comp_store.i = getelementptr inbounds %struct.snd_us16x08_meter_store, ptr %7, i32 0, i32 5
  %39 = ptrtoint ptr %comp_store.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %comp_store.i, align 4
  %comp_index13.i = getelementptr inbounds %struct.snd_us16x08_meter_store, ptr %7, i32 0, i32 2
  %41 = ptrtoint ptr %comp_index13.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %comp_index13.i, align 4
  %sub1444.i = add i32 %42, -1
  %arrayidx1545.i = getelementptr [6 x [16 x i8]], ptr %40, i32 0, i32 5, i32 %sub1444.i
  %43 = ptrtoint ptr %arrayidx1545.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx1545.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool16.not46.i = icmp eq i8 %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %42)
  %cmp1847.i = icmp slt i32 %42, 17
  %or.cond48.i = select i1 %tobool16.not46.i, i1 %cmp1847.i, i1 false
  br i1 %or.cond48.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.while.end.i_crit_edge

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

if.then.i:                                        ; preds = %sw.bb17
  %and.i = and i32 %38, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.then.i.snd_get_meter_comp_index.exit_crit_edge, label %if.then3.i

if.then.i.snd_get_meter_comp_index.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_get_meter_comp_index.exit

if.then3.i:                                       ; preds = %if.then.i
  %comp_index.i = getelementptr inbounds %struct.snd_us16x08_meter_store, ptr %7, i32 0, i32 2
  %45 = ptrtoint ptr %comp_index.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %comp_index.i, align 4
  %sub.i = sub i32 %46, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, 1
  br i1 %cmp.i, label %if.then5.i, label %if.then3.i.if.end.i_crit_edge

if.then3.i.if.end.i_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %comp_index.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %38, ptr %comp_index.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %if.then3.i.if.end.i_crit_edge
  %48 = ptrtoint ptr %comp_index.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %comp_index.i, align 4
  %inc.i = add i32 %49, 1
  store i32 %inc.i, ptr %comp_index.i, align 4
  %and9.i = and i32 %49, 31
  br label %snd_get_meter_comp_index.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %50 = phi i32 [ %inc20.i, %while.body.i.while.body.i_crit_edge ], [ %42, %while.cond.preheader.i.while.body.i_crit_edge ]
  %inc20.i = add nsw i32 %50, 1
  %51 = ptrtoint ptr %comp_index13.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %inc20.i, ptr %comp_index13.i, align 4
  %arrayidx15.i = getelementptr [6 x [16 x i8]], ptr %40, i32 0, i32 5, i32 %50
  %52 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx15.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool16.not.i = icmp eq i8 %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %50)
  %cmp18.i = icmp slt i32 %50, 16
  %or.cond.i = select i1 %tobool16.not.i, i1 %cmp18.i, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %42, %while.cond.preheader.i.while.end.i_crit_edge ], [ %inc20.i, %while.body.i.while.end.i_crit_edge ]
  %inc22.i = add i32 %.lcssa.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc22.i)
  %cmp24.i = icmp sgt i32 %inc22.i, 16
  %spec.store.select.i = select i1 %cmp24.i, i32 1, i32 %inc22.i
  %54 = ptrtoint ptr %comp_index13.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %spec.store.select.i, ptr %comp_index13.i, align 4
  br label %snd_get_meter_comp_index.exit

snd_get_meter_comp_index.exit:                    ; preds = %while.end.i, %if.end.i, %if.then.i.snd_get_meter_comp_index.exit_crit_edge
  %ret.0.i = phi i32 [ %and9.i, %if.end.i ], [ %38, %if.then.i.snd_get_meter_comp_index.exit_crit_edge ], [ %.lcssa.i, %while.end.i ]
  %conv = trunc i32 %ret.0.i to i8
  %55 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv, ptr %35, align 1
  %dev.i118 = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 1
  %56 = ptrtoint ptr %dev.i118 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i118, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 8
  %shl.i.i119 = shl i32 %59, 8
  %or.i120 = or i32 %shl.i.i119, -2147483648
  %call2.i121 = call i32 @snd_usb_ctl_msg(ptr noundef %57, i32 noundef %or.i120, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %tmp18, i16 noundef zeroext 10) #7
  %mutex.i122 = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex.i122, i32 noundef 0) #7
  %60 = ptrtoint ptr %dev.i118 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i118, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 8
  %shl.i.i124 = shl i32 %63, 8
  %or2.i125 = or i32 %shl.i.i124, -2147483520
  %call3.i126 = call i32 @snd_usb_ctl_msg(ptr noundef %61, i32 noundef %or2.i125, i8 noundef zeroext 30, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %meter_urb, i16 noundef zeroext 64) #7
  call void @mutex_unlock(ptr noundef %mutex.i122) #7
  %64 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %private_value, align 4
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %tmp18) #7
  br label %for.body.preheader

for.cond29.preheader:                             ; preds = %get_meter_levels_from_urb.exit
  %tobool.not = icmp eq ptr %7, null
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br i1 %tobool.not, label %cond.end65.14.thread, label %cond.true62.15

for.body:                                         ; preds = %get_meter_levels_from_urb.exit.for.body_crit_edge, %for.body.preheader
  %set.0137 = phi i32 [ %inc28, %get_meter_levels_from_urb.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul.i = mul nuw nsw i32 %set.0137, 10
  %add.i = add nuw nsw i32 %mul.i, 12
  %arrayidx.i = getelementptr i8, ptr %meter_urb, i32 %add.i
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %66 to i32
  %add2.i = add nuw nsw i32 %mul.i, 13
  %arrayidx3.i = getelementptr i8, ptr %meter_urb, i32 %add2.i
  %67 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %68 to i32
  %shl.i = shl nuw nsw i32 %conv4.i, 8
  %add5.i = or i32 %shl.i, %conv.i
  %add7.i = add nuw nsw i32 %mul.i, 4
  %arrayidx8.i = getelementptr i8, ptr %meter_urb, i32 %add7.i
  %69 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 97, i8 %70)
  %cmp.i127 = icmp eq i8 %70, 97
  br i1 %cmp.i127, label %land.lhs.true.i, label %for.body.get_meter_levels_from_urb.exit_crit_edge

for.body.get_meter_levels_from_urb.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_meter_levels_from_urb.exit

land.lhs.true.i:                                  ; preds = %for.body
  %add12.i = add nuw nsw i32 %mul.i, 5
  %arrayidx13.i = getelementptr i8, ptr %meter_urb, i32 %add12.i
  %71 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %72)
  %cmp15.i = icmp eq i8 %72, 2
  br i1 %cmp15.i, label %land.lhs.true17.i, label %land.lhs.true.i.if.end57.i_crit_edge

land.lhs.true.i.if.end57.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.i

land.lhs.true17.i:                                ; preds = %land.lhs.true.i
  %add19.i = add nuw nsw i32 %mul.i, 6
  %arrayidx20.i = getelementptr i8, ptr %meter_urb, i32 %add19.i
  %73 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx20.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %74)
  %cmp22.i = icmp eq i8 %74, 4
  br i1 %cmp22.i, label %land.lhs.true24.i, label %land.lhs.true17.i.if.end57.i_crit_edge

land.lhs.true17.i.if.end57.i_crit_edge:           ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.i

land.lhs.true24.i:                                ; preds = %land.lhs.true17.i
  %add26.i = add nuw nsw i32 %mul.i, 7
  %arrayidx27.i = getelementptr i8, ptr %meter_urb, i32 %add26.i
  %75 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx27.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 98, i8 %76)
  %cmp29.i = icmp eq i8 %76, 98
  br i1 %cmp29.i, label %if.then.i128, label %land.lhs.true24.i.if.end57.i_crit_edge

land.lhs.true24.i.if.end57.i_crit_edge:           ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.i

if.then.i128:                                     ; preds = %land.lhs.true24.i
  %add32.i = add nuw nsw i32 %mul.i, 10
  %arrayidx33.i = getelementptr i8, ptr %meter_urb, i32 %add32.i
  %77 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx33.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 114, i8 %78)
  %cmp35.i = icmp eq i8 %78, 114
  br i1 %cmp35.i, label %if.then37.i, label %if.then.i128.if.end.i130_crit_edge

if.then.i128.if.end.i130_crit_edge:               ; preds = %if.then.i128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i130

if.then37.i:                                      ; preds = %if.then.i128
  call void @__sanitizer_cov_trace_pc() #9
  %add39.i = add nuw nsw i32 %mul.i, 9
  %arrayidx40.i = getelementptr i8, ptr %meter_urb, i32 %add39.i
  %79 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx40.i, align 1
  %conv41.i = zext i8 %80 to i32
  %sub.i129 = add nsw i32 %conv41.i, -1
  %arrayidx42.i = getelementptr [16 x i32], ptr %7, i32 0, i32 %sub.i129
  %81 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add5.i, ptr %arrayidx42.i, align 4
  %82 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %.pr.i = load i8, ptr %arrayidx33.i, align 1
  br label %if.end.i130

if.end.i130:                                      ; preds = %if.then37.i, %if.then.i128.if.end.i130_crit_edge
  %83 = phi i8 [ %.pr.i, %if.then37.i ], [ %78, %if.then.i128.if.end.i130_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -78, i8 %83)
  %cmp47.i = icmp eq i8 %83, -78
  br i1 %cmp47.i, label %if.then49.i, label %if.end.i130.if.end57.i_crit_edge

if.end.i130.if.end57.i_crit_edge:                 ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.i

if.then49.i:                                      ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #9
  %add51.i = add nuw nsw i32 %mul.i, 9
  %arrayidx52.i = getelementptr i8, ptr %meter_urb, i32 %add51.i
  %84 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx52.i, align 1
  %conv53.i = zext i8 %85 to i32
  %sub54.i = add nsw i32 %conv53.i, -1
  %arrayidx55.i = getelementptr %struct.snd_us16x08_meter_store, ptr %7, i32 0, i32 4, i32 %sub54.i
  %86 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %add5.i, ptr %arrayidx55.i, align 4
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then49.i, %if.end.i130.if.end57.i_crit_edge, %land.lhs.true24.i.if.end57.i_crit_edge, %land.lhs.true17.i.if.end57.i_crit_edge, %land.lhs.true.i.if.end57.i_crit_edge
  %87 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %.pr125.i = load i8, ptr %arrayidx8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 97, i8 %.pr125.i)
  %cmp62.i = icmp eq i8 %.pr125.i, 97
  br i1 %cmp62.i, label %land.lhs.true64.i, label %if.end57.i.get_meter_levels_from_urb.exit_crit_edge

if.end57.i.get_meter_levels_from_urb.exit_crit_edge: ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_meter_levels_from_urb.exit

land.lhs.true64.i:                                ; preds = %if.end57.i
  %88 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %89)
  %cmp69.i = icmp eq i8 %89, 2
  br i1 %cmp69.i, label %land.lhs.true71.i, label %land.lhs.true64.i.get_meter_levels_from_urb.exit_crit_edge

land.lhs.true64.i.get_meter_levels_from_urb.exit_crit_edge: ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_meter_levels_from_urb.exit

land.lhs.true71.i:                                ; preds = %land.lhs.true64.i
  %add73.i = add nuw nsw i32 %mul.i, 6
  %arrayidx74.i = getelementptr i8, ptr %meter_urb, i32 %add73.i
  %90 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx74.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %91)
  %cmp76.i = icmp eq i8 %91, 2
  br i1 %cmp76.i, label %land.lhs.true78.i, label %land.lhs.true71.i.get_meter_levels_from_urb.exit_crit_edge

land.lhs.true71.i.get_meter_levels_from_urb.exit_crit_edge: ; preds = %land.lhs.true71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_meter_levels_from_urb.exit

land.lhs.true78.i:                                ; preds = %land.lhs.true71.i
  %add80.i = add nuw nsw i32 %mul.i, 7
  %arrayidx81.i = getelementptr i8, ptr %meter_urb, i32 %add80.i
  %92 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx81.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 98, i8 %93)
  %cmp83.i = icmp eq i8 %93, 98
  br i1 %cmp83.i, label %if.then85.i, label %land.lhs.true78.i.get_meter_levels_from_urb.exit_crit_edge

land.lhs.true78.i.get_meter_levels_from_urb.exit_crit_edge: ; preds = %land.lhs.true78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_meter_levels_from_urb.exit

if.then85.i:                                      ; preds = %land.lhs.true78.i
  call void @__sanitizer_cov_trace_pc() #9
  %add87.i = add nuw nsw i32 %mul.i, 9
  %arrayidx88.i = getelementptr i8, ptr %meter_urb, i32 %add87.i
  %94 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx88.i, align 1
  %conv89.i = zext i8 %95 to i32
  %sub90.i = add nsw i32 %conv89.i, -1
  %arrayidx91.i = getelementptr %struct.snd_us16x08_meter_store, ptr %7, i32 0, i32 1, i32 %sub90.i
  %96 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %add5.i, ptr %arrayidx91.i, align 4
  br label %get_meter_levels_from_urb.exit

get_meter_levels_from_urb.exit:                   ; preds = %if.then85.i, %land.lhs.true78.i.get_meter_levels_from_urb.exit_crit_edge, %land.lhs.true71.i.get_meter_levels_from_urb.exit_crit_edge, %land.lhs.true64.i.get_meter_levels_from_urb.exit_crit_edge, %if.end57.i.get_meter_levels_from_urb.exit_crit_edge, %for.body.get_meter_levels_from_urb.exit_crit_edge
  %inc28 = add nuw nsw i32 %set.0137, 1
  %exitcond.not = icmp eq i32 %inc28, 6
  br i1 %exitcond.not, label %for.cond29.preheader, label %get_meter_levels_from_urb.exit.for.body_crit_edge

get_meter_levels_from_urb.exit.for.body_crit_edge: ; preds = %get_meter_levels_from_urb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cond.end65.14.thread:                             ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %97 = call ptr @memset(ptr %value, i32 0, i32 132)
  br label %cond.end65.15

cond.true62.15:                                   ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %7, align 4
  %100 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %value, align 4
  %arrayidx33.1 = getelementptr [16 x i32], ptr %7, i32 0, i32 1
  %101 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx33.1, align 4
  %arrayidx34.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %103 = ptrtoint ptr %arrayidx34.1 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %arrayidx34.1, align 4
  %arrayidx33.2 = getelementptr [16 x i32], ptr %7, i32 0, i32 2
  %104 = ptrtoint ptr %arrayidx33.2 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx33.2, align 4
  %arrayidx34.2 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 1
  %106 = ptrtoint ptr %arrayidx34.2 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %arrayidx34.2, align 4
  %arrayidx33.3 = getelementptr [16 x i32], ptr %7, i32 0, i32 3
  %107 = ptrtoint ptr %arrayidx33.3 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx33.3, align 4
  %arrayidx34.3 = getelementptr [128 x i32], ptr %value, i32 0, i32 3
  %109 = ptrtoint ptr %arrayidx34.3 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %arrayidx34.3, align 4
  %arrayidx33.4 = getelementptr [16 x i32], ptr %7, i32 0, i32 4
  %110 = ptrtoint ptr %arrayidx33.4 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx33.4, align 4
  %arrayidx34.4 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 2
  %112 = ptrtoint ptr %arrayidx34.4 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %arrayidx34.4, align 4
  %arrayidx33.5 = getelementptr [16 x i32], ptr %7, i32 0, i32 5
  %113 = ptrtoint ptr %arrayidx33.5 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx33.5, align 4
  %arrayidx34.5 = getelementptr [128 x i32], ptr %value, i32 0, i32 5
  %115 = ptrtoint ptr %arrayidx34.5 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %arrayidx34.5, align 4
  %arrayidx33.6 = getelementptr [16 x i32], ptr %7, i32 0, i32 6
  %116 = ptrtoint ptr %arrayidx33.6 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx33.6, align 4
  %arrayidx34.6 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 3
  %118 = ptrtoint ptr %arrayidx34.6 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %arrayidx34.6, align 4
  %arrayidx33.7 = getelementptr [16 x i32], ptr %7, i32 0, i32 7
  %119 = ptrtoint ptr %arrayidx33.7 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx33.7, align 4
  %arrayidx34.7 = getelementptr [128 x i32], ptr %value, i32 0, i32 7
  %121 = ptrtoint ptr %arrayidx34.7 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %arrayidx34.7, align 4
  %arrayidx33.8 = getelementptr [16 x i32], ptr %7, i32 0, i32 8
  %122 = ptrtoint ptr %arrayidx33.8 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx33.8, align 4
  %arrayidx34.8 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 4
  %124 = ptrtoint ptr %arrayidx34.8 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %arrayidx34.8, align 4
  %arrayidx33.9 = getelementptr [16 x i32], ptr %7, i32 0, i32 9
  %125 = ptrtoint ptr %arrayidx33.9 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx33.9, align 4
  %arrayidx34.9 = getelementptr [128 x i32], ptr %value, i32 0, i32 9
  %127 = ptrtoint ptr %arrayidx34.9 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %arrayidx34.9, align 4
  %arrayidx33.10 = getelementptr [16 x i32], ptr %7, i32 0, i32 10
  %128 = ptrtoint ptr %arrayidx33.10 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx33.10, align 4
  %arrayidx34.10 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 5
  %130 = ptrtoint ptr %arrayidx34.10 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %arrayidx34.10, align 4
  %arrayidx33.11 = getelementptr [16 x i32], ptr %7, i32 0, i32 11
  %131 = ptrtoint ptr %arrayidx33.11 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx33.11, align 4
  %arrayidx34.11 = getelementptr [128 x i32], ptr %value, i32 0, i32 11
  %133 = ptrtoint ptr %arrayidx34.11 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %arrayidx34.11, align 4
  %arrayidx33.12 = getelementptr [16 x i32], ptr %7, i32 0, i32 12
  %134 = ptrtoint ptr %arrayidx33.12 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx33.12, align 4
  %arrayidx34.12 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 6
  %136 = ptrtoint ptr %arrayidx34.12 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %arrayidx34.12, align 4
  %arrayidx33.13 = getelementptr [16 x i32], ptr %7, i32 0, i32 13
  %137 = ptrtoint ptr %arrayidx33.13 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx33.13, align 4
  %arrayidx34.13 = getelementptr [128 x i32], ptr %value, i32 0, i32 13
  %139 = ptrtoint ptr %arrayidx34.13 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %arrayidx34.13, align 4
  %arrayidx33.14 = getelementptr [16 x i32], ptr %7, i32 0, i32 14
  %140 = ptrtoint ptr %arrayidx33.14 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx33.14, align 4
  %arrayidx34.14 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 7
  %142 = ptrtoint ptr %arrayidx34.14 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %arrayidx34.14, align 4
  %arrayidx33.15 = getelementptr [16 x i32], ptr %7, i32 0, i32 15
  %143 = ptrtoint ptr %arrayidx33.15 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx33.15, align 4
  %arrayidx34.15 = getelementptr [128 x i32], ptr %value, i32 0, i32 15
  %145 = ptrtoint ptr %arrayidx34.15 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %arrayidx34.15, align 4
  %master_level = getelementptr inbounds %struct.snd_us16x08_meter_store, ptr %7, i32 0, i32 1
  %146 = ptrtoint ptr %master_level to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %master_level, align 4
  %arrayidx46 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 8
  %148 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %arrayidx46, align 4
  %arrayidx50 = getelementptr %struct.snd_us16x08_meter_store, ptr %7, i32 0, i32 1, i32 1
  %149 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx50, align 4
  %arrayidx56 = getelementptr [128 x i32], ptr %value, i32 0, i32 17
  %151 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %arrayidx56, align 4
  %arrayidx63 = getelementptr %struct.snd_us16x08_meter_store, ptr %7, i32 0, i32 4, i32 0
  %152 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx63, align 4
  %arrayidx68 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 9
  %154 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %arrayidx68, align 4
  %arrayidx63.1 = getelementptr %struct.snd_us16x08_meter_store, ptr %7, i32 0, i32 4, i32 1
  %155 = ptrtoint ptr %arrayidx63.1 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx63.1, align 4
  %arrayidx68.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 19
  %157 = ptrtoint ptr %arrayidx68.1 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %arrayidx68.1, align 4
  %arrayidx63.2 = getelementptr %struct.snd_us16x08_meter_store, ptr %7, i32 0, i32 4, i32 2
  %158 = ptrtoint ptr %arrayidx63.2 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx63.2, align 4
  %arrayidx68.2 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 10
  %160 = ptrtoint ptr %arrayidx68.2 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %arrayidx68.2, align 4
  %arrayidx63.3 = getelementptr %struct.snd_us16x08_meter_store, ptr %7, i32 0, i32 4, i32 3
  %161 = ptrtoint ptr %arrayidx63.3 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx63.3, align 4
  %arrayidx68.3 = getelementptr [128 x i32], ptr %value, i32 0, i32 21
  %163 = ptrtoint ptr %arrayidx68.3 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %arrayidx68.3, align 4
  %arrayidx63.4 = getelementptr %struct.snd_us16x08_meter_store, ptr %7, i32 0, i32 4, i32 4
  %164 = ptrtoint ptr %arrayidx63.4 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx63.4, align 4
  %arrayidx68.4 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 11
  %166 = ptrtoint ptr %arrayidx68.4 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %arrayidx68.4, align 4
  %arrayidx63.5 = getelementptr %struct.snd_us16x08_meter_store, ptr %7, i32 0, i32 4, i32 5
  %167 = ptrtoint ptr %arrayidx63.5 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx63.5, align 4
  %arrayidx68.5 = getelementptr [128 x i32], ptr %value, i32 0, i32 23
  %169 = ptrtoint ptr %arrayidx68.5 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %arrayidx68.5, align 4
  %arrayidx63.6 = getelementptr %struct.snd_us16x08_meter_store, ptr %7, i32 0, i32 4, i32 6
  %170 = ptrtoint ptr %arrayidx63.6 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx63.6, align 4
  %arrayidx68.6 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 12
  %172 = ptrtoint ptr %arrayidx68.6 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %arrayidx68.6, align 4
  %arrayidx63.7 = getelementptr %struct.snd_us16x08_meter_store, ptr %7, i32 0, i32 4, i32 7
  %173 = ptrtoint ptr %arrayidx63.7 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx63.7, align 4
  %arrayidx68.7 = getelementptr [128 x i32], ptr %value, i32 0, i32 25
  %175 = ptrtoint ptr %arrayidx68.7 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %arrayidx68.7, align 4
  %arrayidx63.8 = getelementptr %struct.snd_us16x08_meter_store, ptr %7, i32 0, i32 4, i32 8
  %176 = ptrtoint ptr %arrayidx63.8 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx63.8, align 4
  %arrayidx68.8 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 13
  %178 = ptrtoint ptr %arrayidx68.8 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %arrayidx68.8, align 4
  %arrayidx63.9 = getelementptr %struct.snd_us16x08_meter_store, ptr %7, i32 0, i32 4, i32 9
  %179 = ptrtoint ptr %arrayidx63.9 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx63.9, align 4
  %arrayidx68.9 = getelementptr [128 x i32], ptr %value, i32 0, i32 27
  %181 = ptrtoint ptr %arrayidx68.9 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %180, ptr %arrayidx68.9, align 4
  %arrayidx63.10 = getelementptr %struct.snd_us16x08_meter_store, ptr %7, i32 0, i32 4, i32 10
  %182 = ptrtoint ptr %arrayidx63.10 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx63.10, align 4
  %arrayidx68.10 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 14
  %184 = ptrtoint ptr %arrayidx68.10 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %arrayidx68.10, align 4
  %arrayidx63.11 = getelementptr %struct.snd_us16x08_meter_store, ptr %7, i32 0, i32 4, i32 11
  %185 = ptrtoint ptr %arrayidx63.11 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx63.11, align 4
  %arrayidx68.11 = getelementptr [128 x i32], ptr %value, i32 0, i32 29
  %187 = ptrtoint ptr %arrayidx68.11 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %arrayidx68.11, align 4
  %arrayidx63.12 = getelementptr %struct.snd_us16x08_meter_store, ptr %7, i32 0, i32 4, i32 12
  %188 = ptrtoint ptr %arrayidx63.12 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx63.12, align 4
  %arrayidx68.12 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 15
  %190 = ptrtoint ptr %arrayidx68.12 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %189, ptr %arrayidx68.12, align 4
  %arrayidx63.13 = getelementptr %struct.snd_us16x08_meter_store, ptr %7, i32 0, i32 4, i32 13
  %191 = ptrtoint ptr %arrayidx63.13 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx63.13, align 4
  %arrayidx68.13 = getelementptr [128 x i32], ptr %value, i32 0, i32 31
  %193 = ptrtoint ptr %arrayidx68.13 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %arrayidx68.13, align 4
  %arrayidx63.14 = getelementptr %struct.snd_us16x08_meter_store, ptr %7, i32 0, i32 4, i32 14
  %194 = ptrtoint ptr %arrayidx63.14 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx63.14, align 4
  %arrayidx68.14 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 16
  %196 = ptrtoint ptr %arrayidx68.14 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %arrayidx68.14, align 4
  %arrayidx63.15 = getelementptr %struct.snd_us16x08_meter_store, ptr %7, i32 0, i32 4, i32 15
  %197 = ptrtoint ptr %arrayidx63.15 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx63.15, align 4
  br label %cond.end65.15

cond.end65.15:                                    ; preds = %cond.true62.15, %cond.end65.14.thread
  %cond66.15 = phi i32 [ %198, %cond.true62.15 ], [ 0, %cond.end65.14.thread ]
  %arrayidx68.15 = getelementptr [128 x i32], ptr %value, i32 0, i32 33
  %199 = ptrtoint ptr %arrayidx68.15 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %cond66.15, ptr %arrayidx68.15, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %meter_urb) #7
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_us16x08_meter_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %1)
  %2 = icmp ugt i32 %1, 15
  br i1 %2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  %private_data1 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data1, align 4
  %comp_active_index = getelementptr inbounds %struct.snd_us16x08_meter_store, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %comp_active_index to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %1, ptr %comp_active_index, align 4
  %comp_index = getelementptr inbounds %struct.snd_us16x08_meter_store, ptr %6, i32 0, i32 2
  %8 = ptrtoint ptr %comp_index to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %1, ptr %comp_index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !62, !64, !66, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !87, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !123, !124, !126, !128, !130, !131, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !159, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178}
!llvm.module.flags = !{!180, !181, !182, !183, !184, !185, !186, !187}
!llvm.ident = !{!188}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/usb/mixer_us16x08.c", i32 1305, i32 43}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/usb/mixer_us16x08.c", i32 1308, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @snd_us16x08_controls_create.__UNIQUE_ID_ddebug246, !3, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/usb/mixer_us16x08.c", i32 1406, i32 44}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/usb/mixer_us16x08.c", i32 1053, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @add_new_ctl.__UNIQUE_ID_ddebug245, !11, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!14 = !{ptr @snd_us16x08_route_ctl, !15, !"snd_us16x08_route_ctl", i1 false, i1 false}
!15 = !{!"../sound/usb/mixer_us16x08.c", i32 803, i32 38}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/usb/mixer_us16x08.c", i32 147, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/usb/mixer_us16x08.c", i32 147, i32 17}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/usb/mixer_us16x08.c", i32 147, i32 33}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/usb/mixer_us16x08.c", i32 147, i32 45}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/usb/mixer_us16x08.c", i32 147, i32 57}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/usb/mixer_us16x08.c", i32 148, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/usb/mixer_us16x08.c", i32 148, i32 14}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/usb/mixer_us16x08.c", i32 148, i32 26}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/usb/mixer_us16x08.c", i32 148, i32 38}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/usb/mixer_us16x08.c", i32 148, i32 50}
!36 = !{ptr @route_names, !37, !"route_names", i1 false, i1 false}
!37 = !{!"../sound/usb/mixer_us16x08.c", i32 146, i32 26}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/usb/mixer_us16x08.c", i32 232, i32 3}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @snd_us16x08_route_put.__UNIQUE_ID_ddebug238, !39, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!42 = !{ptr @route_msg, !43, !"route_msg", i1 false, i1 false}
!43 = !{!"../sound/usb/mixer_us16x08.c", i32 22, i32 19}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/usb/mixer_us16x08.c", i32 1261, i32 11}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/usb/mixer_us16x08.c", i32 1269, i32 11}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/usb/mixer_us16x08.c", i32 1277, i32 11}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/usb/mixer_us16x08.c", i32 1285, i32 11}
!52 = distinct !{null, !53, !"master_controls", i1 false, i1 false}
!53 = !{!"../sound/usb/mixer_us16x08.c", i32 1255, i32 48}
!54 = !{ptr @snd_us16x08_master_ctl, !55, !"snd_us16x08_master_ctl", i1 false, i1 false}
!55 = !{!"../sound/usb/mixer_us16x08.c", i32 793, i32 38}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/usb/mixer_us16x08.c", i32 291, i32 3}
!58 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @snd_us16x08_master_put.__UNIQUE_ID_ddebug239, !57, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!60 = !{ptr @mix_msg_out, !61, !"mix_msg_out", i1 false, i1 false}
!61 = !{!"../sound/usb/mixer_us16x08.c", i32 63, i32 19}
!62 = !{ptr @snd_us16x08_bus_ctl, !63, !"snd_us16x08_bus_ctl", i1 false, i1 false}
!63 = !{!"../sound/usb/mixer_us16x08.c", i32 813, i32 38}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/usb/mixer_us16x08.c", i32 332, i32 3}
!66 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @snd_us16x08_bus_put.__UNIQUE_ID_ddebug240, !65, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!68 = !{ptr @bypass_msg_out, !69, !"bypass_msg_out", i1 false, i1 false}
!69 = !{!"../sound/usb/mixer_us16x08.c", i32 73, i32 19}
!70 = !{ptr @bus_msg_out, !71, !"bus_msg_out", i1 false, i1 false}
!71 = !{!"../sound/usb/mixer_us16x08.c", i32 81, i32 19}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/usb/mixer_us16x08.c", i32 1225, i32 11}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/usb/mixer_us16x08.c", i32 1233, i32 11}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/usb/mixer_us16x08.c", i32 1241, i32 11}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/usb/mixer_us16x08.c", i32 1249, i32 11}
!80 = !{ptr @channel_controls, !81, !"channel_controls", i1 false, i1 false}
!81 = !{!"../sound/usb/mixer_us16x08.c", i32 1219, i32 48}
!82 = !{ptr @snd_us16x08_ch_boolean_ctl, !83, !"snd_us16x08_ch_boolean_ctl", i1 false, i1 false}
!83 = !{!"../sound/usb/mixer_us16x08.c", i32 763, i32 38}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/usb/mixer_us16x08.c", i32 400, i32 3}
!86 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @snd_us16x08_channel_put.__UNIQUE_ID_ddebug241, !85, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!88 = !{ptr @mix_msg_in, !89, !"mix_msg_in", i1 false, i1 false}
!89 = !{!"../sound/usb/mixer_us16x08.c", i32 53, i32 19}
!90 = !{ptr @snd_us16x08_ch_int_ctl, !91, !"snd_us16x08_ch_int_ctl", i1 false, i1 false}
!91 = !{!"../sound/usb/mixer_us16x08.c", i32 773, i32 38}
!92 = !{ptr @snd_us16x08_pan_int_ctl, !93, !"snd_us16x08_pan_int_ctl", i1 false, i1 false}
!93 = !{!"../sound/usb/mixer_us16x08.c", i32 783, i32 38}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/usb/mixer_us16x08.c", i32 1098, i32 11}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/usb/mixer_us16x08.c", i32 1105, i32 11}
!98 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/usb/mixer_us16x08.c", i32 1112, i32 11}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/usb/mixer_us16x08.c", i32 1119, i32 11}
!102 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/usb/mixer_us16x08.c", i32 1126, i32 11}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/usb/mixer_us16x08.c", i32 1133, i32 11}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/usb/mixer_us16x08.c", i32 1140, i32 11}
!108 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/usb/mixer_us16x08.c", i32 1147, i32 11}
!110 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/usb/mixer_us16x08.c", i32 1154, i32 11}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/usb/mixer_us16x08.c", i32 1161, i32 11}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/usb/mixer_us16x08.c", i32 1168, i32 11}
!116 = !{ptr @eq_controls, !117, !"eq_controls", i1 false, i1 false}
!117 = !{!"../sound/usb/mixer_us16x08.c", i32 1092, i32 48}
!118 = !{ptr @snd_us16x08_eq_switch_ctl, !119, !"snd_us16x08_eq_switch_ctl", i1 false, i1 false}
!119 = !{!"../sound/usb/mixer_us16x08.c", i32 938, i32 38}
!120 = !{ptr @.str.45, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/usb/mixer_us16x08.c", i32 537, i32 3}
!122 = !{ptr @.str.46, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @snd_us16x08_eqswitch_put.__UNIQUE_ID_ddebug243, !121, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!124 = !{ptr @eqs_msq, !125, !"eqs_msq", i1 false, i1 false}
!125 = !{!"../sound/usb/mixer_us16x08.c", i32 117, i32 19}
!126 = !{ptr @snd_us16x08_eq_gain_ctl, !127, !"snd_us16x08_eq_gain_ctl", i1 false, i1 false}
!127 = !{!"../sound/usb/mixer_us16x08.c", i32 887, i32 38}
!128 = !{ptr @.str.47, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/usb/mixer_us16x08.c", i32 601, i32 3}
!130 = !{ptr @.str.48, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @snd_us16x08_eq_put.__UNIQUE_ID_ddebug244, !129, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!132 = !{ptr @snd_us16x08_eq_low_freq_ctl, !133, !"snd_us16x08_eq_low_freq_ctl", i1 false, i1 false}
!133 = !{!"../sound/usb/mixer_us16x08.c", i32 897, i32 38}
!134 = !{ptr @snd_us16x08_eq_mid_freq_ctl, !135, !"snd_us16x08_eq_mid_freq_ctl", i1 false, i1 false}
!135 = !{!"../sound/usb/mixer_us16x08.c", i32 907, i32 38}
!136 = !{ptr @snd_us16x08_eq_mid_width_ctl, !137, !"snd_us16x08_eq_mid_width_ctl", i1 false, i1 false}
!137 = !{!"../sound/usb/mixer_us16x08.c", i32 917, i32 38}
!138 = !{ptr @snd_us16x08_eq_high_freq_ctl, !139, !"snd_us16x08_eq_high_freq_ctl", i1 false, i1 false}
!139 = !{!"../sound/usb/mixer_us16x08.c", i32 927, i32 38}
!140 = !{ptr @.str.49, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/usb/mixer_us16x08.c", i32 1179, i32 11}
!142 = !{ptr @.str.50, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/usb/mixer_us16x08.c", i32 1186, i32 11}
!144 = !{ptr @.str.51, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/usb/mixer_us16x08.c", i32 1193, i32 11}
!146 = !{ptr @.str.52, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/usb/mixer_us16x08.c", i32 1200, i32 11}
!148 = !{ptr @.str.53, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/usb/mixer_us16x08.c", i32 1207, i32 11}
!150 = !{ptr @.str.54, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/usb/mixer_us16x08.c", i32 1214, i32 11}
!152 = distinct !{null, !153, !"comp_controls", i1 false, i1 false}
!153 = !{!"../sound/usb/mixer_us16x08.c", i32 1173, i32 48}
!154 = !{ptr @snd_us16x08_compswitch_ctl, !155, !"snd_us16x08_compswitch_ctl", i1 false, i1 false}
!155 = !{!"../sound/usb/mixer_us16x08.c", i32 823, i32 38}
!156 = !{ptr @.str.55, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/usb/mixer_us16x08.c", i32 478, i32 3}
!158 = !{ptr @.str.56, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @snd_us16x08_comp_put.__UNIQUE_ID_ddebug242, !157, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!160 = !{ptr @comp_msg, !161, !"comp_msg", i1 false, i1 false}
!161 = !{!"../sound/usb/mixer_us16x08.c", i32 89, i32 19}
!162 = !{ptr @ratio_map, !163, !"ratio_map", i1 false, i1 false}
!163 = !{!"../sound/usb/mixer_us16x08.c", i32 140, i32 19}
!164 = !{ptr @snd_us16x08_comp_threshold_ctl, !165, !"snd_us16x08_comp_threshold_ctl", i1 false, i1 false}
!165 = !{!"../sound/usb/mixer_us16x08.c", i32 833, i32 38}
!166 = !{ptr @snd_us16x08_comp_ratio_ctl, !167, !"snd_us16x08_comp_ratio_ctl", i1 false, i1 false}
!167 = !{!"../sound/usb/mixer_us16x08.c", i32 844, i32 38}
!168 = !{ptr @snd_us16x08_comp_attack_ctl, !169, !"snd_us16x08_comp_attack_ctl", i1 false, i1 false}
!169 = !{!"../sound/usb/mixer_us16x08.c", i32 865, i32 38}
!170 = !{ptr @snd_us16x08_comp_release_ctl, !171, !"snd_us16x08_comp_release_ctl", i1 false, i1 false}
!171 = !{!"../sound/usb/mixer_us16x08.c", i32 876, i32 38}
!172 = !{ptr @snd_us16x08_comp_gain_ctl, !173, !"snd_us16x08_comp_gain_ctl", i1 false, i1 false}
!173 = !{!"../sound/usb/mixer_us16x08.c", i32 855, i32 38}
!174 = !{ptr @snd_us16x08_meter_ctl, !175, !"snd_us16x08_meter_ctl", i1 false, i1 false}
!175 = !{!"../sound/usb/mixer_us16x08.c", i32 948, i32 38}
!176 = distinct !{null, !177, !"mix_init_msg1", i1 false, i1 false}
!177 = !{!"../sound/usb/mixer_us16x08.c", i32 45, i32 19}
!178 = !{ptr @mix_init_msg2, !179, !"mix_init_msg2", i1 false, i1 false}
!179 = !{!"../sound/usb/mixer_us16x08.c", i32 49, i32 19}
!180 = !{i32 1, !"wchar_size", i32 2}
!181 = !{i32 1, !"min_enum_size", i32 4}
!182 = !{i32 8, !"branch-target-enforcement", i32 0}
!183 = !{i32 8, !"sign-return-address", i32 0}
!184 = !{i32 8, !"sign-return-address-all", i32 0}
!185 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!186 = !{i32 7, !"uwtable", i32 1}
!187 = !{i32 7, !"frame-pointer", i32 2}
!188 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!189 = !{!"auto-init"}
!190 = !{i64 2148237455, i64 2148237460, i64 2148237473, i64 2148237517, i64 2148237551, i64 2148237572}
