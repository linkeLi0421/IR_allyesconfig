; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.mxl111sf_state = type { ptr, i32, i8, i8, i8, i8, i32, i32, i32, %struct.tveeprom, %struct.mutex, i8, [3 x %struct.mxl111sf_adap_state], [64 x i8], [64 x i8], %struct.mutex, %struct.media_entity, [2 x %struct.media_pad] }
%struct.tveeprom = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [6 x i8] }
%struct.mxl111sf_adap_state = type { i32, i32, i32, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.109 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.dvb_usb_device = type { ptr, ptr, ptr, i8, ptr, ptr, %struct.dvb_usb_rc, i32, %struct.mutex, %struct.mutex, %struct.i2c_adapter, [2 x %struct.dvb_usb_adapter], ptr, [64 x i8], %struct.delayed_work, ptr }
%struct.dvb_usb_rc = type { ptr, i64, ptr, ptr, i32, i32, i8, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dvb_usb_adapter = type { ptr, %struct.usb_data_stream, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dvb_adapter, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.usb_data_stream = type { ptr, %struct.usb_data_stream_properties, i8, ptr, [10 x ptr], i32, i32, [10 x ptr], [10 x i32], i32, i32, ptr }
%struct.usb_data_stream_properties = type { i8, i8, i8, %union.anon.103 }
%union.anon.103 = type { %struct.anon.105 }
%struct.anon.105 = type { i32, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }

@dvb_usb_mxl111sf_debug = external dso_local local_unnamed_addr global i32, align 4
@mxl111sf_config_pin_mux_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017%s: (%d)\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mxl111sf_config_pin_mux_modes\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c\00", [51 x i8] zeroinitializer }, align 32
@mxl111sf_config_pin_mux_modes._entry_ptr = internal global ptr @mxl111sf_config_pin_mux_modes._entry, section ".printk_index", align 4
@mxl111sf_config_pin_mux_modes._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: error %d on line %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mxl111sf_config_pin_mux_modes._entry_ptr.5 = internal global ptr @mxl111sf_config_pin_mux_modes._entry.3, section ".printk_index", align 4
@mxl111sf_config_pin_mux_modes._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_pin_mux_modes._entry_ptr.7 = internal global ptr @mxl111sf_config_pin_mux_modes._entry.6, section ".printk_index", align 4
@mxl111sf_config_pin_mux_modes._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_pin_mux_modes._entry_ptr.9 = internal global ptr @mxl111sf_config_pin_mux_modes._entry.8, section ".printk_index", align 4
@mxl111sf_config_pin_mux_modes._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_pin_mux_modes._entry_ptr.11 = internal global ptr @mxl111sf_config_pin_mux_modes._entry.10, section ".printk_index", align 4
@mxl111sf_config_pin_mux_modes._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_pin_mux_modes._entry_ptr.13 = internal global ptr @mxl111sf_config_pin_mux_modes._entry.12, section ".printk_index", align 4
@mxl111sf_config_pin_mux_modes._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_pin_mux_modes._entry_ptr.15 = internal global ptr @mxl111sf_config_pin_mux_modes._entry.14, section ".printk_index", align 4
@mxl111sf_config_pin_mux_modes._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_pin_mux_modes._entry_ptr.17 = internal global ptr @mxl111sf_config_pin_mux_modes._entry.16, section ".printk_index", align 4
@mxl111sf_config_pin_mux_modes._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_pin_mux_modes._entry_ptr.19 = internal global ptr @mxl111sf_config_pin_mux_modes._entry.18, section ".printk_index", align 4
@mxl111sf_config_pin_mux_modes._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_pin_mux_modes._entry_ptr.21 = internal global ptr @mxl111sf_config_pin_mux_modes._entry.20, section ".printk_index", align 4
@mxl111sf_config_pin_mux_modes._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_pin_mux_modes._entry_ptr.23 = internal global ptr @mxl111sf_config_pin_mux_modes._entry.22, section ".printk_index", align 4
@mxl111sf_config_pin_mux_modes._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_pin_mux_modes._entry_ptr.25 = internal global ptr @mxl111sf_config_pin_mux_modes._entry.24, section ".printk_index", align 4
@mxl111sf_config_pin_mux_modes._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_pin_mux_modes._entry_ptr.27 = internal global ptr @mxl111sf_config_pin_mux_modes._entry.26, section ".printk_index", align 4
@mxl111sf_config_pin_mux_modes._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_pin_mux_modes._entry_ptr.29 = internal global ptr @mxl111sf_config_pin_mux_modes._entry.28, section ".printk_index", align 4
@mxl111sf_config_pin_mux_modes._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_pin_mux_modes._entry_ptr.31 = internal global ptr @mxl111sf_config_pin_mux_modes._entry.30, section ".printk_index", align 4
@mxl111sf_config_pin_mux_modes._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_pin_mux_modes._entry_ptr.33 = internal global ptr @mxl111sf_config_pin_mux_modes._entry.32, section ".printk_index", align 4
@mxl111sf_config_pin_mux_modes._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_pin_mux_modes._entry_ptr.35 = internal global ptr @mxl111sf_config_pin_mux_modes._entry.34, section ".printk_index", align 4
@mxl111sf_set_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: (%d, %d)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mxl111sf_set_gpio\00", [46 x i8] zeroinitializer }, align 32
@mxl111sf_set_gpio._entry_ptr = internal global ptr @mxl111sf_set_gpio._entry, section ".printk_index", align 4
@mxl111sf_set_gpio._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s: gpio_port_expander undefined, assuming PCA9534\0A\00", [42 x i8] zeroinitializer }, align 32
@mxl111sf_set_gpio._entry_ptr.40 = internal global ptr @mxl111sf_set_gpio._entry.38, section ".printk_index", align 4
@mxl111sf_init_port_expander._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\017%s: ()\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxl111sf_init_port_expander\00", [36 x i8] zeroinitializer }, align 32
@mxl111sf_init_port_expander._entry_ptr = internal global ptr @mxl111sf_init_port_expander._entry, section ".printk_index", align 4
@mxl111sf_init_port_expander._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.42, ptr @.str.2, i32 695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_init_port_expander._entry_ptr.44 = internal global ptr @mxl111sf_init_port_expander._entry.43, section ".printk_index", align 4
@mxl111sf_gpio_mode_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.45, ptr @.str.2, i32 715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mxl111sf_gpio_mode_switch\00", [38 x i8] zeroinitializer }, align 32
@mxl111sf_gpio_mode_switch._entry_ptr = internal global ptr @mxl111sf_gpio_mode_switch._entry, section ".printk_index", align 4
@pca9534_set_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.46, ptr @.str.2, i32 581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pca9534_set_gpio\00", [47 x i8] zeroinitializer }, align 32
@pca9534_set_gpio._entry_ptr = internal global ptr @pca9534_set_gpio._entry, section ".printk_index", align 4
@mxl111sf_hw_do_set_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: (%d, %d, %d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxl111sf_hw_do_set_gpio\00", [40 x i8] zeroinitializer }, align 32
@mxl111sf_hw_do_set_gpio._entry_ptr = internal global ptr @mxl111sf_hw_do_set_gpio._entry, section ".printk_index", align 4
@mxl111sf_config_gpio_pins._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.49, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mxl111sf_config_gpio_pins\00", [38 x i8] zeroinitializer }, align 32
@mxl111sf_config_gpio_pins._entry_ptr = internal global ptr @mxl111sf_config_gpio_pins._entry, section ".printk_index", align 4
@mxl111sf_config_gpio_pins._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.49, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_gpio_pins._entry_ptr.51 = internal global ptr @mxl111sf_config_gpio_pins._entry.50, section ".printk_index", align 4
@mxl111sf_config_gpio_pins._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.49, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_gpio_pins._entry_ptr.53 = internal global ptr @mxl111sf_config_gpio_pins._entry.52, section ".printk_index", align 4
@mxl111sf_config_gpio_pins._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.49, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_gpio_pins._entry_ptr.55 = internal global ptr @mxl111sf_config_gpio_pins._entry.54, section ".printk_index", align 4
@mxl111sf_config_gpio_pins._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.49, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_gpio_pins._entry_ptr.57 = internal global ptr @mxl111sf_config_gpio_pins._entry.56, section ".printk_index", align 4
@mxl111sf_config_gpio_pins._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.49, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_gpio_pins._entry_ptr.59 = internal global ptr @mxl111sf_config_gpio_pins._entry.58, section ".printk_index", align 4
@mxl111sf_config_gpio_pins._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.49, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_gpio_pins._entry_ptr.61 = internal global ptr @mxl111sf_config_gpio_pins._entry.60, section ".printk_index", align 4
@mxl111sf_config_gpio_pins._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.49, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_gpio_pins._entry_ptr.63 = internal global ptr @mxl111sf_config_gpio_pins._entry.62, section ".printk_index", align 4
@mxl111sf_set_gpo_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.64, ptr @.str.2, i32 27, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxl111sf_set_gpo_state\00", [41 x i8] zeroinitializer }, align 32
@mxl111sf_set_gpo_state._entry_ptr = internal global ptr @mxl111sf_set_gpo_state._entry, section ".printk_index", align 4
@mxl111sf_set_gpo_state._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.64, ptr @.str.2, i32 31, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_set_gpo_state._entry_ptr.66 = internal global ptr @mxl111sf_set_gpo_state._entry.65, section ".printk_index", align 4
@mxl111sf_set_gpo_state._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.64, ptr @.str.2, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_set_gpo_state._entry_ptr.68 = internal global ptr @mxl111sf_set_gpo_state._entry.67, section ".printk_index", align 4
@mxl111sf_set_gpo_state._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.64, ptr @.str.2, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_set_gpo_state._entry_ptr.70 = internal global ptr @mxl111sf_set_gpo_state._entry.69, section ".printk_index", align 4
@mxl111sf_set_gpo_state._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.64, ptr @.str.2, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_set_gpo_state._entry_ptr.72 = internal global ptr @mxl111sf_set_gpo_state._entry.71, section ".printk_index", align 4
@mxl111sf_get_gpi_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: (0x%02x)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxl111sf_get_gpi_state\00", [41 x i8] zeroinitializer }, align 32
@mxl111sf_get_gpi_state._entry_ptr = internal global ptr @mxl111sf_get_gpi_state._entry, section ".printk_index", align 4
@mxl111sf_get_gpi_state._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.74, ptr @.str.2, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_get_gpi_state._entry_ptr.76 = internal global ptr @mxl111sf_get_gpi_state._entry.75, section ".printk_index", align 4
@mxl111sf_get_gpi_state._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.74, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_get_gpi_state._entry_ptr.78 = internal global ptr @mxl111sf_get_gpi_state._entry.77, section ".printk_index", align 4
@mxl111sf_get_gpi_state._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.74, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_get_gpi_state._entry_ptr.80 = internal global ptr @mxl111sf_get_gpi_state._entry.79, section ".printk_index", align 4
@mxl111sf_probe_port_expander._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.81, ptr @.str.2, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mxl111sf_probe_port_expander\00", [35 x i8] zeroinitializer }, align 32
@mxl111sf_probe_port_expander._entry_ptr = internal global ptr @mxl111sf_probe_port_expander._entry, section ".printk_index", align 4
@mxl111sf_probe_port_expander._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.2, i32 664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: found port expander at 0x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@mxl111sf_probe_port_expander._entry_ptr.84 = internal global ptr @mxl111sf_probe_port_expander._entry.82, section ".printk_index", align 4
@mxl111sf_probe_port_expander._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.2, i32 676, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_probe_port_expander._entry_ptr.86 = internal global ptr @mxl111sf_probe_port_expander._entry.85, section ".printk_index", align 4
@mxl111sf_probe_port_expander._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.81, ptr @.str.2, i32 681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: using hardware gpio\0A\00", [37 x i8] zeroinitializer }, align 32
@mxl111sf_probe_port_expander._entry_ptr.89 = internal global ptr @mxl111sf_probe_port_expander._entry.87, section ".printk_index", align 4
@pca9534_init_port_expander._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.90, ptr @.str.2, i32 614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pca9534_init_port_expander\00", [37 x i8] zeroinitializer }, align 32
@pca9534_init_port_expander._entry_ptr = internal global ptr @pca9534_init_port_expander._entry, section ".printk_index", align 4
@mxl111sf_hw_gpio_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.91, ptr @.str.2, i32 558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxl111sf_hw_gpio_initialize\00", [36 x i8] zeroinitializer }, align 32
@mxl111sf_hw_gpio_initialize._entry_ptr = internal global ptr @mxl111sf_hw_gpio_initialize._entry, section ".printk_index", align 4
@mxl111sf_hw_gpio_initialize._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.91, ptr @.str.2, i32 562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_hw_gpio_initialize._entry_ptr.93 = internal global ptr @mxl111sf_hw_gpio_initialize._entry.92, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.95 = internal global [13 x i64] [i64 11, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 207, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 210, i32 6 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 213, i32 6 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 216, i32 6 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 219, i32 6 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 222, i32 6 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 225, i32 6 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 228, i32 6 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 231, i32 6 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 519, i32 6 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 522, i32 6 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 525, i32 6 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 528, i32 6 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 531, i32 6 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 534, i32 6 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 537, i32 6 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 540, i32 6 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 629, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 633, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 687, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 694, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 715, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 581, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 174, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 110, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 118, i32 7 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 123, i32 7 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 131, i32 7 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 136, i32 7 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 143, i32 7 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 148, i32 7 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 160, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 27, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 31, i32 7 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 36, i32 7 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 42, i32 7 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 47, i32 7 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 60, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 70, i32 7 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 79, i32 7 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 87, i32 7 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 653, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 663, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 675, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 681, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 614, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 558, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.306 = private constant [48 x i8] c"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 562, i32 7 }
@llvm.compiler.used = appending global [118 x ptr] [ptr @mxl111sf_config_gpio_pins._entry, ptr @mxl111sf_config_gpio_pins._entry.50, ptr @mxl111sf_config_gpio_pins._entry.52, ptr @mxl111sf_config_gpio_pins._entry.54, ptr @mxl111sf_config_gpio_pins._entry.56, ptr @mxl111sf_config_gpio_pins._entry.58, ptr @mxl111sf_config_gpio_pins._entry.60, ptr @mxl111sf_config_gpio_pins._entry.62, ptr @mxl111sf_config_gpio_pins._entry_ptr, ptr @mxl111sf_config_gpio_pins._entry_ptr.51, ptr @mxl111sf_config_gpio_pins._entry_ptr.53, ptr @mxl111sf_config_gpio_pins._entry_ptr.55, ptr @mxl111sf_config_gpio_pins._entry_ptr.57, ptr @mxl111sf_config_gpio_pins._entry_ptr.59, ptr @mxl111sf_config_gpio_pins._entry_ptr.61, ptr @mxl111sf_config_gpio_pins._entry_ptr.63, ptr @mxl111sf_config_pin_mux_modes._entry, ptr @mxl111sf_config_pin_mux_modes._entry.10, ptr @mxl111sf_config_pin_mux_modes._entry.12, ptr @mxl111sf_config_pin_mux_modes._entry.14, ptr @mxl111sf_config_pin_mux_modes._entry.16, ptr @mxl111sf_config_pin_mux_modes._entry.18, ptr @mxl111sf_config_pin_mux_modes._entry.20, ptr @mxl111sf_config_pin_mux_modes._entry.22, ptr @mxl111sf_config_pin_mux_modes._entry.24, ptr @mxl111sf_config_pin_mux_modes._entry.26, ptr @mxl111sf_config_pin_mux_modes._entry.28, ptr @mxl111sf_config_pin_mux_modes._entry.3, ptr @mxl111sf_config_pin_mux_modes._entry.30, ptr @mxl111sf_config_pin_mux_modes._entry.32, ptr @mxl111sf_config_pin_mux_modes._entry.34, ptr @mxl111sf_config_pin_mux_modes._entry.6, ptr @mxl111sf_config_pin_mux_modes._entry.8, ptr @mxl111sf_config_pin_mux_modes._entry_ptr, ptr @mxl111sf_config_pin_mux_modes._entry_ptr.11, ptr @mxl111sf_config_pin_mux_modes._entry_ptr.13, ptr @mxl111sf_config_pin_mux_modes._entry_ptr.15, ptr @mxl111sf_config_pin_mux_modes._entry_ptr.17, ptr @mxl111sf_config_pin_mux_modes._entry_ptr.19, ptr @mxl111sf_config_pin_mux_modes._entry_ptr.21, ptr @mxl111sf_config_pin_mux_modes._entry_ptr.23, ptr @mxl111sf_config_pin_mux_modes._entry_ptr.25, ptr @mxl111sf_config_pin_mux_modes._entry_ptr.27, ptr @mxl111sf_config_pin_mux_modes._entry_ptr.29, ptr @mxl111sf_config_pin_mux_modes._entry_ptr.31, ptr @mxl111sf_config_pin_mux_modes._entry_ptr.33, ptr @mxl111sf_config_pin_mux_modes._entry_ptr.35, ptr @mxl111sf_config_pin_mux_modes._entry_ptr.5, ptr @mxl111sf_config_pin_mux_modes._entry_ptr.7, ptr @mxl111sf_config_pin_mux_modes._entry_ptr.9, ptr @mxl111sf_get_gpi_state._entry, ptr @mxl111sf_get_gpi_state._entry.75, ptr @mxl111sf_get_gpi_state._entry.77, ptr @mxl111sf_get_gpi_state._entry.79, ptr @mxl111sf_get_gpi_state._entry_ptr, ptr @mxl111sf_get_gpi_state._entry_ptr.76, ptr @mxl111sf_get_gpi_state._entry_ptr.78, ptr @mxl111sf_get_gpi_state._entry_ptr.80, ptr @mxl111sf_gpio_mode_switch._entry, ptr @mxl111sf_gpio_mode_switch._entry_ptr, ptr @mxl111sf_hw_do_set_gpio._entry, ptr @mxl111sf_hw_do_set_gpio._entry_ptr, ptr @mxl111sf_hw_gpio_initialize._entry, ptr @mxl111sf_hw_gpio_initialize._entry.92, ptr @mxl111sf_hw_gpio_initialize._entry_ptr, ptr @mxl111sf_hw_gpio_initialize._entry_ptr.93, ptr @mxl111sf_init_port_expander._entry, ptr @mxl111sf_init_port_expander._entry.43, ptr @mxl111sf_init_port_expander._entry_ptr, ptr @mxl111sf_init_port_expander._entry_ptr.44, ptr @mxl111sf_probe_port_expander._entry, ptr @mxl111sf_probe_port_expander._entry.82, ptr @mxl111sf_probe_port_expander._entry.85, ptr @mxl111sf_probe_port_expander._entry.87, ptr @mxl111sf_probe_port_expander._entry_ptr, ptr @mxl111sf_probe_port_expander._entry_ptr.84, ptr @mxl111sf_probe_port_expander._entry_ptr.86, ptr @mxl111sf_probe_port_expander._entry_ptr.89, ptr @mxl111sf_set_gpio._entry, ptr @mxl111sf_set_gpio._entry.38, ptr @mxl111sf_set_gpio._entry_ptr, ptr @mxl111sf_set_gpio._entry_ptr.40, ptr @mxl111sf_set_gpo_state._entry, ptr @mxl111sf_set_gpo_state._entry.65, ptr @mxl111sf_set_gpo_state._entry.67, ptr @mxl111sf_set_gpo_state._entry.69, ptr @mxl111sf_set_gpo_state._entry.71, ptr @mxl111sf_set_gpo_state._entry_ptr, ptr @mxl111sf_set_gpo_state._entry_ptr.66, ptr @mxl111sf_set_gpo_state._entry_ptr.68, ptr @mxl111sf_set_gpo_state._entry_ptr.70, ptr @mxl111sf_set_gpo_state._entry_ptr.72, ptr @pca9534_init_port_expander._entry, ptr @pca9534_init_port_expander._entry_ptr, ptr @pca9534_set_gpio._entry, ptr @pca9534_set_gpio._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.64, ptr @.str.73, ptr @.str.74, ptr @.str.81, ptr @.str.83, ptr @.str.88, ptr @.str.90, ptr @.str.91], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_pin_mux_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_pin_mux_modes._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_pin_mux_modes._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_pin_mux_modes._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_pin_mux_modes._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_pin_mux_modes._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_pin_mux_modes._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_pin_mux_modes._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_pin_mux_modes._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_pin_mux_modes._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_pin_mux_modes._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_pin_mux_modes._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_pin_mux_modes._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_pin_mux_modes._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_pin_mux_modes._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_pin_mux_modes._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_pin_mux_modes._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_set_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_set_gpio._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_init_port_expander._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_init_port_expander._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_gpio_mode_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9534_set_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_hw_do_set_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_gpio_pins._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_gpio_pins._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_gpio_pins._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_gpio_pins._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_gpio_pins._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_gpio_pins._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_gpio_pins._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_gpio_pins._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_set_gpo_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_set_gpo_state._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_set_gpo_state._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_set_gpo_state._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_set_gpo_state._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_get_gpi_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_get_gpi_state._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_get_gpi_state._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_get_gpi_state._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_probe_port_expander._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_probe_port_expander._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_probe_port_expander._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_probe_port_expander._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9534_init_port_expander._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_hw_gpio_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_hw_gpio_initialize._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mxl111sf_config_pin_mux_modes(ptr noundef %state, i32 noundef %pin_mux_config) local_unnamed_addr #0 align 64 {
entry:
  %r12 = alloca i8, align 1
  %r15 = alloca i8, align 1
  %r17 = alloca i8, align 1
  %r18 = alloca i8, align 1
  %r3D = alloca i8, align 1
  %r82 = alloca i8, align 1
  %r84 = alloca i8, align 1
  %r89 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %r12) #4
  %0 = ptrtoint ptr %r12 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %r12, align 1, !annotation !175
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %r15) #4
  %1 = ptrtoint ptr %r15 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %r15, align 1, !annotation !175
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %r17) #4
  %2 = ptrtoint ptr %r17 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %r17, align 1, !annotation !175
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %r18) #4
  %3 = ptrtoint ptr %r18 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %r18, align 1, !annotation !175
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %r3D) #4
  %4 = ptrtoint ptr %r3D to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %r3D, align 1, !annotation !175
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %r82) #4
  %5 = ptrtoint ptr %r82 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %r82, align 1, !annotation !175
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %r84) #4
  %6 = ptrtoint ptr %r84 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %r84, align 1, !annotation !175
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %r89) #4
  %7 = ptrtoint ptr %r89 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %r89, align 1, !annotation !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %8 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %pin_mux_config) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call1 = call i32 @mxl111sf_read_reg(ptr noundef %state, i8 noundef zeroext 23, ptr noundef nonnull %r17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end14.critedge

land.lhs.true:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %9 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true.fail_crit_edge, label %do.end7

land.lhs.true.fail_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

do.end7:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %call1, i32 noundef 210) #7
  br label %fail

