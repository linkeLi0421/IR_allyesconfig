; ModuleID = '/llk/IR_all_yes/drivers/media/usb/tm6000/tm6000-i2c.c_pt.bc'
source_filename = "../drivers/media/usb/tm6000/tm6000-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tm6000_core = type { [30 x i8], i32, i32, i32, [256 x i8], i32, i64, i32, i32, i32, %struct.tm6000_capabilities, %struct.work_struct, i32, i32, %struct.tm6000_gpio, ptr, i8, i32, i32, %struct.i2c_adapter, %struct.i2c_client, %struct.list_head, i32, ptr, i8, %struct.video_device, %struct.video_device, %struct.tm6000_dmaqueue, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, i32, [3 x %struct.tm6000_input], %struct.tm6000_input, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.work_struct, %struct.atomic_t, ptr, %struct.mutex, %struct.mutex, ptr, %struct.tm6000_endpoint, %struct.tm6000_endpoint, %struct.tm6000_endpoint, %struct.tm6000_endpoint, %struct.tm6000_endpoint, %struct.tm6000_endpoint, i32, %struct.usb_isoc_ctl, %struct.spinlock, ptr, ptr, i32, i32 }
%struct.tm6000_capabilities = type { i8, [3 x i8] }
%struct.tm6000_gpio = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.tm6000_dmaqueue = type { %struct.list_head, %struct.list_head, ptr, %struct.wait_queue_head, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.tm6000_input = type { i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tm6000_endpoint = type { ptr, i8, i8, i32 }
%struct.usb_isoc_ctl = type { i32, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_i2c_debug = internal constant [17 x i8] c"tm6000.i2c_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@i2c_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_i2c_debug = internal constant %struct.kernel_param { ptr @__param_str_i2c_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @i2c_debug } }, section "__param", align 4
@__UNIQUE_ID_i2c_debugtype303 = internal constant [30 x i8] c"tm6000.parmtype=i2c_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_i2c_debug304 = internal constant [50 x i8] c"tm6000.parm=i2c_debug:enable debug messages [i2c]\00", section ".modinfo", align 1
@tm6000_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @tm6000_i2c_xfer, ptr null, ptr null, ptr null, ptr @functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tm6000 internal\00", [16 x i8] zeroinitializer }, align 32
@tm6000_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s at %s: %s %s addr=0x%x len=%d:\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tm6000_i2c_xfer\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/usb/tm6000/tm6000-i2c.c\00", [58 x i8] zeroinitializer }, align 32
@tm6000_i2c_xfer._entry_ptr = internal global ptr @tm6000_i2c_xfer._entry, section ".printk_index", align 4
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stop\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nonstop\00", [24 x i8] zeroinitializer }, align 32
@tm6000_i2c_xfer._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017%s at %s:  read without preceding write not supported\00", [40 x i8] zeroinitializer }, align 32
@tm6000_i2c_xfer._entry_ptr.10 = internal global ptr @tm6000_i2c_xfer._entry.8, section ".printk_index", align 4
@tm6000_i2c_xfer._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c %02x\00", [24 x i8] zeroinitializer }, align 32
@tm6000_i2c_xfer._entry_ptr.13 = internal global ptr @tm6000_i2c_xfer._entry.11, section ".printk_index", align 4
@tm6000_i2c_xfer._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s at %s: ; joined to read %s len=%d:\00", [56 x i8] zeroinitializer }, align 32
@tm6000_i2c_xfer._entry_ptr.16 = internal global ptr @tm6000_i2c_xfer._entry.14, section ".printk_index", align 4
@tm6000_i2c_xfer._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tm6000_i2c_xfer._entry_ptr.18 = internal global ptr @tm6000_i2c_xfer._entry.17, section ".printk_index", align 4
@tm6000_i2c_xfer._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tm6000_i2c_xfer._entry_ptr.20 = internal global ptr @tm6000_i2c_xfer._entry.19, section ".printk_index", align 4
@tm6000_i2c_xfer._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@tm6000_i2c_xfer._entry_ptr.23 = internal global ptr @tm6000_i2c_xfer._entry.21, section ".printk_index", align 4
@tm6000_i2c_xfer._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s at %s:  ERROR: %i\0A\00", [40 x i8] zeroinitializer }, align 32
@tm6000_i2c_xfer._entry_ptr.26 = internal global ptr @tm6000_i2c_xfer._entry.24, section ".printk_index", align 4
@tm6000_i2c_recv_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013Incorrect length of i2c packet = %d, limit set to %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tm6000_i2c_recv_regs\00", [43 x i8] zeroinitializer }, align 32
@tm6000_i2c_recv_regs._entry_ptr = internal global ptr @tm6000_i2c_recv_regs._entry, section ".printk_index", align 4
@tm6000_i2c_send_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.29, ptr @.str.3, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tm6000_i2c_send_regs\00", [43 x i8] zeroinitializer }, align 32
@tm6000_i2c_send_regs._entry_ptr = internal global ptr @tm6000_i2c_send_regs._entry, section ".printk_index", align 4
@tm6000_i2c_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014%s: i2c eeprom read error (err=%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tm6000_i2c_eeprom\00", [46 x i8] zeroinitializer }, align 32
@tm6000_i2c_eeprom._entry_ptr = internal global ptr @tm6000_i2c_eeprom._entry, section ".printk_index", align 4
@tm6000_i2c_eeprom._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.3, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: i2c eeprom %02x:\00", [41 x i8] zeroinitializer }, align 32
@tm6000_i2c_eeprom._entry_ptr.34 = internal global ptr @tm6000_i2c_eeprom._entry.32, section ".printk_index", align 4
@tm6000_i2c_eeprom._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.31, ptr @.str.3, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tm6000_i2c_eeprom._entry_ptr.36 = internal global ptr @tm6000_i2c_eeprom._entry.35, section ".printk_index", align 4
@tm6000_i2c_eeprom._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.31, ptr @.str.3, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c  %s\0A\00", [24 x i8] zeroinitializer }, align 32
@tm6000_i2c_eeprom._entry_ptr.39 = internal global ptr @tm6000_i2c_eeprom._entry.37, section ".printk_index", align 4
@tm6000_i2c_eeprom._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.31, ptr @.str.3, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c   \00", [26 x i8] zeroinitializer }, align 32
@tm6000_i2c_eeprom._entry_ptr.42 = internal global ptr @tm6000_i2c_eeprom._entry.40, section ".printk_index", align 4
@tm6000_i2c_eeprom._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.31, ptr @.str.3, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tm6000_i2c_eeprom._entry_ptr.44 = internal global ptr @tm6000_i2c_eeprom._entry.43, section ".printk_index", align 4
@tm6000_i2c_eeprom._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.31, ptr @.str.3, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: Huh, no eeprom present (err=%d)?\0A\00", [56 x i8] zeroinitializer }, align 32
@tm6000_i2c_eeprom._entry_ptr.47 = internal global ptr @tm6000_i2c_eeprom._entry.45, section ".printk_index", align 4
@___asan_gen_.48 = private unnamed_addr constant [10 x i8] c"i2c_debug\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 23, i32 21 }
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"tm6000_algo\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 277, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 303, i32 32 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 150, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 160, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 169, i32 6 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 170, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 191, i32 6 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 196, i32 6 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 201, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 208, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 78, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 44, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 229, i32 5 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 238, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 239, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 249, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 255, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 256, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.169 = private constant [41 x i8] c"../drivers/media/usb/tm6000/tm6000-i2c.c\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 262, i32 2 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_i2c_debug304, ptr @__UNIQUE_ID_i2c_debugtype303, ptr @__param_i2c_debug, ptr @tm6000_i2c_eeprom._entry, ptr @tm6000_i2c_eeprom._entry.32, ptr @tm6000_i2c_eeprom._entry.35, ptr @tm6000_i2c_eeprom._entry.37, ptr @tm6000_i2c_eeprom._entry.40, ptr @tm6000_i2c_eeprom._entry.43, ptr @tm6000_i2c_eeprom._entry.45, ptr @tm6000_i2c_eeprom._entry_ptr, ptr @tm6000_i2c_eeprom._entry_ptr.34, ptr @tm6000_i2c_eeprom._entry_ptr.36, ptr @tm6000_i2c_eeprom._entry_ptr.39, ptr @tm6000_i2c_eeprom._entry_ptr.42, ptr @tm6000_i2c_eeprom._entry_ptr.44, ptr @tm6000_i2c_eeprom._entry_ptr.47, ptr @tm6000_i2c_recv_regs._entry, ptr @tm6000_i2c_recv_regs._entry_ptr, ptr @tm6000_i2c_send_regs._entry, ptr @tm6000_i2c_send_regs._entry_ptr, ptr @tm6000_i2c_xfer._entry, ptr @tm6000_i2c_xfer._entry.11, ptr @tm6000_i2c_xfer._entry.14, ptr @tm6000_i2c_xfer._entry.17, ptr @tm6000_i2c_xfer._entry.19, ptr @tm6000_i2c_xfer._entry.21, ptr @tm6000_i2c_xfer._entry.24, ptr @tm6000_i2c_xfer._entry.8, ptr @tm6000_i2c_xfer._entry_ptr, ptr @tm6000_i2c_xfer._entry_ptr.10, ptr @tm6000_i2c_xfer._entry_ptr.13, ptr @tm6000_i2c_xfer._entry_ptr.16, ptr @tm6000_i2c_xfer._entry_ptr.18, ptr @tm6000_i2c_xfer._entry_ptr.20, ptr @tm6000_i2c_xfer._entry_ptr.23, ptr @tm6000_i2c_xfer._entry_ptr.26, ptr @i2c_debug, ptr @tm6000_algo, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.38, ptr @.str.41, ptr @.str.46], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_i2c_xfer._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_i2c_xfer._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_i2c_xfer._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_i2c_xfer._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_i2c_xfer._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_i2c_xfer._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_i2c_xfer._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_i2c_recv_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_i2c_send_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_i2c_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_i2c_eeprom._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_i2c_eeprom._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_i2c_eeprom._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_i2c_eeprom._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_i2c_eeprom._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_i2c_eeprom._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tm6000_i2c_register(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %bytes.i = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_adap = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %i2c_adap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %i2c_adap, align 8
  %algo = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 19, i32 2
  %1 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @tm6000_algo, ptr %algo, align 8
  %udev = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 47
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 8
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %parent = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 19, i32 9, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev2, ptr %parent, align 8
  %name = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 19, i32 12
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef %dev, i32 noundef 48) #5
  %algo_data = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 19, i32 3
  %5 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %algo_data, align 4
  %v4l2_dev = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 28
  %driver_data.i.i = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 19, i32 9, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %v4l2_dev, ptr %driver_data.i.i, align 4
  %call11 = tail call i32 @i2c_add_adapter(ptr noundef %i2c_adap) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %adapter = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 20, i32 3
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %i2c_adap, ptr %adapter, align 8
  %name14 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 20, i32 2
  %call16 = tail call i32 @strscpy(ptr noundef %name14, ptr noundef nonnull @.str, i32 noundef 20) #5
  %eedata.i = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %bytes.i) #5
  %8 = getelementptr inbounds [17 x i8], ptr %bytes.i, i32 0, i32 16
  %addr.i = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 20, i32 1
  %9 = call ptr @memset(ptr %bytes.i, i32 255, i32 16)
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 80, ptr %addr.i, align 2
  %eedata_size.i = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 5
  %11 = ptrtoint ptr %eedata_size.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %eedata_size.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %8, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end63.i.for.body.i_crit_edge, %if.end
  %i.06.i = phi i32 [ 0, %if.end ], [ %inc51.i, %if.end63.i.for.body.i_crit_edge ]
  %p.05.i = phi ptr [ %eedata.i, %if.end ], [ %incdec.ptr.i, %if.end63.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.06.i to i8
  %13 = ptrtoint ptr %p.05.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i, ptr %p.05.i, align 1
  %call.i = call fastcc i32 @tm6000_i2c_recv_regs(ptr noundef %dev, i8 noundef zeroext -96, i8 noundef zeroext %conv.i, ptr noundef %p.05.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 1
  br i1 %cmp2.i, label %if.then.i, label %if.end11.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %cmp6.i = icmp eq ptr %p.05.i, %eedata.i
  %.str.46..str.30.i = select i1 %cmp6.i, ptr @.str.46, ptr @.str.30
  %call95.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.46..str.30.i, ptr noundef %dev, i32 noundef %call.i) #8
  br label %tm6000_i2c_eeprom.exit

if.end11.i:                                       ; preds = %for.body.i
  %14 = ptrtoint ptr %eedata_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %eedata_size.i, align 4
  %inc.i = add i32 %15, 1
  store i32 %inc.i, ptr %eedata_size.i, align 4
  %incdec.ptr.i = getelementptr i8, ptr %p.05.i, i32 1
  %rem12.i = and i32 %i.06.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem12.i)
  %cmp13.i = icmp eq i32 %rem12.i, 0
  br i1 %cmp13.i, label %do.end18.i, label %if.end11.i.do.end26.i_crit_edge

if.end11.i.do.end26.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end26.i

do.end18.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %dev, i32 noundef %i.06.i) #8
  br label %do.end26.i

do.end26.i:                                       ; preds = %do.end18.i, %if.end11.i.do.end26.i_crit_edge
  %arrayidx29.i = getelementptr %struct.tm6000_core, ptr %dev, i32 0, i32 4, i32 %i.06.i
  %16 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx29.i, align 1
  %conv30.i = zext i8 %17 to i32
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv30.i) #8
  %18 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx29.i, align 1
  %20 = add i8 %19, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 91, i8 %20)
  %21 = icmp ult i8 %20, 91
  %spec.select.i = select i1 %21, i8 %19, i8 46
  %22 = getelementptr [17 x i8], ptr %bytes.i, i32 0, i32 %rem12.i
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %spec.select.i, ptr %22, align 1
  %inc51.i = add nuw nsw i32 %i.06.i, 1
  %24 = and i32 %inc51.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp53.i = icmp eq i32 %24, 0
  br i1 %cmp53.i, label %if.then55.i, label %do.end26.i.if.end63.i_crit_edge

