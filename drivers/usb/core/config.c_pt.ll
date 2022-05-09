; ModuleID = '/llk/IR_all_yes/drivers/usb/core/config.c_pt.bc'
source_filename = "../drivers/usb/core/config.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface_cache = type { i32, %struct.kref, [0 x %struct.usb_host_interface] }
%struct.usb_descriptor_header = type { i8, i8 }
%struct.usb_bos_descriptor = type <{ i8, i8, i16, i8 }>
%struct.usb_dev_cap_header = type { i8, i8, i8 }
%struct.usb_host_bos = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_ssp_cap_descriptor = type { i8, i8, i8, i8, i32, i16, i16, [1 x i32] }

@usb_get_configuration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 872, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"too many configurations: %d, using maximum allowed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb_get_configuration\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/usb/core/config.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usb_get_configuration._entry_ptr = internal global ptr @usb_get_configuration._entry, section ".printk_index", align 4
@usb_get_configuration._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 877, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no configurations\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@usb_get_configuration._entry_ptr.8 = internal global ptr @usb_get_configuration._entry.5, section ".printk_index", align 4
@usb_get_configuration._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 902, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"unable to read config index %d descriptor/%s: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@usb_get_configuration._entry_ptr.11 = internal global ptr @usb_get_configuration._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@usb_get_configuration._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 905, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"chopping to %d config(s)\0A\00", [38 x i8] zeroinitializer }, align 32
@usb_get_configuration._entry_ptr.15 = internal global ptr @usb_get_configuration._entry.13, section ".printk_index", align 4
@usb_get_configuration._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 911, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"config index %d descriptor too short (expected %i, got %i)\0A\00", [36 x i8] zeroinitializer }, align 32
@usb_get_configuration._entry_ptr.18 = internal global ptr @usb_get_configuration._entry.16, section ".printk_index", align 4
@usb_get_configuration._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 932, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"unable to read config index %d descriptor/%s\0A\00", [50 x i8] zeroinitializer }, align 32
@usb_get_configuration._entry_ptr.21 = internal global ptr @usb_get_configuration._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"all\00", [28 x i8] zeroinitializer }, align 32
@usb_get_configuration._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 938, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@usb_get_configuration._entry_ptr.24 = internal global ptr @usb_get_configuration._entry.23, section ".printk_index", align 4
@usb_get_bos_descriptor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 996, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"unable to get BOS descriptor or descriptor too short\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usb_get_bos_descriptor\00", [41 x i8] zeroinitializer }, align 32
@usb_get_bos_descriptor._entry_ptr = internal global ptr @usb_get_bos_descriptor._entry, section ".printk_index", align 4
@usb_get_bos_descriptor._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 1024, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to get BOS descriptor set\0A\00", [62 x i8] zeroinitializer }, align 32
@usb_get_bos_descriptor._entry_ptr.29 = internal global ptr @usb_get_bos_descriptor._entry.27, section ".printk_index", align 4
@usb_get_bos_descriptor._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.2, i32 1049, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"descriptor type invalid, skip\0A\00", [33 x i8] zeroinitializer }, align 32
@usb_get_bos_descriptor._entry_ptr.32 = internal global ptr @usb_get_bos_descriptor._entry.30, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@usb_parse_configuration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 630, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"invalid descriptor for config index %d: type = 0x%X, length = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usb_parse_configuration\00", [40 x i8] zeroinitializer }, align 32
@usb_parse_configuration._entry_ptr = internal global ptr @usb_parse_configuration._entry, section ".printk_index", align 4
@usb_parse_configuration._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 641, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"config %d has too many interfaces: %d, using maximum allowed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@usb_parse_configuration._entry_ptr.37 = internal global ptr @usb_parse_configuration._entry.35, section ".printk_index", align 4
@usb_parse_configuration._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.2, i32 655, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"config %d descriptor has %d excess byte%s, ignoring\0A\00", [43 x i8] zeroinitializer }, align 32
@usb_parse_configuration._entry_ptr.40 = internal global ptr @usb_parse_configuration._entry.38, section ".printk_index", align 4
@usb_parse_configuration._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.34, ptr @.str.2, i32 663, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"config %d has an invalid descriptor of length %d, skipping remainder of the config\0A\00", [44 x i8] zeroinitializer }, align 32
@usb_parse_configuration._entry_ptr.43 = internal global ptr @usb_parse_configuration._entry.41, section ".printk_index", align 4
@usb_parse_configuration._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.34, ptr @.str.2, i32 675, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"config %d has an invalid interface descriptor of length %d, skipping\0A\00", [58 x i8] zeroinitializer }, align 32
@usb_parse_configuration._entry_ptr.46 = internal global ptr @usb_parse_configuration._entry.44, section ".printk_index", align 4
@usb_parse_configuration._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.34, ptr @.str.2, i32 686, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"config %d has more interface descriptors, than it declares in bNumInterfaces, ignoring interface number: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@usb_parse_configuration._entry_ptr.49 = internal global ptr @usb_parse_configuration._entry.47, section ".printk_index", align 4
@usb_parse_configuration._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.34, ptr @.str.2, i32 693, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"config %d has an invalid interface number: %d but max is %d\0A\00", [35 x i8] zeroinitializer }, align 32
@usb_parse_configuration._entry_ptr.52 = internal global ptr @usb_parse_configuration._entry.50, section ".printk_index", align 4
@usb_parse_configuration._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.34, ptr @.str.2, i32 718, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"config %d has an invalid interface association descriptor of length %d, skipping\0A\00", [46 x i8] zeroinitializer }, align 32
@usb_parse_configuration._entry_ptr.55 = internal global ptr @usb_parse_configuration._entry.53, section ".printk_index", align 4
@usb_parse_configuration._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.34, ptr @.str.2, i32 726, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"found more Interface Association Descriptors than allocated for in configuration %d\0A\00", [43 x i8] zeroinitializer }, align 32
@usb_parse_configuration._entry_ptr.58 = internal global ptr @usb_parse_configuration._entry.56, section ".printk_index", align 4
@usb_parse_configuration._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.34, ptr @.str.2, i32 736, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"config %d contains an unexpected descriptor of type 0x%X, skipping\0A\00", [60 x i8] zeroinitializer }, align 32
@usb_parse_configuration._entry_ptr.61 = internal global ptr @usb_parse_configuration._entry.59, section ".printk_index", align 4
@usb_parse_configuration._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.34, ptr @.str.2, i32 745, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"config %d has %d interface%s, different from the descriptor's value: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@usb_parse_configuration._entry_ptr.64 = internal global ptr @usb_parse_configuration._entry.62, section ".printk_index", align 4
@usb_parse_configuration._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.34, ptr @.str.2, i32 747, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"config %d has no interfaces?\0A\00", [34 x i8] zeroinitializer }, align 32
@usb_parse_configuration._entry_ptr.67 = internal global ptr @usb_parse_configuration._entry.65, section ".printk_index", align 4
@usb_parse_configuration._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.34, ptr @.str.2, i32 758, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"config %d has no interface number %d\0A\00", [58 x i8] zeroinitializer }, align 32
@usb_parse_configuration._entry_ptr.70 = internal global ptr @usb_parse_configuration._entry.68, section ".printk_index", align 4
@usb_parse_configuration._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.34, ptr @.str.2, i32 768, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"too many alternate settings for config %d interface %d: %d, using maximum allowed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@usb_parse_configuration._entry_ptr.73 = internal global ptr @usb_parse_configuration._entry.71, section ".printk_index", align 4
@usb_parse_configuration.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.74, ptr @.str.34, ptr @.str.2, ptr @.str.75, i8 0, i8 -59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usbcore\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"skipped %d descriptor%s after %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"configuration\00", [18 x i8] zeroinitializer }, align 32
@usb_parse_configuration._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.34, ptr @.str.2, i32 815, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"config %d interface %d has no altsetting %d\0A\00", [51 x i8] zeroinitializer }, align 32
@usb_parse_configuration._entry_ptr.79 = internal global ptr @usb_parse_configuration._entry.77, section ".printk_index", align 4
@.str.80 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@usb_parse_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 538, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Duplicate descriptor for config %d interface %d altsetting %d, skipping\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usb_parse_interface\00", [44 x i8] zeroinitializer }, align 32
@usb_parse_interface._entry_ptr = internal global ptr @usb_parse_interface._entry, section ".printk_index", align 4
@usb_parse_interface.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.74, ptr @.str.83, ptr @.str.2, ptr @.str.75, i8 0, i8 -118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"interface\00", [22 x i8] zeroinitializer }, align 32
@usb_parse_interface._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.83, ptr @.str.2, i32 564, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"too many endpoints for config %d interface %d altsetting %d: %d, using maximum allowed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@usb_parse_interface._entry_ptr.87 = internal global ptr @usb_parse_interface._entry.85, section ".printk_index", align 4
@usb_parse_interface._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.83, ptr @.str.2, i32 596, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [120 x i8], [40 x i8] } { [120 x i8] c"config %d interface %d altsetting %d has %d endpoint descriptor%s, different from the interface descriptor's value: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@usb_parse_interface._entry_ptr.90 = internal global ptr @usb_parse_interface._entry.88, section ".printk_index", align 4
@usb_parse_endpoint._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.2, i32 278, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"config %d interface %d altsetting %d has an invalid endpoint descriptor of length %d, skipping\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"usb_parse_endpoint\00", [45 x i8] zeroinitializer }, align 32
@usb_parse_endpoint._entry_ptr = internal global ptr @usb_parse_endpoint._entry, section ".printk_index", align 4
@usb_parse_endpoint._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.2, i32 286, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"config %d interface %d altsetting %d has an invalid endpoint with address 0x%X, skipping\0A\00", [38 x i8] zeroinitializer }, align 32
@usb_parse_endpoint._entry_ptr.95 = internal global ptr @usb_parse_endpoint._entry.93, section ".printk_index", align 4
@usb_parse_endpoint._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.92, ptr @.str.2, i32 297, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"config %d interface %d altsetting %d has a duplicate endpoint with address 0x%X, skipping\0A\00", [37 x i8] zeroinitializer }, align 32
@usb_parse_endpoint._entry_ptr.98 = internal global ptr @usb_parse_endpoint._entry.96, section ".printk_index", align 4
@usb_parse_endpoint._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.92, ptr @.str.2, i32 306, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"config %d interface %d altsetting %d has an ignored endpoint with address 0x%X, skipping\0A\00", [38 x i8] zeroinitializer }, align 32
@usb_parse_endpoint._entry_ptr.101 = internal global ptr @usb_parse_endpoint._entry.99, section ".printk_index", align 4
@usb_parse_endpoint._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.92, ptr @.str.2, i32 385, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"config %d interface %d altsetting %d endpoint 0x%X has an invalid bInterval %d, changing to %d\0A\00", [32 x i8] zeroinitializer }, align 32
@usb_parse_endpoint._entry_ptr.104 = internal global ptr @usb_parse_endpoint._entry.102, section ".printk_index", align 4
@usb_parse_endpoint._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.92, ptr @.str.2, i32 396, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"config %d interface %d altsetting %d endpoint 0x%X is Bulk; changing to Interrupt\0A\00", [45 x i8] zeroinitializer }, align 32
@usb_parse_endpoint._entry_ptr.107 = internal global ptr @usb_parse_endpoint._entry.105, section ".printk_index", align 4
@usb_parse_endpoint._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.92, ptr @.str.2, i32 412, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"config %d interface %d altsetting %d endpoint 0x%X has invalid wMaxPacketSize 0\0A\00", [47 x i8] zeroinitializer }, align 32
@usb_parse_endpoint._entry_ptr.110 = internal global ptr @usb_parse_endpoint._entry.108, section ".printk_index", align 4
@low_speed_maxpacket_maxes = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 8, i16 0, i16 0, i16 8], [24 x i8] zeroinitializer }, align 32
@full_speed_maxpacket_maxes = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 64, i16 1023, i16 64, i16 64], [24 x i8] zeroinitializer }, align 32
@high_speed_maxpacket_maxes = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 64, i16 1024, i16 1024, i16 1024], [24 x i8] zeroinitializer }, align 32
@super_speed_maxpacket_maxes = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 512, i16 1024, i16 1024, i16 1024], [24 x i8] zeroinitializer }, align 32
@usb_parse_endpoint._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.92, ptr @.str.2, i32 443, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"config %d interface %d altsetting %d endpoint 0x%X has invalid maxpacket %d, setting to %d\0A\00", [36 x i8] zeroinitializer }, align 32
@usb_parse_endpoint._entry_ptr.113 = internal global ptr @usb_parse_endpoint._entry.111, section ".printk_index", align 4
@usb_parse_endpoint._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.92, ptr @.str.2, i32 458, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"config %d interface %d altsetting %d bulk endpoint 0x%X has invalid maxpacket %d\0A\00", [46 x i8] zeroinitializer }, align 32
@usb_parse_endpoint._entry_ptr.116 = internal global ptr @usb_parse_endpoint._entry.114, section ".printk_index", align 4
@usb_parse_endpoint.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.74, ptr @.str.92, ptr @.str.2, ptr @.str.75, i8 0, i8 118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"endpoint\00", [23 x i8] zeroinitializer }, align 32
@usb_parse_ss_endpoint_companion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.2, i32 89, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"No SuperSpeed endpoint companion for config %d  interface %d altsetting %d ep %d: using minimum values\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"usb_parse_ss_endpoint_companion\00", [32 x i8] zeroinitializer }, align 32
@usb_parse_ss_endpoint_companion._entry_ptr = internal global ptr @usb_parse_ss_endpoint_companion._entry, section ".printk_index", align 4
@usb_parse_ss_endpoint_companion._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.119, ptr @.str.2, i32 115, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"Control endpoint with bMaxBurst = %d in config %d interface %d altsetting %d ep %d: setting to zero\0A\00", [59 x i8] zeroinitializer }, align 32
@usb_parse_ss_endpoint_companion._entry_ptr.122 = internal global ptr @usb_parse_ss_endpoint_companion._entry.120, section ".printk_index", align 4
@usb_parse_ss_endpoint_companion._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.119, ptr @.str.2, i32 121, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"Endpoint with bMaxBurst = %d in config %d interface %d altsetting %d ep %d: setting to 15\0A\00", [37 x i8] zeroinitializer }, align 32
@usb_parse_ss_endpoint_companion._entry_ptr.125 = internal global ptr @usb_parse_ss_endpoint_companion._entry.123, section ".printk_index", align 4
@usb_parse_ss_endpoint_companion._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.119, ptr @.str.2, i32 133, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"%s endpoint with bmAttributes = %d in config %d interface %d altsetting %d ep %d: setting to zero\0A\00", [61 x i8] zeroinitializer }, align 32
@usb_parse_ss_endpoint_companion._entry_ptr.128 = internal global ptr @usb_parse_ss_endpoint_companion._entry.126, section ".printk_index", align 4
@.str.129 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Control\00", [24 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Bulk\00", [27 x i8] zeroinitializer }, align 32
@usb_parse_ss_endpoint_companion._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.119, ptr @.str.2, i32 140, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"Bulk endpoint with more than 65536 streams in config %d interface %d altsetting %d ep %d: setting to max\0A\00", [54 x i8] zeroinitializer }, align 32
@usb_parse_ss_endpoint_companion._entry_ptr.133 = internal global ptr @usb_parse_ss_endpoint_companion._entry.131, section ".printk_index", align 4
@usb_parse_ss_endpoint_companion._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.119, ptr @.str.2, i32 149, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"Isoc endpoint has Mult of %d in config %d interface %d altsetting %d ep %d: setting to 3\0A\00", [38 x i8] zeroinitializer }, align 32
@usb_parse_ss_endpoint_companion._entry_ptr.136 = internal global ptr @usb_parse_ss_endpoint_companion._entry.134, section ".printk_index", align 4
@usb_parse_ss_endpoint_companion._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.119, ptr @.str.2, i32 169, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"%s endpoint with wBytesPerInterval of %d in config %d interface %d altsetting %d ep %d: setting to %d\0A\00", [57 x i8] zeroinitializer }, align 32
@usb_parse_ss_endpoint_companion._entry_ptr.139 = internal global ptr @usb_parse_ss_endpoint_companion._entry.137, section ".printk_index", align 4
@.str.140 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Isoc\00", [27 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Int\00", [28 x i8] zeroinitializer }, align 32
@usb_parse_ssp_isoc_endpoint_companion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.2, i32 66, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"Invalid SuperSpeedPlus isoc endpoint companionfor config %d interface %d altsetting %d ep %d.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"usb_parse_ssp_isoc_endpoint_companion\00", [58 x i8] zeroinitializer }, align 32
@usb_parse_ssp_isoc_endpoint_companion._entry_ptr = internal global ptr @usb_parse_ssp_isoc_endpoint_companion._entry, section ".printk_index", align 4
@bos_desc_len = internal constant { <{ [12 x i8], [244 x i8] }>, [64 x i8] } { <{ [12 x i8], [244 x i8] }> <{ [12 x i8] c"\00\0B\07\0A\14\00\00\00\00\00\14\03", [244 x i8] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 11]
@__sancov_gen_cov_switch_values.145 = internal global [7 x i64] [i64 5, i64 8, i64 2, i64 3, i64 4, i64 10, i64 11]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@__sancov_gen_cov_switch_values.147 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.148 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@__sancov_gen_cov_switch_values.151 = internal global [6 x i64] [i64 4, i64 2, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 871, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 877, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 901, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 905, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 909, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 931, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 937, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 996, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1024, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1049, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 628, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 639, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 653, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 661, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 673, i32 5 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 683, i32 5 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 691, i32 5 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 716, i32 5 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 723, i32 5 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 734, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 743, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 747, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 757, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 765, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 788, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 814, i32 5 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 24, i32 19 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 24, i32 24 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 536, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 553, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 562, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 593, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 276, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 284, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 296, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 304, i32 4 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 381, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 394, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 411, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant [26 x i8] c"low_speed_maxpacket_maxes\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 179, i32 29 }
@___asan_gen_.413 = private unnamed_addr constant [27 x i8] c"full_speed_maxpacket_maxes\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 185, i32 29 }
@___asan_gen_.416 = private unnamed_addr constant [27 x i8] c"high_speed_maxpacket_maxes\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 191, i32 29 }
@___asan_gen_.419 = private unnamed_addr constant [28 x i8] c"super_speed_maxpacket_maxes\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 199, i32 29 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 442, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 455, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 474, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 86, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 112, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 118, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 128, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 137, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 145, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 163, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.500 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 64, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant [13 x i8] c"bos_desc_len\00", align 1
@___asan_gen_.504 = private constant [29 x i8] c"../drivers/usb/core/config.c\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 968, i32 19 }
@llvm.compiler.used = appending global [163 x ptr] [ptr @usb_get_bos_descriptor._entry, ptr @usb_get_bos_descriptor._entry.27, ptr @usb_get_bos_descriptor._entry.30, ptr @usb_get_bos_descriptor._entry_ptr, ptr @usb_get_bos_descriptor._entry_ptr.29, ptr @usb_get_bos_descriptor._entry_ptr.32, ptr @usb_get_configuration._entry, ptr @usb_get_configuration._entry.13, ptr @usb_get_configuration._entry.16, ptr @usb_get_configuration._entry.19, ptr @usb_get_configuration._entry.23, ptr @usb_get_configuration._entry.5, ptr @usb_get_configuration._entry.9, ptr @usb_get_configuration._entry_ptr, ptr @usb_get_configuration._entry_ptr.11, ptr @usb_get_configuration._entry_ptr.15, ptr @usb_get_configuration._entry_ptr.18, ptr @usb_get_configuration._entry_ptr.21, ptr @usb_get_configuration._entry_ptr.24, ptr @usb_get_configuration._entry_ptr.8, ptr @usb_parse_configuration._entry, ptr @usb_parse_configuration._entry.35, ptr @usb_parse_configuration._entry.38, ptr @usb_parse_configuration._entry.41, ptr @usb_parse_configuration._entry.44, ptr @usb_parse_configuration._entry.47, ptr @usb_parse_configuration._entry.50, ptr @usb_parse_configuration._entry.53, ptr @usb_parse_configuration._entry.56, ptr @usb_parse_configuration._entry.59, ptr @usb_parse_configuration._entry.62, ptr @usb_parse_configuration._entry.65, ptr @usb_parse_configuration._entry.68, ptr @usb_parse_configuration._entry.71, ptr @usb_parse_configuration._entry.77, ptr @usb_parse_configuration._entry_ptr, ptr @usb_parse_configuration._entry_ptr.37, ptr @usb_parse_configuration._entry_ptr.40, ptr @usb_parse_configuration._entry_ptr.43, ptr @usb_parse_configuration._entry_ptr.46, ptr @usb_parse_configuration._entry_ptr.49, ptr @usb_parse_configuration._entry_ptr.52, ptr @usb_parse_configuration._entry_ptr.55, ptr @usb_parse_configuration._entry_ptr.58, ptr @usb_parse_configuration._entry_ptr.61, ptr @usb_parse_configuration._entry_ptr.64, ptr @usb_parse_configuration._entry_ptr.67, ptr @usb_parse_configuration._entry_ptr.70, ptr @usb_parse_configuration._entry_ptr.73, ptr @usb_parse_configuration._entry_ptr.79, ptr @usb_parse_endpoint._entry, ptr @usb_parse_endpoint._entry.102, ptr @usb_parse_endpoint._entry.105, ptr @usb_parse_endpoint._entry.108, ptr @usb_parse_endpoint._entry.111, ptr @usb_parse_endpoint._entry.114, ptr @usb_parse_endpoint._entry.93, ptr @usb_parse_endpoint._entry.96, ptr @usb_parse_endpoint._entry.99, ptr @usb_parse_endpoint._entry_ptr, ptr @usb_parse_endpoint._entry_ptr.101, ptr @usb_parse_endpoint._entry_ptr.104, ptr @usb_parse_endpoint._entry_ptr.107, ptr @usb_parse_endpoint._entry_ptr.110, ptr @usb_parse_endpoint._entry_ptr.113, ptr @usb_parse_endpoint._entry_ptr.116, ptr @usb_parse_endpoint._entry_ptr.95, ptr @usb_parse_endpoint._entry_ptr.98, ptr @usb_parse_interface._entry, ptr @usb_parse_interface._entry.85, ptr @usb_parse_interface._entry.88, ptr @usb_parse_interface._entry_ptr, ptr @usb_parse_interface._entry_ptr.87, ptr @usb_parse_interface._entry_ptr.90, ptr @usb_parse_ss_endpoint_companion._entry, ptr @usb_parse_ss_endpoint_companion._entry.120, ptr @usb_parse_ss_endpoint_companion._entry.123, ptr @usb_parse_ss_endpoint_companion._entry.126, ptr @usb_parse_ss_endpoint_companion._entry.131, ptr @usb_parse_ss_endpoint_companion._entry.134, ptr @usb_parse_ss_endpoint_companion._entry.137, ptr @usb_parse_ss_endpoint_companion._entry_ptr, ptr @usb_parse_ss_endpoint_companion._entry_ptr.122, ptr @usb_parse_ss_endpoint_companion._entry_ptr.125, ptr @usb_parse_ss_endpoint_companion._entry_ptr.128, ptr @usb_parse_ss_endpoint_companion._entry_ptr.133, ptr @usb_parse_ss_endpoint_companion._entry_ptr.136, ptr @usb_parse_ss_endpoint_companion._entry_ptr.139, ptr @usb_parse_ssp_isoc_endpoint_companion._entry, ptr @usb_parse_ssp_isoc_endpoint_companion._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @low_speed_maxpacket_maxes, ptr @full_speed_maxpacket_maxes, ptr @high_speed_maxpacket_maxes, ptr @super_speed_maxpacket_maxes, ptr @.str.112, ptr @.str.115, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.129, ptr @.str.130, ptr @.str.132, ptr @.str.135, ptr @.str.138, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @bos_desc_len], section "llvm.metadata"
@0 = internal global [118 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_get_configuration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_get_configuration._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_get_configuration._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_get_configuration._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_get_configuration._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_get_configuration._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_get_configuration._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_get_bos_descriptor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_get_bos_descriptor._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_get_bos_descriptor._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_configuration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_configuration._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_configuration._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_configuration._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_configuration._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_configuration._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_configuration._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_configuration._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_configuration._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_configuration._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_configuration._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_configuration._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_configuration._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_configuration._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_configuration._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_interface._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_interface._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_endpoint._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_endpoint._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_endpoint._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_endpoint._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_endpoint._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_endpoint._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_endpoint._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @low_speed_maxpacket_maxes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @full_speed_maxpacket_maxes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @high_speed_maxpacket_maxes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @super_speed_maxpacket_maxes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_endpoint._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_endpoint._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_ss_endpoint_companion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_ss_endpoint_companion._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_ss_endpoint_companion._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_ss_endpoint_companion._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_ss_endpoint_companion._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_ss_endpoint_companion._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_ss_endpoint_companion._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_parse_ssp_isoc_endpoint_companion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bos_desc_len to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_release_interface_cache(ptr noundef %ref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ref, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6.not = icmp eq i32 %1, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %altsetting = getelementptr i8, ptr %ref, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %j.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x %struct.usb_host_interface], ptr %altsetting, i32 0, i32 %j.07
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %arrayidx, i32 0, i32 3
  %2 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %endpoint, align 4
  tail call void @kfree(ptr noundef %3) #8
  %string = getelementptr inbounds %struct.usb_host_interface, ptr %arrayidx, i32 0, i32 4
  %4 = ptrtoint ptr %string to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %string, align 4
  tail call void @kfree(ptr noundef %5) #8
  %inc = add nuw i32 %j.07, 1
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_destroy_configuration(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %rawdescriptors = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 23
  %2 = ptrtoint ptr %rawdescriptors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rawdescriptors, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %for.cond.preheader

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

for.cond.preheader:                               ; preds = %if.end
  %bNumConfigurations = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 16, i32 13
  %4 = ptrtoint ptr %bNumConfigurations to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bNumConfigurations, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp58.not = icmp eq i8 %5, 0
  br i1 %cmp58.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.059 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %6 = ptrtoint ptr %rawdescriptors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rawdescriptors, align 8
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.059
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %9) #8
  %inc = add nuw nsw i32 %i.059, 1
  %10 = ptrtoint ptr %bNumConfigurations to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bNumConfigurations, align 1
  %conv = zext i8 %11 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %12 = ptrtoint ptr %rawdescriptors to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rawdescriptors, align 8
  tail call void @kfree(ptr noundef %13) #8
  %14 = ptrtoint ptr %rawdescriptors to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rawdescriptors, align 8
  br label %if.end7

if.end7:                                          ; preds = %for.end, %if.end.if.end7_crit_edge
  %bNumConfigurations10 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 16, i32 13
  %15 = ptrtoint ptr %bNumConfigurations10 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bNumConfigurations10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp1264.not = icmp eq i8 %16, 0
  br i1 %cmp1264.not, label %if.end7.for.end33_crit_edge, label %if.end7.for.body14_crit_edge

if.end7.for.body14_crit_edge:                     ; preds = %if.end7
  br label %for.body14

if.end7.for.end33_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end33

for.body14:                                       ; preds = %for.end30.for.body14_crit_edge, %if.end7.for.body14_crit_edge
  %c.065 = phi i32 [ %inc32, %for.end30.for.body14_crit_edge ], [ 0, %if.end7.for.body14_crit_edge ]
  %17 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %config, align 8
  %string = getelementptr %struct.usb_host_config, ptr %18, i32 %c.065, i32 1
  %19 = ptrtoint ptr %string to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %string, align 4
  tail call void @kfree(ptr noundef %20) #8
  %bNumInterfaces = getelementptr %struct.usb_host_config, ptr %18, i32 %c.065, i32 0, i32 3
  %21 = ptrtoint ptr %bNumInterfaces to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bNumInterfaces, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp1961.not = icmp eq i8 %22, 0
  br i1 %cmp1961.not, label %for.body14.for.end30_crit_edge, label %for.body14.for.body21_crit_edge

for.body14.for.body21_crit_edge:                  ; preds = %for.body14
  br label %for.body21

for.body14.for.end30_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end30

for.body21:                                       ; preds = %for.inc28.for.body21_crit_edge, %for.body14.for.body21_crit_edge
  %i.162 = phi i32 [ %inc29, %for.inc28.for.body21_crit_edge ], [ 0, %for.body14.for.body21_crit_edge ]
  %arrayidx22 = getelementptr %struct.usb_host_config, ptr %18, i32 %c.065, i32 4, i32 %i.162
  %23 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx22, align 4
  %tobool23.not = icmp eq ptr %24, null
  br i1 %tobool23.not, label %for.body21.for.inc28_crit_edge, label %if.then24

for.body21.for.inc28_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc28

if.then24:                                        ; preds = %for.body21
  %ref = getelementptr inbounds %struct.usb_interface_cache, ptr %24, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !230
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #8
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #8, !srcloc !231
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.for.inc28_crit_edge, label %if.then10.i.i.i.i, !prof !232

if.end5.i.i.i.i.for.inc28_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc28

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #8
  br label %for.inc28

if.then.i:                                        ; preds = %if.then24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !233
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp6.not.i.i = icmp eq i32 %27, 0
  br i1 %cmp6.not.i.i, label %if.then.i.usb_release_interface_cache.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.then.i.usb_release_interface_cache.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb_release_interface_cache.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i
  %altsetting.i.i = getelementptr %struct.usb_interface_cache, ptr %24, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %j.07.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [0 x %struct.usb_host_interface], ptr %altsetting.i.i, i32 0, i32 %j.07.i.i
  %endpoint.i.i = getelementptr inbounds %struct.usb_host_interface, ptr %arrayidx.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %endpoint.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %endpoint.i.i, align 4
  tail call void @kfree(ptr noundef %29) #8
  %string.i.i = getelementptr inbounds %struct.usb_host_interface, ptr %arrayidx.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %string.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %string.i.i, align 4
  tail call void @kfree(ptr noundef %31) #8
  %inc.i.i = add nuw i32 %j.07.i.i, 1
  %32 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %24, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %33
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.usb_release_interface_cache.exit.i_crit_edge

for.body.i.i.usb_release_interface_cache.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb_release_interface_cache.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

usb_release_interface_cache.exit.i:               ; preds = %for.body.i.i.usb_release_interface_cache.exit.i_crit_edge, %if.then.i.usb_release_interface_cache.exit.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %24) #8
  br label %for.inc28

for.inc28:                                        ; preds = %usb_release_interface_cache.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.for.inc28_crit_edge, %for.body21.for.inc28_crit_edge
  %inc29 = add nuw nsw i32 %i.162, 1
  %34 = ptrtoint ptr %bNumInterfaces to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bNumInterfaces, align 4
  %conv18 = zext i8 %35 to i32
  %cmp19 = icmp ult i32 %inc29, %conv18
  br i1 %cmp19, label %for.inc28.for.body21_crit_edge, label %for.inc28.for.end30_crit_edge

for.inc28.for.end30_crit_edge:                    ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end30

for.inc28.for.body21_crit_edge:                   ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body21

for.end30:                                        ; preds = %for.inc28.for.end30_crit_edge, %for.body14.for.end30_crit_edge
  %inc32 = add nuw nsw i32 %c.065, 1
  %36 = ptrtoint ptr %bNumConfigurations10 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bNumConfigurations10, align 1
  %conv11 = zext i8 %37 to i32
  %cmp12 = icmp ult i32 %inc32, %conv11
  br i1 %cmp12, label %for.end30.for.body14_crit_edge, label %for.end30.for.end33_crit_edge

for.end30.for.end33_crit_edge:                    ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end33

for.end30.for.body14_crit_edge:                   ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body14

for.end33:                                        ; preds = %for.end30.for.end33_crit_edge, %if.end7.for.end33_crit_edge
  %38 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %config, align 8
  tail call void @kfree(ptr noundef %39) #8
  %40 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %config, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end33, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_get_configuration(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  %bNumConfigurations = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 16, i32 13
  %0 = ptrtoint ptr %bNumConfigurations to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bNumConfigurations, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1)
  %cmp = icmp ugt i8 %1, 8
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef 8) #11
  %2 = ptrtoint ptr %bNumConfigurations to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 8, ptr %bNumConfigurations, align 1
  br label %if.end8.i.i

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp5 = icmp eq i8 %1, 0
  br i1 %cmp5, label %do.end10, label %if.end.if.end8.i.i_crit_edge

if.end.if.end8.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6) #11
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end.if.end8.i.i_crit_edge, %if.end.thread
  %ncfg.0198 = phi i32 [ 8, %if.end.thread ], [ %conv, %if.end.if.end8.i.i_crit_edge ]
  %mul = mul nuw nsw i32 %ncfg.0198, 344
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #12
  %config = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 19
  %3 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9.i.i, ptr %config, align 8
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end8.i.i193

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i.i193:                                   ; preds = %if.end8.i.i
  %mul15 = shl nuw nsw i32 %ncfg.0198, 2
  %call9.i.i192 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul15, i32 noundef 3520) #12
  %rawdescriptors = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 23
  %4 = ptrtoint ptr %rawdescriptors to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i.i192, ptr %rawdescriptors, align 8
  %tobool18.not = icmp eq ptr %call9.i.i192, null
  br i1 %tobool18.not, label %if.end8.i.i193.cleanup_crit_edge, label %if.end20