if.end14.critedge:                                ; preds = %if.end
  %call15 = call i32 @mxl111sf_read_reg(ptr noundef %state, i8 noundef zeroext 24, ptr noundef nonnull %r18) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp17 = icmp slt i32 %call15, 0
  br i1 %cmp17, label %land.lhs.true20, label %if.end33.critedge

land.lhs.true20:                                  ; preds = %if.end14.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %10 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and21 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %land.lhs.true20.fail_crit_edge, label %do.end26

land.lhs.true20.fail_crit_edge:                   ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

do.end26:                                         ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #6
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %call15, i32 noundef 213) #7
  br label %fail

if.end33.critedge:                                ; preds = %if.end14.critedge
  %call34 = call i32 @mxl111sf_read_reg(ptr noundef %state, i8 noundef zeroext 18, ptr noundef nonnull %r12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp36 = icmp slt i32 %call34, 0
  br i1 %cmp36, label %land.lhs.true39, label %if.end52.critedge

land.lhs.true39:                                  ; preds = %if.end33.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %11 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and40 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %land.lhs.true39.fail_crit_edge, label %do.end45

land.lhs.true39.fail_crit_edge:                   ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

do.end45:                                         ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #6
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %call34, i32 noundef 216) #7
  br label %fail

if.end52.critedge:                                ; preds = %if.end33.critedge
  %call53 = call i32 @mxl111sf_read_reg(ptr noundef %state, i8 noundef zeroext 21, ptr noundef nonnull %r15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp55 = icmp slt i32 %call53, 0
  br i1 %cmp55, label %land.lhs.true58, label %if.end71.critedge

land.lhs.true58:                                  ; preds = %if.end52.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %12 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and59 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %land.lhs.true58.fail_crit_edge, label %do.end64

land.lhs.true58.fail_crit_edge:                   ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

do.end64:                                         ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #6
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %call53, i32 noundef 219) #7
  br label %fail