do.end26.i.if.end63.i_crit_edge:                  ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63.i

if.then55.i:                                      ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %8, align 1
  %call62.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull %bytes.i) #8
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then55.i, %do.end26.i.if.end63.i_crit_edge
  %exitcond.not.i = icmp eq i32 %inc51.i, 256
  br i1 %exitcond.not.i, label %if.end63.i.tm6000_i2c_eeprom.exit_crit_edge, label %if.end63.i.for.body.i_crit_edge

if.end63.i.for.body.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end63.i.tm6000_i2c_eeprom.exit_crit_edge:      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tm6000_i2c_eeprom.exit

tm6000_i2c_eeprom.exit:                           ; preds = %if.end63.i.tm6000_i2c_eeprom.exit_crit_edge, %if.then.i
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %bytes.i) #5
  br label %cleanup

cleanup:                                          ; preds = %tm6000_i2c_eeprom.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %tm6000_i2c_eeprom.exit ], [ %call11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tm6000_i2c_unregister(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_adap = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 19
  tail call void @i2c_del_adapter(ptr noundef %i2c_adap) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm6000_i2c_xfer(ptr nocapture noundef readonly %i2c_adap, ptr noundef readonly %msgs, i32 noundef %num) #0 align 64 {
entry:
  %ureg.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp350 = icmp sgt i32 %num, 0
  br i1 %cmp350, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %sub = add nsw i32 %num, -1
  %sub89 = add nsw i32 %num, -2
  %dev_type.i = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 3
  %tuner_addr = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 13
  br label %for.body

for.cond:                                         ; preds = %if.end216
  %inc222 = add i32 %i.1336, 1
  %cmp = icmp slt i32 %inc222, %num
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0351 = phi i32 [ 0, %for.body.lr.ph ], [ %inc222, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0351
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 4
  %conv = zext i16 %3 to i32
  %shl = shl nuw nsw i32 %conv, 1
  %and = and i32 %shl, 254
  %4 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp2 = icmp ugt i32 %4, 1
  br i1 %cmp2, label %do.end, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0351, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags, align 2
  %7 = and i16 %6, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  %cond = select i1 %tobool.not, ptr @.str.5, ptr @.str.4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0351, i32 %sub)
  %cmp8 = icmp eq i32 %i.0351, %sub
  %cond10 = select i1 %cmp8, ptr @.str.6, ptr @.str.7
  %len = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0351, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %len, align 4
  %conv12 = zext i16 %9 to i32
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %cond, ptr noundef nonnull %cond10, i32 noundef %and, i32 noundef %conv12) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  %flags16 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0351, i32 1
  %10 = ptrtoint ptr %flags16 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags16, align 2
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool19.not = icmp eq i16 %12, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end
  %13 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp21 = icmp ugt i32 %13, 1
  br i1 %cmp21, label %do.end27, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end27:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  br label %err

if.else:                                          ; preds = %if.end
  %add = add nsw i32 %i.0351, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num)
  %cmp35 = icmp slt i32 %add, %num
  br i1 %cmp35, label %land.lhs.true, label %if.else.if.else171_crit_edge