if.end8.i.i193.cleanup_crit_edge:                 ; preds = %if.end8.i.i193
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end8.i.i193
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 9) #13
  %tobool22.not = icmp eq ptr %call7.i, null
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %for.cond.preheader

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ncfg.0198)
  %cmp25215.not = icmp eq i32 %ncfg.0198, 0
  br i1 %cmp25215.not, label %for.cond.preheader.err_crit_edge, label %for.body.lr.ph

for.cond.preheader.err_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %wTotalLength = getelementptr inbounds %struct.usb_config_descriptor, ptr %call7.i, i32 0, i32 2
  %quirks = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cfgno.0216 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %conv27 = trunc i32 %cfgno.0216 to i8
  %call28 = tail call i32 @usb_get_descriptor(ptr noundef %dev, i8 noundef zeroext 2, i8 noundef zeroext %conv27, ptr noundef nonnull %call7.i, i32 noundef 9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end34, label %if.else

do.end34:                                         ; preds = %for.body
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %cfgno.0216, ptr noundef nonnull @.str.12, i32 noundef %call28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %call28)
  %cmp35.not = icmp eq i32 %call28, -32
  br i1 %cmp35.not, label %do.end41, label %do.end34.err_crit_edge

do.end34.err_crit_edge:                           ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

do.end41:                                         ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #10
  %conv27.le = trunc i32 %cfgno.0216 to i8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %cfgno.0216) #11
  %6 = ptrtoint ptr %bNumConfigurations to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv27.le, ptr %bNumConfigurations, align 1
  br label %err

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call28)
  %cmp45 = icmp ult i32 %call28, 4
  br i1 %cmp45, label %do.end50, label %if.end52

do.end50:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %cfgno.0216, i32 noundef 9, i32 noundef %call28) #11
  br label %err

if.end52:                                         ; preds = %if.else
  %7 = ptrtoint ptr %wTotalLength to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %wTotalLength, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %10 = tail call i16 @llvm.umax.i16(i16 %9, i16 9)
  %cond = zext i16 %10 to i32
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %cond, i32 noundef 3264) #12
  %tobool57.not = icmp eq ptr %call9.i, null
  br i1 %tobool57.not, label %if.end52.err_crit_edge, label %if.end59

if.end52.err_crit_edge:                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end59:                                         ; preds = %if.end52
  %11 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %quirks, align 8
  %and = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool60.not = icmp eq i32 %and, 0
  br i1 %tobool60.not, label %if.end59.if.end62_crit_edge, label %if.then61

if.end59.if.end62_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 200) #8
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end59.if.end62_crit_edge
  %call64 = tail call i32 @usb_get_descriptor(ptr noundef %dev, i8 noundef zeroext 2, i8 noundef zeroext %conv27, ptr noundef nonnull %call9.i, i32 noundef %cond) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %do.end70, label %if.end71

do.end70:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %cfgno.0216, ptr noundef nonnull @.str.22) #11
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %err

if.end71:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_cmp4(i32 %call64, i32 %cond)
  %cmp72 = icmp ult i32 %call64, %cond
  br i1 %cmp72, label %do.end77, label %if.end71.if.end78_crit_edge

if.end71.if.end78_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

do.end77:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %cfgno.0216, i32 noundef %cond, i32 noundef %call64) #11
  br label %if.end78

if.end78:                                         ; preds = %do.end77, %if.end71.if.end78_crit_edge
  %length.0 = phi i32 [ %call64, %do.end77 ], [ %cond, %if.end71.if.end78_crit_edge ]
  %13 = ptrtoint ptr %rawdescriptors to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rawdescriptors, align 8
  %arrayidx = getelementptr ptr, ptr %14, i32 %cfgno.0216
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call9.i, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %config, align 8
  %arrayidx81 = getelementptr %struct.usb_host_config, ptr %17, i32 %cfgno.0216
  %call82 = tail call fastcc i32 @usb_parse_configuration(ptr noundef %dev, i32 noundef %cfgno.0216, ptr noundef %arrayidx81, ptr noundef nonnull %call9.i, i32 noundef %length.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  %inc = add nuw i32 %cfgno.0216, 1
  br i1 %cmp83, label %if.end78.err_crit_edge, label %for.inc

if.end78.err_crit_edge:                           ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

for.inc:                                          ; preds = %if.end78
  %exitcond.not = icmp eq i32 %inc, %ncfg.0198
  br i1 %exitcond.not, label %for.inc.err_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.err_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

err:                                              ; preds = %for.inc.err_crit_edge, %if.end78.err_crit_edge, %do.end70, %if.end52.err_crit_edge, %do.end50, %do.end41, %do.end34.err_crit_edge, %for.cond.preheader.err_crit_edge
  %cfgno.1 = phi i32 [ %cfgno.0216, %do.end34.err_crit_edge ], [ %cfgno.0216, %do.end41 ], [ %cfgno.0216, %do.end50 ], [ %cfgno.0216, %do.end70 ], [ 0, %for.cond.preheader.err_crit_edge ], [ %ncfg.0198, %for.inc.err_crit_edge ], [ %cfgno.0216, %if.end52.err_crit_edge ], [ %inc, %if.end78.err_crit_edge ]
  %result.1 = phi i32 [ %call28, %do.end34.err_crit_edge ], [ -32, %do.end41 ], [ -22, %do.end50 ], [ %call64, %do.end70 ], [ -1, %for.cond.preheader.err_crit_edge ], [ %call82, %for.inc.err_crit_edge ], [ -12, %if.end52.err_crit_edge ], [ %call82, %if.end78.err_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  %conv88 = trunc i32 %cfgno.1 to i8
  %18 = ptrtoint ptr %bNumConfigurations to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv88, ptr %bNumConfigurations, align 1
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end20.cleanup_crit_edge, %if.end8.i.i193.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge, %do.end10
  %retval.0 = phi i32 [ -22, %do.end10 ], [ %result.1, %err ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ -12, %if.end8.i.i193.cleanup_crit_edge ], [ -12, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_descriptor(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb_parse_configuration(ptr noundef %dev, i32 noundef %cfgidx, ptr nocapture noundef %config, ptr noundef %buffer, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  %inums = alloca [32 x i8], align 1
  %nalts = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %inums) #8
  %0 = call ptr @memset(ptr %inums, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nalts) #8
  %1 = call ptr @memset(ptr %nalts, i32 255, i32 32)
  %2 = call ptr @memcpy(ptr %config, ptr %buffer, i32 9)
  %bNumInterfaces = getelementptr inbounds %struct.usb_config_descriptor, ptr %config, i32 0, i32 3
  %3 = ptrtoint ptr %bNumInterfaces to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bNumInterfaces, align 4
  %conv = zext i8 %4 to i32
  store i8 0, ptr %bNumInterfaces, align 4
  %bDescriptorType = getelementptr inbounds %struct.usb_config_descriptor, ptr %config, i32 0, i32 1
  %5 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bDescriptorType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp.not = icmp eq i8 %6, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %config, align 4
  %conv10 = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %8)
  %cmp11 = icmp ult i8 %8, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10, i32 %size)
  %cmp17 = icmp sgt i32 %conv10, %size
  %or.cond = or i1 %cmp11, %cmp17
  br i1 %or.cond, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %conv21 = zext i8 %6 to i32
  %9 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %config, align 4
  %conv24 = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.33, i32 noundef %cfgidx, i32 noundef %conv21, i32 noundef %conv24) #11
  br label %cleanup329

if.end:                                           ; preds = %lor.lhs.false
  %bConfigurationValue = getelementptr inbounds %struct.usb_config_descriptor, ptr %config, i32 0, i32 4
  %11 = ptrtoint ptr %bConfigurationValue to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bConfigurationValue, align 1
  %conv26 = zext i8 %12 to i32
  %add.ptr = getelementptr i8, ptr %buffer, i32 %conv10
  %sub = sub i32 %size, %conv10
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %4)
  %cmp33 = icmp ugt i8 %4, 32
  br i1 %cmp33, label %do.end38, label %if.end.if.end39_crit_edge

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

do.end38:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.36, i32 noundef %conv26, i32 noundef %conv, i32 noundef 32) #11
  br label %if.end39