if.end71.critedge:                                ; preds = %if.end52.critedge
  %call72 = call i32 @mxl111sf_read_reg(ptr noundef %state, i8 noundef zeroext -126, ptr noundef nonnull %r82) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp74 = icmp slt i32 %call72, 0
  br i1 %cmp74, label %land.lhs.true77, label %if.end90.critedge

land.lhs.true77:                                  ; preds = %if.end71.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %13 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and78 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %land.lhs.true77.fail_crit_edge, label %do.end83

land.lhs.true77.fail_crit_edge:                   ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

do.end83:                                         ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #6
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %call72, i32 noundef 222) #7
  br label %fail

if.end90.critedge:                                ; preds = %if.end71.critedge
  %call91 = call i32 @mxl111sf_read_reg(ptr noundef %state, i8 noundef zeroext -124, ptr noundef nonnull %r84) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp93 = icmp slt i32 %call91, 0
  br i1 %cmp93, label %land.lhs.true96, label %if.end109.critedge

land.lhs.true96:                                  ; preds = %if.end90.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %14 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and97 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %land.lhs.true96.fail_crit_edge, label %do.end102

land.lhs.true96.fail_crit_edge:                   ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

do.end102:                                        ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #6
  %call104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %call91, i32 noundef 225) #7
  br label %fail

if.end109.critedge:                               ; preds = %if.end90.critedge
  %call110 = call i32 @mxl111sf_read_reg(ptr noundef %state, i8 noundef zeroext -119, ptr noundef nonnull %r89) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp112 = icmp slt i32 %call110, 0
  br i1 %cmp112, label %land.lhs.true115, label %if.end128.critedge

land.lhs.true115:                                 ; preds = %if.end109.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %15 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and116 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %land.lhs.true115.fail_crit_edge, label %do.end121

land.lhs.true115.fail_crit_edge:                  ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

do.end121:                                        ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #6
  %call123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %call110, i32 noundef 228) #7
  br label %fail

if.end128.critedge:                               ; preds = %if.end109.critedge
  %call129 = call i32 @mxl111sf_read_reg(ptr noundef %state, i8 noundef zeroext 61, ptr noundef nonnull %r3D) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %cmp131 = icmp slt i32 %call129, 0
  br i1 %cmp131, label %land.lhs.true134, label %if.end147.critedge

land.lhs.true134:                                 ; preds = %if.end128.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %16 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and135 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %land.lhs.true134.fail_crit_edge, label %do.end140

land.lhs.true134.fail_crit_edge:                  ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

do.end140:                                        ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #6
  %call142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %call129, i32 noundef 231) #7
  br label %fail

if.end147.critedge:                               ; preds = %if.end128.critedge
  %17 = zext i32 %pin_mux_config to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %pin_mux_config, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb186
    i32 3, label %sw.bb226
    i32 4, label %sw.bb266
    i32 5, label %sw.bb306
    i32 7, label %sw.bb346
    i32 6, label %sw.bb386
    i32 8, label %sw.bb426
    i32 9, label %sw.bb466
  ]

sw.bb:                                            ; preds = %if.end147.critedge
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %r17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %r17, align 1
  %20 = or i8 %19, 64
  store i8 %20, ptr %r17, align 1
  %21 = ptrtoint ptr %r18 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %r18, align 1
  %23 = and i8 %22, -4
  %24 = or i8 %23, 1
  store i8 %24, ptr %r18, align 1
  %25 = ptrtoint ptr %r3D to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %r3D, align 1
  %27 = ptrtoint ptr %r12 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %r12, align 1
  %29 = and i8 %28, -5
  store i8 %29, ptr %r12, align 1
  %30 = ptrtoint ptr %r15 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %r15, align 1
  %32 = and i8 %31, -65
  store i8 %32, ptr %r15, align 1
  %33 = and i8 %26, 111
  store i8 %33, ptr %r3D, align 1
  %34 = ptrtoint ptr %r82 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %r82, align 1
  %36 = or i8 %35, -16
  store i8 %36, ptr %r82, align 1
  %37 = ptrtoint ptr %r84 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %r84, align 1
  %39 = or i8 %38, -16
  store i8 %39, ptr %r84, align 1
  %40 = ptrtoint ptr %r89 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %r89, align 1
  %42 = or i8 %41, -16
  store i8 %42, ptr %r89, align 1
  br label %sw.epilog

sw.bb186:                                         ; preds = %if.end147.critedge
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %r17 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %r17, align 1
  %45 = or i8 %44, 64
  store i8 %45, ptr %r17, align 1
  %46 = ptrtoint ptr %r18 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %r18, align 1
  %48 = and i8 %47, -4
  %49 = or i8 %48, 2
  store i8 %49, ptr %r18, align 1
  %50 = ptrtoint ptr %r3D to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %r3D, align 1
  %52 = ptrtoint ptr %r12 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %r12, align 1
  %54 = and i8 %53, -5
  store i8 %54, ptr %r12, align 1
  %55 = ptrtoint ptr %r15 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %r15, align 1
  %57 = and i8 %56, -65
  store i8 %57, ptr %r15, align 1
  %58 = and i8 %51, 111
  store i8 %58, ptr %r3D, align 1
  %59 = ptrtoint ptr %r82 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %r82, align 1
  %61 = or i8 %60, -16
  store i8 %61, ptr %r82, align 1
  %62 = ptrtoint ptr %r84 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %r84, align 1
  %64 = or i8 %63, -16
  store i8 %64, ptr %r84, align 1
  %65 = ptrtoint ptr %r89 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %r89, align 1
  %67 = or i8 %66, -16
  store i8 %67, ptr %r89, align 1
  br label %sw.epilog

sw.bb226:                                         ; preds = %if.end147.critedge
  call void @__sanitizer_cov_trace_pc() #6
  %68 = ptrtoint ptr %r17 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %r17, align 1
  %70 = and i8 %69, -65
  store i8 %70, ptr %r17, align 1
  %71 = ptrtoint ptr %r18 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %r18, align 1
  %73 = and i8 %72, -4
  store i8 %73, ptr %r18, align 1
  %74 = ptrtoint ptr %r3D to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %r3D, align 1
  %76 = ptrtoint ptr %r12 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %r12, align 1
  %78 = and i8 %77, -5
  store i8 %78, ptr %r12, align 1
  %79 = ptrtoint ptr %r15 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %r15, align 1
  %81 = and i8 %80, -65
  store i8 %81, ptr %r15, align 1
  %82 = and i8 %75, 111
  store i8 %82, ptr %r3D, align 1
  %83 = ptrtoint ptr %r82 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %r82, align 1
  %85 = and i8 %84, 15
  store i8 %85, ptr %r82, align 1
  %86 = ptrtoint ptr %r84 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %r84, align 1
  %88 = and i8 %87, 15
  store i8 %88, ptr %r84, align 1
  %89 = ptrtoint ptr %r89 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %r89, align 1
  %91 = and i8 %90, 15
  store i8 %91, ptr %r89, align 1
  br label %sw.epilog

sw.bb266:                                         ; preds = %if.end147.critedge
  call void @__sanitizer_cov_trace_pc() #6
  %92 = ptrtoint ptr %r17 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %r17, align 1
  %94 = and i8 %93, -65
  store i8 %94, ptr %r17, align 1
  %95 = ptrtoint ptr %r18 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %r18, align 1
  %97 = and i8 %96, -4
  %98 = or i8 %97, 2
  store i8 %98, ptr %r18, align 1
  %99 = ptrtoint ptr %r3D to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %r3D, align 1
  %101 = ptrtoint ptr %r12 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %r12, align 1
  %103 = and i8 %102, -5
  store i8 %103, ptr %r12, align 1
  %104 = ptrtoint ptr %r15 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %r15, align 1
  %106 = and i8 %105, -65
  store i8 %106, ptr %r15, align 1
  %107 = and i8 %100, 111
  store i8 %107, ptr %r3D, align 1
  %108 = ptrtoint ptr %r82 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %r82, align 1
  %110 = and i8 %109, 15
  store i8 %110, ptr %r82, align 1
  %111 = ptrtoint ptr %r84 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %r84, align 1
  %113 = and i8 %112, 15
  store i8 %113, ptr %r84, align 1
  %114 = ptrtoint ptr %r89 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %r89, align 1
  %116 = and i8 %115, 15
  store i8 %116, ptr %r89, align 1
  br label %sw.epilog

sw.bb306:                                         ; preds = %if.end147.critedge
  call void @__sanitizer_cov_trace_pc() #6
  %117 = ptrtoint ptr %r17 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %r17, align 1
  %119 = and i8 %118, -65
  store i8 %119, ptr %r17, align 1
  %120 = ptrtoint ptr %r18 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %r18, align 1
  %122 = and i8 %121, -4
  %123 = or i8 %122, 2
  store i8 %123, ptr %r18, align 1
  %124 = ptrtoint ptr %r3D to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %r3D, align 1
  %126 = ptrtoint ptr %r12 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %r12, align 1
  %128 = and i8 %127, -5
  store i8 %128, ptr %r12, align 1
  %129 = ptrtoint ptr %r15 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %r15, align 1
  %131 = and i8 %130, -65
  store i8 %131, ptr %r15, align 1
  %132 = and i8 %125, 111
  %133 = or i8 %132, -128
  store i8 %133, ptr %r3D, align 1
  %134 = ptrtoint ptr %r82 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %r82, align 1
  %136 = and i8 %135, 15
  store i8 %136, ptr %r82, align 1
  %137 = ptrtoint ptr %r84 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %r84, align 1
  %139 = and i8 %138, 15
  store i8 %139, ptr %r84, align 1
  %140 = ptrtoint ptr %r89 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %r89, align 1
  %142 = and i8 %141, 15
  store i8 %142, ptr %r89, align 1
  br label %sw.epilog

sw.bb346:                                         ; preds = %if.end147.critedge
  call void @__sanitizer_cov_trace_pc() #6
  %143 = ptrtoint ptr %r17 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %r17, align 1
  %145 = and i8 %144, -65
  store i8 %145, ptr %r17, align 1
  %146 = ptrtoint ptr %r18 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %r18, align 1
  %148 = and i8 %147, -4
  %149 = or i8 %148, 2
  store i8 %149, ptr %r18, align 1
  %150 = ptrtoint ptr %r3D to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %r3D, align 1
  %152 = ptrtoint ptr %r12 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %r12, align 1
  %154 = and i8 %153, -5
  store i8 %154, ptr %r12, align 1
  %155 = ptrtoint ptr %r15 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %r15, align 1
  %157 = or i8 %156, 64
  store i8 %157, ptr %r15, align 1
  %158 = or i8 %151, -112
  store i8 %158, ptr %r3D, align 1
  %159 = ptrtoint ptr %r82 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %r82, align 1
  %161 = and i8 %160, 15
  store i8 %161, ptr %r82, align 1
  %162 = ptrtoint ptr %r84 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %r84, align 1
  %164 = and i8 %163, 15
  store i8 %164, ptr %r84, align 1
  %165 = ptrtoint ptr %r89 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %r89, align 1
  %167 = and i8 %166, 15
  store i8 %167, ptr %r89, align 1
  br label %sw.epilog

sw.bb386:                                         ; preds = %if.end147.critedge
  call void @__sanitizer_cov_trace_pc() #6
  %168 = ptrtoint ptr %r17 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %r17, align 1
  %170 = and i8 %169, -65
  store i8 %170, ptr %r17, align 1
  %171 = ptrtoint ptr %r18 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %r18, align 1
  %173 = and i8 %172, -4
  %174 = or i8 %173, 2
  store i8 %174, ptr %r18, align 1
  %175 = ptrtoint ptr %r3D to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %r3D, align 1
  %177 = and i8 %176, 111
  %178 = ptrtoint ptr %r12 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %r12, align 1
  %180 = and i8 %179, -5
  store i8 %180, ptr %r12, align 1
  %181 = ptrtoint ptr %r15 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %r15, align 1
  %183 = or i8 %182, 64
  store i8 %183, ptr %r15, align 1
  %184 = or i8 %177, 16
  store i8 %184, ptr %r3D, align 1
  %185 = ptrtoint ptr %r82 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %r82, align 1
  %187 = and i8 %186, 15
  store i8 %187, ptr %r82, align 1
  %188 = ptrtoint ptr %r84 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %r84, align 1
  %190 = and i8 %189, 15
  store i8 %190, ptr %r84, align 1
  %191 = ptrtoint ptr %r89 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %r89, align 1
  %193 = and i8 %192, 15
  store i8 %193, ptr %r89, align 1
  br label %sw.epilog