if.else.if.else171_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else171

land.lhs.true:                                    ; preds = %if.else
  %len38 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0351, i32 2
  %14 = ptrtoint ptr %len38 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %len38, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %15)
  %cmp40 = icmp ult i16 %15, 3
  br i1 %cmp40, label %land.lhs.true42, label %land.lhs.true.if.else171_crit_edge

land.lhs.true.if.else171_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else171

land.lhs.true42:                                  ; preds = %land.lhs.true
  %flags45 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 1
  %16 = ptrtoint ptr %flags45 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags45, align 2
  %18 = and i16 %17, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool48.not = icmp eq i16 %18, 0
  br i1 %tobool48.not, label %land.lhs.true42.if.else171_crit_edge, label %land.lhs.true49

land.lhs.true42.if.else171_crit_edge:             ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else171

land.lhs.true49:                                  ; preds = %land.lhs.true42
  %arrayidx44 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx, align 4
  %21 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx44, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %22)
  %cmp57 = icmp eq i16 %20, %22
  br i1 %cmp57, label %if.then59, label %land.lhs.true49.if.else171_crit_edge

land.lhs.true49.if.else171_crit_edge:             ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else171

if.then59:                                        ; preds = %land.lhs.true49
  %23 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp60 = icmp ugt i32 %23, 1
  br i1 %cmp60, label %for.cond63.preheader, label %if.then59.if.end100_crit_edge