if.end39:                                         ; preds = %do.end38, %if.end.if.end39_crit_edge
  %nintf.0 = phi i32 [ 32, %do.end38 ], [ %conv, %if.end.if.end39_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp40528 = icmp sgt i32 %sub, 0
  br i1 %cmp40528, label %for.body.lr.ph, label %if.end39.for.end184_crit_edge

if.end39.for.end184_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end184

for.body.lr.ph:                                   ; preds = %if.end39
  %quirks = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 36
  %sub95 = add nsw i32 %conv, -1
  br label %for.body

for.body:                                         ; preds = %for.inc177.for.body_crit_edge, %for.body.lr.ph
  %iad_num.0532 = phi i32 [ 0, %for.body.lr.ph ], [ %iad_num.3, %for.inc177.for.body_crit_edge ]
  %size2.0531 = phi i32 [ %sub, %for.body.lr.ph ], [ %sub183, %for.inc177.for.body_crit_edge ]
  %buffer2.0530 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr180, %for.inc177.for.body_crit_edge ]
  %n.0529 = phi i32 [ 0, %for.body.lr.ph ], [ %n.1, %for.inc177.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %size2.0531)
  %cmp42 = icmp eq i32 %size2.0531, 1
  br i1 %cmp42, label %do.end47, label %if.end48

do.end47:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.39, i32 noundef %conv26, i32 noundef 1, ptr noundef nonnull @.str.80) #11
  br label %for.end184

if.end48:                                         ; preds = %for.body
  %13 = ptrtoint ptr %buffer2.0530 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %buffer2.0530, align 1
  %conv50 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %size2.0531, i32 %conv50)
  %cmp51 = icmp ult i32 %size2.0531, %conv50
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp56 = icmp ult i8 %14, 2
  %or.cond494 = or i1 %cmp56, %cmp51
  br i1 %or.cond494, label %do.end61, label %if.end64

do.end61:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %conv50.le = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.42, i32 noundef %conv26, i32 noundef %conv50.le) #11
  br label %for.end184

if.end64:                                         ; preds = %if.end48
  %bDescriptorType65 = getelementptr inbounds %struct.usb_descriptor_header, ptr %buffer2.0530, i32 0, i32 1
  %15 = ptrtoint ptr %bDescriptorType65 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bDescriptorType65, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i8 %16, label %if.end64.for.inc177_crit_edge [
    i8 4, label %if.then69
    i8 11, label %if.then132
    i8 1, label %if.end64.do.end171_crit_edge
    i8 2, label %if.end64.do.end171_crit_edge603
  ]

if.end64.do.end171_crit_edge603:                  ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end171

if.end64.do.end171_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end171

if.end64.for.inc177_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc177

if.then69:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %14)
  %cmp72 = icmp ult i8 %14, 9
  br i1 %cmp72, label %do.end77, label %if.end80

do.end77:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.45, i32 noundef %conv26, i32 noundef %conv50) #11
  br label %for.inc177

if.end80:                                         ; preds = %if.then69
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %buffer2.0530, i32 0, i32 2
  %18 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bInterfaceNumber, align 1
  %conv81 = zext i8 %19 to i32
  %20 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %quirks, align 8
  %and = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %n.0529, i32 %conv)
  %cmp82.not = icmp slt i32 %n.0529, %conv
  %or.cond516 = select i1 %tobool.not, i1 true, i1 %cmp82.not
  br i1 %or.cond516, label %if.end88, label %do.end87

do.end87:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.48, i32 noundef %conv26, i32 noundef %conv81) #11
  br label %for.inc177

if.end88:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %4)
  %cmp89.not = icmp ult i8 %19, %4
  br i1 %cmp89.not, label %if.end88.if.end96_crit_edge, label %do.end94

if.end88.if.end96_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

do.end94:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.51, i32 noundef %conv26, i32 noundef %conv81, i32 noundef %sub95) #11
  br label %if.end96

if.end96:                                         ; preds = %do.end94, %if.end88.if.end96_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0529)
  %cmp98526 = icmp sgt i32 %n.0529, 0
  br i1 %cmp98526, label %if.end96.for.body100_crit_edge, label %if.end96.if.then119_crit_edge

if.end96.if.then119_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then119

if.end96.for.body100_crit_edge:                   ; preds = %if.end96
  br label %for.body100

for.body100:                                      ; preds = %for.inc.for.body100_crit_edge, %if.end96.for.body100_crit_edge
  %i.0527 = phi i32 [ %inc, %for.inc.for.body100_crit_edge ], [ 0, %if.end96.for.body100_crit_edge ]
  %arrayidx = getelementptr [32 x i8], ptr %inums, i32 0, i32 %i.0527
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %19)
  %cmp102 = icmp eq i8 %23, %19
  br i1 %cmp102, label %if.then108, label %for.inc

for.inc:                                          ; preds = %for.body100
  %inc = add nuw nsw i32 %i.0527, 1
  %exitcond.not = icmp eq i32 %inc, %n.0529
  br i1 %exitcond.not, label %if.else, label %for.inc.for.body100_crit_edge

for.inc.for.body100_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body100

if.then108:                                       ; preds = %for.body100
  %arrayidx109 = getelementptr [32 x i8], ptr %nalts, i32 0, i32 %i.0527
  %24 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx109, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %cmp111.not = icmp eq i8 %25, -1
  br i1 %cmp111.not, label %if.then108.for.inc177_crit_edge, label %if.then113

if.then108.for.inc177_crit_edge:                  ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc177

if.then113:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #10
  %inc115 = add nuw i8 %25, 1
  %26 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %inc115, ptr %arrayidx109, align 1
  br label %for.inc177

if.else:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %n.0529)
  %cmp117 = icmp slt i32 %n.0529, 32
  br i1 %cmp117, label %if.else.if.then119_crit_edge, label %if.else.for.inc177_crit_edge

if.else.for.inc177_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc177

if.else.if.then119_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then119

if.then119:                                       ; preds = %if.else.if.then119_crit_edge, %if.end96.if.then119_crit_edge
  %arrayidx121 = getelementptr [32 x i8], ptr %inums, i32 0, i32 %n.0529
  %27 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %19, ptr %arrayidx121, align 1
  %arrayidx122 = getelementptr [32 x i8], ptr %nalts, i32 0, i32 %n.0529
  %28 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %arrayidx122, align 1
  %inc123 = add nsw i32 %n.0529, 1
  br label %for.inc177

if.then132:                                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %14)
  %cmp136 = icmp ult i8 %14, 8
  br i1 %cmp136, label %do.end141, label %if.end144

do.end141:                                        ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.54, i32 noundef %conv26, i32 noundef %conv50) #11
  br label %for.inc177

if.end144:                                        ; preds = %if.then132
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %iad_num.0532)
  %cmp145 = icmp eq i32 %iad_num.0532, 16
  br i1 %cmp145, label %do.end150, label %if.else151

do.end150:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.57, i32 noundef %conv26) #11
  br label %for.inc177

if.else151:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx152 = getelementptr %struct.usb_host_config, ptr %config, i32 0, i32 2, i32 %iad_num.0532
  %29 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %buffer2.0530, ptr %arrayidx152, align 4
  %inc153 = add i32 %iad_num.0532, 1
  br label %for.inc177

do.end171:                                        ; preds = %if.end64.do.end171_crit_edge, %if.end64.do.end171_crit_edge603
  %conv173 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.60, i32 noundef %conv26, i32 noundef %conv173) #11
  br label %for.inc177

for.inc177:                                       ; preds = %do.end171, %if.else151, %do.end150, %do.end141, %if.then119, %if.else.for.inc177_crit_edge, %if.then113, %if.then108.for.inc177_crit_edge, %do.end87, %do.end77, %if.end64.for.inc177_crit_edge
  %n.1 = phi i32 [ %n.0529, %if.end64.for.inc177_crit_edge ], [ %n.0529, %do.end171 ], [ %n.0529, %do.end141 ], [ %n.0529, %do.end150 ], [ %n.0529, %if.else151 ], [ %n.0529, %do.end77 ], [ %n.0529, %if.then108.for.inc177_crit_edge ], [ %n.0529, %if.then113 ], [ %inc123, %if.then119 ], [ %n.0529, %if.else.for.inc177_crit_edge ], [ %n.0529, %do.end87 ]
  %iad_num.3 = phi i32 [ %iad_num.0532, %if.end64.for.inc177_crit_edge ], [ %iad_num.0532, %do.end171 ], [ %iad_num.0532, %do.end141 ], [ 16, %do.end150 ], [ %inc153, %if.else151 ], [ %iad_num.0532, %do.end77 ], [ %iad_num.0532, %if.then108.for.inc177_crit_edge ], [ %iad_num.0532, %if.then113 ], [ %iad_num.0532, %if.then119 ], [ %iad_num.0532, %if.else.for.inc177_crit_edge ], [ %iad_num.0532, %do.end87 ]
  %30 = ptrtoint ptr %buffer2.0530 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %buffer2.0530, align 1
  %conv179 = zext i8 %31 to i32
  %add.ptr180 = getelementptr i8, ptr %buffer2.0530, i32 %conv179
  %sub183 = sub i32 %size2.0531, %conv179
  %cmp40 = icmp sgt i32 %sub183, 0
  br i1 %cmp40, label %for.inc177.for.body_crit_edge, label %for.inc177.for.end184_crit_edge

for.inc177.for.end184_crit_edge:                  ; preds = %for.inc177
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end184

for.inc177.for.body_crit_edge:                    ; preds = %for.inc177
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end184:                                       ; preds = %for.inc177.for.end184_crit_edge, %do.end61, %do.end47, %if.end39.for.end184_crit_edge
  %n.0525 = phi i32 [ %n.0529, %do.end61 ], [ %n.0529, %do.end47 ], [ 0, %if.end39.for.end184_crit_edge ], [ %n.1, %for.inc177.for.end184_crit_edge ]
  %buffer2.0522 = phi ptr [ %buffer2.0530, %do.end61 ], [ %buffer2.0530, %do.end47 ], [ %add.ptr, %if.end39.for.end184_crit_edge ], [ %add.ptr180, %for.inc177.for.end184_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %buffer2.0522 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.rhs.cast186 = ptrtoint ptr %buffer to i32
  %sub.ptr.sub187 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast186
  %conv188 = trunc i32 %sub.ptr.sub187 to i16
  %32 = tail call i16 @llvm.bswap.i16(i16 %conv188)
  %wTotalLength = getelementptr inbounds %struct.usb_config_descriptor, ptr %config, i32 0, i32 2
  %33 = ptrtoint ptr %wTotalLength to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %wTotalLength, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %n.0525, i32 %nintf.0)
  %cmp190.not = icmp eq i32 %n.0525, %nintf.0
  br i1 %cmp190.not, label %if.else197, label %do.end195

do.end195:                                        ; preds = %for.end184
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n.0525)
  %cmp.i = icmp eq i32 %n.0525, 1
  %cond.i = select i1 %cmp.i, ptr @.str.80, ptr @.str.81
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.63, i32 noundef %conv26, i32 noundef %n.0525, ptr noundef nonnull %cond.i, i32 noundef %conv) #11
  br label %if.end205

if.else197:                                       ; preds = %for.end184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nintf.0)
  %cmp198 = icmp eq i32 %nintf.0, 0
  br i1 %cmp198, label %do.end203, label %if.else197.if.end205_crit_edge

if.else197.if.end205_crit_edge:                   ; preds = %if.else197
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205

do.end203:                                        ; preds = %if.else197
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.66, i32 noundef %conv26) #11
  br label %if.end205

if.end205:                                        ; preds = %do.end203, %if.else197.if.end205_crit_edge, %do.end195
  %conv206 = trunc i32 %n.0525 to i8
  %34 = ptrtoint ptr %bNumInterfaces to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv206, ptr %bNumInterfaces, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0525)
  %cmp210537 = icmp sgt i32 %n.0525, 0
  br i1 %cmp210537, label %if.end205.for.body216.preheader_crit_edge, label %if.end205.for.end260_crit_edge

if.end205.for.end260_crit_edge:                   ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end260

if.end205.for.body216.preheader_crit_edge:        ; preds = %if.end205
  br label %for.body216.preheader

for.body216.preheader:                            ; preds = %for.inc233.for.body216.preheader_crit_edge, %if.end205.for.body216.preheader_crit_edge
  %i.1538 = phi i32 [ %inc234, %for.inc233.for.body216.preheader_crit_edge ], [ 0, %if.end205.for.body216.preheader_crit_edge ]
  br label %for.body216

for.cond236.preheader:                            ; preds = %for.inc233
  br i1 %cmp210537, label %for.cond236.preheader.for.body239_crit_edge, label %for.cond236.preheader.for.end260_crit_edge

for.cond236.preheader.for.end260_crit_edge:       ; preds = %for.cond236.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end260

for.cond236.preheader.for.body239_crit_edge:      ; preds = %for.cond236.preheader
  br label %for.body239

for.cond213:                                      ; preds = %for.body216
  %inc224 = add nuw nsw i32 %j.0536, 1
  %exitcond563.not = icmp eq i32 %inc224, %n.0525
  br i1 %exitcond563.not, label %do.end231, label %for.cond213.for.body216_crit_edge

for.cond213.for.body216_crit_edge:                ; preds = %for.cond213
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body216

for.body216:                                      ; preds = %for.cond213.for.body216_crit_edge, %for.body216.preheader
  %j.0536 = phi i32 [ %inc224, %for.cond213.for.body216_crit_edge ], [ 0, %for.body216.preheader ]
  %arrayidx217 = getelementptr [32 x i8], ptr %inums, i32 0, i32 %j.0536
  %35 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx217, align 1
  %conv218 = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1538, i32 %conv218)
  %cmp219 = icmp eq i32 %i.1538, %conv218
  br i1 %cmp219, label %for.body216.for.inc233_crit_edge, label %for.cond213

for.body216.for.inc233_crit_edge:                 ; preds = %for.body216
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc233

do.end231:                                        ; preds = %for.cond213
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.69, i32 noundef %conv26, i32 noundef %i.1538) #11
  br label %for.inc233

for.inc233:                                       ; preds = %do.end231, %for.body216.for.inc233_crit_edge
  %inc234 = add nuw nsw i32 %i.1538, 1
  %exitcond564.not = icmp eq i32 %inc234, %n.0525
  br i1 %exitcond564.not, label %for.cond236.preheader, label %for.inc233.for.body216.preheader_crit_edge

for.inc233.for.body216.preheader_crit_edge:       ; preds = %for.inc233
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body216.preheader

for.body239:                                      ; preds = %if.end257.for.body239_crit_edge, %for.cond236.preheader.for.body239_crit_edge
  %i.2542 = phi i32 [ %inc259, %if.end257.for.body239_crit_edge ], [ 0, %for.cond236.preheader.for.body239_crit_edge ]
  %arrayidx240 = getelementptr [32 x i8], ptr %nalts, i32 0, i32 %i.2542
  %37 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx240, align 1
  %conv241 = zext i8 %38 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %38)
  %cmp242 = icmp ugt i8 %38, -128
  br i1 %cmp242, label %do.end247, label %for.body239.if.end8.i.i_crit_edge

for.body239.if.end8.i.i_crit_edge:                ; preds = %for.body239
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

do.end247:                                        ; preds = %for.body239
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx248 = getelementptr [32 x i8], ptr %inums, i32 0, i32 %i.2542
  %39 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx248, align 1
  %conv249 = zext i8 %40 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.72, i32 noundef %conv26, i32 noundef %conv249, i32 noundef %conv241, i32 noundef 128) #11
  %41 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -128, ptr %arrayidx240, align 1
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %do.end247, %for.body239.if.end8.i.i_crit_edge
  %j.1 = phi i32 [ 128, %do.end247 ], [ %conv241, %for.body239.if.end8.i.i_crit_edge ]
  %42 = mul nuw nsw i32 %j.1, 28
  %spec.select.i515 = add nuw nsw i32 %42, 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i515, i32 noundef 3520) #12
  %arrayidx254 = getelementptr %struct.usb_host_config, ptr %config, i32 0, i32 4, i32 %i.2542
  %43 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call9.i.i, ptr %arrayidx254, align 4
  %tobool255.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool255.not, label %if.end8.i.i.cleanup329_crit_edge, label %if.end257

if.end8.i.i.cleanup329_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup329

if.end257:                                        ; preds = %if.end8.i.i
  %ref = getelementptr inbounds %struct.usb_interface_cache, ptr %call9.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #8
  %44 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 1, ptr %ref, align 4
  %inc259 = add nuw nsw i32 %i.2542, 1
  %exitcond565.not = icmp eq i32 %inc259, %n.0525
  br i1 %exitcond565.not, label %if.end257.for.end260_crit_edge, label %if.end257.for.body239_crit_edge

if.end257.for.body239_crit_edge:                  ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body239

if.end257.for.end260_crit_edge:                   ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end260

for.end260:                                       ; preds = %if.end257.for.end260_crit_edge, %for.cond236.preheader.for.end260_crit_edge, %if.end205.for.end260_crit_edge
  %extra = getelementptr inbounds %struct.usb_host_config, ptr %config, i32 0, i32 5
  %45 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr, ptr %extra, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub)
  %cmp2.i = icmp sgt i32 %sub.ptr.sub, 0
  br i1 %cmp2.i, label %for.end260.while.body.i_crit_edge, label %find_next_descriptor.exit.thread

for.end260.while.body.i_crit_edge:                ; preds = %for.end260
  br label %while.body.i

find_next_descriptor.exit.thread:                 ; preds = %for.end260
  call void @__sanitizer_cov_trace_pc() #10
  %extralen511 = getelementptr inbounds %struct.usb_host_config, ptr %config, i32 0, i32 6
  %46 = ptrtoint ptr %extralen511 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %extralen511, align 4
  br label %if.end275

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %for.end260.while.body.i_crit_edge
  %n.05.i = phi i32 [ %inc.i, %if.end.i.while.body.i_crit_edge ], [ 0, %for.end260.while.body.i_crit_edge ]
  %buffer.addr.04.i = phi ptr [ %add.ptr.i, %if.end.i.while.body.i_crit_edge ], [ %add.ptr, %for.end260.while.body.i_crit_edge ]
  %size.addr.03.i = phi i32 [ %sub.i, %if.end.i.while.body.i_crit_edge ], [ %sub.ptr.sub, %for.end260.while.body.i_crit_edge ]
  %bDescriptorType.i = getelementptr inbounds %struct.usb_descriptor_header, ptr %buffer.addr.04.i, i32 0, i32 1
  %47 = ptrtoint ptr %bDescriptorType.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bDescriptorType.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %48)
  %cmp1.i = icmp eq i8 %48, 4
  br i1 %cmp1.i, label %while.body.i.find_next_descriptor.exit_crit_edge, label %if.end.i

while.body.i.find_next_descriptor.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_next_descriptor.exit

if.end.i:                                         ; preds = %while.body.i
  %49 = ptrtoint ptr %buffer.addr.04.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %buffer.addr.04.i, align 1
  %conv7.i = zext i8 %50 to i32
  %add.ptr.i = getelementptr i8, ptr %buffer.addr.04.i, i32 %conv7.i
  %sub.i = sub nsw i32 %size.addr.03.i, %conv7.i
  %inc.i = add i32 %n.05.i, 1
  %cmp.i496 = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i496, label %if.end.i.while.body.i_crit_edge, label %if.end.i.find_next_descriptor.exit_crit_edge

if.end.i.find_next_descriptor.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_next_descriptor.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

find_next_descriptor.exit:                        ; preds = %if.end.i.find_next_descriptor.exit_crit_edge, %while.body.i.find_next_descriptor.exit_crit_edge
  %buffer.addr.0.lcssa.i = phi ptr [ %buffer.addr.04.i, %while.body.i.find_next_descriptor.exit_crit_edge ], [ %add.ptr.i, %if.end.i.find_next_descriptor.exit_crit_edge ]
  %n.0.lcssa.i = phi i32 [ %n.05.i, %while.body.i.find_next_descriptor.exit_crit_edge ], [ %inc.i, %if.end.i.find_next_descriptor.exit_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %buffer.addr.0.lcssa.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast
  %extralen = getelementptr inbounds %struct.usb_host_config, ptr %config, i32 0, i32 6
  %51 = ptrtoint ptr %extralen to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub.ptr.sub.i, ptr %extralen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0.lcssa.i)
  %cmp262 = icmp sgt i32 %n.0.lcssa.i, 0
  br i1 %cmp262, label %do.body265, label %find_next_descriptor.exit.if.end275_crit_edge

find_next_descriptor.exit.if.end275_crit_edge:    ; preds = %find_next_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end275

do.body265:                                       ; preds = %find_next_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_parse_configuration.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_parse_configuration, %if.then270)) #8
          to label %if.end275 [label %if.then270], !srcloc !234

if.then270:                                       ; preds = %do.body265
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n.0.lcssa.i)
  %cmp.i497 = icmp eq i32 %n.0.lcssa.i, 1
  %cond.i498 = select i1 %cmp.i497, ptr @.str.80, ptr @.str.81
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_parse_configuration.__UNIQUE_ID_ddebug242, ptr noundef %dev1, ptr noundef nonnull @.str.75, i32 noundef %n.0.lcssa.i, ptr noundef nonnull %cond.i498, ptr noundef nonnull @.str.76) #8
  br label %if.end275