sw.bb426:                                         ; preds = %if.end147.critedge
  call void @__sanitizer_cov_trace_pc() #6
  %194 = ptrtoint ptr %r17 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %r17, align 1
  %196 = and i8 %195, -65
  store i8 %196, ptr %r17, align 1
  %197 = ptrtoint ptr %r18 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %r18, align 1
  %199 = and i8 %198, -4
  %200 = or i8 %199, 1
  store i8 %200, ptr %r18, align 1
  %201 = ptrtoint ptr %r3D to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %r3D, align 1
  %203 = ptrtoint ptr %r12 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %r12, align 1
  %205 = and i8 %204, -5
  store i8 %205, ptr %r12, align 1
  %206 = ptrtoint ptr %r15 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %r15, align 1
  %208 = and i8 %207, -65
  store i8 %208, ptr %r15, align 1
  %209 = and i8 %202, 111
  store i8 %209, ptr %r3D, align 1
  %210 = ptrtoint ptr %r82 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %r82, align 1
  %212 = and i8 %211, 15
  store i8 %212, ptr %r82, align 1
  %213 = ptrtoint ptr %r84 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %r84, align 1
  %215 = and i8 %214, 15
  store i8 %215, ptr %r84, align 1
  %216 = ptrtoint ptr %r89 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %r89, align 1
  %218 = and i8 %217, 15
  store i8 %218, ptr %r89, align 1
  br label %sw.epilog

sw.bb466:                                         ; preds = %if.end147.critedge
  call void @__sanitizer_cov_trace_pc() #6
  %219 = ptrtoint ptr %r17 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %r17, align 1
  %221 = and i8 %220, -65
  store i8 %221, ptr %r17, align 1
  %222 = ptrtoint ptr %r18 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %r18, align 1
  %224 = and i8 %223, -4
  store i8 %224, ptr %r18, align 1
  %225 = ptrtoint ptr %r3D to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %r3D, align 1
  %227 = ptrtoint ptr %r12 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %r12, align 1
  %229 = or i8 %228, 4
  store i8 %229, ptr %r12, align 1
  %230 = ptrtoint ptr %r15 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %r15, align 1
  %232 = or i8 %231, 64
  store i8 %232, ptr %r15, align 1
  %233 = and i8 %226, 111
  store i8 %233, ptr %r3D, align 1
  %234 = ptrtoint ptr %r82 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %r82, align 1
  %236 = and i8 %235, 15
  store i8 %236, ptr %r82, align 1
  %237 = ptrtoint ptr %r84 to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %r84, align 1
  %239 = and i8 %238, 15
  store i8 %239, ptr %r84, align 1
  %240 = ptrtoint ptr %r89 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %r89, align 1
  %242 = and i8 %241, 15
  store i8 %242, ptr %r89, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end147.critedge
  call void @__sanitizer_cov_trace_pc() #6
  %243 = ptrtoint ptr %r17 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %r17, align 1
  %245 = or i8 %244, 64
  store i8 %245, ptr %r17, align 1
  %246 = ptrtoint ptr %r18 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %r18, align 1
  %248 = and i8 %247, -4
  store i8 %248, ptr %r18, align 1
  %249 = ptrtoint ptr %r3D to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %r3D, align 1
  %251 = ptrtoint ptr %r12 to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %r12, align 1
  %253 = and i8 %252, -5
  store i8 %253, ptr %r12, align 1
  %254 = ptrtoint ptr %r15 to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %r15, align 1
  %256 = and i8 %255, -65
  store i8 %256, ptr %r15, align 1
  %257 = and i8 %250, 111
  store i8 %257, ptr %r3D, align 1
  %258 = ptrtoint ptr %r82 to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %r82, align 1
  %260 = and i8 %259, 15
  store i8 %260, ptr %r82, align 1
  %261 = ptrtoint ptr %r84 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %r84, align 1
  %263 = and i8 %262, 15
  store i8 %263, ptr %r84, align 1
  %264 = ptrtoint ptr %r89 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %r89, align 1
  %266 = and i8 %265, 15
  store i8 %266, ptr %r89, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb466, %sw.bb426, %sw.bb386, %sw.bb346, %sw.bb306, %sw.bb266, %sw.bb226, %sw.bb186, %sw.bb
  %267 = ptrtoint ptr %r17 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %r17, align 1
  %call546 = call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext 23, i8 noundef zeroext %268) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call546)
  %cmp548 = icmp slt i32 %call546, 0
  br i1 %cmp548, label %land.lhs.true551, label %if.end564.critedge

land.lhs.true551:                                 ; preds = %sw.epilog
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %269 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and552 = and i32 %269, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and552)
  %tobool553.not = icmp eq i32 %and552, 0
  br i1 %tobool553.not, label %land.lhs.true551.fail_crit_edge, label %do.end557

land.lhs.true551.fail_crit_edge:                  ; preds = %land.lhs.true551
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

do.end557:                                        ; preds = %land.lhs.true551
  call void @__sanitizer_cov_trace_pc() #6
  %call559 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %call546, i32 noundef 519) #7
  br label %fail

if.end564.critedge:                               ; preds = %sw.epilog
  %270 = ptrtoint ptr %r18 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %r18, align 1
  %call565 = call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext 24, i8 noundef zeroext %271) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call565)
  %cmp567 = icmp slt i32 %call565, 0
  br i1 %cmp567, label %land.lhs.true570, label %if.end583.critedge

land.lhs.true570:                                 ; preds = %if.end564.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %272 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and571 = and i32 %272, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and571)
  %tobool572.not = icmp eq i32 %and571, 0
  br i1 %tobool572.not, label %land.lhs.true570.fail_crit_edge, label %do.end576

land.lhs.true570.fail_crit_edge:                  ; preds = %land.lhs.true570
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

do.end576:                                        ; preds = %land.lhs.true570
  call void @__sanitizer_cov_trace_pc() #6
  %call578 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %call565, i32 noundef 522) #7
  br label %fail

if.end583.critedge:                               ; preds = %if.end564.critedge
  %273 = ptrtoint ptr %r12 to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %r12, align 1
  %call584 = call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext 18, i8 noundef zeroext %274) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call584)
  %cmp586 = icmp slt i32 %call584, 0
  br i1 %cmp586, label %land.lhs.true589, label %if.end602.critedge

land.lhs.true589:                                 ; preds = %if.end583.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %275 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and590 = and i32 %275, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and590)
  %tobool591.not = icmp eq i32 %and590, 0
  br i1 %tobool591.not, label %land.lhs.true589.fail_crit_edge, label %do.end595

land.lhs.true589.fail_crit_edge:                  ; preds = %land.lhs.true589
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

do.end595:                                        ; preds = %land.lhs.true589
  call void @__sanitizer_cov_trace_pc() #6
  %call597 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %call584, i32 noundef 525) #7
  br label %fail

if.end602.critedge:                               ; preds = %if.end583.critedge
  %276 = ptrtoint ptr %r15 to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %r15, align 1
  %call603 = call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext 21, i8 noundef zeroext %277) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call603)
  %cmp605 = icmp slt i32 %call603, 0
  br i1 %cmp605, label %land.lhs.true608, label %if.end621.critedge

land.lhs.true608:                                 ; preds = %if.end602.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %278 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and609 = and i32 %278, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and609)
  %tobool610.not = icmp eq i32 %and609, 0
  br i1 %tobool610.not, label %land.lhs.true608.fail_crit_edge, label %do.end614

land.lhs.true608.fail_crit_edge:                  ; preds = %land.lhs.true608
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

do.end614:                                        ; preds = %land.lhs.true608
  call void @__sanitizer_cov_trace_pc() #6
  %call616 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %call603, i32 noundef 528) #7
  br label %fail

if.end621.critedge:                               ; preds = %if.end602.critedge
  %279 = ptrtoint ptr %r82 to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %r82, align 1
  %call622 = call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext -126, i8 noundef zeroext %280) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call622)
  %cmp624 = icmp slt i32 %call622, 0
  br i1 %cmp624, label %land.lhs.true627, label %if.end640.critedge

land.lhs.true627:                                 ; preds = %if.end621.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %281 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and628 = and i32 %281, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and628)
  %tobool629.not = icmp eq i32 %and628, 0
  br i1 %tobool629.not, label %land.lhs.true627.fail_crit_edge, label %do.end633

land.lhs.true627.fail_crit_edge:                  ; preds = %land.lhs.true627
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

do.end633:                                        ; preds = %land.lhs.true627
  call void @__sanitizer_cov_trace_pc() #6
  %call635 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %call622, i32 noundef 531) #7
  br label %fail

if.end640.critedge:                               ; preds = %if.end621.critedge
  %282 = ptrtoint ptr %r84 to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %r84, align 1
  %call641 = call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext -124, i8 noundef zeroext %283) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call641)
  %cmp643 = icmp slt i32 %call641, 0
  br i1 %cmp643, label %land.lhs.true646, label %if.end659.critedge

land.lhs.true646:                                 ; preds = %if.end640.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %284 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and647 = and i32 %284, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and647)
  %tobool648.not = icmp eq i32 %and647, 0
  br i1 %tobool648.not, label %land.lhs.true646.fail_crit_edge, label %do.end652

land.lhs.true646.fail_crit_edge:                  ; preds = %land.lhs.true646
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

do.end652:                                        ; preds = %land.lhs.true646
  call void @__sanitizer_cov_trace_pc() #6
  %call654 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %call641, i32 noundef 534) #7
  br label %fail

if.end659.critedge:                               ; preds = %if.end640.critedge
  %285 = ptrtoint ptr %r89 to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %r89, align 1
  %call660 = call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext -119, i8 noundef zeroext %286) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call660)
  %cmp662 = icmp slt i32 %call660, 0
  br i1 %cmp662, label %land.lhs.true665, label %if.end678.critedge

land.lhs.true665:                                 ; preds = %if.end659.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %287 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and666 = and i32 %287, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and666)
  %tobool667.not = icmp eq i32 %and666, 0
  br i1 %tobool667.not, label %land.lhs.true665.fail_crit_edge, label %do.end671

land.lhs.true665.fail_crit_edge:                  ; preds = %land.lhs.true665
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

do.end671:                                        ; preds = %land.lhs.true665
  call void @__sanitizer_cov_trace_pc() #6
  %call673 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %call660, i32 noundef 537) #7
  br label %fail

if.end678.critedge:                               ; preds = %if.end659.critedge
  %288 = ptrtoint ptr %r3D to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %r3D, align 1
  %call679 = call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext 61, i8 noundef zeroext %289) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call679)
  %cmp681 = icmp slt i32 %call679, 0
  br i1 %cmp681, label %land.lhs.true684, label %if.end678.critedge.fail_crit_edge

if.end678.critedge.fail_crit_edge:                ; preds = %if.end678.critedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

land.lhs.true684:                                 ; preds = %if.end678.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %290 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and685 = and i32 %290, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and685)
  %tobool686.not = icmp eq i32 %and685, 0
  br i1 %tobool686.not, label %land.lhs.true684.fail_crit_edge, label %do.end690

land.lhs.true684.fail_crit_edge:                  ; preds = %land.lhs.true684
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

do.end690:                                        ; preds = %land.lhs.true684
  call void @__sanitizer_cov_trace_pc() #6
  %call692 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %call679, i32 noundef 540) #7
  br label %fail