if.then59.if.end100_crit_edge:                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100

for.cond63.preheader:                             ; preds = %if.then59
  %24 = ptrtoint ptr %len38 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %len38, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp67342.not = icmp eq i16 %25, 0
  br i1 %cmp67342.not, label %for.cond63.preheader.do.end85_crit_edge, label %do.end72.lr.ph

for.cond63.preheader.do.end85_crit_edge:          ; preds = %for.cond63.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end85

do.end72.lr.ph:                                   ; preds = %for.cond63.preheader
  %buf = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0351, i32 3
  br label %do.end72

do.end72:                                         ; preds = %do.end72.do.end72_crit_edge, %do.end72.lr.ph
  %byte.0343 = phi i32 [ 0, %do.end72.lr.ph ], [ %inc, %do.end72.do.end72_crit_edge ]
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buf, align 4
  %arrayidx75 = getelementptr i8, ptr %27, i32 %byte.0343
  %28 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx75, align 1
  %conv76 = zext i8 %29 to i32
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv76) #8
  %inc = add nuw nsw i32 %byte.0343, 1
  %30 = ptrtoint ptr %len38 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %len38, align 4
  %conv66 = zext i16 %31 to i32
  %cmp67 = icmp ult i32 %inc, %conv66
  br i1 %cmp67, label %do.end72.do.end72_crit_edge, label %if.end78

do.end72.do.end72_crit_edge:                      ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end72

if.end78:                                         ; preds = %do.end72
  %.pr.pr = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.pr)
  %cmp79 = icmp ugt i32 %.pr.pr, 1
  br i1 %cmp79, label %if.end78.do.end85_crit_edge, label %if.end78.if.end100_crit_edge

if.end78.if.end100_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100

if.end78.do.end85_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end85

do.end85:                                         ; preds = %if.end78.do.end85_crit_edge, %for.cond63.preheader.do.end85_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0351, i32 %sub89)
  %cmp90 = icmp eq i32 %i.0351, %sub89
  %cond92 = select i1 %cmp90, ptr @.str.6, ptr @.str.7
  %len95 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 2
  %32 = ptrtoint ptr %len95 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %len95, align 4
  %conv96 = zext i16 %33 to i32
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %cond92, i32 noundef %conv96) #8
  br label %if.end100