if.end275:                                        ; preds = %if.then270, %do.body265, %find_next_descriptor.exit.if.end275_crit_edge, %find_next_descriptor.exit.thread
  %sub.ptr.sub.i513 = phi i32 [ 0, %find_next_descriptor.exit.thread ], [ %sub.ptr.sub.i, %if.then270 ], [ %sub.ptr.sub.i, %find_next_descriptor.exit.if.end275_crit_edge ], [ %sub.ptr.sub.i, %do.body265 ]
  %sub277 = sub i32 %sub.ptr.sub, %sub.ptr.sub.i513
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub277)
  %cmp278543 = icmp sgt i32 %sub277, 0
  br i1 %cmp278543, label %while.body.preheader, label %if.end275.for.cond288.preheader_crit_edge

if.end275.for.cond288.preheader_crit_edge:        ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond288.preheader

while.body.preheader:                             ; preds = %if.end275
  %add.ptr276 = getelementptr i8, ptr %add.ptr, i32 %sub.ptr.sub.i513
  br label %while.body

for.cond288.preheader:                            ; preds = %if.end285.for.cond288.preheader_crit_edge, %if.end275.for.cond288.preheader_crit_edge
  br i1 %cmp210537, label %for.cond288.preheader.for.body291_crit_edge, label %for.cond288.preheader.cleanup329_crit_edge

for.cond288.preheader.cleanup329_crit_edge:       ; preds = %for.cond288.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup329

for.cond288.preheader.for.body291_crit_edge:      ; preds = %for.cond288.preheader
  br label %for.body291

while.body:                                       ; preds = %if.end285.while.body_crit_edge, %while.body.preheader
  %buffer.addr.0545 = phi ptr [ %add.ptr286, %if.end285.while.body_crit_edge ], [ %add.ptr276, %while.body.preheader ]
  %size.addr.0544 = phi i32 [ %sub287, %if.end285.while.body_crit_edge ], [ %sub277, %while.body.preheader ]
  %call281 = call fastcc i32 @usb_parse_interface(ptr noundef %dev1, i32 noundef %conv26, ptr noundef %config, ptr noundef %buffer.addr.0545, i32 noundef %size.addr.0544, ptr noundef nonnull %inums, ptr noundef nonnull %nalts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call281)
  %cmp282 = icmp slt i32 %call281, 0
  br i1 %cmp282, label %while.body.cleanup329_crit_edge, label %if.end285

while.body.cleanup329_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup329

if.end285:                                        ; preds = %while.body
  %add.ptr286 = getelementptr i8, ptr %buffer.addr.0545, i32 %call281
  %sub287 = sub nsw i32 %size.addr.0544, %call281
  %cmp278 = icmp sgt i32 %sub287, 0
  br i1 %cmp278, label %if.end285.while.body_crit_edge, label %if.end285.for.cond288.preheader_crit_edge

if.end285.for.cond288.preheader_crit_edge:        ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond288.preheader

if.end285.while.body_crit_edge:                   ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

for.body291:                                      ; preds = %for.inc326.for.body291_crit_edge, %for.cond288.preheader.for.body291_crit_edge
  %i.3552 = phi i32 [ %inc327, %for.inc326.for.body291_crit_edge ], [ 0, %for.cond288.preheader.for.body291_crit_edge ]
  %arrayidx293 = getelementptr %struct.usb_host_config, ptr %config, i32 0, i32 4, i32 %i.3552
  %52 = ptrtoint ptr %arrayidx293 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx293, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp295548.not = icmp eq i32 %55, 0
  br i1 %cmp295548.not, label %for.body291.for.inc326_crit_edge, label %for.cond298.preheader.lr.ph

for.body291.for.inc326_crit_edge:                 ; preds = %for.body291
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc326

for.cond298.preheader.lr.ph:                      ; preds = %for.body291
  %arrayidx320 = getelementptr [32 x i8], ptr %inums, i32 0, i32 %i.3552
  br label %for.cond298.preheader

for.cond298.preheader:                            ; preds = %for.inc323.for.cond298.preheader_crit_edge, %for.cond298.preheader.lr.ph
  %56 = phi i32 [ %55, %for.cond298.preheader.lr.ph ], [ %62, %for.inc323.for.cond298.preheader_crit_edge ]
  %j.2549 = phi i32 [ 0, %for.cond298.preheader.lr.ph ], [ %inc324, %for.inc323.for.cond298.preheader_crit_edge ]
  br label %for.body302

for.cond298:                                      ; preds = %for.body302
  %inc311 = add nuw i32 %storemerge547, 1
  %exitcond566.not = icmp eq i32 %inc311, %56
  br i1 %exitcond566.not, label %for.cond298.do.end319_crit_edge, label %for.cond298.for.body302_crit_edge

for.cond298.for.body302_crit_edge:                ; preds = %for.cond298
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body302

for.body302:                                      ; preds = %for.cond298.for.body302_crit_edge, %for.cond298.preheader
  %storemerge547 = phi i32 [ 0, %for.cond298.preheader ], [ %inc311, %for.cond298.for.body302_crit_edge ]
  %bAlternateSetting = getelementptr %struct.usb_interface_cache, ptr %53, i32 0, i32 2, i32 %storemerge547, i32 0, i32 3
  %57 = ptrtoint ptr %bAlternateSetting to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bAlternateSetting, align 1
  %conv305 = zext i8 %58 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %j.2549, i32 %conv305)
  %cmp306 = icmp eq i32 %j.2549, %conv305
  br i1 %cmp306, label %for.body302.for.inc323_crit_edge, label %for.cond298

for.body302.for.inc323_crit_edge:                 ; preds = %for.body302
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc323

for.cond298.do.end319_crit_edge:                  ; preds = %for.cond298
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %arrayidx320 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx320, align 1
  %conv321 = zext i8 %60 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.78, i32 noundef %conv26, i32 noundef %conv321, i32 noundef %j.2549) #11
  br label %for.inc323

for.inc323:                                       ; preds = %for.cond298.do.end319_crit_edge, %for.body302.for.inc323_crit_edge
  %inc324 = add nuw i32 %j.2549, 1
  %61 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %53, align 4
  %cmp295 = icmp ult i32 %inc324, %62
  br i1 %cmp295, label %for.inc323.for.cond298.preheader_crit_edge, label %for.inc323.for.inc326_crit_edge

for.inc323.for.inc326_crit_edge:                  ; preds = %for.inc323
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc326

for.inc323.for.cond298.preheader_crit_edge:       ; preds = %for.inc323
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond298.preheader

for.inc326:                                       ; preds = %for.inc323.for.inc326_crit_edge, %for.body291.for.inc326_crit_edge
  %inc327 = add nuw nsw i32 %i.3552, 1
  %exitcond567.not = icmp eq i32 %inc327, %n.0525
  br i1 %exitcond567.not, label %for.inc326.cleanup329_crit_edge, label %for.inc326.for.body291_crit_edge

for.inc326.for.body291_crit_edge:                 ; preds = %for.inc326
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body291

for.inc326.cleanup329_crit_edge:                  ; preds = %for.inc326
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup329

cleanup329:                                       ; preds = %for.inc326.cleanup329_crit_edge, %while.body.cleanup329_crit_edge, %for.cond288.preheader.cleanup329_crit_edge, %if.end8.i.i.cleanup329_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %for.cond288.preheader.cleanup329_crit_edge ], [ 0, %for.inc326.cleanup329_crit_edge ], [ %call281, %while.body.cleanup329_crit_edge ], [ -12, %if.end8.i.i.cleanup329_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nalts) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %inums) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_release_bos_descriptor(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bos = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %bos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bos, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %3) #8
  %4 = ptrtoint ptr %bos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bos, align 4
  tail call void @kfree(ptr noundef %5) #8
  %6 = ptrtoint ptr %bos to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %bos, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_get_bos_descriptor(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @usb_get_descriptor(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i32 noundef 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call2)
  %cmp = icmp slt i32 %call2, 5
  br i1 %cmp, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %call7.i.i, align 8
  %conv = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %2)
  %cmp3 = icmp ult i8 %2, 5
  br i1 %cmp3, label %lor.lhs.false.do.end_crit_edge, label %if.end10

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp6 = icmp sgt i32 %call2, -1
  %spec.store.select = select i1 %cmp6, i32 -42, i32 %call2
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %wTotalLength = getelementptr inbounds %struct.usb_bos_descriptor, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %wTotalLength to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %wTotalLength, align 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv13 = zext i16 %5 to i32
  %bNumDeviceCaps = getelementptr inbounds %struct.usb_bos_descriptor, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %bNumDeviceCaps to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bNumDeviceCaps, align 4
  %conv14 = zext i8 %7 to i32
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %conv13, i32 %conv)
  %cmp15 = icmp ult i32 %conv13, %conv
  br i1 %cmp15, label %if.end10.cleanup_crit_edge, label %if.end18

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i177 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 24) #13
  %bos20 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 18
  %9 = ptrtoint ptr %bos20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i177, ptr %bos20, align 4
  %tobool22.not = icmp eq ptr %call7.i.i177, null
  br i1 %tobool22.not, label %if.end18.cleanup_crit_edge, label %if.end8.i.i

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end18
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv13, i32 noundef 3520) #12
  %tobool26.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool26.not, label %if.end8.i.i.err_crit_edge, label %if.end28

if.end8.i.i.err_crit_edge:                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end28:                                         ; preds = %if.end8.i.i
  %10 = ptrtoint ptr %bos20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bos20, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9.i.i, ptr %11, align 4
  %call30 = tail call i32 @usb_get_descriptor(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 0, ptr noundef nonnull %call9.i.i, i32 noundef %conv13) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call30, i32 %conv13)
  %cmp31 = icmp slt i32 %call30, %conv13
  br i1 %cmp31, label %do.end36, label %if.end41

do.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call30)
  %cmp37 = icmp sgt i32 %call30, -1
  %spec.store.select114 = select i1 %cmp37, i32 -42, i32 %call30
  br label %err

if.end41:                                         ; preds = %if.end28
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %conv
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp42187.not = icmp eq i8 %7, 0
  br i1 %cmp42187.not, label %if.end41.for.end_crit_edge, label %for.body.preheader

if.end41.for.end_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %if.end41
  %sub = sub nsw i32 %conv13, %conv
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0191 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %total_len.0190 = phi i32 [ %total_len.1, %for.inc.for.body_crit_edge ], [ %sub, %for.body.preheader ]
  %buffer.0188 = phi ptr [ %buffer.1, %for.inc.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %total_len.0190)
  %cmp44 = icmp ult i32 %total_len.0190, 3
  br i1 %cmp44, label %for.body.for.end.sink.split_crit_edge, label %lor.lhs.false46

for.body.for.end.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.sink.split

lor.lhs.false46:                                  ; preds = %for.body
  %13 = ptrtoint ptr %buffer.0188 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %buffer.0188, align 1
  %conv48 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %total_len.0190, i32 %conv48)
  %cmp49 = icmp slt i32 %total_len.0190, %conv48
  br i1 %cmp49, label %lor.lhs.false46.for.end.sink.split_crit_edge, label %if.end56

lor.lhs.false46.for.end.sink.split_crit_edge:     ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.sink.split

if.end56:                                         ; preds = %lor.lhs.false46
  %bDevCapabilityType = getelementptr inbounds %struct.usb_dev_cap_header, ptr %buffer.0188, i32 0, i32 2
  %15 = ptrtoint ptr %bDevCapabilityType to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bDevCapabilityType, align 1
  %idxprom = zext i8 %16 to i32
  %arrayidx = getelementptr [256 x i8], ptr @bos_desc_len, i32 0, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool60.not = icmp ne i8 %18, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %18)
  %cmp64 = icmp ult i8 %14, %18
  %or.cond = select i1 %tobool60.not, i1 %cmp64, i1 false
  br i1 %or.cond, label %if.end56.for.end.sink.split_crit_edge, label %if.end71

if.end56.for.end.sink.split_crit_edge:            ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.sink.split

if.end71:                                         ; preds = %if.end56
  %bDescriptorType = getelementptr inbounds %struct.usb_dev_cap_header, ptr %buffer.0188, i32 0, i32 1
  %19 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bDescriptorType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %20)
  %cmp73.not = icmp eq i8 %20, 16
  br i1 %cmp73.not, label %if.end79, label %do.end78

do.end78:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.31) #11
  br label %for.inc

if.end79:                                         ; preds = %if.end71
  %21 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.145)
  switch i8 %16, label %if.end79.sw.epilog_crit_edge [
    i8 11, label %sw.bb94
    i8 2, label %sw.bb
    i8 3, label %sw.bb82
    i8 10, label %sw.bb84
    i8 4, label %sw.bb92
  ]

if.end79.sw.epilog_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %bos20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bos20, align 4
  %ext_cap = getelementptr inbounds %struct.usb_host_bos, ptr %23, i32 0, i32 1
  br label %sw.epilog.sink.split

sw.bb82:                                          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %bos20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bos20, align 4
  %ss_cap = getelementptr inbounds %struct.usb_host_bos, ptr %25, i32 0, i32 2
  br label %sw.epilog.sink.split

sw.bb84:                                          ; preds = %if.end79
  %bmAttributes = getelementptr inbounds %struct.usb_ssp_cap_descriptor, ptr %buffer.0188, i32 0, i32 4
  %26 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %bmAttributes, align 1
  %28 = lshr i32 %27, 22
  %add = and i32 %28, 124
  %add85 = add nuw nsw i32 %add, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add85, i32 %conv48)
  %cmp86.not = icmp ugt i32 %add85, %conv48
  br i1 %cmp86.not, label %sw.bb84.sw.epilog_crit_edge, label %if.then88

sw.bb84.sw.epilog_crit_edge:                      ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then88:                                        ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %bos20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bos20, align 4
  %ssp_cap90 = getelementptr inbounds %struct.usb_host_bos, ptr %30, i32 0, i32 3
  br label %sw.epilog.sink.split

sw.bb92:                                          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %bos20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bos20, align 4
  %ss_id = getelementptr inbounds %struct.usb_host_bos, ptr %32, i32 0, i32 4
  br label %sw.epilog.sink.split

sw.bb94:                                          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %bos20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bos20, align 4
  %ptm_cap = getelementptr inbounds %struct.usb_host_bos, ptr %34, i32 0, i32 5
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb94, %sw.bb92, %if.then88, %sw.bb82, %sw.bb
  %ssp_cap90.sink = phi ptr [ %ssp_cap90, %if.then88 ], [ %ptm_cap, %sw.bb94 ], [ %ss_id, %sw.bb92 ], [ %ss_cap, %sw.bb82 ], [ %ext_cap, %sw.bb ]
  %35 = ptrtoint ptr %ssp_cap90.sink to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %buffer.0188, ptr %ssp_cap90.sink, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb84.sw.epilog_crit_edge, %if.end79.sw.epilog_crit_edge
  %sub96 = sub i32 %total_len.0190, %conv48
  %add.ptr97 = getelementptr i8, ptr %buffer.0188, i32 %conv48
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %do.end78
  %buffer.1 = phi ptr [ %buffer.0188, %do.end78 ], [ %add.ptr97, %sw.epilog ]
  %total_len.1 = phi i32 [ %total_len.0190, %do.end78 ], [ %sub96, %sw.epilog ]
  %inc = add nuw nsw i32 %i.0191, 1
  %exitcond.not = icmp eq i32 %inc, %conv14
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end.sink.split:                               ; preds = %if.end56.for.end.sink.split_crit_edge, %lor.lhs.false46.for.end.sink.split_crit_edge, %for.body.for.end.sink.split_crit_edge
  %conv67 = trunc i32 %i.0191 to i8
  %36 = ptrtoint ptr %bos20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bos20, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %bNumDeviceCaps70 = getelementptr inbounds %struct.usb_bos_descriptor, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %bNumDeviceCaps70 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv67, ptr %bNumDeviceCaps70, align 1
  br label %for.end

for.end:                                          ; preds = %for.end.sink.split, %for.inc.for.end_crit_edge, %if.end41.for.end_crit_edge
  %buffer.0186 = phi ptr [ %add.ptr, %if.end41.for.end_crit_edge ], [ %buffer.0188, %for.end.sink.split ], [ %buffer.1, %for.inc.for.end_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %buffer.0186 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call9.i.i to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv98 = trunc i32 %sub.ptr.sub to i16
  %41 = tail call i16 @llvm.bswap.i16(i16 %conv98)
  %42 = ptrtoint ptr %bos20 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bos20, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %wTotalLength101 = getelementptr inbounds %struct.usb_bos_descriptor, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %wTotalLength101 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 %41, ptr %wTotalLength101, align 1
  br label %cleanup

err:                                              ; preds = %do.end36, %if.end8.i.i.err_crit_edge
  %ret.0 = phi i32 [ %spec.store.select114, %do.end36 ], [ -12, %if.end8.i.i.err_crit_edge ]
  %47 = ptrtoint ptr %bos20 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bos20, align 4
  %tobool.not.i = icmp eq ptr %48, null
  br i1 %tobool.not.i, label %err.cleanup_crit_edge, label %if.then.i

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  tail call void @kfree(ptr noundef %50) #8
  %51 = ptrtoint ptr %bos20 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bos20, align 4
  tail call void @kfree(ptr noundef %52) #8
  %53 = ptrtoint ptr %bos20 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %bos20, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %err.cleanup_crit_edge, %for.end, %if.end18.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %do.end ], [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ -12, %if.end18.cleanup_crit_edge ], [ %ret.0, %err.cleanup_crit_edge ], [ %ret.0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb_parse_interface(ptr noundef %ddev, i32 noundef %cfgno, ptr nocapture noundef readonly %config, ptr noundef %buffer, i32 noundef %size, ptr nocapture noundef readonly %inums, ptr nocapture noundef readonly %nalts) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buffer, align 1
  %conv = zext i8 %1 to i32
  %add.ptr = getelementptr i8, ptr %buffer, i32 %conv
  %sub = sub i32 %size, %conv
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %1)
  %cmp = icmp ult i8 %1, 9
  br i1 %cmp, label %entry.skip_to_next_interface_descriptor_crit_edge, label %if.end

entry.skip_to_next_interface_descriptor_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_to_next_interface_descriptor

if.end:                                           ; preds = %entry
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %buffer, i32 0, i32 2
  %2 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bInterfaceNumber, align 1
  %conv7 = zext i8 %3 to i32
  %bNumInterfaces = getelementptr inbounds %struct.usb_config_descriptor, ptr %config, i32 0, i32 3
  %4 = ptrtoint ptr %bNumInterfaces to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bNumInterfaces, align 4
  %conv8 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp9237.not = icmp eq i8 %5, 0
  br i1 %cmp9237.not, label %if.end.skip_to_next_interface_descriptor_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.skip_to_next_interface_descriptor_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_to_next_interface_descriptor

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0238 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %inums, i32 %i.0238
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %3)
  %cmp12 = icmp eq i8 %7, %3
  br i1 %cmp12, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0238, 1
  %exitcond.not = icmp eq i32 %inc, %conv8
  br i1 %exitcond.not, label %for.inc.skip_to_next_interface_descriptor_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.skip_to_next_interface_descriptor_crit_edge: ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_to_next_interface_descriptor

for.end:                                          ; preds = %for.body
  %arrayidx15 = getelementptr %struct.usb_host_config, ptr %config, i32 0, i32 4, i32 %i.0238
  %8 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx15, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.end.skip_to_next_interface_descriptor_crit_edge, label %lor.lhs.false

for.end.skip_to_next_interface_descriptor_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_to_next_interface_descriptor

lor.lhs.false:                                    ; preds = %for.end
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %arrayidx17 = getelementptr i8, ptr %nalts, i32 %i.0238
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv18)
  %cmp19.not = icmp ult i32 %11, %conv18
  br i1 %cmp19.not, label %if.end22, label %lor.lhs.false.skip_to_next_interface_descriptor_crit_edge

lor.lhs.false.skip_to_next_interface_descriptor_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_to_next_interface_descriptor

if.end22:                                         ; preds = %lor.lhs.false
  %bAlternateSetting = getelementptr inbounds %struct.usb_interface_descriptor, ptr %buffer, i32 0, i32 3
  %14 = ptrtoint ptr %bAlternateSetting to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bAlternateSetting, align 1
  %conv23 = zext i8 %15 to i32
  %altsetting = getelementptr inbounds %struct.usb_interface_cache, ptr %9, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp27239.not = icmp eq i32 %11, 0
  br i1 %cmp27239.not, label %if.end22.for.end39_crit_edge, label %for.body29.preheader

if.end22.for.end39_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end39

for.body29.preheader:                             ; preds = %if.end22
  %16 = mul i32 %11, 28
  %17 = add i32 %16, 8
  %uglygep = getelementptr i8, ptr %9, i32 %17
  br label %for.body29

for.body29:                                       ; preds = %for.inc37.for.body29_crit_edge, %for.body29.preheader
  %i.1241 = phi i32 [ %inc38, %for.inc37.for.body29_crit_edge ], [ 0, %for.body29.preheader ]
  %alt.0240 = phi ptr [ %incdec.ptr, %for.inc37.for.body29_crit_edge ], [ %altsetting, %for.body29.preheader ]
  %bAlternateSetting31 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %alt.0240, i32 0, i32 3
  %18 = ptrtoint ptr %bAlternateSetting31 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bAlternateSetting31, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %15)
  %cmp33 = icmp eq i8 %19, %15
  br i1 %cmp33, label %do.end, label %for.inc37