fail:                                             ; preds = %do.end690, %land.lhs.true684.fail_crit_edge, %if.end678.critedge.fail_crit_edge, %do.end671, %land.lhs.true665.fail_crit_edge, %do.end652, %land.lhs.true646.fail_crit_edge, %do.end633, %land.lhs.true627.fail_crit_edge, %do.end614, %land.lhs.true608.fail_crit_edge, %do.end595, %land.lhs.true589.fail_crit_edge, %do.end576, %land.lhs.true570.fail_crit_edge, %do.end557, %land.lhs.true551.fail_crit_edge, %do.end140, %land.lhs.true134.fail_crit_edge, %do.end121, %land.lhs.true115.fail_crit_edge, %do.end102, %land.lhs.true96.fail_crit_edge, %do.end83, %land.lhs.true77.fail_crit_edge, %do.end64, %land.lhs.true58.fail_crit_edge, %do.end45, %land.lhs.true39.fail_crit_edge, %do.end26, %land.lhs.true20.fail_crit_edge, %do.end7, %land.lhs.true.fail_crit_edge
  %ret.0 = phi i32 [ %call1, %do.end7 ], [ %call15, %do.end26 ], [ %call34, %do.end45 ], [ %call53, %do.end64 ], [ %call72, %do.end83 ], [ %call91, %do.end102 ], [ %call110, %do.end121 ], [ %call129, %do.end140 ], [ %call546, %do.end557 ], [ %call565, %do.end576 ], [ %call584, %do.end595 ], [ %call603, %do.end614 ], [ %call622, %do.end633 ], [ %call641, %do.end652 ], [ %call660, %do.end671 ], [ %call679, %do.end690 ], [ %call679, %land.lhs.true684.fail_crit_edge ], [ %call679, %if.end678.critedge.fail_crit_edge ], [ %call1, %land.lhs.true.fail_crit_edge ], [ %call15, %land.lhs.true20.fail_crit_edge ], [ %call34, %land.lhs.true39.fail_crit_edge ], [ %call53, %land.lhs.true58.fail_crit_edge ], [ %call72, %land.lhs.true77.fail_crit_edge ], [ %call91, %land.lhs.true96.fail_crit_edge ], [ %call110, %land.lhs.true115.fail_crit_edge ], [ %call129, %land.lhs.true134.fail_crit_edge ], [ %call546, %land.lhs.true551.fail_crit_edge ], [ %call565, %land.lhs.true570.fail_crit_edge ], [ %call584, %land.lhs.true589.fail_crit_edge ], [ %call603, %land.lhs.true608.fail_crit_edge ], [ %call622, %land.lhs.true627.fail_crit_edge ], [ %call641, %land.lhs.true646.fail_crit_edge ], [ %call660, %land.lhs.true665.fail_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %r89) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %r84) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %r82) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %r3D) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %r18) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %r17) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %r15) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %r12) #4
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mxl111sf_read_reg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mxl111sf_write_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mxl111sf_set_gpio(ptr noundef %state, i32 noundef %gpio, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %w.i = alloca [2 x i8], align 2
  %r.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %0 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %gpio, i32 noundef %val) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %gpio_port_expander = getelementptr inbounds %struct.mxl111sf_state, ptr %state, i32 0, i32 1
  %1 = ptrtoint ptr %gpio_port_expander to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %gpio_port_expander, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %2, label %do.end2 [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 0, label %sw.bb6
  ]

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

do.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37) #7
  br label %sw.bb

sw.bb:                                            ; preds = %do.end2, %if.end.sw.bb_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w.i) #4
  %4 = ptrtoint ptr %w.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 256, ptr %w.i, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %r.i) #4
  %5 = ptrtoint ptr %r.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %r.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #4
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 32, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %6, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %w.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %12 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 32, ptr %arrayinit.element.i, align 4
  %flags2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %13 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags2.i, align 2
  %len3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %14 = ptrtoint ptr %len3.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %len3.i, align 4
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %15 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %r.i, ptr %buf4.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %16 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %sw.bb.pca9534_set_gpio.exit_crit_edge, label %do.end.i

sw.bb.pca9534_set_gpio.exit_crit_edge:            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %pca9534_set_gpio.exit

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.46, i32 noundef %gpio, i32 noundef %val) #7
  br label %pca9534_set_gpio.exit

pca9534_set_gpio.exit:                            ; preds = %do.end.i, %sw.bb.pca9534_set_gpio.exit_crit_edge
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state, align 4
  %i2c_adap.i = getelementptr inbounds %struct.dvb_usb_device, ptr %18, i32 0, i32 10
  %call6.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i, ptr noundef nonnull %msg.i, i32 noundef 2) #4
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 2, ptr %6, align 4
  %20 = ptrtoint ptr %r.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %r.i, align 1
  %arrayidx8.i = getelementptr inbounds [2 x i8], ptr %w.i, i32 0, i32 1
  %shl.i = shl nuw i32 1, %gpio
  %22 = trunc i32 %shl.i to i8
  %23 = xor i8 %22, -1
  %conv10.i = and i8 %21, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool11.not.i = icmp ne i32 %val, 0
  %cond.i = zext i1 %tobool11.not.i to i32
  %shl12.i = shl nuw i32 %cond.i, %gpio
  %24 = trunc i32 %shl12.i to i8
  %conv15.i = or i8 %conv10.i, %24
  %25 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv15.i, ptr %arrayidx8.i, align 1
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %state, align 4
  %i2c_adap17.i = getelementptr inbounds %struct.dvb_usb_device, ptr %27, i32 0, i32 10
  %call19.i = call i32 @i2c_transfer(ptr noundef %i2c_adap17.i, ptr noundef nonnull %msg.i, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %r.i) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w.i) #4
  br label %return

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call fastcc i32 @mxl111sf_hw_set_gpio(ptr noundef %state, i32 noundef %gpio, i32 noundef %val)
  br label %return

return:                                           ; preds = %sw.bb6, %pca9534_set_gpio.exit
  %retval.0 = phi i32 [ 0, %pca9534_set_gpio.exit ], [ %call7, %sw.bb6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxl111sf_hw_set_gpio(ptr noundef %state, i32 noundef %gpio, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  %tmp.i.i.i = alloca i8, align 1
  %tmp.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = trunc i32 %gpio to i8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %0 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %do.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %gpio, i32 noundef 1, i32 noundef %val) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #4
  %1 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %tmp.i.i, align 1, !annotation !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %2 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i.i = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end.i.i_crit_edge, label %do.end.i.i

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i.i = and i32 %gpio, 255
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.49, i32 noundef %conv.i.i, i32 noundef 1) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.end.i.if.end.i.i_crit_edge
  %3 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.95)
  switch i8 %conv.i, label %if.end.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge [
    i8 0, label %if.end.i.i.sw.bb.i.i_crit_edge
    i8 1, label %if.end.i.i.sw.bb.i.i_crit_edge1
    i8 2, label %if.end.i.i.sw.bb.i.i_crit_edge2
    i8 3, label %if.end.i.i.sw.bb.i.i_crit_edge3
    i8 4, label %if.end.i.i.sw.bb53.i.i_crit_edge
    i8 5, label %if.end.i.i.sw.bb53.i.i_crit_edge4
    i8 6, label %if.end.i.i.sw.bb53.i.i_crit_edge5
    i8 7, label %if.end.i.i.sw.bb53.i.i_crit_edge6
    i8 8, label %if.end.i.i.sw.bb107.i.i_crit_edge
    i8 9, label %if.end.i.i.sw.bb107.i.i_crit_edge7
    i8 10, label %if.end.i.i.sw.bb107.i.i_crit_edge8
  ]

if.end.i.i.sw.bb107.i.i_crit_edge8:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb107.i.i

if.end.i.i.sw.bb107.i.i_crit_edge7:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb107.i.i

if.end.i.i.sw.bb107.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb107.i.i

if.end.i.i.sw.bb53.i.i_crit_edge6:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb53.i.i

if.end.i.i.sw.bb53.i.i_crit_edge5:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb53.i.i

if.end.i.i.sw.bb53.i.i_crit_edge4:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb53.i.i

if.end.i.i.sw.bb53.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb53.i.i

if.end.i.i.sw.bb.i.i_crit_edge3:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i.i

if.end.i.i.sw.bb.i.i_crit_edge2:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i.i

if.end.i.i.sw.bb.i.i_crit_edge1:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i.i

if.end.i.i.sw.bb.i.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i.i

if.end.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mxl111sf_hw_do_set_gpio.exit

sw.bb.i.i:                                        ; preds = %if.end.i.i.sw.bb.i.i_crit_edge, %if.end.i.i.sw.bb.i.i_crit_edge1, %if.end.i.i.sw.bb.i.i_crit_edge2, %if.end.i.i.sw.bb.i.i_crit_edge3
  %call5.i.i = call i32 @mxl111sf_read_reg(ptr noundef %state, i8 noundef zeroext -124, ptr noundef nonnull %tmp.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp.i.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end20.critedge.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %4 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and8.i.i = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %land.lhs.true.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge, label %do.end13.i.i

land.lhs.true.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mxl111sf_hw_do_set_gpio.exit

do.end13.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call15.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.49, i32 noundef %call5.i.i, i32 noundef 118) #7
  br label %mxl111sf_hw_do_set_gpio.exit

if.end20.critedge.i.i:                            ; preds = %sw.bb.i.i
  %conv22.i.i = and i32 %gpio, 255
  %shl.i.i = shl i32 16, %conv22.i.i
  %5 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tmp.i.i, align 1
  %7 = trunc i32 %shl.i.i to i8
  %conv33.i.i = or i8 %6, %7
  store i8 %conv33.i.i, ptr %tmp.i.i, align 1
  %call34.i.i = call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext -124, i8 noundef zeroext %conv33.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i.i)
  %cmp36.i.i = icmp slt i32 %call34.i.i, 0
  br i1 %cmp36.i.i, label %land.lhs.true39.i.i, label %if.end20.critedge.i.i.cond.true.i.i_crit_edge

if.end20.critedge.i.i.cond.true.i.i_crit_edge:    ; preds = %if.end20.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.true.i.i

land.lhs.true39.i.i:                              ; preds = %if.end20.critedge.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %8 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and40.i.i = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i.i)
  %tobool41.not.i.i = icmp eq i32 %and40.i.i, 0
  br i1 %tobool41.not.i.i, label %land.lhs.true39.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge, label %do.end45.i.i

land.lhs.true39.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge: ; preds = %land.lhs.true39.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mxl111sf_hw_do_set_gpio.exit

do.end45.i.i:                                     ; preds = %land.lhs.true39.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call47.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.49, i32 noundef %call34.i.i, i32 noundef 123) #7
  br label %mxl111sf_hw_do_set_gpio.exit

sw.bb53.i.i:                                      ; preds = %if.end.i.i.sw.bb53.i.i_crit_edge, %if.end.i.i.sw.bb53.i.i_crit_edge4, %if.end.i.i.sw.bb53.i.i_crit_edge5, %if.end.i.i.sw.bb53.i.i_crit_edge6
  %call54.i.i = call i32 @mxl111sf_read_reg(ptr noundef %state, i8 noundef zeroext -119, ptr noundef nonnull %tmp.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i.i)
  %cmp56.i.i = icmp slt i32 %call54.i.i, 0
  br i1 %cmp56.i.i, label %land.lhs.true59.i.i, label %if.end72.critedge.i.i

land.lhs.true59.i.i:                              ; preds = %sw.bb53.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %9 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and60.i.i = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i.i)
  %tobool61.not.i.i = icmp eq i32 %and60.i.i, 0
  br i1 %tobool61.not.i.i, label %land.lhs.true59.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge, label %do.end65.i.i

land.lhs.true59.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge: ; preds = %land.lhs.true59.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mxl111sf_hw_do_set_gpio.exit

do.end65.i.i:                                     ; preds = %land.lhs.true59.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call67.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.49, i32 noundef %call54.i.i, i32 noundef 131) #7
  br label %mxl111sf_hw_do_set_gpio.exit

if.end72.critedge.i.i:                            ; preds = %sw.bb53.i.i
  %conv74.i.i = and i32 %gpio, 255
  %shl75.i.i = shl nuw nsw i32 1, %conv74.i.i
  %10 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tmp.i.i, align 1
  %12 = trunc i32 %shl75.i.i to i8
  %conv87.i.i = or i8 %11, %12
  store i8 %conv87.i.i, ptr %tmp.i.i, align 1
  %call88.i.i = call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext -119, i8 noundef zeroext %conv87.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i.i)
  %cmp90.i.i = icmp slt i32 %call88.i.i, 0
  br i1 %cmp90.i.i, label %land.lhs.true93.i.i, label %if.end72.critedge.i.i.cond.true.i.i_crit_edge

if.end72.critedge.i.i.cond.true.i.i_crit_edge:    ; preds = %if.end72.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.true.i.i

land.lhs.true93.i.i:                              ; preds = %if.end72.critedge.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %13 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and94.i.i = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94.i.i)
  %tobool95.not.i.i = icmp eq i32 %and94.i.i, 0
  br i1 %tobool95.not.i.i, label %land.lhs.true93.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge, label %do.end99.i.i

land.lhs.true93.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge: ; preds = %land.lhs.true93.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mxl111sf_hw_do_set_gpio.exit

do.end99.i.i:                                     ; preds = %land.lhs.true93.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call101.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.49, i32 noundef %call88.i.i, i32 noundef 136) #7
  br label %mxl111sf_hw_do_set_gpio.exit