if.end100:                                        ; preds = %do.end85, %if.end78.if.end100_crit_edge, %if.then59.if.end100_crit_edge
  %34 = ptrtoint ptr %len38 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %len38, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %35)
  %cmp104 = icmp eq i16 %35, 2
  br i1 %cmp104, label %if.then106, label %if.else126

if.then106:                                       ; preds = %if.end100
  %buf109 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0351, i32 3
  %36 = ptrtoint ptr %buf109 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buf109, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %37, align 1
  %conv111 = zext i8 %39 to i16
  %shl112 = shl nuw i16 %conv111, 8
  %arrayidx115 = getelementptr i8, ptr %37, i32 1
  %40 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx115, align 1
  %conv116 = zext i8 %41 to i16
  %or = or i16 %shl112, %conv116
  %buf120 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 3
  %42 = ptrtoint ptr %buf120 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buf120, align 4
  %len123 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 2
  %44 = ptrtoint ptr %len123 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %len123, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ureg.i) #5
  %tobool.not.i = icmp ne ptr %43, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %45)
  %cmp.not.i = icmp eq i16 %45, 2
  %or.cond.i = and i1 %tobool.not.i, %cmp.not.i
  br i1 %or.cond.i, label %if.end.i, label %if.then106.tm6000_i2c_recv_regs16.exit_crit_edge

if.then106.tm6000_i2c_recv_regs16.exit_crit_edge: ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #7
  br label %tm6000_i2c_recv_regs16.exit

if.end.i:                                         ; preds = %if.then106
  %46 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dev_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp1.i = icmp eq i32 %47, 2
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  %48 = ptrtoint ptr %ureg.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %41, ptr %ureg.i, align 1
  %49 = trunc i32 %shl to i16
  %conv4.i = and i16 %49, 254
  %or.i = or i16 %shl112, %conv4.i
  %call.i = call i32 @tm6000_read_write_usb(ptr noundef %1, i8 noundef zeroext 64, i8 noundef zeroext 16, i16 noundef zeroext %or.i, i16 noundef zeroext 0, ptr noundef nonnull %ureg.i, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8.i = icmp slt i32 %call.i, 0
  br i1 %cmp8.i, label %if.then2.i.tm6000_i2c_recv_regs16.exit_crit_edge, label %if.end11.i

if.then2.i.tm6000_i2c_recv_regs16.exit_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tm6000_i2c_recv_regs16.exit

if.end11.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  %call13.i = call i32 @tm6000_read_write_usb(ptr noundef %1, i8 noundef zeroext -64, i8 noundef zeroext 35, i16 noundef zeroext %or, i16 noundef zeroext 0, ptr noundef nonnull %43, i16 noundef zeroext 2) #5
  br label %tm6000_i2c_recv_regs16.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %50 = trunc i32 %shl to i16
  %conv14.i = and i16 %50, 254
  %call16.i = call i32 @tm6000_read_write_usb(ptr noundef %1, i8 noundef zeroext -64, i8 noundef zeroext 14, i16 noundef zeroext %conv14.i, i16 noundef zeroext %or, ptr noundef nonnull %43, i16 noundef zeroext 2) #5
  br label %tm6000_i2c_recv_regs16.exit

tm6000_i2c_recv_regs16.exit:                      ; preds = %if.else.i, %if.end11.i, %if.then2.i.tm6000_i2c_recv_regs16.exit_crit_edge, %if.then106.tm6000_i2c_recv_regs16.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %if.then106.tm6000_i2c_recv_regs16.exit_crit_edge ], [ %call.i, %if.then2.i.tm6000_i2c_recv_regs16.exit_crit_edge ], [ %call13.i, %if.end11.i ], [ %call16.i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ureg.i) #5
  br label %if.end139

if.else126:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #7
  %conv127 = trunc i32 %shl to i8
  %buf129 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0351, i32 3
  %51 = ptrtoint ptr %buf129 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buf129, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %52, align 1
  %buf133 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 3
  %55 = ptrtoint ptr %buf133 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %buf133, align 4
  %len136 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 2
  %57 = ptrtoint ptr %len136 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %len136, align 4
  %conv137 = zext i16 %58 to i32
  %call138 = call fastcc i32 @tm6000_i2c_recv_regs(ptr noundef %1, i8 noundef zeroext %conv127, i8 noundef zeroext %54, ptr noundef %56, i32 noundef %conv137)
  br label %if.end139

if.end139:                                        ; preds = %if.else126, %tm6000_i2c_recv_regs16.exit
  %rc.0 = phi i32 [ %retval.0.i, %tm6000_i2c_recv_regs16.exit ], [ %call138, %if.else126 ]
  %59 = ptrtoint ptr %tuner_addr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tuner_addr, align 8
  %shl141 = shl i32 %60, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %shl141)
  %cmp142 = icmp eq i32 %and, %shl141
  br i1 %cmp142, label %if.then144, label %if.end139.if.end147_crit_edge

if.end139.if.end147_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end147

if.then144:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #7
  %call145 = call i32 @tm6000_set_reg(ptr noundef %1, i8 noundef zeroext 50, i16 noundef zeroext 0, i16 noundef zeroext 0) #5
  %call146 = call i32 @tm6000_set_reg(ptr noundef %1, i8 noundef zeroext 51, i16 noundef zeroext 0, i16 noundef zeroext 0) #5
  br label %if.end147