do.end:                                           ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %ddev, ptr noundef nonnull @.str.82, i32 noundef %cfgno, i32 noundef %conv7, i32 noundef %conv23) #11
  br label %skip_to_next_interface_descriptor

for.inc37:                                        ; preds = %for.body29
  %inc38 = add nuw i32 %i.1241, 1
  %incdec.ptr = getelementptr %struct.usb_host_interface, ptr %alt.0240, i32 1
  %exitcond251.not = icmp eq i32 %inc38, %11
  br i1 %exitcond251.not, label %for.inc37.for.end39_crit_edge, label %for.inc37.for.body29_crit_edge

for.inc37.for.body29_crit_edge:                   ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body29

for.inc37.for.end39_crit_edge:                    ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end39

for.end39:                                        ; preds = %for.inc37.for.end39_crit_edge, %if.end22.for.end39_crit_edge
  %alt.0.lcssa = phi ptr [ %altsetting, %if.end22.for.end39_crit_edge ], [ %uglygep, %for.inc37.for.end39_crit_edge ]
  %inc41 = add i32 %11, 1
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %inc41, ptr %9, align 4
  %21 = call ptr @memcpy(ptr %alt.0.lcssa, ptr %buffer, i32 9)
  %extra = getelementptr inbounds %struct.usb_host_interface, ptr %alt.0.lcssa, i32 0, i32 2
  %22 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr, ptr %extra, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp2.i = icmp sgt i32 %sub, 0
  br i1 %cmp2.i, label %for.end39.while.body.i_crit_edge, label %find_next_descriptor.exit.thread

for.end39.while.body.i_crit_edge:                 ; preds = %for.end39
  br label %while.body.i

find_next_descriptor.exit.thread:                 ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #10
  %extralen224 = getelementptr inbounds %struct.usb_host_interface, ptr %alt.0.lcssa, i32 0, i32 1
  %23 = ptrtoint ptr %extralen224 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %extralen224, align 4
  br label %if.end56

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %for.end39.while.body.i_crit_edge
  %n.05.i = phi i32 [ %inc.i, %if.end.i.while.body.i_crit_edge ], [ 0, %for.end39.while.body.i_crit_edge ]
  %buffer.addr.04.i = phi ptr [ %add.ptr.i, %if.end.i.while.body.i_crit_edge ], [ %add.ptr, %for.end39.while.body.i_crit_edge ]
  %size.addr.03.i = phi i32 [ %sub.i, %if.end.i.while.body.i_crit_edge ], [ %sub, %for.end39.while.body.i_crit_edge ]
  %bDescriptorType.i = getelementptr inbounds %struct.usb_descriptor_header, ptr %buffer.addr.04.i, i32 0, i32 1
  %24 = ptrtoint ptr %bDescriptorType.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bDescriptorType.i, align 1
  %26 = and i8 %25, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %26)
  %27 = icmp eq i8 %26, 4
  br i1 %27, label %while.body.i.find_next_descriptor.exit_crit_edge, label %if.end.i

while.body.i.find_next_descriptor.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_next_descriptor.exit

if.end.i:                                         ; preds = %while.body.i
  %28 = ptrtoint ptr %buffer.addr.04.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %buffer.addr.04.i, align 1
  %conv7.i = zext i8 %29 to i32
  %add.ptr.i = getelementptr i8, ptr %buffer.addr.04.i, i32 %conv7.i
  %sub.i = sub nsw i32 %size.addr.03.i, %conv7.i
  %inc.i = add i32 %n.05.i, 1
  %cmp.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.find_next_descriptor.exit_crit_edge

if.end.i.find_next_descriptor.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_next_descriptor.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

find_next_descriptor.exit:                        ; preds = %if.end.i.find_next_descriptor.exit_crit_edge, %while.body.i.find_next_descriptor.exit_crit_edge
  %buffer.addr.0.lcssa.i = phi ptr [ %buffer.addr.04.i, %while.body.i.find_next_descriptor.exit_crit_edge ], [ %add.ptr.i, %if.end.i.find_next_descriptor.exit_crit_edge ]
  %n.0.lcssa.i = phi i32 [ %n.05.i, %while.body.i.find_next_descriptor.exit_crit_edge ], [ %inc.i, %if.end.i.find_next_descriptor.exit_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %buffer.addr.0.lcssa.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %extralen = getelementptr inbounds %struct.usb_host_interface, ptr %alt.0.lcssa, i32 0, i32 1
  %30 = ptrtoint ptr %extralen to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub.ptr.sub.i, ptr %extralen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0.lcssa.i)
  %cmp43 = icmp sgt i32 %n.0.lcssa.i, 0
  br i1 %cmp43, label %do.body46, label %find_next_descriptor.exit.if.end56_crit_edge

find_next_descriptor.exit.if.end56_crit_edge:     ; preds = %find_next_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

do.body46:                                        ; preds = %find_next_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_parse_interface.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_parse_interface, %if.then51)) #8
          to label %if.end56 [label %if.then51], !srcloc !234

if.then51:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n.0.lcssa.i)
  %cmp.i189 = icmp eq i32 %n.0.lcssa.i, 1
  %cond.i = select i1 %cmp.i189, ptr @.str.80, ptr @.str.81
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_parse_interface.__UNIQUE_ID_ddebug241, ptr noundef %ddev, ptr noundef nonnull @.str.75, i32 noundef %n.0.lcssa.i, ptr noundef nonnull %cond.i, ptr noundef nonnull @.str.84) #8
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %do.body46, %find_next_descriptor.exit.if.end56_crit_edge, %find_next_descriptor.exit.thread
  %sub.ptr.sub.i226 = phi i32 [ 0, %find_next_descriptor.exit.thread ], [ %sub.ptr.sub.i, %if.then51 ], [ %sub.ptr.sub.i, %find_next_descriptor.exit.if.end56_crit_edge ], [ %sub.ptr.sub.i, %do.body46 ]
  %add.ptr57 = getelementptr i8, ptr %add.ptr, i32 %sub.ptr.sub.i226
  %sub58 = sub i32 %sub, %sub.ptr.sub.i226
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %alt.0.lcssa, i32 0, i32 4
  %31 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bNumEndpoints, align 4
  %conv60 = zext i8 %32 to i32
  store i8 0, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %32)
  %cmp63 = icmp ugt i8 %32, 30
  br i1 %cmp63, label %if.end69.thread, label %if.end69

if.end69.thread:                                  ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %ddev, ptr noundef nonnull @.str.86, i32 noundef %cfgno, i32 noundef %conv7, i32 noundef %conv23, i32 noundef %conv60, i32 noundef 30) #11
  br label %if.end8.i.i

if.end69:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp70.not = icmp eq i8 %32, 0
  br i1 %cmp70.not, label %if.end69.if.end78_crit_edge, label %if.end69.if.end8.i.i_crit_edge

if.end69.if.end8.i.i_crit_edge:                   ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

if.end69.if.end78_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.end8.i.i:                                      ; preds = %if.end69.if.end8.i.i_crit_edge, %if.end69.thread
  %num_ep.0230 = phi i32 [ 30, %if.end69.thread ], [ %conv60, %if.end69.if.end8.i.i_crit_edge ]
  %mul = mul nuw nsw i32 %num_ep.0230, 56
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #12
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %alt.0.lcssa, i32 0, i32 3
  %33 = ptrtoint ptr %endpoint to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call9.i.i, ptr %endpoint, align 4
  %tobool75.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool75.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end8.i.i.if.end78_crit_edge

if.end8.i.i.if.end78_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end78:                                         ; preds = %if.end8.i.i.if.end78_crit_edge, %if.end69.if.end78_crit_edge
  %num_ep.0231 = phi i32 [ %num_ep.0230, %if.end8.i.i.if.end78_crit_edge ], [ 0, %if.end69.if.end78_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub58)
  %cmp79242 = icmp sgt i32 %sub58, 0
  br i1 %cmp79242, label %if.end78.while.body_crit_edge, label %if.end78.while.end_crit_edge

if.end78.while.end_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end78.while.body_crit_edge:                    ; preds = %if.end78
  br label %while.body

while.body:                                       ; preds = %if.end90.while.body_crit_edge, %if.end78.while.body_crit_edge
  %buffer.addr.0245 = phi ptr [ %add.ptr92, %if.end90.while.body_crit_edge ], [ %add.ptr57, %if.end78.while.body_crit_edge ]
  %size.addr.0244 = phi i32 [ %sub93, %if.end90.while.body_crit_edge ], [ %sub58, %if.end78.while.body_crit_edge ]
  %n.0243 = phi i32 [ %inc91, %if.end90.while.body_crit_edge ], [ 0, %if.end78.while.body_crit_edge ]
  %bDescriptorType = getelementptr inbounds %struct.usb_descriptor_header, ptr %buffer.addr.0245, i32 0, i32 1
  %34 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bDescriptorType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %35)
  %cmp82 = icmp eq i8 %35, 4
  br i1 %cmp82, label %while.body.while.end_crit_edge, label %if.end85

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end85:                                         ; preds = %while.body
  %call86 = tail call fastcc i32 @usb_parse_endpoint(ptr noundef %ddev, i32 noundef %cfgno, ptr noundef %config, i32 noundef %conv7, i32 noundef %conv23, ptr noundef %alt.0.lcssa, i32 noundef %num_ep.0231, ptr noundef %buffer.addr.0245, i32 noundef %size.addr.0244)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %if.end85.cleanup_crit_edge, label %if.end90

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end90:                                         ; preds = %if.end85
  %inc91 = add i32 %n.0243, 1
  %add.ptr92 = getelementptr i8, ptr %buffer.addr.0245, i32 %call86
  %sub93 = sub nsw i32 %size.addr.0244, %call86
  %cmp79 = icmp sgt i32 %sub93, 0
  br i1 %cmp79, label %if.end90.while.body_crit_edge, label %if.end90.while.end_crit_edge

if.end90.while.end_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end90.while.body_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end90.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end78.while.end_crit_edge
  %n.0.lcssa = phi i32 [ 0, %if.end78.while.end_crit_edge ], [ %n.0243, %while.body.while.end_crit_edge ], [ %inc91, %if.end90.while.end_crit_edge ]
  %buffer.addr.0.lcssa = phi ptr [ %add.ptr57, %if.end78.while.end_crit_edge ], [ %buffer.addr.0245, %while.body.while.end_crit_edge ], [ %add.ptr92, %if.end90.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %n.0.lcssa, i32 %conv60)
  %cmp94.not = icmp eq i32 %n.0.lcssa, %conv60
  br i1 %cmp94.not, label %while.end.if.end101_crit_edge, label %do.end99

while.end.if.end101_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

do.end99:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n.0.lcssa)
  %cmp.i190 = icmp eq i32 %n.0.lcssa, 1
  %cond.i191 = select i1 %cmp.i190, ptr @.str.80, ptr @.str.81
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %ddev, ptr noundef nonnull @.str.89, i32 noundef %cfgno, i32 noundef %conv7, i32 noundef %conv23, i32 noundef %n.0.lcssa, ptr noundef nonnull %cond.i191, i32 noundef %conv60) #11
  br label %if.end101

if.end101:                                        ; preds = %do.end99, %while.end.if.end101_crit_edge
  %sub.ptr.lhs.cast = ptrtoint ptr %buffer.addr.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buffer to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup

skip_to_next_interface_descriptor:                ; preds = %do.end, %lor.lhs.false.skip_to_next_interface_descriptor_crit_edge, %for.end.skip_to_next_interface_descriptor_crit_edge, %for.inc.skip_to_next_interface_descriptor_crit_edge, %if.end.skip_to_next_interface_descriptor_crit_edge, %entry.skip_to_next_interface_descriptor_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp2.i192 = icmp sgt i32 %sub, 0
  br i1 %cmp2.i192, label %skip_to_next_interface_descriptor.while.body.i201_crit_edge, label %skip_to_next_interface_descriptor.find_next_descriptor.exit213_crit_edge

skip_to_next_interface_descriptor.find_next_descriptor.exit213_crit_edge: ; preds = %skip_to_next_interface_descriptor
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_next_descriptor.exit213

skip_to_next_interface_descriptor.while.body.i201_crit_edge: ; preds = %skip_to_next_interface_descriptor
  br label %while.body.i201

while.body.i201:                                  ; preds = %if.end.i207.while.body.i201_crit_edge, %skip_to_next_interface_descriptor.while.body.i201_crit_edge
  %buffer.addr.04.i194 = phi ptr [ %add.ptr.i203, %if.end.i207.while.body.i201_crit_edge ], [ %add.ptr, %skip_to_next_interface_descriptor.while.body.i201_crit_edge ]
  %size.addr.03.i195 = phi i32 [ %sub.i204, %if.end.i207.while.body.i201_crit_edge ], [ %sub, %skip_to_next_interface_descriptor.while.body.i201_crit_edge ]
  %bDescriptorType.i196 = getelementptr inbounds %struct.usb_descriptor_header, ptr %buffer.addr.04.i194, i32 0, i32 1
  %36 = ptrtoint ptr %bDescriptorType.i196 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bDescriptorType.i196, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %37)
  %cmp1.i198 = icmp eq i8 %37, 4
  br i1 %cmp1.i198, label %while.body.i201.find_next_descriptor.exit213_crit_edge, label %if.end.i207

while.body.i201.find_next_descriptor.exit213_crit_edge: ; preds = %while.body.i201
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_next_descriptor.exit213

if.end.i207:                                      ; preds = %while.body.i201
  %38 = ptrtoint ptr %buffer.addr.04.i194 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %buffer.addr.04.i194, align 1
  %conv7.i202 = zext i8 %39 to i32
  %add.ptr.i203 = getelementptr i8, ptr %buffer.addr.04.i194, i32 %conv7.i202
  %sub.i204 = sub nsw i32 %size.addr.03.i195, %conv7.i202
  %cmp.i206 = icmp sgt i32 %sub.i204, 0
  br i1 %cmp.i206, label %if.end.i207.while.body.i201_crit_edge, label %if.end.i207.find_next_descriptor.exit213_crit_edge

if.end.i207.find_next_descriptor.exit213_crit_edge: ; preds = %if.end.i207
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_next_descriptor.exit213

if.end.i207.while.body.i201_crit_edge:            ; preds = %if.end.i207
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i201

find_next_descriptor.exit213:                     ; preds = %if.end.i207.find_next_descriptor.exit213_crit_edge, %while.body.i201.find_next_descriptor.exit213_crit_edge, %skip_to_next_interface_descriptor.find_next_descriptor.exit213_crit_edge
  %buffer.addr.0.lcssa.i208 = phi ptr [ %add.ptr, %skip_to_next_interface_descriptor.find_next_descriptor.exit213_crit_edge ], [ %add.ptr.i203, %if.end.i207.find_next_descriptor.exit213_crit_edge ], [ %buffer.addr.04.i194, %while.body.i201.find_next_descriptor.exit213_crit_edge ]
  %sub.ptr.lhs.cast.i210 = ptrtoint ptr %buffer.addr.0.lcssa.i208 to i32
  %sub.ptr.rhs.cast.i211 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub.i212 = sub i32 %conv, %sub.ptr.rhs.cast.i211
  %add = add i32 %sub.ptr.sub.i212, %sub.ptr.lhs.cast.i210
  br label %cleanup

cleanup:                                          ; preds = %find_next_descriptor.exit213, %if.end101, %if.end85.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %find_next_descriptor.exit213 ], [ %sub.ptr.sub, %if.end101 ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ %call86, %if.end85.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb_parse_endpoint(ptr noundef %ddev, i32 noundef %cfgno, ptr nocapture noundef readonly %config, i32 noundef %inum, i32 noundef %asnum, ptr noundef %ifp, i32 noundef %num_ep, ptr noundef %buffer, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ddev, i32 -128
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buffer, align 1
  %conv = zext i8 %1 to i32
  %add.ptr2 = getelementptr i8, ptr %buffer, i32 %conv
  %sub = sub i32 %size, %conv
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1)
  %cmp = icmp ugt i8 %1, 8
  br i1 %cmp, label %entry.if.end16_crit_edge, label %if.else

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %1)
  %cmp10 = icmp ugt i8 %1, 6
  br i1 %cmp10, label %if.else.if.end16_crit_edge, label %do.end

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %ddev, ptr noundef nonnull @.str.91, i32 noundef %cfgno, i32 noundef %inum, i32 noundef %asnum, i32 noundef %conv) #11
  br label %skip_to_next_endpoint_or_interface_descriptor

if.end16:                                         ; preds = %if.else.if.end16_crit_edge, %entry.if.end16_crit_edge
  %storemerge = phi i32 [ 9, %entry.if.end16_crit_edge ], [ 7, %if.else.if.end16_crit_edge ]
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %buffer, i32 0, i32 2
  %2 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bEndpointAddress, align 1
  %4 = and i8 %3, 127
  %5 = add nsw i8 %4, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -15, i8 %5)
  %6 = icmp ult i8 %5, -15
  br i1 %6, label %do.end25, label %if.end28

do.end25:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %conv27 = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %ddev, ptr noundef nonnull @.str.94, i32 noundef %cfgno, i32 noundef %inum, i32 noundef %asnum, i32 noundef %conv27) #11
  br label %skip_to_next_endpoint_or_interface_descriptor

if.end28:                                         ; preds = %if.end16
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %ifp, i32 0, i32 4
  %7 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bNumEndpoints, align 4
  %conv29 = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv29, i32 %num_ep)
  %cmp30.not = icmp slt i32 %conv29, %num_ep
  br i1 %cmp30.not, label %if.end33, label %if.end28.skip_to_next_endpoint_or_interface_descriptor_crit_edge

if.end28.skip_to_next_endpoint_or_interface_descriptor_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_to_next_endpoint_or_interface_descriptor

if.end33:                                         ; preds = %if.end28
  %bNumInterfaces.i = getelementptr inbounds %struct.usb_config_descriptor, ptr %config, i32 0, i32 3
  %9 = ptrtoint ptr %bNumInterfaces.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bNumInterfaces.i, align 4
  %conv.i = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp57.not.i = icmp eq i8 %10, 0
  br i1 %cmp57.not.i, label %if.end33.if.end40_crit_edge, label %for.body.lr.ph.i

if.end33.if.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

for.body.lr.ph.i:                                 ; preds = %if.end33
  %bmAttributes.i18.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %buffer, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc28.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %cmp59.i = phi i1 [ true, %for.body.lr.ph.i ], [ %cmp.i, %for.inc28.i.for.body.i_crit_edge ]
  %i.058.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc29.i, %for.inc28.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.usb_host_config, ptr %config, i32 0, i32 4, i32 %i.058.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp353.not.i = icmp eq i32 %14, 0
  br i1 %cmp353.not.i, label %for.body.i.for.inc28.i_crit_edge, label %for.body.i.for.body5.i_crit_edge

for.body.i.for.body5.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body5.i

for.body.i.for.inc28.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc28.i

for.body5.i:                                      ; preds = %for.inc25.i.for.body5.i_crit_edge, %for.body.i.for.body5.i_crit_edge
  %j.054.i = phi i32 [ %inc26.i, %for.inc25.i.for.body5.i_crit_edge ], [ 0, %for.body.i.for.body5.i_crit_edge ]
  %arrayidx6.i = getelementptr %struct.usb_interface_cache, ptr %12, i32 0, i32 2, i32 %j.054.i
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx6.i, i32 0, i32 2
  %15 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv8.i = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8.i, i32 %inum)
  %cmp9.i = icmp eq i32 %conv8.i, %inum
  br i1 %cmp9.i, label %land.lhs.true.i, label %for.body5.i.if.end.i_crit_edge

for.body5.i.if.end.i_crit_edge:                   ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body5.i
  %bAlternateSetting.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx6.i, i32 0, i32 3
  %17 = ptrtoint ptr %bAlternateSetting.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bAlternateSetting.i, align 1
  %conv12.i = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv12.i, i32 %asnum)
  %cmp13.not.i = icmp eq i32 %conv12.i, %asnum
  br i1 %cmp13.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.for.inc25.i_crit_edge

land.lhs.true.i.for.inc25.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc25.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body5.i.if.end.i_crit_edge
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx6.i, i32 0, i32 4
  %19 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bNumEndpoints.i, align 4
  %conv17.i = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp1851.not.i = icmp eq i8 %20, 0
  br i1 %cmp1851.not.i, label %if.end.i.for.inc25.i_crit_edge, label %for.body20.lr.ph.i

if.end.i.for.inc25.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc25.i

for.body20.lr.ph.i:                               ; preds = %if.end.i
  %endpoint.i = getelementptr %struct.usb_interface_cache, ptr %12, i32 0, i32 2, i32 %j.054.i, i32 3
  %21 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %endpoint.i, align 4
  br label %for.body20.i