sw.bb107.i.i:                                     ; preds = %if.end.i.i.sw.bb107.i.i_crit_edge, %if.end.i.i.sw.bb107.i.i_crit_edge7, %if.end.i.i.sw.bb107.i.i_crit_edge8
  %call108.i.i = call i32 @mxl111sf_read_reg(ptr noundef %state, i8 noundef zeroext -126, ptr noundef nonnull %tmp.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108.i.i)
  %cmp110.i.i = icmp slt i32 %call108.i.i, 0
  br i1 %cmp110.i.i, label %land.lhs.true113.i.i, label %if.end126.critedge.i.i

land.lhs.true113.i.i:                             ; preds = %sw.bb107.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %14 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and114.i.i = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114.i.i)
  %tobool115.not.i.i = icmp eq i32 %and114.i.i, 0
  br i1 %tobool115.not.i.i, label %land.lhs.true113.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge, label %do.end119.i.i

land.lhs.true113.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge: ; preds = %land.lhs.true113.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mxl111sf_hw_do_set_gpio.exit

do.end119.i.i:                                    ; preds = %land.lhs.true113.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call121.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.49, i32 noundef %call108.i.i, i32 noundef 143) #7
  br label %mxl111sf_hw_do_set_gpio.exit

if.end126.critedge.i.i:                           ; preds = %sw.bb107.i.i
  %conv128.i.i = and i32 %gpio, 255
  %sub.i.i = add nsw i32 %conv128.i.i, -3
  %shl129.i.i = shl nuw nsw i32 1, %sub.i.i
  %15 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tmp.i.i, align 1
  %17 = trunc i32 %shl129.i.i to i8
  %conv142.i.i = or i8 %16, %17
  store i8 %conv142.i.i, ptr %tmp.i.i, align 1
  %call143.i.i = call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext -126, i8 noundef zeroext %conv142.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143.i.i)
  %cmp145.i.i = icmp slt i32 %call143.i.i, 0
  br i1 %cmp145.i.i, label %land.lhs.true148.i.i, label %if.end126.critedge.i.i.cond.true.i.i_crit_edge

if.end126.critedge.i.i.cond.true.i.i_crit_edge:   ; preds = %if.end126.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.true.i.i

land.lhs.true148.i.i:                             ; preds = %if.end126.critedge.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %18 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and149.i.i = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149.i.i)
  %tobool150.not.i.i = icmp eq i32 %and149.i.i, 0
  br i1 %tobool150.not.i.i, label %land.lhs.true148.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge, label %do.end154.i.i

land.lhs.true148.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge: ; preds = %land.lhs.true148.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mxl111sf_hw_do_set_gpio.exit

do.end154.i.i:                                    ; preds = %land.lhs.true148.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call156.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.49, i32 noundef %call143.i.i, i32 noundef 148) #7
  br label %mxl111sf_hw_do_set_gpio.exit

cond.true.i.i:                                    ; preds = %if.end126.critedge.i.i.cond.true.i.i_crit_edge, %if.end72.critedge.i.i.cond.true.i.i_crit_edge, %if.end20.critedge.i.i.cond.true.i.i_crit_edge
  %.pre.i.i.pre-phi.i = phi i32 [ %conv22.i.i, %if.end20.critedge.i.i.cond.true.i.i_crit_edge ], [ %conv74.i.i, %if.end72.critedge.i.i.cond.true.i.i_crit_edge ], [ %conv128.i.i, %if.end126.critedge.i.i.cond.true.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i.i) #4
  %19 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %tmp.i.i.i, align 1, !annotation !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %20 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i.i.i = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %cond.true.i.i.if.end.i.i.i_crit_edge, label %do.end.i.i.i

cond.true.i.i.if.end.i.i.i_crit_edge:             ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv2.i.i.i = and i32 %val, 255
  %call.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.64, i32 noundef %.pre.i.i.pre-phi.i, i32 noundef %conv2.i.i.i) #7
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %cond.true.i.i.if.end.i.i.i_crit_edge
  %21 = add nsw i8 %conv.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %21)
  %22 = icmp ult i8 %21, 7
  br i1 %22, label %if.then8.i.i.i, label %if.then59.i.i.i

if.then8.i.i.i:                                   ; preds = %if.end.i.i.i
  %call9.i.i.i = call i32 @mxl111sf_read_reg(ptr noundef %state, i8 noundef zeroext 25, ptr noundef nonnull %tmp.i.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i)
  %cmp10.i.i.i = icmp slt i32 %call9.i.i.i, 0
  br i1 %cmp10.i.i.i, label %land.lhs.true13.i.i.i, label %if.end26.critedge.i.i.i

land.lhs.true13.i.i.i:                            ; preds = %if.then8.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %23 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and14.i.i.i = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i.i)
  %tobool15.not.i.i.i = icmp eq i32 %and14.i.i.i, 0
  br i1 %tobool15.not.i.i.i, label %land.lhs.true13.i.i.i.land.lhs.true175.i.i_crit_edge, label %do.end19.i.i.i

land.lhs.true13.i.i.i.land.lhs.true175.i.i_crit_edge: ; preds = %land.lhs.true13.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true175.i.i

do.end19.i.i.i:                                   ; preds = %land.lhs.true13.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call21.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.64, i32 noundef %call9.i.i.i, i32 noundef 31) #7
  br label %land.lhs.true175.i.i

if.end26.critedge.i.i.i:                          ; preds = %if.then8.i.i.i
  %sub.i.i.i = add nsw i32 %.pre.i.i.pre-phi.i, -1
  %shl.i.i.i = shl nuw nsw i32 1, %sub.i.i.i
  %24 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %tmp.i.i.i, align 1
  %26 = trunc i32 %shl.i.i.i to i8
  %27 = xor i8 %26, -1
  %conv30.i.i.i = and i8 %25, %27
  %shl34.i.i.i = shl i32 %val, %sub.i.i.i
  %28 = trunc i32 %shl34.i.i.i to i8
  %conv36.i.i.i = or i8 %conv30.i.i.i, %28
  store i8 %conv36.i.i.i, ptr %tmp.i.i.i, align 1
  %call37.i.i.i = call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext 25, i8 noundef zeroext %conv36.i.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i.i.i)
  %cmp39.i.i.i = icmp slt i32 %call37.i.i.i, 0
  br i1 %cmp39.i.i.i, label %land.lhs.true42.i.i.i, label %if.end26.critedge.i.i.i.cond.end.i.i_crit_edge

if.end26.critedge.i.i.i.cond.end.i.i_crit_edge:   ; preds = %if.end26.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end.i.i

land.lhs.true42.i.i.i:                            ; preds = %if.end26.critedge.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %29 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and43.i.i.i = and i32 %29, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i.i.i)
  %tobool44.not.i.i.i = icmp eq i32 %and43.i.i.i, 0
  br i1 %tobool44.not.i.i.i, label %land.lhs.true42.i.i.i.land.lhs.true175.i.i_crit_edge, label %do.end48.i.i.i

land.lhs.true42.i.i.i.land.lhs.true175.i.i_crit_edge: ; preds = %land.lhs.true42.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true175.i.i

do.end48.i.i.i:                                   ; preds = %land.lhs.true42.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call50.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.64, i32 noundef %call37.i.i.i, i32 noundef 36) #7
  br label %land.lhs.true175.i.i

if.then59.i.i.i:                                  ; preds = %if.end.i.i.i
  %call67.i.i.i = call i32 @mxl111sf_read_reg(ptr noundef %state, i8 noundef zeroext 48, ptr noundef nonnull %tmp.i.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i.i.i)
  %cmp69.i.i.i = icmp slt i32 %call67.i.i.i, 0
  br i1 %cmp69.i.i.i, label %land.lhs.true72.i.i.i, label %if.end85.critedge.i.i.i

land.lhs.true72.i.i.i:                            ; preds = %if.then59.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %30 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and73.i.i.i = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i.i.i)
  %tobool74.not.i.i.i = icmp eq i32 %and73.i.i.i, 0
  br i1 %tobool74.not.i.i.i, label %land.lhs.true72.i.i.i.land.lhs.true175.i.i_crit_edge, label %do.end78.i.i.i

land.lhs.true72.i.i.i.land.lhs.true175.i.i_crit_edge: ; preds = %land.lhs.true72.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true175.i.i

do.end78.i.i.i:                                   ; preds = %land.lhs.true72.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call80.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.64, i32 noundef %call67.i.i.i, i32 noundef 42) #7
  br label %land.lhs.true175.i.i

if.end85.critedge.i.i.i:                          ; preds = %if.then59.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %cmp61.i.i.i = icmp eq i8 %conv.i, 0
  %gpio.op.op.i = add nsw i32 %.pre.i.i.pre-phi.i, -3
  %sub87.i.i.i = select i1 %cmp61.i.i.i, i32 4, i32 %gpio.op.op.i
  %shl88.i.i.i = shl nuw nsw i32 1, %sub87.i.i.i
  %31 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tmp.i.i.i, align 1
  %33 = trunc i32 %shl88.i.i.i to i8
  %34 = xor i8 %33, -1
  %conv92.i.i.i = and i8 %32, %34
  %shl96.i.i.i = shl i32 %val, %sub87.i.i.i
  %35 = trunc i32 %shl96.i.i.i to i8
  %conv99.i.i.i = or i8 %conv92.i.i.i, %35
  store i8 %conv99.i.i.i, ptr %tmp.i.i.i, align 1
  %call100.i.i.i = call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext 48, i8 noundef zeroext %conv99.i.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.i.i.i)
  %cmp102.i.i.i = icmp slt i32 %call100.i.i.i, 0
  br i1 %cmp102.i.i.i, label %land.lhs.true105.i.i.i, label %if.end85.critedge.i.i.i.cond.end.i.i_crit_edge

if.end85.critedge.i.i.i.cond.end.i.i_crit_edge:   ; preds = %if.end85.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end.i.i

land.lhs.true105.i.i.i:                           ; preds = %if.end85.critedge.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %36 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and106.i.i.i = and i32 %36, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.i.i.i)
  %tobool107.not.i.i.i = icmp eq i32 %and106.i.i.i, 0
  br i1 %tobool107.not.i.i.i, label %land.lhs.true105.i.i.i.land.lhs.true175.i.i_crit_edge, label %do.end111.i.i.i

land.lhs.true105.i.i.i.land.lhs.true175.i.i_crit_edge: ; preds = %land.lhs.true105.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true175.i.i

do.end111.i.i.i:                                  ; preds = %land.lhs.true105.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call113.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.64, i32 noundef %call100.i.i.i, i32 noundef 47) #7
  br label %land.lhs.true175.i.i

cond.end.i.i:                                     ; preds = %if.end85.critedge.i.i.i.cond.end.i.i_crit_edge, %if.end26.critedge.i.i.i.cond.end.i.i_crit_edge
  %ret.0.i.i.i = phi i32 [ %call37.i.i.i, %if.end26.critedge.i.i.i.cond.end.i.i_crit_edge ], [ %call100.i.i.i, %if.end85.critedge.i.i.i.cond.end.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i.i) #4
  br label %mxl111sf_hw_do_set_gpio.exit

land.lhs.true175.i.i:                             ; preds = %do.end111.i.i.i, %land.lhs.true105.i.i.i.land.lhs.true175.i.i_crit_edge, %do.end78.i.i.i, %land.lhs.true72.i.i.i.land.lhs.true175.i.i_crit_edge, %do.end48.i.i.i, %land.lhs.true42.i.i.i.land.lhs.true175.i.i_crit_edge, %do.end19.i.i.i, %land.lhs.true13.i.i.i.land.lhs.true175.i.i_crit_edge
  %ret.0.i.i.ph.i = phi i32 [ %call67.i.i.i, %land.lhs.true72.i.i.i.land.lhs.true175.i.i_crit_edge ], [ %call9.i.i.i, %land.lhs.true13.i.i.i.land.lhs.true175.i.i_crit_edge ], [ %call100.i.i.i, %land.lhs.true105.i.i.i.land.lhs.true175.i.i_crit_edge ], [ %call100.i.i.i, %do.end111.i.i.i ], [ %call67.i.i.i, %do.end78.i.i.i ], [ %call37.i.i.i, %land.lhs.true42.i.i.i.land.lhs.true175.i.i_crit_edge ], [ %call37.i.i.i, %do.end48.i.i.i ], [ %call9.i.i.i, %do.end19.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %37 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and176.i.i = and i32 %37, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176.i.i)
  %tobool177.not.i.i = icmp eq i32 %and176.i.i, 0
  br i1 %tobool177.not.i.i, label %land.lhs.true175.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge, label %do.end181.i.i