if.end147:                                        ; preds = %if.then144, %if.end139.if.end147_crit_edge
  %61 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp148 = icmp ugt i32 %61, 1
  br i1 %cmp148, label %for.cond151.preheader, label %if.end147.if.end216_crit_edge

if.end147.if.end216_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end216

for.cond151.preheader:                            ; preds = %if.end147
  %len153 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 2
  %62 = ptrtoint ptr %len153 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %len153, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp155345.not = icmp eq i16 %63, 0
  br i1 %cmp155345.not, label %for.cond151.preheader.if.end207_crit_edge, label %do.end160.lr.ph

for.cond151.preheader.if.end207_crit_edge:        ; preds = %for.cond151.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end207

do.end160.lr.ph:                                  ; preds = %for.cond151.preheader
  %buf163 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 3
  br label %do.end160

do.end160:                                        ; preds = %do.end160.do.end160_crit_edge, %do.end160.lr.ph
  %byte.1346 = phi i32 [ 0, %do.end160.lr.ph ], [ %inc168, %do.end160.do.end160_crit_edge ]
  %64 = ptrtoint ptr %buf163 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %buf163, align 4
  %arrayidx164 = getelementptr i8, ptr %65, i32 %byte.1346
  %66 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx164, align 1
  %conv165 = zext i8 %67 to i32
  %call166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv165) #8
  %inc168 = add nuw nsw i32 %byte.1346, 1
  %68 = ptrtoint ptr %len153 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %len153, align 4
  %conv154 = zext i16 %69 to i32
  %cmp155 = icmp ult i32 %inc168, %conv154
  br i1 %cmp155, label %do.end160.do.end160_crit_edge, label %do.end160.if.end207_crit_edge

do.end160.if.end207_crit_edge:                    ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end207

do.end160.do.end160_crit_edge:                    ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end160

if.else171:                                       ; preds = %land.lhs.true49.if.else171_crit_edge, %land.lhs.true42.if.else171_crit_edge, %land.lhs.true.if.else171_crit_edge, %if.else.if.else171_crit_edge
  %70 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp172 = icmp ugt i32 %70, 1
  br i1 %cmp172, label %for.cond175.preheader, label %if.else171.if.end194_crit_edge

if.else171.if.end194_crit_edge:                   ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end194

for.cond175.preheader:                            ; preds = %if.else171
  %len177 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0351, i32 2
  %71 = ptrtoint ptr %len177 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %len177, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %cmp179348.not = icmp eq i16 %72, 0
  br i1 %cmp179348.not, label %for.cond175.preheader.if.end194_crit_edge, label %do.end184.lr.ph

for.cond175.preheader.if.end194_crit_edge:        ; preds = %for.cond175.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end194

do.end184.lr.ph:                                  ; preds = %for.cond175.preheader
  %buf187 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0351, i32 3
  br label %do.end184

do.end184:                                        ; preds = %do.end184.do.end184_crit_edge, %do.end184.lr.ph
  %byte.2349 = phi i32 [ 0, %do.end184.lr.ph ], [ %inc192, %do.end184.do.end184_crit_edge ]
  %73 = ptrtoint ptr %buf187 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %buf187, align 4
  %arrayidx188 = getelementptr i8, ptr %74, i32 %byte.2349
  %75 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx188, align 1
  %conv189 = zext i8 %76 to i32
  %call190 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv189) #8
  %inc192 = add nuw nsw i32 %byte.2349, 1
  %77 = ptrtoint ptr %len177 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %len177, align 4
  %conv178 = zext i16 %78 to i32
  %cmp179 = icmp ult i32 %inc192, %conv178
  br i1 %cmp179, label %do.end184.do.end184_crit_edge, label %do.end184.if.end194_crit_edge

do.end184.if.end194_crit_edge:                    ; preds = %do.end184
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end194

do.end184.do.end184_crit_edge:                    ; preds = %do.end184
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end184

if.end194:                                        ; preds = %do.end184.if.end194_crit_edge, %for.cond175.preheader.if.end194_crit_edge, %if.else171.if.end194_crit_edge
  %buf197 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0351, i32 3
  %79 = ptrtoint ptr %buf197 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %buf197, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %80, align 1
  %add.ptr = getelementptr i8, ptr %80, i32 1
  %len202 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0351, i32 2
  %83 = ptrtoint ptr %len202 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %len202, align 4
  %conv203 = zext i16 %84 to i32
  %sub204 = add nsw i32 %conv203, -1
  %85 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dev_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %86)
  %cmp.i = icmp eq i32 %86, 2
  %spec.store.select.i = select i1 %cmp.i, i32 80, i32 16
  %tobool.not.i326 = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i326, label %if.end194.if.end207_crit_edge, label %if.end2.i

if.end194.if.end207_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end207

if.end2.i:                                        ; preds = %if.end194
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %84)
  %cmp3.i = icmp ult i16 %84, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select.i, i32 %sub204)
  %cmp4.i = icmp ult i32 %spec.store.select.i, %sub204
  %or.cond.i327 = select i1 %cmp3.i, i1 true, i1 %cmp4.i
  br i1 %or.cond.i327, label %do.end.i, label %if.end6.i