for.body20.i:                                     ; preds = %for.inc.i.for.body20.i_crit_edge, %for.body20.lr.ph.i
  %k.052.i = phi i32 [ 0, %for.body20.lr.ph.i ], [ %inc.i, %for.inc.i.for.body20.i_crit_edge ]
  %arrayidx21.i = getelementptr %struct.usb_host_endpoint, ptr %22, i32 %k.052.i
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx21.i, i32 0, i32 2
  %23 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %3)
  %cmp.i.i = icmp eq i8 %24, %3
  br i1 %cmp.i.i, label %for.body20.i.config_endpoint_is_duplicate.exit_crit_edge, label %if.end.i.i

for.body20.i.config_endpoint_is_duplicate.exit_crit_edge: ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %config_endpoint_is_duplicate.exit

if.end.i.i:                                       ; preds = %for.body20.i
  %bmAttributes.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx21.i, i32 0, i32 3
  %25 = ptrtoint ptr %bmAttributes.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bmAttributes.i.i.i, align 1
  %27 = and i8 %26, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp.i.not.i.i = icmp eq i8 %27, 0
  br i1 %cmp.i.not.i.i, label %if.end.i.i.if.then6.i.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then6.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %28 = ptrtoint ptr %bmAttributes.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bmAttributes.i18.i.i, align 1
  %30 = and i8 %29, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp.i19.not.i.i = icmp eq i8 %30, 0
  br i1 %cmp.i19.not.i.i, label %lor.lhs.false.i.i.if.then6.i.i_crit_edge, label %lor.lhs.false.i.i.for.inc.i_crit_edge

lor.lhs.false.i.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

lor.lhs.false.i.i.if.then6.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.i.i

if.then6.i.i:                                     ; preds = %lor.lhs.false.i.i.if.then6.i.i_crit_edge, %if.end.i.i.if.then6.i.i_crit_edge
  %31 = xor i8 %24, %3
  %32 = and i8 %31, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp9.i.i = icmp eq i8 %32, 0
  br i1 %cmp9.i.i, label %if.then6.i.i.config_endpoint_is_duplicate.exit_crit_edge, label %if.then6.i.i.for.inc.i_crit_edge

if.then6.i.i.for.inc.i_crit_edge:                 ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then6.i.i.config_endpoint_is_duplicate.exit_crit_edge: ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %config_endpoint_is_duplicate.exit

for.inc.i:                                        ; preds = %if.then6.i.i.for.inc.i_crit_edge, %lor.lhs.false.i.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %k.052.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv17.i
  br i1 %exitcond.not.i, label %for.inc.i.for.inc25.i_crit_edge, label %for.inc.i.for.body20.i_crit_edge

for.inc.i.for.body20.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body20.i

for.inc.i.for.inc25.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc25.i

for.inc25.i:                                      ; preds = %for.inc.i.for.inc25.i_crit_edge, %if.end.i.for.inc25.i_crit_edge, %land.lhs.true.i.for.inc25.i_crit_edge
  %inc26.i = add nuw i32 %j.054.i, 1
  %exitcond62.not.i = icmp eq i32 %inc26.i, %14
  br i1 %exitcond62.not.i, label %for.inc25.i.for.inc28.i_crit_edge, label %for.inc25.i.for.body5.i_crit_edge

for.inc25.i.for.body5.i_crit_edge:                ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body5.i

for.inc25.i.for.inc28.i_crit_edge:                ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc28.i

for.inc28.i:                                      ; preds = %for.inc25.i.for.inc28.i_crit_edge, %for.body.i.for.inc28.i_crit_edge
  %inc29.i = add nuw nsw i32 %i.058.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc29.i, i32 %conv.i)
  %cmp.i = icmp ult i32 %inc29.i, %conv.i
  %exitcond63.not.i = icmp eq i32 %inc29.i, %conv.i
  br i1 %exitcond63.not.i, label %for.inc28.i.config_endpoint_is_duplicate.exit_crit_edge, label %for.inc28.i.for.body.i_crit_edge

for.inc28.i.for.body.i_crit_edge:                 ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc28.i.config_endpoint_is_duplicate.exit_crit_edge: ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %config_endpoint_is_duplicate.exit

config_endpoint_is_duplicate.exit:                ; preds = %for.inc28.i.config_endpoint_is_duplicate.exit_crit_edge, %if.then6.i.i.config_endpoint_is_duplicate.exit_crit_edge, %for.body20.i.config_endpoint_is_duplicate.exit_crit_edge
  %cmp50.i = phi i1 [ %cmp59.i, %if.then6.i.i.config_endpoint_is_duplicate.exit_crit_edge ], [ %cmp59.i, %for.body20.i.config_endpoint_is_duplicate.exit_crit_edge ], [ %cmp.i, %for.inc28.i.config_endpoint_is_duplicate.exit_crit_edge ]
  br i1 %cmp50.i, label %do.end37, label %config_endpoint_is_duplicate.exit.if.end40_crit_edge

config_endpoint_is_duplicate.exit.if.end40_crit_edge: ; preds = %config_endpoint_is_duplicate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

do.end37:                                         ; preds = %config_endpoint_is_duplicate.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv39 = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %ddev, ptr noundef nonnull @.str.97, i32 noundef %cfgno, i32 noundef %inum, i32 noundef %asnum, i32 noundef %conv39) #11
  br label %skip_to_next_endpoint_or_interface_descriptor

if.end40:                                         ; preds = %config_endpoint_is_duplicate.exit.if.end40_crit_edge, %if.end33.if.end40_crit_edge
  %quirks = getelementptr i8, ptr %ddev, i32 1128
  %33 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %quirks, align 8
  %and41 = and i32 %34, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool.not = icmp eq i32 %and41, 0
  br i1 %tobool.not, label %if.end40.if.end51_crit_edge, label %if.then42

if.end40.if.end51_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then42:                                        ; preds = %if.end40
  %call43 = tail call zeroext i1 @usb_endpoint_is_ignored(ptr noundef %add.ptr, ptr noundef %ifp, ptr noundef %buffer) #8
  br i1 %call43, label %do.end47, label %if.then42.if.end51_crit_edge

if.then42.if.end51_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

do.end47:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bEndpointAddress, align 1
  %conv49 = zext i8 %36 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %ddev, ptr noundef nonnull @.str.100, i32 noundef %cfgno, i32 noundef %inum, i32 noundef %asnum, i32 noundef %conv49) #11
  br label %skip_to_next_endpoint_or_interface_descriptor

if.end51:                                         ; preds = %if.then42.if.end51_crit_edge, %if.end40.if.end51_crit_edge
  %endpoint52 = getelementptr inbounds %struct.usb_host_interface, ptr %ifp, i32 0, i32 3
  %37 = ptrtoint ptr %endpoint52 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %endpoint52, align 4
  %39 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bNumEndpoints, align 4
  %idxprom = zext i8 %40 to i32
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %38, i32 %idxprom
  %inc = add i8 %40, 1
  store i8 %inc, ptr %bNumEndpoints, align 4
  %41 = call ptr @memcpy(ptr %arrayidx, ptr %buffer, i32 %storemerge)
  %urb_list = getelementptr %struct.usb_host_endpoint, ptr %38, i32 %idxprom, i32 4
  %42 = ptrtoint ptr %urb_list to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %urb_list, ptr %urb_list, align 4
  %prev.i = getelementptr %struct.usb_host_endpoint, ptr %38, i32 %idxprom, i32 4, i32 1
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %urb_list, ptr %prev.i, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %buffer, i32 0, i32 3
  %44 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bmAttributes.i, align 1
  %trunc = trunc i8 %45 to i2
  %46 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.146)
  switch i2 %trunc, label %if.end51.if.end116_crit_edge [
    i2 -1, label %if.then60
    i2 1, label %if.then110
  ]

if.end51.if.end116_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

if.then60:                                        ; preds = %if.end51
  %speed = getelementptr i8, ptr %ddev, i32 -100
  %47 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %speed, align 4
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %48, label %if.then60.if.end116_crit_edge [
    i32 6, label %if.then60.sw.bb_crit_edge
    i32 5, label %if.then60.sw.bb_crit_edge497
    i32 3, label %if.then60.sw.bb_crit_edge498
  ]

if.then60.sw.bb_crit_edge498:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.then60.sw.bb_crit_edge497:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.then60.sw.bb_crit_edge:                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.then60.if.end116_crit_edge:                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

sw.bb:                                            ; preds = %if.then60.sw.bb_crit_edge, %if.then60.sw.bb_crit_edge497, %if.then60.sw.bb_crit_edge498
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %buffer, i32 0, i32 5
  %50 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bInterval, align 1
  %conv61 = zext i8 %51 to i32
  %mul = shl nuw nsw i32 %conv61, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i = icmp eq i8 %51, 0
  %52 = tail call i32 @llvm.ctlz.i32(i32 %mul, i1 true) #8, !range !235
  %sub.i = sub nuw nsw i32 32, %52
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp63 = icmp eq i32 %cond.i, 0
  %spec.store.select = select i1 %cmp63, i32 7, i32 %cond.i
  %53 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %quirks, align 8
  %and68 = and i32 %54, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %sw.bb.if.end84_crit_edge, label %if.then70

sw.bb.if.end84_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then70:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %55 = tail call i32 @llvm.ctlz.i32(i32 %conv61, i1 true) #8, !range !235
  %sub.i404.op = sub nuw nsw i32 35, %55
  %56 = tail call i32 @llvm.umin.i32(i32 %sub.i404.op, i32 16)
  %57 = select i1 %tobool.not.i, i32 3, i32 %56
  br label %if.end84

if.end84:                                         ; preds = %if.then70, %sw.bb.if.end84_crit_edge
  %n.0 = phi i32 [ %spec.store.select, %sw.bb.if.end84_crit_edge ], [ %57, %if.then70 ]
  %i.0 = phi i32 [ 1, %sw.bb.if.end84_crit_edge ], [ %57, %if.then70 ]
  %j.0 = phi i32 [ 16, %sw.bb.if.end84_crit_edge ], [ %57, %if.then70 ]
  %and86 = and i32 %54, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end84.if.end116_crit_edge, label %if.then88

if.end84.if.end116_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

if.then88:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  %58 = tail call i32 @llvm.ctlz.i32(i32 %conv61, i1 true) #8, !range !235
  %sub.i407 = sub nuw nsw i32 32, %58
  %cond.i408 = select i1 %tobool.not.i, i32 0, i32 %sub.i407
  %59 = tail call i32 @llvm.umax.i32(i32 %cond.i408, i32 %i.0)
  %60 = tail call i32 @llvm.umin.i32(i32 %59, i32 %j.0)
  br label %if.end116

if.then110:                                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %speed111 = getelementptr i8, ptr %ddev, i32 -100
  %61 = ptrtoint ptr %speed111 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %speed111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %62)
  %cond263 = icmp eq i32 %62, 3
  %spec.select = select i1 %cond263, i32 7, i32 4
  br label %if.end116

if.end116:                                        ; preds = %if.then110, %if.then88, %if.end84.if.end116_crit_edge, %if.then60.if.end116_crit_edge, %if.end51.if.end116_crit_edge
  %n.1 = phi i32 [ %n.0, %if.end84.if.end116_crit_edge ], [ %60, %if.then88 ], [ 10, %if.then60.if.end116_crit_edge ], [ %spec.select, %if.then110 ], [ %storemerge, %if.end51.if.end116_crit_edge ]
  %i.1 = phi i32 [ %i.0, %if.end84.if.end116_crit_edge ], [ %60, %if.then88 ], [ 1, %if.then60.if.end116_crit_edge ], [ 1, %if.then110 ], [ 0, %if.end51.if.end116_crit_edge ]
  %j.1 = phi i32 [ %j.0, %if.end84.if.end116_crit_edge ], [ %60, %if.then88 ], [ 255, %if.then60.if.end116_crit_edge ], [ 16, %if.then110 ], [ 255, %if.end51.if.end116_crit_edge ]
  %bInterval117 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %buffer, i32 0, i32 5
  %63 = ptrtoint ptr %bInterval117 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %bInterval117, align 1
  %conv118 = zext i8 %64 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %conv118)
  %cmp119 = icmp ugt i32 %i.1, %conv118
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1, i32 %conv118)
  %cmp124 = icmp ult i32 %j.1, %conv118
  %or.cond400 = select i1 %cmp119, i1 true, i1 %cmp124
  br i1 %or.cond400, label %do.end129, label %if.end116.if.end137_crit_edge

if.end116.if.end137_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

do.end129:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %bEndpointAddress, align 1
  %conv131 = zext i8 %66 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %ddev, ptr noundef nonnull @.str.103, i32 noundef %cfgno, i32 noundef %inum, i32 noundef %asnum, i32 noundef %conv131, i32 noundef %conv118, i32 noundef %n.1) #11
  %conv134 = trunc i32 %n.1 to i8
  %bInterval136 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 5
  %67 = ptrtoint ptr %bInterval136 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv134, ptr %bInterval136, align 2
  br label %if.end137

if.end137:                                        ; preds = %do.end129, %if.end116.if.end137_crit_edge
  %speed138 = getelementptr i8, ptr %ddev, i32 -100
  %68 = ptrtoint ptr %speed138 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %speed138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %69)
  %cmp139 = icmp eq i32 %69, 1
  br i1 %cmp139, label %land.lhs.true, label %if.end137.if.end159_crit_edge

if.end137.if.end159_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end159

land.lhs.true:                                    ; preds = %if.end137
  %70 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %bmAttributes.i, align 1
  %72 = and i8 %71, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %72)
  %cmp.i414.not = icmp eq i8 %72, 2
  br i1 %cmp.i414.not, label %do.end146, label %land.lhs.true.if.end159_crit_edge

land.lhs.true.if.end159_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end159

do.end146:                                        ; preds = %land.lhs.true
  %73 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %bEndpointAddress, align 1
  %conv148 = zext i8 %74 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %ddev, ptr noundef nonnull @.str.106, i32 noundef %cfgno, i32 noundef %inum, i32 noundef %asnum, i32 noundef %conv148) #11
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %75 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 3, ptr %bmAttributes, align 1
  %bInterval151 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 5
  %76 = ptrtoint ptr %bInterval151 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %bInterval151, align 2
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 4
  %77 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %78 = load i16, ptr %wMaxPacketSize.i, align 1
  %79 = and i16 %78, -249
  %80 = tail call i16 @llvm.bswap.i16(i16 %79) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %80)
  %cmp154 = icmp ugt i16 %80, 8
  br i1 %cmp154, label %if.then156, label %do.end146.if.end159_crit_edge

do.end146.if.end159_crit_edge:                    ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end159

if.then156:                                       ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 2048, ptr %wMaxPacketSize.i, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.then156, %do.end146.if.end159_crit_edge, %land.lhs.true.if.end159_crit_edge, %if.end137.if.end159_crit_edge
  %wMaxPacketSize161 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 4
  %82 = ptrtoint ptr %wMaxPacketSize161 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %wMaxPacketSize161, align 4
  %84 = tail call i16 @llvm.bswap.i16(i16 %83)
  %conv162 = zext i16 %84 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %cmp163 = icmp eq i16 %83, 0
  br i1 %cmp163, label %land.lhs.true165, label %if.end159.if.end177_crit_edge

if.end159.if.end177_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end177

land.lhs.true165:                                 ; preds = %if.end159
  %85 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %bmAttributes.i, align 1
  %87 = and i8 %86, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %87)
  %cmp.i417 = icmp eq i8 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asnum)
  %cmp169 = icmp eq i32 %asnum, 0
  %or.cond401 = and i1 %cmp169, %cmp.i417
  br i1 %or.cond401, label %land.lhs.true165.if.end177_crit_edge, label %do.end174

land.lhs.true165.if.end177_crit_edge:             ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end177

do.end174:                                        ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %bEndpointAddress, align 1
  %conv176 = zext i8 %89 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %ddev, ptr noundef nonnull @.str.109, i32 noundef %cfgno, i32 noundef %inum, i32 noundef %asnum, i32 noundef %conv176) #11
  br label %if.end177

if.end177:                                        ; preds = %do.end174, %land.lhs.true165.if.end177_crit_edge, %if.end159.if.end177_crit_edge
  %90 = ptrtoint ptr %speed138 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %speed138, align 4
  %92 = zext i32 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %91, label %if.end177.sw.default191_crit_edge [
    i32 1, label %if.end177.sw.epilog193_crit_edge
    i32 2, label %sw.bb180
    i32 3, label %sw.bb181
    i32 5, label %if.end177.sw.bb192_crit_edge
    i32 6, label %if.end177.sw.bb192_crit_edge499
  ]

if.end177.sw.bb192_crit_edge499:                  ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb192

if.end177.sw.bb192_crit_edge:                     ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb192

if.end177.sw.epilog193_crit_edge:                 ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog193

if.end177.sw.default191_crit_edge:                ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default191

sw.bb180:                                         ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog193

sw.bb181:                                         ; preds = %if.end177
  %93 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %bmAttributes.i, align 1
  %trunc485 = trunc i8 %94 to i2
  %95 = zext i2 %trunc485 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.149)
  switch i2 %trunc485, label %sw.bb181.sw.default191_crit_edge [
    i2 -1, label %sw.bb181.if.then187_crit_edge
    i2 1, label %sw.bb181.if.then187_crit_edge500
  ]

sw.bb181.if.then187_crit_edge500:                 ; preds = %sw.bb181
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then187

sw.bb181.if.then187_crit_edge:                    ; preds = %sw.bb181
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then187

sw.bb181.sw.default191_crit_edge:                 ; preds = %sw.bb181
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default191

if.then187:                                       ; preds = %sw.bb181.if.then187_crit_edge, %sw.bb181.if.then187_crit_edge500
  %and188 = and i16 %84, 6144
  %and189 = and i32 %conv162, 59391
  br label %sw.default191

sw.default191:                                    ; preds = %if.then187, %sw.bb181.sw.default191_crit_edge, %if.end177.sw.default191_crit_edge
  %i.2 = phi i16 [ 0, %if.end177.sw.default191_crit_edge ], [ %and188, %if.then187 ], [ 0, %sw.bb181.sw.default191_crit_edge ]
  %maxp.0 = phi i32 [ %conv162, %if.end177.sw.default191_crit_edge ], [ %and189, %if.then187 ], [ %conv162, %sw.bb181.sw.default191_crit_edge ]
  br label %sw.epilog193

sw.bb192:                                         ; preds = %if.end177.sw.bb192_crit_edge, %if.end177.sw.bb192_crit_edge499
  br label %sw.epilog193

sw.epilog193:                                     ; preds = %sw.bb192, %sw.default191, %sw.bb180, %if.end177.sw.epilog193_crit_edge
  %i.3 = phi i16 [ %i.2, %sw.default191 ], [ 0, %sw.bb192 ], [ 0, %sw.bb180 ], [ 0, %if.end177.sw.epilog193_crit_edge ]
  %maxp.1 = phi i32 [ %maxp.0, %sw.default191 ], [ %conv162, %sw.bb192 ], [ %conv162, %sw.bb180 ], [ %conv162, %if.end177.sw.epilog193_crit_edge ]
  %maxpacket_maxes.0 = phi ptr [ @high_speed_maxpacket_maxes, %sw.default191 ], [ @super_speed_maxpacket_maxes, %sw.bb192 ], [ @full_speed_maxpacket_maxes, %sw.bb180 ], [ @low_speed_maxpacket_maxes, %if.end177.sw.epilog193_crit_edge ]
  %bmAttributes.i425 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %96 = ptrtoint ptr %bmAttributes.i425 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %bmAttributes.i425, align 1
  %98 = and i8 %97, 3
  %and.i426 = zext i8 %98 to i32
  %arrayidx196 = getelementptr i16, ptr %maxpacket_maxes.0, i32 %and.i426
  %99 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %arrayidx196, align 2
  %conv197 = zext i16 %100 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %maxp.1, i32 %conv197)
  %cmp198 = icmp ugt i32 %maxp.1, %conv197
  br i1 %cmp198, label %do.end203, label %sw.epilog193.if.end209_crit_edge

sw.epilog193.if.end209_crit_edge:                 ; preds = %sw.epilog193
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end209

do.end203:                                        ; preds = %sw.epilog193
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %bEndpointAddress, align 1
  %conv205 = zext i8 %102 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %ddev, ptr noundef nonnull @.str.112, i32 noundef %cfgno, i32 noundef %inum, i32 noundef %asnum, i32 noundef %conv205, i32 noundef %maxp.1, i32 noundef %conv197) #11
  %conv206 = or i16 %100, %i.3
  %103 = tail call i16 @llvm.bswap.i16(i16 %conv206)
  %104 = ptrtoint ptr %wMaxPacketSize161 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %wMaxPacketSize161, align 4
  br label %if.end209

if.end209:                                        ; preds = %do.end203, %sw.epilog193.if.end209_crit_edge
  %maxp.2 = phi i32 [ %conv197, %do.end203 ], [ %maxp.1, %sw.epilog193.if.end209_crit_edge ]
  %105 = ptrtoint ptr %speed138 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %speed138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %106)
  %cmp211 = icmp eq i32 %106, 3
  br i1 %cmp211, label %land.lhs.true213, label %if.end209.if.end226_crit_edge

if.end209.if.end226_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end226