land.lhs.true175.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge: ; preds = %land.lhs.true175.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mxl111sf_hw_do_set_gpio.exit

do.end181.i.i:                                    ; preds = %land.lhs.true175.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call183.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.49, i32 noundef %ret.0.i.i.ph.i, i32 noundef 160) #7
  br label %mxl111sf_hw_do_set_gpio.exit

mxl111sf_hw_do_set_gpio.exit:                     ; preds = %do.end181.i.i, %land.lhs.true175.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge, %cond.end.i.i, %do.end154.i.i, %land.lhs.true148.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge, %do.end119.i.i, %land.lhs.true113.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge, %do.end99.i.i, %land.lhs.true93.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge, %do.end65.i.i, %land.lhs.true59.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge, %do.end45.i.i, %land.lhs.true39.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge, %do.end13.i.i, %land.lhs.true.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge, %if.end.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge
  %retval.0.i.i = phi i32 [ -22, %if.end.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge ], [ %call5.i.i, %do.end13.i.i ], [ %call34.i.i, %do.end45.i.i ], [ %call54.i.i, %do.end65.i.i ], [ %call88.i.i, %do.end99.i.i ], [ %call108.i.i, %do.end119.i.i ], [ %call143.i.i, %do.end154.i.i ], [ %ret.0.i.i.ph.i, %do.end181.i.i ], [ %ret.0.i.i.ph.i, %land.lhs.true175.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge ], [ %ret.0.i.i.i, %cond.end.i.i ], [ %call5.i.i, %land.lhs.true.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge ], [ %call34.i.i, %land.lhs.true39.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge ], [ %call54.i.i, %land.lhs.true59.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge ], [ %call88.i.i, %land.lhs.true93.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge ], [ %call108.i.i, %land.lhs.true113.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge ], [ %call143.i.i, %land.lhs.true148.i.i.mxl111sf_hw_do_set_gpio.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #4
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mxl111sf_init_port_expander(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %w.i16 = alloca [2 x i8], align 2
  %msg.i17 = alloca %struct.i2c_msg, align 4
  %w.i = alloca i8, align 1
  %r.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %0 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %port_expander_addr = getelementptr inbounds %struct.mxl111sf_state, ptr %state, i32 0, i32 2
  %1 = ptrtoint ptr %port_expander_addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %port_expander_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %w.i) #4
  %3 = ptrtoint ptr %w.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %w.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %r.i) #4
  %4 = ptrtoint ptr %r.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %r.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #4
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags.i, align 2
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %5, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %w.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %flags2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %10 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %flags2.i, align 2
  %len3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %11 = ptrtoint ptr %len3.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %len3.i, align 4
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %12 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %r.i, ptr %buf4.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %13 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.then2.if.end.i_crit_edge, label %do.end.i

if.then2.if.end.i_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

do.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.81) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then2.if.end.i_crit_edge
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 56, ptr %msg.i, align 4
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 56, ptr %arrayinit.element.i, align 4
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state, align 4
  %i2c_adap.i = getelementptr inbounds %struct.dvb_usb_device, ptr %17, i32 0, i32 10
  %call8.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i, ptr noundef nonnull %msg.i, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call8.i)
  %cmp.i = icmp eq i32 %call8.i, 2
  br i1 %cmp.i, label %if.then9.i, label %if.end22.i

if.then9.i:                                       ; preds = %if.end.i
  %18 = ptrtoint ptr %msg.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %msg.i, align 4
  %conv.i = trunc i16 %19 to i8
  %20 = ptrtoint ptr %port_expander_addr to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i, ptr %port_expander_addr, align 4
  %gpio_port_expander.i = getelementptr inbounds %struct.mxl111sf_state, ptr %state, i32 0, i32 1
  %21 = ptrtoint ptr %gpio_port_expander.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %gpio_port_expander.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %22 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool12.not.i = icmp eq i32 %22, 0
  br i1 %tobool12.not.i, label %if.then9.i.mxl111sf_probe_port_expander.exit_crit_edge, label %do.end16.i

if.then9.i.mxl111sf_probe_port_expander.exit_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mxl111sf_probe_port_expander.exit

do.end16.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv.mask.i = and i16 %19, 255
  %conv19.i = zext i16 %conv.mask.i to i32
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.81, i32 noundef %conv19.i) #7
  br label %mxl111sf_probe_port_expander.exit

if.end22.i:                                       ; preds = %if.end.i
  %23 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 32, ptr %msg.i, align 4
  %24 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 32, ptr %arrayinit.element.i, align 4
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %state, align 4
  %i2c_adap28.i = getelementptr inbounds %struct.dvb_usb_device, ptr %26, i32 0, i32 10
  %call30.i = call i32 @i2c_transfer(ptr noundef %i2c_adap28.i, ptr noundef nonnull %msg.i, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call30.i)
  %cmp31.i = icmp eq i32 %call30.i, 2
  br i1 %cmp31.i, label %if.then33.i, label %if.end49.i

if.then33.i:                                      ; preds = %if.end22.i
  %27 = ptrtoint ptr %msg.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %msg.i, align 4
  %conv36.i = trunc i16 %28 to i8
  %29 = ptrtoint ptr %port_expander_addr to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv36.i, ptr %port_expander_addr, align 4
  %gpio_port_expander38.i = getelementptr inbounds %struct.mxl111sf_state, ptr %state, i32 0, i32 1
  %30 = ptrtoint ptr %gpio_port_expander38.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %gpio_port_expander38.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %31 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool39.not.i = icmp eq i32 %31, 0
  br i1 %tobool39.not.i, label %if.then33.i.mxl111sf_probe_port_expander.exit_crit_edge, label %do.end43.i

if.then33.i.mxl111sf_probe_port_expander.exit_crit_edge: ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mxl111sf_probe_port_expander.exit

do.end43.i:                                       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv36.mask.i = and i16 %28, 255
  %conv46.i = zext i16 %conv36.mask.i to i32
  %call47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.81, i32 noundef %conv46.i) #7
  br label %mxl111sf_probe_port_expander.exit

if.end49.i:                                       ; preds = %if.end22.i
  %32 = ptrtoint ptr %port_expander_addr to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %port_expander_addr, align 4
  %gpio_port_expander51.i = getelementptr inbounds %struct.mxl111sf_state, ptr %state, i32 0, i32 1
  %33 = ptrtoint ptr %gpio_port_expander51.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %gpio_port_expander51.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %34 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool52.not.i = icmp eq i32 %34, 0
  br i1 %tobool52.not.i, label %if.end49.i.mxl111sf_probe_port_expander.exit_crit_edge, label %do.end56.i

if.end49.i.mxl111sf_probe_port_expander.exit_crit_edge: ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mxl111sf_probe_port_expander.exit

do.end56.i:                                       ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #6
  %call58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.81) #7
  br label %mxl111sf_probe_port_expander.exit

mxl111sf_probe_port_expander.exit:                ; preds = %do.end56.i, %if.end49.i.mxl111sf_probe_port_expander.exit_crit_edge, %do.end43.i, %if.then33.i.mxl111sf_probe_port_expander.exit_crit_edge, %do.end16.i, %if.then9.i.mxl111sf_probe_port_expander.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %r.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %w.i) #4
  br label %if.end4

if.end4:                                          ; preds = %mxl111sf_probe_port_expander.exit, %if.end.if.end4_crit_edge
  %gpio_port_expander = getelementptr inbounds %struct.mxl111sf_state, ptr %state, i32 0, i32 1
  %35 = ptrtoint ptr %gpio_port_expander to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %gpio_port_expander, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %36, label %do.end6 [
    i32 1, label %if.end4.sw.bb_crit_edge
    i32 0, label %sw.bb10
  ]

if.end4.sw.bb_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

do.end6:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.42) #7
  br label %sw.bb

sw.bb:                                            ; preds = %do.end6, %if.end4.sw.bb_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w.i16) #4
  %38 = ptrtoint ptr %w.i16 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 263, ptr %w.i16, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i17) #4
  %39 = getelementptr inbounds i8, ptr %msg.i17, i32 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 196607, ptr %39, align 4
  %41 = ptrtoint ptr %msg.i17 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 32, ptr %msg.i17, align 4
  %flags.i18 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i17, i32 0, i32 1
  %42 = ptrtoint ptr %flags.i18 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %flags.i18, align 2
  %buf.i20 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i17, i32 0, i32 3
  %43 = ptrtoint ptr %buf.i20 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %w.i16, ptr %buf.i20, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %44 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i21 = icmp eq i32 %44, 0
  br i1 %tobool.not.i21, label %sw.bb.pca9534_init_port_expander.exit_crit_edge, label %do.end.i23

sw.bb.pca9534_init_port_expander.exit_crit_edge:  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %pca9534_init_port_expander.exit

do.end.i23:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %call.i22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.90) #7
  br label %pca9534_init_port_expander.exit

pca9534_init_port_expander.exit:                  ; preds = %do.end.i23, %sw.bb.pca9534_init_port_expander.exit_crit_edge
  %45 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %state, align 4
  %i2c_adap.i24 = getelementptr inbounds %struct.dvb_usb_device, ptr %46, i32 0, i32 10
  %call1.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i24, ptr noundef nonnull %msg.i17, i32 noundef 1) #4
  %47 = ptrtoint ptr %w.i16 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 3, ptr %w.i16, align 2
  %arrayidx2.i = getelementptr inbounds [2 x i8], ptr %w.i16, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %arrayidx2.i, align 1
  %49 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %state, align 4
  %i2c_adap4.i = getelementptr inbounds %struct.dvb_usb_device, ptr %50, i32 0, i32 10
  %call5.i = call i32 @i2c_transfer(ptr noundef %i2c_adap4.i, ptr noundef nonnull %msg.i17, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i17) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w.i16) #4
  br label %return

sw.bb10:                                          ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %51 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i26 = icmp eq i32 %51, 0
  br i1 %tobool.not.i26, label %sw.bb10.if.end.i30_crit_edge, label %do.end.i28

sw.bb10.if.end.i30_crit_edge:                     ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i30

do.end.i28:                                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #6
  %call.i27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.91) #7
  br label %if.end.i30

if.end.i30:                                       ; preds = %do.end.i28, %sw.bb10.if.end.i30_crit_edge
  %call1.i29 = call fastcc i32 @mxl111sf_hw_set_gpio(ptr noundef %state, i32 noundef 3, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i29)
  %cmp2.i = icmp slt i32 %call1.i29, 0
  br i1 %cmp2.i, label %if.end.i30.land.lhs.true.i_crit_edge, label %for.cond.i

if.end.i30.land.lhs.true.i_crit_edge:             ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