do.end.i:                                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i328 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %sub204, i32 noundef %spec.store.select.i) #8
  br label %if.end207

if.end6.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  %87 = trunc i32 %shl to i16
  %conv.i = and i16 %87, 254
  %conv7.i = zext i8 %82 to i16
  %shl.i = shl nuw i16 %conv7.i, 8
  %or.i329 = or i16 %shl.i, %conv.i
  %conv9.i = trunc i32 %sub204 to i16
  %call10.i = call i32 @tm6000_read_write_usb(ptr noundef %1, i8 noundef zeroext 64, i8 noundef zeroext 16, i16 noundef zeroext %or.i329, i16 noundef zeroext 0, ptr noundef nonnull %add.ptr, i16 noundef zeroext %conv9.i) #5
  br label %if.end207

if.end207:                                        ; preds = %if.end6.i, %do.end.i, %if.end194.if.end207_crit_edge, %do.end160.if.end207_crit_edge, %for.cond151.preheader.if.end207_crit_edge
  %i.1.ph = phi i32 [ %i.0351, %if.end6.i ], [ %i.0351, %do.end.i ], [ %i.0351, %if.end194.if.end207_crit_edge ], [ %add, %for.cond151.preheader.if.end207_crit_edge ], [ %add, %do.end160.if.end207_crit_edge ]
  %rc.1.ph = phi i32 [ %call10.i, %if.end6.i ], [ -1, %do.end.i ], [ -1, %if.end194.if.end207_crit_edge ], [ %rc.0, %for.cond151.preheader.if.end207_crit_edge ], [ %rc.0, %do.end160.if.end207_crit_edge ]
  %.pr332 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr332)
  %cmp208 = icmp ugt i32 %.pr332, 1
  br i1 %cmp208, label %do.end213, label %if.end207.if.end216_crit_edge

if.end207.if.end216_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end216

do.end213:                                        ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #7
  %call215 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #8
  br label %if.end216

if.end216:                                        ; preds = %do.end213, %if.end207.if.end216_crit_edge, %if.end147.if.end216_crit_edge
  %rc.1337 = phi i32 [ %rc.1.ph, %do.end213 ], [ %rc.1.ph, %if.end207.if.end216_crit_edge ], [ %rc.0, %if.end147.if.end216_crit_edge ]
  %i.1336 = phi i32 [ %i.1.ph, %do.end213 ], [ %i.1.ph, %if.end207.if.end216_crit_edge ], [ %add, %if.end147.if.end216_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1337)
  %cmp217 = icmp slt i32 %rc.1337, 0
  br i1 %cmp217, label %if.end216.err_crit_edge, label %for.cond

if.end216.err_crit_edge:                          ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

err:                                              ; preds = %if.end216.err_crit_edge, %do.end27
  %rc.2.ph = phi i32 [ -95, %do.end27 ], [ %rc.1337, %if.end216.err_crit_edge ]
  %.pr338 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr338)
  %cmp224 = icmp ugt i32 %.pr338, 1
  br i1 %cmp224, label %do.end230, label %err.cleanup_crit_edge

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end230:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #7
  %call234 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %rc.2.ph) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end230, %err.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.2.ph, %do.end230 ], [ %rc.2.ph, %err.cleanup_crit_edge ], [ -95, %if.then20.cleanup_crit_edge ], [ %num, %entry.cleanup_crit_edge ], [ %num, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @functionality(ptr nocapture noundef readnone %adap) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592712
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tm6000_i2c_recv_regs(ptr noundef %dev, i8 noundef zeroext %addr, i8 noundef zeroext %reg, ptr noundef %buf, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %b = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b) #5
  %0 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %b, align 1, !annotation !93
  %1 = getelementptr inbounds [2 x i8], ptr %b, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !93
  %dev_type = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 3
  %3 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dev_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp eq i32 %4, 2
  %spec.store.select = select i1 %cmp, i32 64, i32 16
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp3 = icmp slt i32 %len, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select, i32 %len)
  %cmp4 = icmp ult i32 %spec.store.select, %len
  %or.cond = select i1 %cmp3, i1 true, i1 %cmp4
  br i1 %or.cond, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %len, i32 noundef %spec.store.select) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %caps = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 10
  %5 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %caps, align 4
  %6 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool7.not = icmp eq i8 %6, 0
  br i1 %tobool7.not, label %if.end6.if.else_crit_edge, label %land.lhs.true