land.lhs.true213:                                 ; preds = %if.end209
  %107 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %bmAttributes.i, align 1
  %109 = and i8 %108, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %109)
  %cmp.i428 = icmp ne i8 %109, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %maxp.2)
  %cmp217.not = icmp eq i32 %maxp.2, 512
  %or.cond402 = select i1 %cmp.i428, i1 true, i1 %cmp217.not
  br i1 %or.cond402, label %land.lhs.true213.if.end226thread-pre-split_crit_edge, label %do.end222

land.lhs.true213.if.end226thread-pre-split_crit_edge: ; preds = %land.lhs.true213
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end226thread-pre-split

do.end222:                                        ; preds = %land.lhs.true213
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %bEndpointAddress, align 1
  %conv224 = zext i8 %111 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %ddev, ptr noundef nonnull @.str.115, i32 noundef %cfgno, i32 noundef %inum, i32 noundef %asnum, i32 noundef %conv224, i32 noundef %maxp.2) #11
  br label %if.end226thread-pre-split

if.end226thread-pre-split:                        ; preds = %do.end222, %land.lhs.true213.if.end226thread-pre-split_crit_edge
  %112 = ptrtoint ptr %speed138 to i32
  call void @__asan_load4_noabort(i32 %112)
  %.pr = load i32, ptr %speed138, align 4
  br label %if.end226

if.end226:                                        ; preds = %if.end226thread-pre-split, %if.end209.if.end226_crit_edge
  %113 = phi i32 [ %.pr, %if.end226thread-pre-split ], [ %106, %if.end209.if.end226_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %113)
  %cmp228 = icmp ugt i32 %113, 4
  br i1 %cmp228, label %if.then230, label %if.end226.if.end231_crit_edge

if.end226.if.end231_crit_edge:                    ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end231

if.then230:                                       ; preds = %if.end226
  %bDescriptorType.i = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %add.ptr2, i32 0, i32 1
  %114 = ptrtoint ptr %bDescriptorType.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %bDescriptorType.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %115)
  %cmp.not.i = icmp ne i8 %115, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub)
  %cmp2.i = icmp slt i32 %sub, 6
  %or.cond.i = or i1 %cmp2.i, %cmp.not.i
  br i1 %or.cond.i, label %do.end.i, label %if.end16.i

do.end.i:                                         ; preds = %if.then230
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %116 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %bEndpointAddress.i, align 2
  %conv5.i = zext i8 %117 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %ddev, ptr noundef nonnull @.str.118, i32 noundef %cfgno, i32 noundef %inum, i32 noundef %asnum, i32 noundef %conv5.i) #11
  %ss_ep_comp.i = getelementptr %struct.usb_host_endpoint, ptr %38, i32 %idxprom, i32 1
  %118 = ptrtoint ptr %ss_ep_comp.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 6, ptr %ss_ep_comp.i, align 1
  %bDescriptorType7.i = getelementptr %struct.usb_host_endpoint, ptr %38, i32 %idxprom, i32 1, i32 1
  %119 = ptrtoint ptr %bDescriptorType7.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 48, ptr %bDescriptorType7.i, align 1
  %120 = ptrtoint ptr %bmAttributes.i425 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %bmAttributes.i425, align 1
  %trunc316.i = trunc i8 %121 to i2
  %122 = zext i2 %trunc316.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.150)
  switch i2 %trunc316.i, label %do.end.i.if.end231_crit_edge [
    i2 1, label %do.end.i.if.then13.i_crit_edge
    i2 -1, label %do.end.i.if.then13.i_crit_edge501
  ]

do.end.i.if.then13.i_crit_edge501:                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13.i

do.end.i.if.then13.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13.i

do.end.i.if.end231_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end231

if.then13.i:                                      ; preds = %do.end.i.if.then13.i_crit_edge, %do.end.i.if.then13.i_crit_edge501
  %123 = ptrtoint ptr %wMaxPacketSize161 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %wMaxPacketSize161, align 4
  %wBytesPerInterval.i = getelementptr %struct.usb_host_endpoint, ptr %38, i32 %idxprom, i32 1, i32 4
  %125 = ptrtoint ptr %wBytesPerInterval.i to i32
  call void @__asan_storeN_noabort(i32 %125, i32 2)
  store i16 %124, ptr %wBytesPerInterval.i, align 1
  br label %if.end231

if.end16.i:                                       ; preds = %if.then230
  %126 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %add.ptr2, align 1
  %conv18.i = zext i8 %127 to i32
  %add.ptr.i = getelementptr i8, ptr %add.ptr2, i32 %conv18.i
  %sub.i431 = sub nsw i32 %sub, %conv18.i
  %ss_ep_comp21.i = getelementptr %struct.usb_host_endpoint, ptr %38, i32 %idxprom, i32 1
  %128 = call ptr @memcpy(ptr %ss_ep_comp21.i, ptr %add.ptr2, i32 6)
  %129 = ptrtoint ptr %bmAttributes.i425 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %bmAttributes.i425, align 1
  %131 = and i8 %130, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %cmp.i279.not.i = icmp eq i8 %131, 0
  br i1 %cmp.i279.not.i, label %land.lhs.true.i432, label %if.end16.i.if.else.i_crit_edge

if.end16.i.if.else.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i432:                               ; preds = %if.end16.i
  %bMaxBurst.i = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %add.ptr2, i32 0, i32 2
  %132 = ptrtoint ptr %bMaxBurst.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %bMaxBurst.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %cmp26.not.i = icmp eq i8 %133, 0
  br i1 %cmp26.not.i, label %land.lhs.true.i432.if.else.i_crit_edge, label %land.lhs.true.i432.if.end55.sink.split.i_crit_edge

land.lhs.true.i432.if.end55.sink.split.i_crit_edge: ; preds = %land.lhs.true.i432
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.sink.split.i

land.lhs.true.i432.if.else.i_crit_edge:           ; preds = %land.lhs.true.i432
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i432.if.else.i_crit_edge, %if.end16.i.if.else.i_crit_edge
  %bMaxBurst39.i = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %add.ptr2, i32 0, i32 2
  %134 = ptrtoint ptr %bMaxBurst39.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %bMaxBurst39.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %135)
  %cmp41.i = icmp ugt i8 %135, 15
  br i1 %cmp41.i, label %if.else.i.if.end55.sink.split.i_crit_edge, label %if.else.i.if.end55.i_crit_edge

if.else.i.if.end55.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

if.else.i.if.end55.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.sink.split.i

if.end55.sink.split.i:                            ; preds = %if.else.i.if.end55.sink.split.i_crit_edge, %land.lhs.true.i432.if.end55.sink.split.i_crit_edge
  %.sink318.i = phi i8 [ %133, %land.lhs.true.i432.if.end55.sink.split.i_crit_edge ], [ %135, %if.else.i.if.end55.sink.split.i_crit_edge ]
  %.str.124.sink.i = phi ptr [ @.str.121, %land.lhs.true.i432.if.end55.sink.split.i_crit_edge ], [ @.str.124, %if.else.i.if.end55.sink.split.i_crit_edge ]
  %.sink.i = phi i8 [ 0, %land.lhs.true.i432.if.end55.sink.split.i_crit_edge ], [ 15, %if.else.i.if.end55.sink.split.i_crit_edge ]
  %conv40.i = zext i8 %.sink318.i to i32
  %bEndpointAddress50.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %136 = ptrtoint ptr %bEndpointAddress50.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %bEndpointAddress50.i, align 2
  %conv51.i = zext i8 %137 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %ddev, ptr noundef nonnull %.str.124.sink.i, i32 noundef %conv40.i, i32 noundef %cfgno, i32 noundef %inum, i32 noundef %asnum, i32 noundef %conv51.i) #11
  %bMaxBurst53.i = getelementptr %struct.usb_host_endpoint, ptr %38, i32 %idxprom, i32 1, i32 2
  %138 = ptrtoint ptr %bMaxBurst53.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %.sink.i, ptr %bMaxBurst53.i, align 1
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.end55.sink.split.i, %if.else.i.if.end55.i_crit_edge
  %139 = ptrtoint ptr %bmAttributes.i425 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %bmAttributes.i425, align 1
  %141 = and i8 %140, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %cmp.i282.not.i = icmp eq i8 %141, 0
  %trunc.i = trunc i8 %140 to i2
  %142 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %142, ptr @__sancov_gen_cov_switch_values.151)
  switch i2 %trunc.i, label %if.end55.unreachabledefault.i [
    i2 -1, label %if.end55.i.land.lhs.true63.i_crit_edge
    i2 0, label %if.end55.i.land.lhs.true63.i_crit_edge502
    i2 -2, label %land.lhs.true85.i
    i2 1, label %if.end55.i.land.lhs.true103.i_crit_edge
  ]

if.end55.i.land.lhs.true103.i_crit_edge:          ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true103.i

if.end55.i.land.lhs.true63.i_crit_edge502:        ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true63.i

if.end55.i.land.lhs.true63.i_crit_edge:           ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true63.i

land.lhs.true63.i:                                ; preds = %if.end55.i.land.lhs.true63.i_crit_edge, %if.end55.i.land.lhs.true63.i_crit_edge502
  %bmAttributes.i433 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %add.ptr2, i32 0, i32 3
  %143 = ptrtoint ptr %bmAttributes.i433 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %bmAttributes.i433, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %cmp65.not.i = icmp eq i8 %144, 0
  br i1 %cmp65.not.i, label %land.lhs.true63.i.if.end128.i_crit_edge, label %do.end70.i

land.lhs.true63.i.if.end128.i_crit_edge:          ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128.i

do.end70.i:                                       ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #10
  %cond.i434 = select i1 %cmp.i282.not.i, ptr @.str.129, ptr @.str.130
  %conv75.i = zext i8 %144 to i32
  %bEndpointAddress77.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %145 = ptrtoint ptr %bEndpointAddress77.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %bEndpointAddress77.i, align 2
  %conv78.i = zext i8 %146 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %ddev, ptr noundef nonnull @.str.127, ptr noundef nonnull %cond.i434, i32 noundef %conv75.i, i32 noundef %cfgno, i32 noundef %inum, i32 noundef %asnum, i32 noundef %conv78.i) #11
  br label %if.end128.sink.split.i

land.lhs.true85.i:                                ; preds = %if.end55.i
  %bmAttributes86.i = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %add.ptr2, i32 0, i32 3
  %147 = ptrtoint ptr %bmAttributes86.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %bmAttributes86.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %148)
  %cmp88.i = icmp ugt i8 %148, 16
  br i1 %cmp88.i, label %do.end93.i, label %if.else99.i

do.end93.i:                                       ; preds = %land.lhs.true85.i
  call void @__sanitizer_cov_trace_pc() #10
  %bEndpointAddress95.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %149 = ptrtoint ptr %bEndpointAddress95.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %bEndpointAddress95.i, align 2
  %conv96.i = zext i8 %150 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %ddev, ptr noundef nonnull @.str.132, i32 noundef %cfgno, i32 noundef %inum, i32 noundef %asnum, i32 noundef %conv96.i) #11
  br label %if.end128.sink.split.i

if.else99.i:                                      ; preds = %land.lhs.true85.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %141)
  %cmp.i294.not.i = icmp eq i8 %141, 1
  br i1 %cmp.i294.not.i, label %if.else99.i.land.lhs.true103.i_crit_edge, label %if.else99.i.if.end128.i_crit_edge

if.else99.i.if.end128.i_crit_edge:                ; preds = %if.else99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128.i

if.else99.i.land.lhs.true103.i_crit_edge:         ; preds = %if.else99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true103.i

land.lhs.true103.i:                               ; preds = %if.else99.i.land.lhs.true103.i_crit_edge, %if.end55.i.land.lhs.true103.i_crit_edge
  %bmAttributes104.i = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %add.ptr2, i32 0, i32 3
  %151 = ptrtoint ptr %bmAttributes104.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %bmAttributes104.i, align 1
  %153 = and i8 %152, -125
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %153)
  %154 = icmp eq i8 %153, 3
  br i1 %154, label %do.end116.i, label %land.lhs.true103.i.if.end128.i_crit_edge

land.lhs.true103.i.if.end128.i_crit_edge:         ; preds = %land.lhs.true103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128.i

do.end116.i:                                      ; preds = %land.lhs.true103.i
  call void @__sanitizer_cov_trace_pc() #10
  %bEndpointAddress122.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %155 = ptrtoint ptr %bEndpointAddress122.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %bEndpointAddress122.i, align 2
  %conv123.i = zext i8 %156 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %ddev, ptr noundef nonnull @.str.135, i32 noundef 4, i32 noundef %cfgno, i32 noundef %inum, i32 noundef %asnum, i32 noundef %conv123.i) #11
  br label %if.end128.sink.split.i

if.end55.unreachabledefault.i:                    ; preds = %if.end55.i
  unreachable

if.end128.sink.split.i:                           ; preds = %do.end116.i, %do.end93.i, %do.end70.i
  %.sink319.i = phi i8 [ 16, %do.end93.i ], [ 2, %do.end116.i ], [ 0, %do.end70.i ]
  %bmAttributes98.i = getelementptr %struct.usb_host_endpoint, ptr %38, i32 %idxprom, i32 1, i32 3
  %157 = ptrtoint ptr %bmAttributes98.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %.sink319.i, ptr %bmAttributes98.i, align 1
  br label %if.end128.i

if.end128.i:                                      ; preds = %if.end128.sink.split.i, %land.lhs.true103.i.if.end128.i_crit_edge, %if.else99.i.if.end128.i_crit_edge, %land.lhs.true63.i.if.end128.i_crit_edge
  %158 = ptrtoint ptr %bmAttributes.i425 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %bmAttributes.i425, align 1
  %160 = and i8 %159, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %160)
  %cmp.i297.not.i = icmp eq i8 %160, 1
  br i1 %cmp.i297.not.i, label %if.then132.i, label %if.else143.i

if.then132.i:                                     ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #10
  %bMaxBurst133.i = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %add.ptr2, i32 0, i32 2
  %161 = ptrtoint ptr %bMaxBurst133.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %bMaxBurst133.i, align 1
  %conv134.i = zext i8 %162 to i32
  %add135.i = add nuw nsw i32 %conv134.i, 1
  %bmAttributes136.i = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %add.ptr2, i32 0, i32 3
  %163 = ptrtoint ptr %bmAttributes136.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %bmAttributes136.i, align 1
  %165 = and i8 %164, 3
  %narrow.i = add nuw nsw i8 %165, 1
  %add139.i = zext i8 %narrow.i to i32
  %mul.i = mul nuw nsw i32 %add135.i, %add139.i
  %166 = ptrtoint ptr %wMaxPacketSize161 to i32
  call void @__asan_loadN_noabort(i32 %166, i32 2)
  %167 = load i16, ptr %wMaxPacketSize161, align 1
  %168 = and i16 %167, -249
  %169 = tail call i16 @llvm.bswap.i16(i16 %168) #8
  %and.i.i = zext i16 %169 to i32
  %mul142.i = mul nuw nsw i32 %mul.i, %and.i.i
  br label %if.end156.i

if.else143.i:                                     ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %160)
  %cmp.i300.not.i = icmp eq i8 %160, 3
  br i1 %cmp.i300.not.i, label %if.then147.i, label %if.else143.i.if.end177.i_crit_edge

if.else143.i.if.end177.i_crit_edge:               ; preds = %if.else143.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end177.i

if.then147.i:                                     ; preds = %if.else143.i
  call void @__sanitizer_cov_trace_pc() #10
  %170 = ptrtoint ptr %wMaxPacketSize161 to i32
  call void @__asan_loadN_noabort(i32 %170, i32 2)
  %171 = load i16, ptr %wMaxPacketSize161, align 1
  %172 = and i16 %171, -249
  %173 = tail call i16 @llvm.bswap.i16(i16 %172) #8
  %and.i303.i = zext i16 %173 to i32
  %bMaxBurst150.i = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %add.ptr2, i32 0, i32 2
  %174 = ptrtoint ptr %bMaxBurst150.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %bMaxBurst150.i, align 1
  %conv151.i = zext i8 %175 to i32
  %add152.i = add nuw nsw i32 %conv151.i, 1
  %mul153.i = mul nuw nsw i32 %add152.i, %and.i303.i
  br label %if.end156.i

if.end156.i:                                      ; preds = %if.then147.i, %if.then132.i
  %max_tx.0.i = phi i32 [ %mul142.i, %if.then132.i ], [ %mul153.i, %if.then147.i ]
  %wBytesPerInterval157.i = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %add.ptr2, i32 0, i32 4
  %176 = ptrtoint ptr %wBytesPerInterval157.i to i32
  call void @__asan_loadN_noabort(i32 %176, i32 2)
  %177 = load i16, ptr %wBytesPerInterval157.i, align 1
  %178 = tail call i16 @llvm.bswap.i16(i16 %177) #8
  %conv158.i = zext i16 %178 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max_tx.0.i, i32 %conv158.i)
  %cmp159.i = icmp ult i32 %max_tx.0.i, %conv158.i
  br i1 %cmp159.i, label %do.end164.i, label %if.end156.i.if.end177.i_crit_edge

if.end156.i.if.end177.i_crit_edge:                ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end177.i

do.end164.i:                                      ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #10
  %cond168.i = select i1 %cmp.i297.not.i, ptr @.str.140, ptr @.str.141
  %bEndpointAddress172.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %179 = ptrtoint ptr %bEndpointAddress172.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %bEndpointAddress172.i, align 2
  %conv173.i = zext i8 %180 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %ddev, ptr noundef nonnull @.str.138, ptr noundef nonnull %cond168.i, i32 noundef %conv158.i, i32 noundef %cfgno, i32 noundef %inum, i32 noundef %asnum, i32 noundef %conv173.i, i32 noundef %max_tx.0.i) #11
  %conv174.i = trunc i32 %max_tx.0.i to i16
  %181 = tail call i16 @llvm.bswap.i16(i16 %conv174.i) #8
  %wBytesPerInterval176.i = getelementptr %struct.usb_host_endpoint, ptr %38, i32 %idxprom, i32 1, i32 4
  %182 = ptrtoint ptr %wBytesPerInterval176.i to i32
  call void @__asan_storeN_noabort(i32 %182, i32 2)
  store i16 %181, ptr %wBytesPerInterval176.i, align 1
  br label %if.end177.i

if.end177.i:                                      ; preds = %do.end164.i, %if.end156.i.if.end177.i_crit_edge, %if.else143.i.if.end177.i_crit_edge
  %183 = ptrtoint ptr %bmAttributes.i425 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %bmAttributes.i425, align 1
  %185 = and i8 %184, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %185)
  %cmp.i308.not.i = icmp eq i8 %185, 1
  br i1 %cmp.i308.not.i, label %land.lhs.true181.i, label %if.end177.i.if.end231.thread_crit_edge

if.end177.i.if.end231.thread_crit_edge:           ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end231.thread

land.lhs.true181.i:                               ; preds = %if.end177.i
  %bmAttributes182.i = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %add.ptr2, i32 0, i32 3
  %186 = ptrtoint ptr %bmAttributes182.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %bmAttributes182.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %187)
  %tobool185.not.i = icmp sgt i8 %187, -1
  br i1 %tobool185.not.i, label %land.lhs.true181.i.if.end231.thread_crit_edge, label %if.then186.i

land.lhs.true181.i.if.end231.thread_crit_edge:    ; preds = %land.lhs.true181.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end231.thread

if.then186.i:                                     ; preds = %land.lhs.true181.i
  %bDescriptorType.i.i = getelementptr inbounds %struct.usb_ssp_isoc_ep_comp_descriptor, ptr %add.ptr.i, i32 0, i32 1
  %188 = ptrtoint ptr %bDescriptorType.i.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %bDescriptorType.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %189)
  %cmp.not.i.i = icmp ne i8 %189, 49
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i431)
  %cmp2.i.i = icmp slt i32 %sub.i431, 8
  %or.cond.i.i = or i1 %cmp2.i.i, %cmp.not.i.i
  br i1 %or.cond.i.i, label %do.end.i.i, label %if.end.i.i436

do.end.i.i:                                       ; preds = %if.then186.i
  call void @__sanitizer_cov_trace_pc() #10
  %bEndpointAddress.i.i435 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %190 = ptrtoint ptr %bEndpointAddress.i.i435 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %bEndpointAddress.i.i435, align 2
  %conv5.i.i = zext i8 %191 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %ddev, ptr noundef nonnull @.str.142, i32 noundef %cfgno, i32 noundef %inum, i32 noundef %asnum, i32 noundef %conv5.i.i) #11
  br label %if.end231.thread

if.end.i.i436:                                    ; preds = %if.then186.i
  call void @__sanitizer_cov_trace_pc() #10
  %ssp_isoc_ep_comp.i.i = getelementptr %struct.usb_host_endpoint, ptr %38, i32 %idxprom, i32 2
  %192 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %192, i32 8)
  %193 = load i64, ptr %add.ptr.i, align 1
  %194 = ptrtoint ptr %ssp_isoc_ep_comp.i.i to i32
  call void @__asan_storeN_noabort(i32 %194, i32 8)
  store i64 %193, ptr %ssp_isoc_ep_comp.i.i, align 1
  br label %if.end231.thread