for.cond.i:                                       ; preds = %if.end.i30
  %call1.1.i = call fastcc i32 @mxl111sf_hw_set_gpio(ptr noundef %state, i32 noundef 4, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp slt i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.land.lhs.true.i_crit_edge, label %for.cond.1.i

for.cond.i.land.lhs.true.i_crit_edge:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.2.i = call fastcc i32 @mxl111sf_hw_set_gpio(ptr noundef %state, i32 noundef 5, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp slt i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i.land.lhs.true.i_crit_edge, label %for.cond.2.i

for.cond.1.i.land.lhs.true.i_crit_edge:           ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call1.3.i = call fastcc i32 @mxl111sf_hw_set_gpio(ptr noundef %state, i32 noundef 6, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3.i)
  %cmp2.3.i = icmp slt i32 %call1.3.i, 0
  br i1 %cmp2.3.i, label %for.cond.2.i.land.lhs.true.i_crit_edge, label %for.cond.3.i

for.cond.2.i.land.lhs.true.i_crit_edge:           ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %call1.4.i = call fastcc i32 @mxl111sf_hw_set_gpio(ptr noundef %state, i32 noundef 7, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.4.i)
  %cmp2.4.i = icmp slt i32 %call1.4.i, 0
  br i1 %cmp2.4.i, label %for.cond.3.i.land.lhs.true.i_crit_edge, label %for.cond.3.i.return_crit_edge

for.cond.3.i.return_crit_edge:                    ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

for.cond.3.i.land.lhs.true.i_crit_edge:           ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.cond.3.i.land.lhs.true.i_crit_edge, %for.cond.2.i.land.lhs.true.i_crit_edge, %for.cond.1.i.land.lhs.true.i_crit_edge, %for.cond.i.land.lhs.true.i_crit_edge, %if.end.i30.land.lhs.true.i_crit_edge
  %call1.lcssa.i = phi i32 [ %call1.i29, %if.end.i30.land.lhs.true.i_crit_edge ], [ %call1.1.i, %for.cond.i.land.lhs.true.i_crit_edge ], [ %call1.2.i, %for.cond.1.i.land.lhs.true.i_crit_edge ], [ %call1.3.i, %for.cond.2.i.land.lhs.true.i_crit_edge ], [ %call1.4.i, %for.cond.3.i.land.lhs.true.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %52 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and5.i = and i32 %52, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.return_crit_edge, label %do.end10.i

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end10.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.91, i32 noundef %call1.lcssa.i, i32 noundef 562) #7
  br label %return

return:                                           ; preds = %do.end10.i, %land.lhs.true.i.return_crit_edge, %for.cond.3.i.return_crit_edge, %pca9534_init_port_expander.exit
  %retval.0 = phi i32 [ 0, %pca9534_init_port_expander.exit ], [ %call1.lcssa.i, %land.lhs.true.i.return_crit_edge ], [ %call1.lcssa.i, %do.end10.i ], [ %call1.4.i, %for.cond.3.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mxl111sf_gpio_mode_switch(ptr noundef %state, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %0 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.45, i32 noundef %mode) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %1 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %mode, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 @mxl111sf_set_gpio(ptr noundef %state, i32 noundef 4, i32 noundef 0)
  %call2 = tail call i32 @mxl111sf_set_gpio(ptr noundef %state, i32 noundef 5, i32 noundef 0)
  tail call void @msleep(i32 noundef 50) #4
  %call3 = tail call i32 @mxl111sf_set_gpio(ptr noundef %state, i32 noundef 7, i32 noundef 1)
  tail call void @msleep(i32 noundef 50) #4
  %call4 = tail call i32 @mxl111sf_set_gpio(ptr noundef %state, i32 noundef 6, i32 noundef 1)
  tail call void @msleep(i32 noundef 50) #4
  %call5 = tail call i32 @mxl111sf_set_gpio(ptr noundef %state, i32 noundef 3, i32 noundef 0)
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call i32 @mxl111sf_set_gpio(ptr noundef %state, i32 noundef 6, i32 noundef 0)
  %call8 = tail call i32 @mxl111sf_set_gpio(ptr noundef %state, i32 noundef 7, i32 noundef 0)
  tail call void @msleep(i32 noundef 50) #4
  %call9 = tail call i32 @mxl111sf_set_gpio(ptr noundef %state, i32 noundef 5, i32 noundef 1)
  tail call void @msleep(i32 noundef 50) #4
  %call10 = tail call i32 @mxl111sf_set_gpio(ptr noundef %state, i32 noundef 4, i32 noundef 1)
  tail call void @msleep(i32 noundef 50) #4
  %call11 = tail call i32 @mxl111sf_set_gpio(ptr noundef %state, i32 noundef 3, i32 noundef 1)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call12 = tail call i32 @mxl111sf_init_port_expander(ptr noundef %state)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165}
!llvm.module.flags = !{!166, !167, !168, !169, !170, !171, !172, !173}
!llvm.ident = !{!174}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 207, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mxl111sf_config_pin_mux_modes._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mxl111sf_config_pin_mux_modes._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 210, i32 6}
!8 = !{ptr @mxl111sf_config_pin_mux_modes._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @mxl111sf_config_pin_mux_modes._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @mxl111sf_config_pin_mux_modes._entry.6, !11, !"_entry", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 213, i32 6}
!12 = !{ptr @mxl111sf_config_pin_mux_modes._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @mxl111sf_config_pin_mux_modes._entry.8, !14, !"_entry", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 216, i32 6}
!15 = !{ptr @mxl111sf_config_pin_mux_modes._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @mxl111sf_config_pin_mux_modes._entry.10, !17, !"_entry", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 219, i32 6}
!18 = !{ptr @mxl111sf_config_pin_mux_modes._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @mxl111sf_config_pin_mux_modes._entry.12, !20, !"_entry", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 222, i32 6}
!21 = !{ptr @mxl111sf_config_pin_mux_modes._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @mxl111sf_config_pin_mux_modes._entry.14, !23, !"_entry", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 225, i32 6}
!24 = !{ptr @mxl111sf_config_pin_mux_modes._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @mxl111sf_config_pin_mux_modes._entry.16, !26, !"_entry", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 228, i32 6}
!27 = !{ptr @mxl111sf_config_pin_mux_modes._entry_ptr.17, !26, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @mxl111sf_config_pin_mux_modes._entry.18, !29, !"_entry", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 231, i32 6}
!30 = !{ptr @mxl111sf_config_pin_mux_modes._entry_ptr.19, !29, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @mxl111sf_config_pin_mux_modes._entry.20, !32, !"_entry", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 519, i32 6}
!33 = !{ptr @mxl111sf_config_pin_mux_modes._entry_ptr.21, !32, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @mxl111sf_config_pin_mux_modes._entry.22, !35, !"_entry", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 522, i32 6}
!36 = !{ptr @mxl111sf_config_pin_mux_modes._entry_ptr.23, !35, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @mxl111sf_config_pin_mux_modes._entry.24, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 525, i32 6}
!39 = !{ptr @mxl111sf_config_pin_mux_modes._entry_ptr.25, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @mxl111sf_config_pin_mux_modes._entry.26, !41, !"_entry", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 528, i32 6}
!42 = !{ptr @mxl111sf_config_pin_mux_modes._entry_ptr.27, !41, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @mxl111sf_config_pin_mux_modes._entry.28, !44, !"_entry", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 531, i32 6}
!45 = !{ptr @mxl111sf_config_pin_mux_modes._entry_ptr.29, !44, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @mxl111sf_config_pin_mux_modes._entry.30, !47, !"_entry", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 534, i32 6}
!48 = !{ptr @mxl111sf_config_pin_mux_modes._entry_ptr.31, !47, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @mxl111sf_config_pin_mux_modes._entry.32, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 537, i32 6}
!51 = !{ptr @mxl111sf_config_pin_mux_modes._entry_ptr.33, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @mxl111sf_config_pin_mux_modes._entry.34, !53, !"_entry", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 540, i32 6}
!54 = !{ptr @mxl111sf_config_pin_mux_modes._entry_ptr.35, !53, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.36, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 629, i32 2}
!57 = !{ptr @.str.37, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @mxl111sf_set_gpio._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @mxl111sf_set_gpio._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.39, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 633, i32 3}
!62 = !{ptr @mxl111sf_set_gpio._entry.38, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mxl111sf_set_gpio._entry_ptr.40, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.41, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 687, i32 2}
!66 = !{ptr @.str.42, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @mxl111sf_init_port_expander._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @mxl111sf_init_port_expander._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @mxl111sf_init_port_expander._entry.43, !70, !"_entry", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 694, i32 3}
!71 = !{ptr @mxl111sf_init_port_expander._entry_ptr.44, !70, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.45, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 715, i32 2}
!74 = !{ptr @mxl111sf_gpio_mode_switch._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @mxl111sf_gpio_mode_switch._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.46, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 581, i32 2}
!78 = !{ptr @pca9534_set_gpio._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @pca9534_set_gpio._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.47, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 174, i32 2}
!82 = !{ptr @.str.48, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @mxl111sf_hw_do_set_gpio._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @mxl111sf_hw_do_set_gpio._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.49, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 110, i32 2}
!87 = !{ptr @mxl111sf_config_gpio_pins._entry, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @mxl111sf_config_gpio_pins._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @mxl111sf_config_gpio_pins._entry.50, !90, !"_entry", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 118, i32 7}
!91 = !{ptr @mxl111sf_config_gpio_pins._entry_ptr.51, !90, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @mxl111sf_config_gpio_pins._entry.52, !93, !"_entry", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 123, i32 7}
!94 = !{ptr @mxl111sf_config_gpio_pins._entry_ptr.53, !93, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @mxl111sf_config_gpio_pins._entry.54, !96, !"_entry", i1 false, i1 false}
!96 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 131, i32 7}
!97 = !{ptr @mxl111sf_config_gpio_pins._entry_ptr.55, !96, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @mxl111sf_config_gpio_pins._entry.56, !99, !"_entry", i1 false, i1 false}
!99 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 136, i32 7}
!100 = !{ptr @mxl111sf_config_gpio_pins._entry_ptr.57, !99, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @mxl111sf_config_gpio_pins._entry.58, !102, !"_entry", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 143, i32 7}
!103 = !{ptr @mxl111sf_config_gpio_pins._entry_ptr.59, !102, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @mxl111sf_config_gpio_pins._entry.60, !105, !"_entry", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 148, i32 7}
!106 = !{ptr @mxl111sf_config_gpio_pins._entry_ptr.61, !105, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @mxl111sf_config_gpio_pins._entry.62, !108, !"_entry", i1 false, i1 false}
!108 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 160, i32 2}
!109 = !{ptr @mxl111sf_config_gpio_pins._entry_ptr.63, !108, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.64, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 27, i32 2}
!112 = !{ptr @mxl111sf_set_gpo_state._entry, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @mxl111sf_set_gpo_state._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @mxl111sf_set_gpo_state._entry.65, !115, !"_entry", i1 false, i1 false}
!115 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 31, i32 7}
!116 = !{ptr @mxl111sf_set_gpo_state._entry_ptr.66, !115, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @mxl111sf_set_gpo_state._entry.67, !118, !"_entry", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 36, i32 7}
!119 = !{ptr @mxl111sf_set_gpo_state._entry_ptr.68, !118, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @mxl111sf_set_gpo_state._entry.69, !121, !"_entry", i1 false, i1 false}
!121 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 42, i32 7}
!122 = !{ptr @mxl111sf_set_gpo_state._entry_ptr.70, !121, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @mxl111sf_set_gpo_state._entry.71, !124, !"_entry", i1 false, i1 false}
!124 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 47, i32 7}
!125 = !{ptr @mxl111sf_set_gpo_state._entry_ptr.72, !124, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.73, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 60, i32 2}
!128 = !{ptr @.str.74, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @mxl111sf_get_gpi_state._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @mxl111sf_get_gpi_state._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @mxl111sf_get_gpi_state._entry.75, !132, !"_entry", i1 false, i1 false}
!132 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 70, i32 7}
!133 = !{ptr @mxl111sf_get_gpi_state._entry_ptr.76, !132, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @mxl111sf_get_gpi_state._entry.77, !135, !"_entry", i1 false, i1 false}
!135 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 79, i32 7}
!136 = !{ptr @mxl111sf_get_gpi_state._entry_ptr.78, !135, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @mxl111sf_get_gpi_state._entry.79, !138, !"_entry", i1 false, i1 false}
!138 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 87, i32 7}
!139 = !{ptr @mxl111sf_get_gpi_state._entry_ptr.80, !138, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.81, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 653, i32 2}
!142 = !{ptr @mxl111sf_probe_port_expander._entry, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @mxl111sf_probe_port_expander._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.83, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 663, i32 3}
!146 = !{ptr @mxl111sf_probe_port_expander._entry.82, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @mxl111sf_probe_port_expander._entry_ptr.84, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @mxl111sf_probe_port_expander._entry.85, !149, !"_entry", i1 false, i1 false}
!149 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 675, i32 3}
!150 = !{ptr @mxl111sf_probe_port_expander._entry_ptr.86, !149, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.88, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 681, i32 2}
!153 = !{ptr @mxl111sf_probe_port_expander._entry.87, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @mxl111sf_probe_port_expander._entry_ptr.89, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.90, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 614, i32 2}
!157 = !{ptr @pca9534_init_port_expander._entry, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @pca9534_init_port_expander._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.91, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 558, i32 2}
!161 = !{ptr @mxl111sf_hw_gpio_initialize._entry, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @mxl111sf_hw_gpio_initialize._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @mxl111sf_hw_gpio_initialize._entry.92, !164, !"_entry", i1 false, i1 false}
!164 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-gpio.c", i32 562, i32 7}
!165 = !{ptr @mxl111sf_hw_gpio_initialize._entry_ptr.93, !164, !"_entry_ptr", i1 false, i1 false}
!166 = !{i32 1, !"wchar_size", i32 2}
!167 = !{i32 1, !"min_enum_size", i32 4}
!168 = !{i32 8, !"branch-target-enforcement", i32 0}
!169 = !{i32 8, !"sign-return-address", i32 0}
!170 = !{i32 8, !"sign-return-address-all", i32 0}
!171 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!172 = !{i32 7, !"uwtable", i32 1}
!173 = !{i32 7, !"frame-pointer", i32 2}
!174 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!175 = !{!"auto-init"}