if.end6.if.else_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.end6
  %demod_addr = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 17
  %7 = ptrtoint ptr %demod_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %demod_addr, align 8
  %shl = shl i32 %8, 1
  %conv = zext i8 %addr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %conv)
  %cmp8 = icmp eq i32 %shl, %conv
  %9 = and i8 %reg, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp12 = icmp eq i8 %9, 0
  %or.cond50 = and i1 %cmp12, %cmp8
  br i1 %or.cond50, label %if.then14, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add i8 %reg, -1
  %conv18 = zext i8 %sub to i32
  %shl19 = shl nuw nsw i32 %conv18, 8
  %or = or i32 %shl19, %shl
  %conv20 = trunc i32 %or to i16
  %10 = trunc i32 %len to i16
  %conv21 = add i16 %10, 1
  %call22 = call i32 @tm6000_read_write_usb(ptr noundef %dev, i8 noundef zeroext -64, i8 noundef zeroext 16, i16 noundef zeroext %conv20, i16 noundef zeroext 0, ptr noundef nonnull %b, i16 noundef zeroext %conv21) #5
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %1, align 1
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %buf, align 1
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end6.if.else_crit_edge
  %conv23 = zext i8 %addr to i16
  %conv24 = zext i8 %reg to i16
  %shl25 = shl nuw i16 %conv24, 8
  %or26 = or i16 %shl25, %conv23
  %conv28 = trunc i32 %len to i16
  %call29 = tail call i32 @tm6000_read_write_usb(ptr noundef %dev, i8 noundef zeroext -64, i8 noundef zeroext 16, i16 noundef zeroext %or26, i16 noundef zeroext 0, ptr noundef nonnull %buf, i16 noundef zeroext %conv28) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %entry.cleanup_crit_edge ], [ %call22, %if.then14 ], [ %call29, %if.else ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tm6000_set_reg(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tm6000_read_write_usb(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !82, !83}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__param_i2c_debug, !1, !"__param_i2c_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/tm6000/tm6000-i2c.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_i2c_debugtype303, !1, !"__UNIQUE_ID_i2c_debugtype303", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_i2c_debug304, !4, !"__UNIQUE_ID_i2c_debug304", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/tm6000/tm6000-i2c.c", i32 25, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/tm6000/tm6000-i2c.c", i32 303, i32 32}
!7 = !{ptr @i2c_debug, !8, !"i2c_debug", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/tm6000/tm6000-i2c.c", i32 23, i32 21}
!9 = !{ptr @__param_str_i2c_debug, !1, !"__param_str_i2c_debug", i1 false, i1 false}
!10 = !{ptr @tm6000_algo, !11, !"tm6000_algo", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/tm6000/tm6000-i2c.c", i32 277, i32 35}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/tm6000/tm6000-i2c.c", i32 150, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @tm6000_i2c_xfer._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @tm6000_i2c_xfer._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/tm6000/tm6000-i2c.c", i32 160, i32 4}
!24 = !{ptr @tm6000_i2c_xfer._entry.8, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @tm6000_i2c_xfer._entry_ptr.10, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/tm6000/tm6000-i2c.c", i32 169, i32 6}
!28 = !{ptr @tm6000_i2c_xfer._entry.11, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @tm6000_i2c_xfer._entry_ptr.13, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/tm6000/tm6000-i2c.c", i32 170, i32 4}
!32 = !{ptr @tm6000_i2c_xfer._entry.14, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @tm6000_i2c_xfer._entry_ptr.16, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @tm6000_i2c_xfer._entry.17, !35, !"_entry", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/tm6000/tm6000-i2c.c", i32 191, i32 6}
!36 = !{ptr @tm6000_i2c_xfer._entry_ptr.18, !35, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @tm6000_i2c_xfer._entry.19, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/tm6000/tm6000-i2c.c", i32 196, i32 6}
!39 = !{ptr @tm6000_i2c_xfer._entry_ptr.20, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/tm6000/tm6000-i2c.c", i32 201, i32 4}
!42 = !{ptr @tm6000_i2c_xfer._entry.21, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @tm6000_i2c_xfer._entry_ptr.23, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/tm6000/tm6000-i2c.c", i32 208, i32 2}
!46 = !{ptr @tm6000_i2c_xfer._entry.24, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @tm6000_i2c_xfer._entry_ptr.26, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/tm6000/tm6000-i2c.c", i32 78, i32 3}
!50 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @tm6000_i2c_recv_regs._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @tm6000_i2c_recv_regs._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/tm6000/tm6000-i2c.c", i32 44, i32 3}
!55 = !{ptr @tm6000_i2c_send_regs._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @tm6000_i2c_send_regs._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/tm6000/tm6000-i2c.c", i32 229, i32 5}
!59 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @tm6000_i2c_eeprom._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @tm6000_i2c_eeprom._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/tm6000/tm6000-i2c.c", i32 238, i32 4}
!64 = !{ptr @tm6000_i2c_eeprom._entry.32, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @tm6000_i2c_eeprom._entry_ptr.34, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @tm6000_i2c_eeprom._entry.35, !67, !"_entry", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/tm6000/tm6000-i2c.c", i32 239, i32 3}
!68 = !{ptr @tm6000_i2c_eeprom._entry_ptr.36, !67, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/tm6000/tm6000-i2c.c", i32 249, i32 4}
!71 = !{ptr @tm6000_i2c_eeprom._entry.37, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @tm6000_i2c_eeprom._entry_ptr.39, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/tm6000/tm6000-i2c.c", i32 255, i32 4}
!75 = !{ptr @tm6000_i2c_eeprom._entry.40, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @tm6000_i2c_eeprom._entry_ptr.42, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @tm6000_i2c_eeprom._entry.43, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/tm6000/tm6000-i2c.c", i32 256, i32 3}
!79 = !{ptr @tm6000_i2c_eeprom._entry_ptr.44, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.46, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/usb/tm6000/tm6000-i2c.c", i32 262, i32 2}
!82 = !{ptr @tm6000_i2c_eeprom._entry.45, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @tm6000_i2c_eeprom._entry_ptr.47, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"auto-init"}