if.end231.thread:                                 ; preds = %if.end.i.i436, %do.end.i.i, %land.lhs.true181.i.if.end231.thread_crit_edge, %if.end177.i.if.end231.thread_crit_edge
  %extra488 = getelementptr %struct.usb_host_endpoint, ptr %38, i32 %idxprom, i32 7
  %195 = ptrtoint ptr %extra488 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %add.ptr2, ptr %extra488, align 4
  br label %while.body.i.preheader

if.end231:                                        ; preds = %if.then13.i, %do.end.i.if.end231_crit_edge, %if.end226.if.end231_crit_edge
  %extra = getelementptr %struct.usb_host_endpoint, ptr %38, i32 %idxprom, i32 7
  %196 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %add.ptr2, ptr %extra, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp2.i437 = icmp sgt i32 %sub, 0
  br i1 %cmp2.i437, label %if.end231.while.body.i.preheader_crit_edge, label %find_next_descriptor.exit.thread

if.end231.while.body.i.preheader_crit_edge:       ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %if.end231.while.body.i.preheader_crit_edge, %if.end231.thread
  br label %while.body.i

find_next_descriptor.exit.thread:                 ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #10
  %extralen480 = getelementptr %struct.usb_host_endpoint, ptr %38, i32 %idxprom, i32 8
  %197 = ptrtoint ptr %extralen480 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 0, ptr %extralen480, align 4
  br label %cleanup

while.body.i:                                     ; preds = %if.end.i445.while.body.i_crit_edge, %while.body.i.preheader
  %n.05.i = phi i32 [ %inc.i443, %if.end.i445.while.body.i_crit_edge ], [ 0, %while.body.i.preheader ]
  %buffer.addr.04.i = phi ptr [ %add.ptr.i441, %if.end.i445.while.body.i_crit_edge ], [ %add.ptr2, %while.body.i.preheader ]
  %size.addr.03.i = phi i32 [ %sub.i442, %if.end.i445.while.body.i_crit_edge ], [ %sub, %while.body.i.preheader ]
  %bDescriptorType.i438 = getelementptr inbounds %struct.usb_descriptor_header, ptr %buffer.addr.04.i, i32 0, i32 1
  %198 = ptrtoint ptr %bDescriptorType.i438 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %bDescriptorType.i438, align 1
  %200 = and i8 %199, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %200)
  %201 = icmp eq i8 %200, 4
  br i1 %201, label %while.body.i.find_next_descriptor.exit_crit_edge, label %if.end.i445

while.body.i.find_next_descriptor.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_next_descriptor.exit

if.end.i445:                                      ; preds = %while.body.i
  %202 = ptrtoint ptr %buffer.addr.04.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %buffer.addr.04.i, align 1
  %conv7.i = zext i8 %203 to i32
  %add.ptr.i441 = getelementptr i8, ptr %buffer.addr.04.i, i32 %conv7.i
  %sub.i442 = sub nsw i32 %size.addr.03.i, %conv7.i
  %inc.i443 = add i32 %n.05.i, 1
  %cmp.i444 = icmp sgt i32 %sub.i442, 0
  br i1 %cmp.i444, label %if.end.i445.while.body.i_crit_edge, label %if.end.i445.find_next_descriptor.exit_crit_edge

if.end.i445.find_next_descriptor.exit_crit_edge:  ; preds = %if.end.i445
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_next_descriptor.exit

if.end.i445.while.body.i_crit_edge:               ; preds = %if.end.i445
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

find_next_descriptor.exit:                        ; preds = %if.end.i445.find_next_descriptor.exit_crit_edge, %while.body.i.find_next_descriptor.exit_crit_edge
  %buffer.addr.0.lcssa.i = phi ptr [ %buffer.addr.04.i, %while.body.i.find_next_descriptor.exit_crit_edge ], [ %add.ptr.i441, %if.end.i445.find_next_descriptor.exit_crit_edge ]
  %n.0.lcssa.i = phi i32 [ %n.05.i, %while.body.i.find_next_descriptor.exit_crit_edge ], [ %inc.i443, %if.end.i445.find_next_descriptor.exit_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %buffer.addr.0.lcssa.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr2 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %extralen = getelementptr %struct.usb_host_endpoint, ptr %38, i32 %idxprom, i32 8
  %204 = ptrtoint ptr %extralen to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %sub.ptr.sub.i, ptr %extralen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0.lcssa.i)
  %cmp234 = icmp sgt i32 %n.0.lcssa.i, 0
  br i1 %cmp234, label %do.body237, label %find_next_descriptor.exit.cleanup_crit_edge

find_next_descriptor.exit.cleanup_crit_edge:      ; preds = %find_next_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body237:                                       ; preds = %find_next_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_parse_endpoint.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_parse_endpoint, %if.then243)) #8
          to label %cleanup [label %if.then243], !srcloc !234

if.then243:                                       ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n.0.lcssa.i)
  %cmp.i446 = icmp eq i32 %n.0.lcssa.i, 1
  %cond.i447 = select i1 %cmp.i446, ptr @.str.80, ptr @.str.81
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_parse_endpoint.__UNIQUE_ID_ddebug240, ptr noundef %ddev, ptr noundef nonnull @.str.75, i32 noundef %n.0.lcssa.i, ptr noundef nonnull %cond.i447, ptr noundef nonnull @.str.117) #8
  br label %cleanup

skip_to_next_endpoint_or_interface_descriptor:    ; preds = %do.end47, %do.end37, %if.end28.skip_to_next_endpoint_or_interface_descriptor_crit_edge, %do.end25, %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp2.i448 = icmp sgt i32 %sub, 0
  br i1 %cmp2.i448, label %skip_to_next_endpoint_or_interface_descriptor.while.body.i457_crit_edge, label %skip_to_next_endpoint_or_interface_descriptor.find_next_descriptor.exit469_crit_edge

skip_to_next_endpoint_or_interface_descriptor.find_next_descriptor.exit469_crit_edge: ; preds = %skip_to_next_endpoint_or_interface_descriptor
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_next_descriptor.exit469

skip_to_next_endpoint_or_interface_descriptor.while.body.i457_crit_edge: ; preds = %skip_to_next_endpoint_or_interface_descriptor
  br label %while.body.i457

while.body.i457:                                  ; preds = %if.end.i463.while.body.i457_crit_edge, %skip_to_next_endpoint_or_interface_descriptor.while.body.i457_crit_edge
  %buffer.addr.04.i450 = phi ptr [ %add.ptr.i459, %if.end.i463.while.body.i457_crit_edge ], [ %add.ptr2, %skip_to_next_endpoint_or_interface_descriptor.while.body.i457_crit_edge ]
  %size.addr.03.i451 = phi i32 [ %sub.i460, %if.end.i463.while.body.i457_crit_edge ], [ %sub, %skip_to_next_endpoint_or_interface_descriptor.while.body.i457_crit_edge ]
  %bDescriptorType.i452 = getelementptr inbounds %struct.usb_descriptor_header, ptr %buffer.addr.04.i450, i32 0, i32 1
  %205 = ptrtoint ptr %bDescriptorType.i452 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %bDescriptorType.i452, align 1
  %207 = and i8 %206, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %207)
  %208 = icmp eq i8 %207, 4
  br i1 %208, label %while.body.i457.find_next_descriptor.exit469_crit_edge, label %if.end.i463

while.body.i457.find_next_descriptor.exit469_crit_edge: ; preds = %while.body.i457
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_next_descriptor.exit469

if.end.i463:                                      ; preds = %while.body.i457
  %209 = ptrtoint ptr %buffer.addr.04.i450 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %buffer.addr.04.i450, align 1
  %conv7.i458 = zext i8 %210 to i32
  %add.ptr.i459 = getelementptr i8, ptr %buffer.addr.04.i450, i32 %conv7.i458
  %sub.i460 = sub nsw i32 %size.addr.03.i451, %conv7.i458
  %cmp.i462 = icmp sgt i32 %sub.i460, 0
  br i1 %cmp.i462, label %if.end.i463.while.body.i457_crit_edge, label %if.end.i463.find_next_descriptor.exit469_crit_edge

if.end.i463.find_next_descriptor.exit469_crit_edge: ; preds = %if.end.i463
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_next_descriptor.exit469

if.end.i463.while.body.i457_crit_edge:            ; preds = %if.end.i463
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i457

find_next_descriptor.exit469:                     ; preds = %if.end.i463.find_next_descriptor.exit469_crit_edge, %while.body.i457.find_next_descriptor.exit469_crit_edge, %skip_to_next_endpoint_or_interface_descriptor.find_next_descriptor.exit469_crit_edge
  %buffer.addr.0.lcssa.i464 = phi ptr [ %add.ptr2, %skip_to_next_endpoint_or_interface_descriptor.find_next_descriptor.exit469_crit_edge ], [ %add.ptr.i459, %if.end.i463.find_next_descriptor.exit469_crit_edge ], [ %buffer.addr.04.i450, %while.body.i457.find_next_descriptor.exit469_crit_edge ]
  %sub.ptr.lhs.cast.i466 = ptrtoint ptr %buffer.addr.0.lcssa.i464 to i32
  %sub.ptr.rhs.cast.i467 = ptrtoint ptr %add.ptr2 to i32
  %sub.ptr.sub.i468 = sub i32 %sub.ptr.lhs.cast.i466, %sub.ptr.rhs.cast.i467
  br label %cleanup

cleanup:                                          ; preds = %find_next_descriptor.exit469, %if.then243, %do.body237, %find_next_descriptor.exit.cleanup_crit_edge, %find_next_descriptor.exit.thread
  %call249.pn = phi i32 [ %sub.ptr.sub.i468, %find_next_descriptor.exit469 ], [ %sub.ptr.sub.i, %if.then243 ], [ %sub.ptr.sub.i, %find_next_descriptor.exit.cleanup_crit_edge ], [ 0, %find_next_descriptor.exit.thread ], [ %sub.ptr.sub.i, %do.body237 ]
  %retval.0 = add i32 %call249.pn, %conv
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @usb_endpoint_is_ignored(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 118)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 118)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !115, !117, !119, !120, !121, !122, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !175, !177, !179, !181, !183, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !213, !214, !216, !217, !218, !219}
!llvm.module.flags = !{!221, !222, !223, !224, !225, !226, !227, !228}
!llvm.ident = !{!229}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/core/config.c", i32 871, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @usb_get_configuration._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @usb_get_configuration._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/core/config.c", i32 877, i32 3}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @usb_get_configuration._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @usb_get_configuration._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/core/config.c", i32 901, i32 4}
!15 = !{ptr @usb_get_configuration._entry.9, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @usb_get_configuration._entry_ptr.11, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.12, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.14, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/core/config.c", i32 905, i32 4}
!20 = !{ptr @usb_get_configuration._entry.13, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @usb_get_configuration._entry_ptr.15, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.17, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/core/config.c", i32 909, i32 4}
!24 = !{ptr @usb_get_configuration._entry.16, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @usb_get_configuration._entry_ptr.18, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.20, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/core/config.c", i32 931, i32 4}
!28 = !{ptr @usb_get_configuration._entry.19, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @usb_get_configuration._entry_ptr.21, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.22, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @usb_get_configuration._entry.23, !32, !"_entry", i1 false, i1 false}
!32 = !{!"../drivers/usb/core/config.c", i32 937, i32 4}
!33 = !{ptr @usb_get_configuration._entry_ptr.24, !32, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.25, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/core/config.c", i32 996, i32 3}
!36 = !{ptr @.str.26, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @usb_get_bos_descriptor._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @usb_get_bos_descriptor._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.28, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/core/config.c", i32 1024, i32 3}
!41 = !{ptr @usb_get_bos_descriptor._entry.27, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @usb_get_bos_descriptor._entry_ptr.29, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.31, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/core/config.c", i32 1049, i32 4}
!45 = !{ptr @usb_get_bos_descriptor._entry.30, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @usb_get_bos_descriptor._entry_ptr.32, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.33, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/core/config.c", i32 628, i32 3}
!49 = !{ptr @.str.34, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @usb_parse_configuration._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @usb_parse_configuration._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.36, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/core/config.c", i32 639, i32 3}
!54 = !{ptr @usb_parse_configuration._entry.35, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @usb_parse_configuration._entry_ptr.37, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.39, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/core/config.c", i32 653, i32 4}
!58 = !{ptr @usb_parse_configuration._entry.38, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @usb_parse_configuration._entry_ptr.40, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.42, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/core/config.c", i32 661, i32 4}
!62 = !{ptr @usb_parse_configuration._entry.41, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @usb_parse_configuration._entry_ptr.43, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.45, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/core/config.c", i32 673, i32 5}
!66 = !{ptr @usb_parse_configuration._entry.44, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @usb_parse_configuration._entry_ptr.46, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.48, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/core/config.c", i32 683, i32 5}
!70 = !{ptr @usb_parse_configuration._entry.47, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @usb_parse_configuration._entry_ptr.49, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.51, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/core/config.c", i32 691, i32 5}
!74 = !{ptr @usb_parse_configuration._entry.50, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @usb_parse_configuration._entry_ptr.52, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.54, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/core/config.c", i32 716, i32 5}
!78 = !{ptr @usb_parse_configuration._entry.53, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @usb_parse_configuration._entry_ptr.55, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.57, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/core/config.c", i32 723, i32 5}
!82 = !{ptr @usb_parse_configuration._entry.56, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @usb_parse_configuration._entry_ptr.58, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.60, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/core/config.c", i32 734, i32 4}
!86 = !{ptr @usb_parse_configuration._entry.59, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @usb_parse_configuration._entry_ptr.61, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.63, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/core/config.c", i32 743, i32 3}
!90 = !{ptr @usb_parse_configuration._entry.62, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @usb_parse_configuration._entry_ptr.64, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.66, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/core/config.c", i32 747, i32 3}
!94 = !{ptr @usb_parse_configuration._entry.65, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @usb_parse_configuration._entry_ptr.67, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.69, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/core/config.c", i32 757, i32 4}
!98 = !{ptr @usb_parse_configuration._entry.68, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @usb_parse_configuration._entry_ptr.70, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.72, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/core/config.c", i32 765, i32 4}
!102 = !{ptr @usb_parse_configuration._entry.71, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @usb_parse_configuration._entry_ptr.73, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.74, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/core/config.c", i32 788, i32 3}
!106 = !{ptr @.str.75, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @usb_parse_configuration.__UNIQUE_ID_ddebug242, !105, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!108 = !{ptr @.str.76, !105, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.78, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/core/config.c", i32 814, i32 5}
!111 = !{ptr @usb_parse_configuration._entry.77, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @usb_parse_configuration._entry_ptr.79, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.80, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/core/config.c", i32 24, i32 19}
!115 = !{ptr @.str.81, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/core/config.c", i32 24, i32 24}
!117 = !{ptr @.str.82, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/core/config.c", i32 536, i32 4}
!119 = !{ptr @.str.83, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @usb_parse_interface._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @usb_parse_interface._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @usb_parse_interface.__UNIQUE_ID_ddebug241, !123, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!123 = !{!"../drivers/usb/core/config.c", i32 553, i32 3}
!124 = !{ptr @.str.84, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.86, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/usb/core/config.c", i32 562, i32 3}
!127 = !{ptr @usb_parse_interface._entry.85, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @usb_parse_interface._entry_ptr.87, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.89, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/core/config.c", i32 593, i32 3}
!131 = !{ptr @usb_parse_interface._entry.88, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @usb_parse_interface._entry_ptr.90, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.91, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/core/config.c", i32 276, i32 3}
!135 = !{ptr @.str.92, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @usb_parse_endpoint._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @usb_parse_endpoint._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.94, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/usb/core/config.c", i32 284, i32 3}
!140 = !{ptr @usb_parse_endpoint._entry.93, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @usb_parse_endpoint._entry_ptr.95, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.97, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/usb/core/config.c", i32 296, i32 3}
!144 = !{ptr @usb_parse_endpoint._entry.96, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @usb_parse_endpoint._entry_ptr.98, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.100, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/usb/core/config.c", i32 304, i32 4}
!148 = !{ptr @usb_parse_endpoint._entry.99, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @usb_parse_endpoint._entry_ptr.101, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.103, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/core/config.c", i32 381, i32 3}
!152 = !{ptr @usb_parse_endpoint._entry.102, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @usb_parse_endpoint._entry_ptr.104, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.106, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/usb/core/config.c", i32 394, i32 3}
!156 = !{ptr @usb_parse_endpoint._entry.105, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @usb_parse_endpoint._entry_ptr.107, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.109, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/usb/core/config.c", i32 411, i32 3}
!160 = !{ptr @usb_parse_endpoint._entry.108, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @usb_parse_endpoint._entry_ptr.110, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.112, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/core/config.c", i32 442, i32 3}
!164 = !{ptr @usb_parse_endpoint._entry.111, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @usb_parse_endpoint._entry_ptr.113, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.115, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/core/config.c", i32 455, i32 4}
!168 = !{ptr @usb_parse_endpoint._entry.114, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @usb_parse_endpoint._entry_ptr.116, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @usb_parse_endpoint.__UNIQUE_ID_ddebug240, !171, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!171 = !{!"../drivers/usb/core/config.c", i32 474, i32 3}
!172 = !{ptr @.str.117, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @low_speed_maxpacket_maxes, !174, !"low_speed_maxpacket_maxes", i1 false, i1 false}
!174 = !{!"../drivers/usb/core/config.c", i32 179, i32 29}
!175 = !{ptr @full_speed_maxpacket_maxes, !176, !"full_speed_maxpacket_maxes", i1 false, i1 false}
!176 = !{!"../drivers/usb/core/config.c", i32 185, i32 29}
!177 = !{ptr @high_speed_maxpacket_maxes, !178, !"high_speed_maxpacket_maxes", i1 false, i1 false}
!178 = !{!"../drivers/usb/core/config.c", i32 191, i32 29}
!179 = !{ptr @super_speed_maxpacket_maxes, !180, !"super_speed_maxpacket_maxes", i1 false, i1 false}
!180 = !{!"../drivers/usb/core/config.c", i32 199, i32 29}
!181 = !{ptr @.str.118, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/usb/core/config.c", i32 86, i32 3}
!183 = !{ptr @.str.119, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @usb_parse_ss_endpoint_companion._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @usb_parse_ss_endpoint_companion._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.121, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/usb/core/config.c", i32 112, i32 3}
!188 = !{ptr @usb_parse_ss_endpoint_companion._entry.120, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @usb_parse_ss_endpoint_companion._entry_ptr.122, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.124, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/usb/core/config.c", i32 118, i32 3}
!192 = !{ptr @usb_parse_ss_endpoint_companion._entry.123, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @usb_parse_ss_endpoint_companion._entry_ptr.125, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.127, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/usb/core/config.c", i32 128, i32 3}
!196 = !{ptr @usb_parse_ss_endpoint_companion._entry.126, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @usb_parse_ss_endpoint_companion._entry_ptr.128, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.129, !195, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.130, !195, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.132, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/usb/core/config.c", i32 137, i32 3}
!202 = !{ptr @usb_parse_ss_endpoint_companion._entry.131, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @usb_parse_ss_endpoint_companion._entry_ptr.133, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.135, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/usb/core/config.c", i32 145, i32 3}
!206 = !{ptr @usb_parse_ss_endpoint_companion._entry.134, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @usb_parse_ss_endpoint_companion._entry_ptr.136, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.138, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/usb/core/config.c", i32 163, i32 3}
!210 = !{ptr @usb_parse_ss_endpoint_companion._entry.137, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @usb_parse_ss_endpoint_companion._entry_ptr.139, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.140, !209, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.141, !209, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.142, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/usb/core/config.c", i32 64, i32 3}
!216 = !{ptr @.str.143, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @usb_parse_ssp_isoc_endpoint_companion._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @usb_parse_ssp_isoc_endpoint_companion._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @bos_desc_len, !220, !"bos_desc_len", i1 false, i1 false}
!220 = !{!"../drivers/usb/core/config.c", i32 968, i32 19}
!221 = !{i32 1, !"wchar_size", i32 2}
!222 = !{i32 1, !"min_enum_size", i32 4}
!223 = !{i32 8, !"branch-target-enforcement", i32 0}
!224 = !{i32 8, !"sign-return-address", i32 0}
!225 = !{i32 8, !"sign-return-address-all", i32 0}
!226 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!227 = !{i32 7, !"uwtable", i32 1}
!228 = !{i32 7, !"frame-pointer", i32 2}
!229 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!230 = !{i64 2148517037}
!231 = !{i64 2148431501, i64 2148431533, i64 2148431562, i64 2148431596, i64 2148431627, i64 2148431650}
!232 = !{!"branch_weights", i32 2000, i32 1}
!233 = !{i64 2149741439}
!234 = !{i64 2148963466, i64 2148963471, i64 2148963484, i64 2148963528, i64 2148963562, i64 2148963583}
!235 = !{i32 0, i32 33}
