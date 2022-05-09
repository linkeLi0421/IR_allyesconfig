; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/renesas/pinctrl-rzn1.c_pt.bc'
source_filename = "../drivers/pinctrl/renesas/pinctrl-rzn1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rzn1_pinctrl = type { ptr, ptr, ptr, ptr, ptr, i32, i32, [2 x i32], ptr, i32, ptr, i32 }
%struct.rzn1_pin_group = type { ptr, ptr, i32, ptr, ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rzn1_pmx_func = type { ptr, ptr, i32 }
%struct.rzn1_pinctrl_regs = type { [170 x i32], [86 x i32], i32, [2 x i32] }

@__initcall__kmod_pinctrl_rzn1__238_949__pinctrl_drv_register4 = internal global ptr @_pinctrl_drv_register, section ".initcall4.init", align 4
@__UNIQUE_ID_author239 = internal constant [62 x i8] c"pinctrl_rzn1.author=Phil Edworthy <phil.edworthy@renesas.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [54 x i8] c"pinctrl_rzn1.description=Renesas RZ/N1 pinctrl driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [55 x i8] c"pinctrl_rzn1.file=drivers/pinctrl/renesas/pinctrl-rzn1\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [28 x i8] c"pinctrl_rzn1.license=GPL v2\00", section ".modinfo", align 1
@rzn1_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rzn1_pinctrl_probe, ptr @rzn1_pinctrl_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rzn1_pinctrl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rzn1-pinctrl\00", [19 x i8] zeroinitializer }, align 32
@rzn1_pinctrl_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rzn1-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rzn1_pinctrl_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr null, ptr null, i32 0, ptr @rzn1_pctrl_ops, ptr @rzn1_pmx_ops, ptr @rzn1_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@rzn1_pins = internal constant { [170 x %struct.pinctrl_pin_desc], [488 x i8] } { [170 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.40, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.41, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.42, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.43, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.44, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.45, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.46, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.47, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.48, ptr null }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.49, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.50, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.51, ptr null }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.52, ptr null }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.53, ptr null }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.54, ptr null }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.55, ptr null }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.56, ptr null }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.57, ptr null }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.58, ptr null }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.59, ptr null }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.60, ptr null }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.61, ptr null }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.62, ptr null }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.63, ptr null }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.64, ptr null }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.65, ptr null }, %struct.pinctrl_pin_desc { i32 26, ptr @.str.66, ptr null }, %struct.pinctrl_pin_desc { i32 27, ptr @.str.67, ptr null }, %struct.pinctrl_pin_desc { i32 28, ptr @.str.68, ptr null }, %struct.pinctrl_pin_desc { i32 29, ptr @.str.69, ptr null }, %struct.pinctrl_pin_desc { i32 30, ptr @.str.70, ptr null }, %struct.pinctrl_pin_desc { i32 31, ptr @.str.71, ptr null }, %struct.pinctrl_pin_desc { i32 32, ptr @.str.72, ptr null }, %struct.pinctrl_pin_desc { i32 33, ptr @.str.73, ptr null }, %struct.pinctrl_pin_desc { i32 34, ptr @.str.74, ptr null }, %struct.pinctrl_pin_desc { i32 35, ptr @.str.75, ptr null }, %struct.pinctrl_pin_desc { i32 36, ptr @.str.76, ptr null }, %struct.pinctrl_pin_desc { i32 37, ptr @.str.77, ptr null }, %struct.pinctrl_pin_desc { i32 38, ptr @.str.78, ptr null }, %struct.pinctrl_pin_desc { i32 39, ptr @.str.79, ptr null }, %struct.pinctrl_pin_desc { i32 40, ptr @.str.80, ptr null }, %struct.pinctrl_pin_desc { i32 41, ptr @.str.81, ptr null }, %struct.pinctrl_pin_desc { i32 42, ptr @.str.82, ptr null }, %struct.pinctrl_pin_desc { i32 43, ptr @.str.83, ptr null }, %struct.pinctrl_pin_desc { i32 44, ptr @.str.84, ptr null }, %struct.pinctrl_pin_desc { i32 45, ptr @.str.85, ptr null }, %struct.pinctrl_pin_desc { i32 46, ptr @.str.86, ptr null }, %struct.pinctrl_pin_desc { i32 47, ptr @.str.87, ptr null }, %struct.pinctrl_pin_desc { i32 48, ptr @.str.88, ptr null }, %struct.pinctrl_pin_desc { i32 49, ptr @.str.89, ptr null }, %struct.pinctrl_pin_desc { i32 50, ptr @.str.90, ptr null }, %struct.pinctrl_pin_desc { i32 51, ptr @.str.91, ptr null }, %struct.pinctrl_pin_desc { i32 52, ptr @.str.92, ptr null }, %struct.pinctrl_pin_desc { i32 53, ptr @.str.93, ptr null }, %struct.pinctrl_pin_desc { i32 54, ptr @.str.94, ptr null }, %struct.pinctrl_pin_desc { i32 55, ptr @.str.95, ptr null }, %struct.pinctrl_pin_desc { i32 56, ptr @.str.96, ptr null }, %struct.pinctrl_pin_desc { i32 57, ptr @.str.97, ptr null }, %struct.pinctrl_pin_desc { i32 58, ptr @.str.98, ptr null }, %struct.pinctrl_pin_desc { i32 59, ptr @.str.99, ptr null }, %struct.pinctrl_pin_desc { i32 60, ptr @.str.100, ptr null }, %struct.pinctrl_pin_desc { i32 61, ptr @.str.101, ptr null }, %struct.pinctrl_pin_desc { i32 62, ptr @.str.102, ptr null }, %struct.pinctrl_pin_desc { i32 63, ptr @.str.103, ptr null }, %struct.pinctrl_pin_desc { i32 64, ptr @.str.104, ptr null }, %struct.pinctrl_pin_desc { i32 65, ptr @.str.105, ptr null }, %struct.pinctrl_pin_desc { i32 66, ptr @.str.106, ptr null }, %struct.pinctrl_pin_desc { i32 67, ptr @.str.107, ptr null }, %struct.pinctrl_pin_desc { i32 68, ptr @.str.108, ptr null }, %struct.pinctrl_pin_desc { i32 69, ptr @.str.109, ptr null }, %struct.pinctrl_pin_desc { i32 70, ptr @.str.110, ptr null }, %struct.pinctrl_pin_desc { i32 71, ptr @.str.111, ptr null }, %struct.pinctrl_pin_desc { i32 72, ptr @.str.112, ptr null }, %struct.pinctrl_pin_desc { i32 73, ptr @.str.113, ptr null }, %struct.pinctrl_pin_desc { i32 74, ptr @.str.114, ptr null }, %struct.pinctrl_pin_desc { i32 75, ptr @.str.115, ptr null }, %struct.pinctrl_pin_desc { i32 76, ptr @.str.116, ptr null }, %struct.pinctrl_pin_desc { i32 77, ptr @.str.117, ptr null }, %struct.pinctrl_pin_desc { i32 78, ptr @.str.118, ptr null }, %struct.pinctrl_pin_desc { i32 79, ptr @.str.119, ptr null }, %struct.pinctrl_pin_desc { i32 80, ptr @.str.120, ptr null }, %struct.pinctrl_pin_desc { i32 81, ptr @.str.121, ptr null }, %struct.pinctrl_pin_desc { i32 82, ptr @.str.122, ptr null }, %struct.pinctrl_pin_desc { i32 83, ptr @.str.123, ptr null }, %struct.pinctrl_pin_desc { i32 84, ptr @.str.124, ptr null }, %struct.pinctrl_pin_desc { i32 85, ptr @.str.125, ptr null }, %struct.pinctrl_pin_desc { i32 86, ptr @.str.126, ptr null }, %struct.pinctrl_pin_desc { i32 87, ptr @.str.127, ptr null }, %struct.pinctrl_pin_desc { i32 88, ptr @.str.128, ptr null }, %struct.pinctrl_pin_desc { i32 89, ptr @.str.129, ptr null }, %struct.pinctrl_pin_desc { i32 90, ptr @.str.130, ptr null }, %struct.pinctrl_pin_desc { i32 91, ptr @.str.131, ptr null }, %struct.pinctrl_pin_desc { i32 92, ptr @.str.132, ptr null }, %struct.pinctrl_pin_desc { i32 93, ptr @.str.133, ptr null }, %struct.pinctrl_pin_desc { i32 94, ptr @.str.134, ptr null }, %struct.pinctrl_pin_desc { i32 95, ptr @.str.135, ptr null }, %struct.pinctrl_pin_desc { i32 96, ptr @.str.136, ptr null }, %struct.pinctrl_pin_desc { i32 97, ptr @.str.137, ptr null }, %struct.pinctrl_pin_desc { i32 98, ptr @.str.138, ptr null }, %struct.pinctrl_pin_desc { i32 99, ptr @.str.139, ptr null }, %struct.pinctrl_pin_desc { i32 100, ptr @.str.140, ptr null }, %struct.pinctrl_pin_desc { i32 101, ptr @.str.141, ptr null }, %struct.pinctrl_pin_desc { i32 102, ptr @.str.142, ptr null }, %struct.pinctrl_pin_desc { i32 103, ptr @.str.143, ptr null }, %struct.pinctrl_pin_desc { i32 104, ptr @.str.144, ptr null }, %struct.pinctrl_pin_desc { i32 105, ptr @.str.145, ptr null }, %struct.pinctrl_pin_desc { i32 106, ptr @.str.146, ptr null }, %struct.pinctrl_pin_desc { i32 107, ptr @.str.147, ptr null }, %struct.pinctrl_pin_desc { i32 108, ptr @.str.148, ptr null }, %struct.pinctrl_pin_desc { i32 109, ptr @.str.149, ptr null }, %struct.pinctrl_pin_desc { i32 110, ptr @.str.150, ptr null }, %struct.pinctrl_pin_desc { i32 111, ptr @.str.151, ptr null }, %struct.pinctrl_pin_desc { i32 112, ptr @.str.152, ptr null }, %struct.pinctrl_pin_desc { i32 113, ptr @.str.153, ptr null }, %struct.pinctrl_pin_desc { i32 114, ptr @.str.154, ptr null }, %struct.pinctrl_pin_desc { i32 115, ptr @.str.155, ptr null }, %struct.pinctrl_pin_desc { i32 116, ptr @.str.156, ptr null }, %struct.pinctrl_pin_desc { i32 117, ptr @.str.157, ptr null }, %struct.pinctrl_pin_desc { i32 118, ptr @.str.158, ptr null }, %struct.pinctrl_pin_desc { i32 119, ptr @.str.159, ptr null }, %struct.pinctrl_pin_desc { i32 120, ptr @.str.160, ptr null }, %struct.pinctrl_pin_desc { i32 121, ptr @.str.161, ptr null }, %struct.pinctrl_pin_desc { i32 122, ptr @.str.162, ptr null }, %struct.pinctrl_pin_desc { i32 123, ptr @.str.163, ptr null }, %struct.pinctrl_pin_desc { i32 124, ptr @.str.164, ptr null }, %struct.pinctrl_pin_desc { i32 125, ptr @.str.165, ptr null }, %struct.pinctrl_pin_desc { i32 126, ptr @.str.166, ptr null }, %struct.pinctrl_pin_desc { i32 127, ptr @.str.167, ptr null }, %struct.pinctrl_pin_desc { i32 128, ptr @.str.168, ptr null }, %struct.pinctrl_pin_desc { i32 129, ptr @.str.169, ptr null }, %struct.pinctrl_pin_desc { i32 130, ptr @.str.170, ptr null }, %struct.pinctrl_pin_desc { i32 131, ptr @.str.171, ptr null }, %struct.pinctrl_pin_desc { i32 132, ptr @.str.172, ptr null }, %struct.pinctrl_pin_desc { i32 133, ptr @.str.173, ptr null }, %struct.pinctrl_pin_desc { i32 134, ptr @.str.174, ptr null }, %struct.pinctrl_pin_desc { i32 135, ptr @.str.175, ptr null }, %struct.pinctrl_pin_desc { i32 136, ptr @.str.176, ptr null }, %struct.pinctrl_pin_desc { i32 137, ptr @.str.177, ptr null }, %struct.pinctrl_pin_desc { i32 138, ptr @.str.178, ptr null }, %struct.pinctrl_pin_desc { i32 139, ptr @.str.179, ptr null }, %struct.pinctrl_pin_desc { i32 140, ptr @.str.180, ptr null }, %struct.pinctrl_pin_desc { i32 141, ptr @.str.181, ptr null }, %struct.pinctrl_pin_desc { i32 142, ptr @.str.182, ptr null }, %struct.pinctrl_pin_desc { i32 143, ptr @.str.183, ptr null }, %struct.pinctrl_pin_desc { i32 144, ptr @.str.184, ptr null }, %struct.pinctrl_pin_desc { i32 145, ptr @.str.185, ptr null }, %struct.pinctrl_pin_desc { i32 146, ptr @.str.186, ptr null }, %struct.pinctrl_pin_desc { i32 147, ptr @.str.187, ptr null }, %struct.pinctrl_pin_desc { i32 148, ptr @.str.188, ptr null }, %struct.pinctrl_pin_desc { i32 149, ptr @.str.189, ptr null }, %struct.pinctrl_pin_desc { i32 150, ptr @.str.190, ptr null }, %struct.pinctrl_pin_desc { i32 151, ptr @.str.191, ptr null }, %struct.pinctrl_pin_desc { i32 152, ptr @.str.192, ptr null }, %struct.pinctrl_pin_desc { i32 153, ptr @.str.193, ptr null }, %struct.pinctrl_pin_desc { i32 154, ptr @.str.194, ptr null }, %struct.pinctrl_pin_desc { i32 155, ptr @.str.195, ptr null }, %struct.pinctrl_pin_desc { i32 156, ptr @.str.196, ptr null }, %struct.pinctrl_pin_desc { i32 157, ptr @.str.197, ptr null }, %struct.pinctrl_pin_desc { i32 158, ptr @.str.198, ptr null }, %struct.pinctrl_pin_desc { i32 159, ptr @.str.199, ptr null }, %struct.pinctrl_pin_desc { i32 160, ptr @.str.200, ptr null }, %struct.pinctrl_pin_desc { i32 161, ptr @.str.201, ptr null }, %struct.pinctrl_pin_desc { i32 162, ptr @.str.202, ptr null }, %struct.pinctrl_pin_desc { i32 163, ptr @.str.203, ptr null }, %struct.pinctrl_pin_desc { i32 164, ptr @.str.204, ptr null }, %struct.pinctrl_pin_desc { i32 165, ptr @.str.205, ptr null }, %struct.pinctrl_pin_desc { i32 166, ptr @.str.206, ptr null }, %struct.pinctrl_pin_desc { i32 167, ptr @.str.207, ptr null }, %struct.pinctrl_pin_desc { i32 168, ptr @.str.208, ptr null }, %struct.pinctrl_pin_desc { i32 169, ptr @.str.209, ptr null }], [488 x i8] zeroinitializer }, align 32
@rzn1_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 894, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fail to probe dt properties\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rzn1_pinctrl_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/pinctrl/renesas/pinctrl-rzn1.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rzn1_pinctrl_probe._entry_ptr = internal global ptr @rzn1_pinctrl_probe._entry, section ".printk_index", align 4
@rzn1_pinctrl_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 903, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"could not register rzn1 pinctrl driver\0A\00", [56 x i8] zeroinitializer }, align 32
@rzn1_pinctrl_probe._entry_ptr.8 = internal global ptr @rzn1_pinctrl_probe._entry.6, section ".printk_index", align 4
@rzn1_pinctrl_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 911, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"probed\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rzn1_pinctrl_probe._entry_ptr.12 = internal global ptr @rzn1_pinctrl_probe._entry.9, section ".printk_index", align 4
@rzn1_pctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @rzn1_get_groups_count, ptr @rzn1_get_group_name, ptr @rzn1_get_group_pins, ptr null, ptr @rzn1_dt_node_to_map, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@rzn1_pmx_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @rzn1_pmx_get_funcs_count, ptr @rzn1_pmx_get_func_name, ptr @rzn1_pmx_get_groups, ptr @rzn1_set_mux, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@rzn1_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @rzn1_pinconf_get, ptr @rzn1_pinconf_set, ptr @rzn1_pinconf_group_get, ptr @rzn1_pinconf_group_set, ptr null, ptr null, ptr @pinconf_generic_dump_config }, [32 x i8] zeroinitializer }, align 32
@rzn1_dt_node_to_map_one.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 0, i8 86, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pinctrl_rzn1\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rzn1_dt_node_to_map_one\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"processing node %pOF\0A\00", [42 x i8] zeroinitializer }, align 32
@rzn1_dt_node_to_map_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 350, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to find group for node %pOF\0A\00", [60 x i8] zeroinitializer }, align 32
@rzn1_dt_node_to_map_one._entry_ptr = internal global ptr @rzn1_dt_node_to_map_one._entry, section ".printk_index", align 4
@rzn1_dt_node_to_map_one._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.14, ptr @.str.3, i32 359, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%pOF: could not parse property\0A\00", [32 x i8] zeroinitializer }, align 32
@rzn1_dt_node_to_map_one._entry_ptr.19 = internal global ptr @rzn1_dt_node_to_map_one._entry.17, section ".printk_index", align 4
@rzn1_dt_node_to_map_one.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.3, ptr @.str.20, i8 0, i8 97, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"maps: function %s group %s (%d pins)\0A\00", [58 x i8] zeroinitializer }, align 32
@rzn1_set_mux.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 117, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rzn1_set_mux\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"set mux %s(%d) group %s(%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@rzn1_set_hw_pin_func.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 65, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rzn1_set_hw_pin_func\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"setting func for pin %u to %u\0A\00", [33 x i8] zeroinitializer }, align 32
@rzn1_pinctrl_mdio_select._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 199, ptr @.str.27, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"conflicting setting for mdio%d!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rzn1_pinctrl_mdio_select\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rzn1_pinctrl_mdio_select._entry_ptr = internal global ptr @rzn1_pinctrl_mdio_select._entry, section ".printk_index", align 4
@rzn1_pinctrl_mdio_select.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.26, ptr @.str.3, ptr @.str.28, i8 0, i8 50, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"setting mdio%d to %u\0A\00", [42 x i8] zeroinitializer }, align 32
@rzn1_pinconf_get.reg_drive = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 6, i32 8, i32 12], [16 x i8] zeroinitializer }, align 32
@rzn1_pinconf_set.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 -117, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rzn1_pinconf_set\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"set pin %d pull up\0A\00", [44 x i8] zeroinitializer }, align 32
@rzn1_pinconf_set.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.29, ptr @.str.3, ptr @.str.31, i8 0, i8 -115, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"set pin %d pull down\0A\00", [42 x i8] zeroinitializer }, align 32
@rzn1_pinconf_set.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.29, ptr @.str.3, ptr @.str.32, i8 0, i8 -114, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set pin %d bias off\0A\00", [43 x i8] zeroinitializer }, align 32
@rzn1_pinconf_set.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.29, ptr @.str.3, ptr @.str.33, i8 0, i8 -113, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set pin %d drv %umA\0A\00", [43 x i8] zeroinitializer }, align 32
@rzn1_pinconf_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.3, i32 591, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Drive strength %umA not supported\0A\00", [61 x i8] zeroinitializer }, align 32
@rzn1_pinconf_set._entry_ptr = internal global ptr @rzn1_pinconf_set._entry, section ".printk_index", align 4
@rzn1_pinconf_set.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.29, ptr @.str.3, ptr @.str.35, i8 0, i8 -106, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set pin %d High-Z\0A\00", [45 x i8] zeroinitializer }, align 32
@rzn1_pinconf_group_get.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 0, i8 -99, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rzn1_pinconf_group_get\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"group get %s selector:%u\0A\00", [38 x i8] zeroinitializer }, align 32
@rzn1_pinconf_group_set.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 0, i8 -93, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rzn1_pinconf_group_set\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"group set %s selector:%u configs:%p/%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pl_gpio0\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pl_gpio1\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pl_gpio2\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pl_gpio3\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pl_gpio4\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pl_gpio5\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pl_gpio6\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pl_gpio7\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pl_gpio8\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pl_gpio9\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio10\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio11\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio12\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio13\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio14\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio15\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio16\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio17\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio18\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio19\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio20\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio21\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio22\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio23\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio24\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio25\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio26\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio27\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio28\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio29\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio30\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio31\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio32\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio33\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio34\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio35\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio36\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio37\00", [22 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio38\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio39\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio40\00", [22 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio41\00", [22 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio42\00", [22 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio43\00", [22 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio44\00", [22 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio45\00", [22 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio46\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio47\00", [22 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio48\00", [22 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio49\00", [22 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio50\00", [22 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio51\00", [22 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio52\00", [22 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio53\00", [22 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio54\00", [22 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio55\00", [22 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio56\00", [22 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio57\00", [22 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio58\00", [22 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio59\00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio60\00", [22 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio61\00", [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio62\00", [22 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio63\00", [22 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio64\00", [22 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio65\00", [22 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio66\00", [22 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio67\00", [22 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio68\00", [22 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio69\00", [22 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio70\00", [22 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio71\00", [22 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio72\00", [22 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio73\00", [22 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio74\00", [22 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio75\00", [22 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio76\00", [22 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio77\00", [22 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio78\00", [22 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio79\00", [22 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio80\00", [22 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio81\00", [22 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio82\00", [22 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio83\00", [22 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio84\00", [22 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio85\00", [22 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio86\00", [22 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio87\00", [22 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio88\00", [22 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio89\00", [22 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio90\00", [22 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio91\00", [22 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio92\00", [22 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio93\00", [22 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio94\00", [22 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio95\00", [22 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio96\00", [22 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio97\00", [22 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio98\00", [22 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl_gpio99\00", [22 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio100\00", [21 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio101\00", [21 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio102\00", [21 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio103\00", [21 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio104\00", [21 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio105\00", [21 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio106\00", [21 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio107\00", [21 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio108\00", [21 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio109\00", [21 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio110\00", [21 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio111\00", [21 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio112\00", [21 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio113\00", [21 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio114\00", [21 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio115\00", [21 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio116\00", [21 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio117\00", [21 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio118\00", [21 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio119\00", [21 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio120\00", [21 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio121\00", [21 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio122\00", [21 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio123\00", [21 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio124\00", [21 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio125\00", [21 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio126\00", [21 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio127\00", [21 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio128\00", [21 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio129\00", [21 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio130\00", [21 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio131\00", [21 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio132\00", [21 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio133\00", [21 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio134\00", [21 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio135\00", [21 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio136\00", [21 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio137\00", [21 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio138\00", [21 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio139\00", [21 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio140\00", [21 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio141\00", [21 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio142\00", [21 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio143\00", [21 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio144\00", [21 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio145\00", [21 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio146\00", [21 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio147\00", [21 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio148\00", [21 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio149\00", [21 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio150\00", [21 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio151\00", [21 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio152\00", [21 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio153\00", [21 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio154\00", [21 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio155\00", [21 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio156\00", [21 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio157\00", [21 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio158\00", [21 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio159\00", [21 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio160\00", [21 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio161\00", [21 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio162\00", [21 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio163\00", [21 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio164\00", [21 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio165\00", [21 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio166\00", [21 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio167\00", [21 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio168\00", [21 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl_gpio169\00", [21 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pinmux\00", [25 x i8] zeroinitializer }, align 32
@rzn1_pinctrl_parse_functions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.212, ptr @.str.3, i32 769, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no groups defined in %pOF\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rzn1_pinctrl_parse_functions\00", [35 x i8] zeroinitializer }, align 32
@rzn1_pinctrl_parse_functions._entry_ptr = internal global ptr @rzn1_pinctrl_parse_functions._entry, section ".printk_index", align 4
@rzn1_pinctrl_parse_functions.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.212, ptr @.str.3, ptr @.str.213, i8 0, i8 -63, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.213 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"function %s has %d groups\0A\00", [37 x i8] zeroinitializer }, align 32
@rzn1_pinctrl_parse_functions.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.212, ptr @.str.3, ptr @.str.214, i8 0, i8 -55, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.214 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"function %s parsed %u/%u groups\0A\00", [63 x i8] zeroinitializer }, align 32
@rzn1_pinctrl_parse_groups.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.215, ptr @.str.3, ptr @.str.216, i8 0, i8 -83, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.215 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rzn1_pinctrl_parse_groups\00", [38 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@rzn1_pinctrl_parse_groups._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.215, ptr @.str.3, i32 705, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"no pinmux property in node %pOF\0A\00", [63 x i8] zeroinitializer }, align 32
@rzn1_pinctrl_parse_groups._entry_ptr = internal global ptr @rzn1_pinctrl_parse_groups._entry, section ".printk_index", align 4
@rzn1_pinctrl_parse_groups._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.215, ptr @.str.3, i32 712, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid pinmux in node %pOF\0A\00", [35 x i8] zeroinitializer }, align 32
@rzn1_pinctrl_parse_groups._entry_ptr.220 = internal global ptr @rzn1_pinctrl_parse_groups._entry.218, section ".printk_index", align 4
@switch.table.rzn1_pinconf_set = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 0, i32 1024, i32 0, i32 2048, i32 0, i32 0, i32 0, i32 3072], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.221 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 15]
@__sancov_gen_cov_switch_values.222 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 5, i64 9]
@___asan_gen_.223 = private unnamed_addr constant [20 x i8] c"rzn1_pinctrl_driver\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 936, i32 31 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 940, i32 12 }
@___asan_gen_.229 = private unnamed_addr constant [19 x i8] c"rzn1_pinctrl_match\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 930, i32 34 }
@___asan_gen_.232 = private unnamed_addr constant [18 x i8] c"rzn1_pinctrl_desc\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 677, i32 28 }
@___asan_gen_.235 = private unnamed_addr constant [10 x i8] c"rzn1_pins\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 128, i32 38 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 894, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 903, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 911, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant [15 x i8] c"rzn1_pctrl_ops\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 424, i32 33 }
@___asan_gen_.274 = private unnamed_addr constant [13 x i8] c"rzn1_pmx_ops\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 478, i32 32 }
@___asan_gen_.277 = private unnamed_addr constant [17 x i8] c"rzn1_pinconf_ops\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 668, i32 33 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 346, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 350, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 359, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 389, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 467, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 261, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 199, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 202, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant [10 x i8] c"reg_drive\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 490, i32 19 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 559, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 564, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 569, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 574, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 589, i32 5 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 601, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 628, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 654, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 129, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 129, i32 15 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 129, i32 28 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 129, i32 41 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 129, i32 54 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 130, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 130, i32 15 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 130, i32 28 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 130, i32 41 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 130, i32 54 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 131, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 131, i32 16 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 131, i32 30 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 131, i32 44 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 131, i32 58 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 132, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 132, i32 16 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 132, i32 30 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 132, i32 44 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 132, i32 58 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 133, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 133, i32 16 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 133, i32 30 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 133, i32 44 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 133, i32 58 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 134, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 134, i32 16 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 134, i32 30 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 134, i32 44 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 134, i32 58 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 135, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 135, i32 16 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 135, i32 30 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 135, i32 44 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 135, i32 58 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 136, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 136, i32 16 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 136, i32 30 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 136, i32 44 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 136, i32 58 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 137, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 137, i32 16 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 137, i32 30 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 137, i32 44 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 137, i32 58 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 138, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 138, i32 16 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 138, i32 30 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 138, i32 44 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 138, i32 58 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 139, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 139, i32 16 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 139, i32 30 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 139, i32 44 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 139, i32 58 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 140, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 140, i32 16 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 140, i32 30 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 140, i32 44 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 140, i32 58 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 141, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 141, i32 16 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 141, i32 30 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 141, i32 44 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 141, i32 58 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 142, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 142, i32 16 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 142, i32 30 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 142, i32 44 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 142, i32 58 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 143, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 143, i32 16 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 143, i32 30 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 143, i32 44 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 143, i32 58 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 144, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 144, i32 16 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 144, i32 30 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 144, i32 44 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 144, i32 58 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 145, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 145, i32 16 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 145, i32 30 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 145, i32 44 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 145, i32 58 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 146, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 146, i32 16 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 146, i32 30 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 146, i32 44 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 146, i32 58 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 147, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 147, i32 16 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 147, i32 30 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 147, i32 44 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 147, i32 58 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 148, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 148, i32 16 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 148, i32 30 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 148, i32 44 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 148, i32 58 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 149, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 149, i32 17 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 149, i32 32 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 149, i32 47 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 150, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 150, i32 17 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 150, i32 32 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 150, i32 47 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 151, i32 2 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 151, i32 17 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 151, i32 32 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 151, i32 47 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 152, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 152, i32 17 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 152, i32 32 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 152, i32 47 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 153, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 153, i32 17 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 153, i32 32 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 153, i32 47 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 154, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 154, i32 17 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 154, i32 32 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 154, i32 47 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 155, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 155, i32 17 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 155, i32 32 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 155, i32 47 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 156, i32 2 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 156, i32 17 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 156, i32 32 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 156, i32 47 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 157, i32 2 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 157, i32 17 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 157, i32 32 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 157, i32 47 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 158, i32 2 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 158, i32 17 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 158, i32 32 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 158, i32 47 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 159, i32 2 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 159, i32 17 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 159, i32 32 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 159, i32 47 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 160, i32 2 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 160, i32 17 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 160, i32 32 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 160, i32 47 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 161, i32 2 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 161, i32 17 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 161, i32 32 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 161, i32 47 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 162, i32 2 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 162, i32 17 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 162, i32 32 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 162, i32 47 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 163, i32 2 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 163, i32 17 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 163, i32 32 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 163, i32 47 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 164, i32 2 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 164, i32 17 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 164, i32 32 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 164, i32 47 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 165, i32 2 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 165, i32 17 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 165, i32 32 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 165, i32 47 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 166, i32 2 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 166, i32 17 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 742, i32 38 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 769, i32 3 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 772, i32 2 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 805, i32 2 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 692, i32 2 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 704, i32 3 }
@___asan_gen_.910 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.913 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.914 = private constant [42 x i8] c"../drivers/pinctrl/renesas/pinctrl-rzn1.c\00", align 1
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.914, i32 711, i32 3 }
@___asan_gen_.916 = private unnamed_addr constant [30 x i8] c"switch.table.rzn1_pinconf_set\00", align 1
@llvm.compiler.used = appending global [247 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__initcall__kmod_pinctrl_rzn1__238_949__pinctrl_drv_register4, ptr @rzn1_dt_node_to_map_one._entry, ptr @rzn1_dt_node_to_map_one._entry.17, ptr @rzn1_dt_node_to_map_one._entry_ptr, ptr @rzn1_dt_node_to_map_one._entry_ptr.19, ptr @rzn1_pinconf_set._entry, ptr @rzn1_pinconf_set._entry_ptr, ptr @rzn1_pinctrl_mdio_select._entry, ptr @rzn1_pinctrl_mdio_select._entry_ptr, ptr @rzn1_pinctrl_parse_functions._entry, ptr @rzn1_pinctrl_parse_functions._entry_ptr, ptr @rzn1_pinctrl_parse_groups._entry, ptr @rzn1_pinctrl_parse_groups._entry.218, ptr @rzn1_pinctrl_parse_groups._entry_ptr, ptr @rzn1_pinctrl_parse_groups._entry_ptr.220, ptr @rzn1_pinctrl_probe._entry, ptr @rzn1_pinctrl_probe._entry.6, ptr @rzn1_pinctrl_probe._entry.9, ptr @rzn1_pinctrl_probe._entry_ptr, ptr @rzn1_pinctrl_probe._entry_ptr.12, ptr @rzn1_pinctrl_probe._entry_ptr.8, ptr @rzn1_pinctrl_driver, ptr @.str, ptr @rzn1_pinctrl_match, ptr @rzn1_pinctrl_desc, ptr @rzn1_pins, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @rzn1_pctrl_ops, ptr @rzn1_pmx_ops, ptr @rzn1_pinconf_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @rzn1_pinconf_get.reg_drive, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.219, ptr @switch.table.rzn1_pinconf_set], section "llvm.metadata"
@0 = internal global [232 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzn1_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzn1_pinctrl_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzn1_pinctrl_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzn1_pins to i32), i32 2040, i32 2528, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzn1_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzn1_pinctrl_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzn1_pinctrl_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzn1_pctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzn1_pmx_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzn1_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzn1_dt_node_to_map_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzn1_dt_node_to_map_one._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzn1_pinctrl_mdio_select._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzn1_pinconf_get.reg_drive to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzn1_pinconf_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzn1_pinctrl_parse_functions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzn1_pinctrl_parse_groups._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzn1_pinctrl_parse_groups._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rzn1_pinconf_set to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @_pinctrl_drv_register() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rzn1_pinctrl_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzn1_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 52, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mdio_func = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call.i, i32 0, i32 7
  %0 = ptrtoint ptr %mdio_func to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mdio_func, align 4
  %arrayidx2 = getelementptr %struct.rzn1_pinctrl, ptr %call.i, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %arrayidx2, align 4
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %2 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call3, align 4
  %add = add i32 %3, 1024
  %lev1_protect_phys = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %lev1_protect_phys to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %lev1_protect_phys, align 4
  %call5 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call3) #7
  %lev1 = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %lev1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %lev1, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #7
  %7 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call12, align 4
  %add14 = add i32 %8, 1024
  %lev2_protect_phys = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %lev2_protect_phys to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add14, ptr %lev2_protect_phys, align 4
  %call16 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call12) #7
  %lev2 = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %lev2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call16, ptr %lev2, align 4
  %cmp.i108 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end11
  %call24 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call24, ptr %clk, align 4
  %cmp.i109 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i109, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end22
  %call.i110 = tail call i32 @clk_prepare(ptr noundef %call24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %tobool.not.i = icmp eq i32 %call.i110, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end30
  %call1.i = tail call i32 @clk_enable(ptr noundef %call24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end35, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call24) #7
  br label %cleanup

if.end35:                                         ; preds = %if.end.i
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %call.i, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i111 = icmp eq ptr %16, null
  br i1 %tobool.not.i111, label %if.end.i112, label %if.end35.dev_name.exit_crit_edge

if.end35.dev_name.exit_crit_edge:                 ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i112:                                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i112, %if.end35.dev_name.exit_crit_edge
  %retval.0.i113 = phi ptr [ %18, %if.end.i112 ], [ %16, %if.end35.dev_name.exit_crit_edge ]
  store ptr %retval.0.i113, ptr @rzn1_pinctrl_desc, align 4
  store ptr @rzn1_pins, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @rzn1_pinctrl_desc, i32 0, i32 1), align 4
  store i32 170, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @rzn1_pinctrl_desc, i32 0, i32 2), align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %19 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call ptr @of_get_next_child(ptr noundef %20, ptr noundef null) #7
  %cmp.not5.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not5.i.i, label %dev_name.exit.if.end44_crit_edge, label %dev_name.exit.for.body.i.i_crit_edge

dev_name.exit.for.body.i.i_crit_edge:             ; preds = %dev_name.exit
  br label %for.body.i.i

dev_name.exit.if.end44_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %dev_name.exit.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %dev_name.exit.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %dev_name.exit.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = tail call ptr @of_get_next_child(ptr noundef %20, ptr noundef nonnull %child.06.i.i) #7
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %of_get_child_count.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

of_get_child_count.exit.i:                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483646, i32 %num.07.i.i)
  %cmp.i114 = icmp ugt i32 %num.07.i.i, 2147483646
  br i1 %cmp.i114, label %of_get_child_count.exit.i.if.end44_crit_edge, label %if.end.i115

of_get_child_count.exit.i.if.end44_crit_edge:     ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.end.i115:                                      ; preds = %of_get_child_count.exit.i
  %nfunctions.i = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call.i, i32 0, i32 11
  %21 = ptrtoint ptr %nfunctions.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %inc.i.i, ptr %nfunctions.i, align 4
  %22 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc.i.i, i32 12) #7
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %devm_kmalloc_array.exit.thread.i, label %devm_kmalloc_array.exit.i, !prof !479

devm_kmalloc_array.exit.thread.i:                 ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #9
  %functions63.i = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call.i, i32 0, i32 10
  %24 = ptrtoint ptr %functions63.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %functions63.i, align 4
  br label %err_clk.sink.split

devm_kmalloc_array.exit.i:                        ; preds = %if.end.i115
  %25 = extractvalue { i32, i1 } %22, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %25, i32 noundef 3264) #7
  %functions.i = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call.i, i32 0, i32 10
  %26 = ptrtoint ptr %functions.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call5.i.i, ptr %functions.i, align 4
  %tobool.not.i116 = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not.i116, label %devm_kmalloc_array.exit.i.err_clk.sink.split_crit_edge, label %if.end5.i

devm_kmalloc_array.exit.i.err_clk.sink.split_crit_edge: ; preds = %devm_kmalloc_array.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk.sink.split

if.end5.i:                                        ; preds = %devm_kmalloc_array.exit.i
  %ngroups.i = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call.i, i32 0, i32 9
  %27 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %ngroups.i, align 4
  %call6.i = tail call ptr @of_get_next_child(ptr noundef %20, ptr noundef null) #7
  %cmp7.not69.i = icmp eq ptr %call6.i, null
  br i1 %cmp7.not69.i, label %if.end5.i.for.end.i_crit_edge, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  br label %for.body.i

if.end5.i.for.end.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %rzn1_pinctrl_count_function_groups.exit.i.for.body.i_crit_edge, %if.end5.i.for.body.i_crit_edge
  %maxgroups.072.i = phi i32 [ %add.i, %rzn1_pinctrl_count_function_groups.exit.i.for.body.i_crit_edge ], [ 0, %if.end5.i.for.body.i_crit_edge ]
  %child.070.i = phi ptr [ %call9.i, %rzn1_pinctrl_count_function_groups.exit.i.for.body.i_crit_edge ], [ %call6.i, %if.end5.i.for.body.i_crit_edge ]
  %call.i.i.i = tail call i32 @of_property_count_elems_of_size(ptr noundef nonnull %child.070.i, ptr noundef nonnull @.str.210, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i.i, 0
  %spec.select.i.i = zext i1 %cmp.i.i to i32
  %call1.i54.i = tail call ptr @of_get_next_child(ptr noundef nonnull %child.070.i, ptr noundef null) #7
  %cmp2.not17.i.i = icmp eq ptr %call1.i54.i, null
  br i1 %cmp2.not17.i.i, label %for.body.i.rzn1_pinctrl_count_function_groups.exit.i_crit_edge, label %for.body.i.for.body.i55.i_crit_edge

for.body.i.for.body.i55.i_crit_edge:              ; preds = %for.body.i
  br label %for.body.i55.i

for.body.i.rzn1_pinctrl_count_function_groups.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rzn1_pinctrl_count_function_groups.exit.i

for.body.i55.i:                                   ; preds = %for.body.i55.i.for.body.i55.i_crit_edge, %for.body.i.for.body.i55.i_crit_edge
  %count.119.i.i = phi i32 [ %spec.select15.i.i, %for.body.i55.i.for.body.i55.i_crit_edge ], [ %spec.select.i.i, %for.body.i.for.body.i55.i_crit_edge ]
  %child.018.i.i = phi ptr [ %call8.i.i, %for.body.i55.i.for.body.i55.i_crit_edge ], [ %call1.i54.i, %for.body.i.for.body.i55.i_crit_edge ]
  %call.i16.i.i = tail call i32 @of_property_count_elems_of_size(ptr noundef nonnull %child.018.i.i, ptr noundef nonnull @.str.210, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16.i.i)
  %cmp4.i.i = icmp sgt i32 %call.i16.i.i, 0
  %inc6.i.i = zext i1 %cmp4.i.i to i32
  %spec.select15.i.i = add i32 %count.119.i.i, %inc6.i.i
  %call8.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %child.070.i, ptr noundef nonnull %child.018.i.i) #7
  %cmp2.not.i.i = icmp eq ptr %call8.i.i, null
  br i1 %cmp2.not.i.i, label %for.body.i55.i.rzn1_pinctrl_count_function_groups.exit.i_crit_edge, label %for.body.i55.i.for.body.i55.i_crit_edge

for.body.i55.i.for.body.i55.i_crit_edge:          ; preds = %for.body.i55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i55.i

for.body.i55.i.rzn1_pinctrl_count_function_groups.exit.i_crit_edge: ; preds = %for.body.i55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rzn1_pinctrl_count_function_groups.exit.i

rzn1_pinctrl_count_function_groups.exit.i:        ; preds = %for.body.i55.i.rzn1_pinctrl_count_function_groups.exit.i_crit_edge, %for.body.i.rzn1_pinctrl_count_function_groups.exit.i_crit_edge
  %count.1.lcssa.i.i = phi i32 [ %spec.select.i.i, %for.body.i.rzn1_pinctrl_count_function_groups.exit.i_crit_edge ], [ %spec.select15.i.i, %for.body.i55.i.rzn1_pinctrl_count_function_groups.exit.i_crit_edge ]
  %add.i = add i32 %count.1.lcssa.i.i, %maxgroups.072.i
  %call9.i = tail call ptr @of_get_next_child(ptr noundef %20, ptr noundef nonnull %child.070.i) #7
  %cmp7.not.i = icmp eq ptr %call9.i, null
  br i1 %cmp7.not.i, label %rzn1_pinctrl_count_function_groups.exit.i.for.end.i_crit_edge, label %rzn1_pinctrl_count_function_groups.exit.i.for.body.i_crit_edge

rzn1_pinctrl_count_function_groups.exit.i.for.body.i_crit_edge: ; preds = %rzn1_pinctrl_count_function_groups.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

rzn1_pinctrl_count_function_groups.exit.i.for.end.i_crit_edge: ; preds = %rzn1_pinctrl_count_function_groups.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %rzn1_pinctrl_count_function_groups.exit.i.for.end.i_crit_edge, %if.end5.i.for.end.i_crit_edge
  %maxgroups.0.lcssa.i = phi i32 [ 0, %if.end5.i.for.end.i_crit_edge ], [ %add.i, %rzn1_pinctrl_count_function_groups.exit.i.for.end.i_crit_edge ]
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %maxgroups.0.lcssa.i, i32 20) #7
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %devm_kmalloc_array.exit59.thread.i, label %devm_kmalloc_array.exit59.i, !prof !479

devm_kmalloc_array.exit59.thread.i:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %groups66.i = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call.i, i32 0, i32 8
  %30 = ptrtoint ptr %groups66.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %groups66.i, align 4
  br label %err_clk.sink.split

devm_kmalloc_array.exit59.i:                      ; preds = %for.end.i
  %31 = extractvalue { i32, i1 } %28, 0
  %call5.i56.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %31, i32 noundef 3264) #7
  %groups.i = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call.i, i32 0, i32 8
  %32 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call5.i56.i, ptr %groups.i, align 4
  %tobool13.not.i = icmp eq ptr %call5.i56.i, null
  br i1 %tobool13.not.i, label %devm_kmalloc_array.exit59.i.err_clk.sink.split_crit_edge, label %if.end15.i

devm_kmalloc_array.exit59.i.err_clk.sink.split_crit_edge: ; preds = %devm_kmalloc_array.exit59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk.sink.split

if.end15.i:                                       ; preds = %devm_kmalloc_array.exit59.i
  %call16.i = tail call ptr @of_get_next_child(ptr noundef %20, ptr noundef null) #7
  %cmp18.not73.i = icmp eq ptr %call16.i, null
  br i1 %cmp18.not73.i, label %if.end15.i.if.end44_crit_edge, label %if.end15.i.for.body19.i_crit_edge

if.end15.i.for.body19.i_crit_edge:                ; preds = %if.end15.i
  br label %for.body19.i

if.end15.i.if.end44_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

for.body19.i:                                     ; preds = %for.inc24.i.for.body19.i_crit_edge, %if.end15.i.for.body19.i_crit_edge
  %i.075.i = phi i32 [ %inc.i, %for.inc24.i.for.body19.i_crit_edge ], [ 0, %if.end15.i.for.body19.i_crit_edge ]
  %child.174.i = phi ptr [ %call25.i, %for.inc24.i.for.body19.i_crit_edge ], [ %call16.i, %if.end15.i.for.body19.i_crit_edge ]
  %call20.i = tail call fastcc i32 @rzn1_pinctrl_parse_functions(ptr noundef nonnull %child.174.i, ptr noundef nonnull %call.i, i32 noundef %i.075.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.i = icmp slt i32 %call20.i, 0
  br i1 %cmp21.i, label %if.then22.i, label %for.inc24.i

if.then22.i:                                      ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @of_node_put(ptr noundef nonnull %child.174.i) #7
  br label %err_clk.sink.split

for.inc24.i:                                      ; preds = %for.body19.i
  %inc.i = add i32 %i.075.i, 1
  %call25.i = tail call ptr @of_get_next_child(ptr noundef %20, ptr noundef nonnull %child.174.i) #7
  %cmp18.not.i = icmp eq ptr %call25.i, null
  br i1 %cmp18.not.i, label %for.inc24.i.if.end44_crit_edge, label %for.inc24.i.for.body19.i_crit_edge

for.inc24.i.for.body19.i_crit_edge:               ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body19.i

for.inc24.i.if.end44_crit_edge:                   ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.end44:                                         ; preds = %for.inc24.i.if.end44_crit_edge, %if.end15.i.if.end44_crit_edge, %of_get_child_count.exit.i.if.end44_crit_edge, %dev_name.exit.if.end44_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %33 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %pctl = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call.i, i32 0, i32 2
  %call46 = tail call i32 @devm_pinctrl_register_and_init(ptr noundef %dev, ptr noundef nonnull @rzn1_pinctrl_desc, ptr noundef nonnull %call.i, ptr noundef %pctl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end53, label %if.end44.err_clk.sink.split_crit_edge

if.end44.err_clk.sink.split_crit_edge:            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk.sink.split

if.end53:                                         ; preds = %if.end44
  %34 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pctl, align 4
  %call55 = tail call i32 @pinctrl_enable(ptr noundef %35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %do.end61, label %if.end53.err_clk_crit_edge

if.end53.err_clk_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk

do.end61:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10) #10
  br label %cleanup

err_clk.sink.split:                               ; preds = %if.end44.err_clk.sink.split_crit_edge, %if.then22.i, %devm_kmalloc_array.exit59.i.err_clk.sink.split_crit_edge, %devm_kmalloc_array.exit59.thread.i, %devm_kmalloc_array.exit.i.err_clk.sink.split_crit_edge, %devm_kmalloc_array.exit.thread.i
  %.str.7.sink = phi ptr [ @.str.1, %if.then22.i ], [ @.str.1, %devm_kmalloc_array.exit.i.err_clk.sink.split_crit_edge ], [ @.str.1, %devm_kmalloc_array.exit59.i.err_clk.sink.split_crit_edge ], [ @.str.1, %devm_kmalloc_array.exit.thread.i ], [ @.str.1, %devm_kmalloc_array.exit59.thread.i ], [ @.str.7, %if.end44.err_clk.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call20.i, %if.then22.i ], [ -12, %devm_kmalloc_array.exit.i.err_clk.sink.split_crit_edge ], [ -12, %devm_kmalloc_array.exit59.i.err_clk.sink.split_crit_edge ], [ -12, %devm_kmalloc_array.exit.thread.i ], [ -12, %devm_kmalloc_array.exit59.thread.i ], [ %call46, %if.end44.err_clk.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.7.sink) #10
  br label %err_clk

err_clk:                                          ; preds = %err_clk.sink.split, %if.end53.err_clk_crit_edge
  %ret.0 = phi i32 [ %call55, %if.end53.err_clk_crit_edge ], [ %ret.0.ph, %err_clk.sink.split ]
  %36 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %37) #7
  tail call void @clk_unprepare(ptr noundef %37) #7
  br label %cleanup

cleanup:                                          ; preds = %err_clk, %do.end61, %if.then3.i, %if.end30.cleanup_crit_edge, %if.then27, %if.then19, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then8 ], [ %11, %if.then19 ], [ %13, %if.then27 ], [ %ret.0, %err_clk ], [ 0, %do.end61 ], [ -12, %entry.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i110, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzn1_pinctrl_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.rzn1_pinctrl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pinctrl_register_and_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzn1_get_groups_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %ngroups = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ngroups, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rzn1_get_group_name(ptr noundef %pctldev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %groups = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.rzn1_pin_group, ptr %1, i32 %selector
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzn1_get_group_pins(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %npins) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %ngroups = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ngroups, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %selector)
  %cmp.not = icmp ugt i32 %1, %selector
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %groups = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %pins1 = getelementptr %struct.rzn1_pin_group, ptr %3, i32 %selector, i32 3
  %4 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins1, align 4
  %6 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %pins, align 4
  %7 = load ptr, ptr %groups, align 4
  %npins4 = getelementptr %struct.rzn1_pin_group, ptr %7, i32 %selector, i32 2
  %8 = ptrtoint ptr %npins4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %npins4, align 4
  %10 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %npins, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzn1_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np, ptr noundef %map, ptr noundef %num_maps) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %map, align 4
  %1 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %num_maps, align 4
  %call = tail call fastcc i32 @rzn1_dt_node_to_map_one(ptr noundef %pctldev, ptr noundef %np, ptr noundef %map, ptr noundef %num_maps)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #7
  %cmp2.not23 = icmp eq ptr %call1, null
  br i1 %cmp2.not23, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %child.024 = phi ptr [ %call7, %for.inc.for.body_crit_edge ], [ %call1, %if.end.for.body_crit_edge ]
  %call3 = tail call fastcc i32 @rzn1_dt_node_to_map_one(ptr noundef %pctldev, ptr noundef nonnull %child.024, ptr noundef %map, ptr noundef %num_maps)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %for.inc

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @of_node_put(ptr noundef nonnull %child.024) #7
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %call7 = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %child.024) #7
  %cmp2.not = icmp eq ptr %call7, null
  br i1 %cmp2.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then5 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rzn1_dt_node_to_map_one(ptr noundef %pctldev, ptr noundef %np, ptr noundef %map, ptr noundef %num_maps) unnamed_addr #2 align 64 {
entry:
  %configs = alloca ptr, align 4
  %reserved_maps = alloca i32, align 4
  %num_configs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %configs) #7
  %0 = ptrtoint ptr %configs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %configs, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reserved_maps) #7
  %1 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_maps, align 4
  %3 = ptrtoint ptr %reserved_maps to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %reserved_maps, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_configs) #7
  %4 = ptrtoint ptr %num_configs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %num_configs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rzn1_dt_node_to_map_one.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rzn1_dt_node_to_map_one, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rzn1_dt_node_to_map_one.__UNIQUE_ID_ddebug225, ptr noundef %6, ptr noundef nonnull @.str.15, ptr noundef %np) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %7 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %np, align 4
  %ngroups.i = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call, i32 0, i32 9
  %9 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ngroups.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp9.not.i = icmp eq i32 %10, 0
  br i1 %cmp9.not.i, label %do.end.do.end10_crit_edge, label %for.body.lr.ph.i

do.end.do.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

for.body.lr.ph.i:                                 ; preds = %do.end
  %groups.i = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call, i32 0, i32 8
  %11 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %groups.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %10
  br i1 %exitcond.not.i, label %for.cond.i.do.end10_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.do.end10_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rzn1_pin_group, ptr %12, i32 %i.010.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %14, ptr noundef %8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %rzn1_pinctrl_find_group_by_name.exit, label %for.cond.i

rzn1_pinctrl_find_group_by_name.exit:             ; preds = %for.body.i
  %tobool6.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool6.not, label %rzn1_pinctrl_find_group_by_name.exit.do.end10_crit_edge, label %if.end12

rzn1_pinctrl_find_group_by_name.exit.do.end10_crit_edge: ; preds = %rzn1_pinctrl_find_group_by_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end10:                                         ; preds = %rzn1_pinctrl_find_group_by_name.exit.do.end10_crit_edge, %for.cond.i.do.end10_crit_edge, %do.end.do.end10_crit_edge
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.16, ptr noundef %np) #10
  br label %cleanup

if.end12:                                         ; preds = %rzn1_pinctrl_find_group_by_name.exit
  %call13 = call i32 @pinconf_generic_parse_dt_config(ptr noundef %np, ptr noundef %pctldev, ptr noundef nonnull %configs, ptr noundef nonnull %num_configs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %do.end17, label %if.end19

do.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.18, ptr noundef %np) #10
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %19 = ptrtoint ptr %num_configs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_configs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool20.not = icmp eq i32 %20, 0
  %spec.select = select i1 %tobool20.not, i32 1, i32 2
  %call23 = call i32 @pinctrl_utils_reserve_map(ptr noundef %pctldev, ptr noundef %map, ptr noundef nonnull %reserved_maps, ptr noundef %num_maps, i32 noundef %spec.select) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end19.out_crit_edge, label %if.end26

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end26:                                         ; preds = %if.end19
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %func = getelementptr %struct.rzn1_pin_group, ptr %12, i32 %i.010.i, i32 1
  %23 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %func, align 4
  %call28 = call i32 @pinctrl_utils_add_map_mux(ptr noundef %pctldev, ptr noundef %map, ptr noundef nonnull %reserved_maps, ptr noundef %num_maps, ptr noundef %22, ptr noundef %24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end26.out_crit_edge, label %if.end31

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end31:                                         ; preds = %if.end26
  %25 = ptrtoint ptr %num_configs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_configs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool32.not = icmp eq i32 %26, 0
  br i1 %tobool32.not, label %if.end31.do.body40_crit_edge, label %if.then33

if.end31.do.body40_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body40

if.then33:                                        ; preds = %if.end31
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %29 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %configs, align 4
  %call35 = call i32 @pinctrl_utils_add_map_configs(ptr noundef %pctldev, ptr noundef %map, ptr noundef nonnull %reserved_maps, ptr noundef %num_maps, ptr noundef %28, ptr noundef %30, i32 noundef %26, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then33.out_crit_edge, label %if.then33.do.body40_crit_edge

if.then33.do.body40_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body40

if.then33.out_crit_edge:                          ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.body40:                                        ; preds = %if.then33.do.body40_crit_edge, %if.end31.do.body40_crit_edge
  %ret.0 = phi i32 [ %call35, %if.then33.do.body40_crit_edge ], [ %call28, %if.end31.do.body40_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rzn1_dt_node_to_map_one.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rzn1_dt_node_to_map_one, %out)) #7
          to label %if.then54 [label %out], !srcloc !480

if.then54:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  %dev55 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %31 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev55, align 4
  %33 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %func, align 4
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i, align 4
  %npins = getelementptr %struct.rzn1_pin_group, ptr %12, i32 %i.010.i, i32 2
  %37 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %npins, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rzn1_dt_node_to_map_one.__UNIQUE_ID_ddebug226, ptr noundef %32, ptr noundef nonnull @.str.20, ptr noundef %34, ptr noundef %36, i32 noundef %38) #7
  br label %out

out:                                              ; preds = %if.then54, %do.body40, %if.then33.out_crit_edge, %if.end26.out_crit_edge, %if.end19.out_crit_edge
  %ret.1 = phi i32 [ %call23, %if.end19.out_crit_edge ], [ %call28, %if.end26.out_crit_edge ], [ %call35, %if.then33.out_crit_edge ], [ %ret.0, %if.then54 ], [ %ret.0, %do.body40 ]
  %39 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %configs, align 4
  call void @kfree(ptr noundef %40) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end17, %do.end10
  %retval.0 = phi i32 [ %call13, %do.end17 ], [ %ret.1, %out ], [ -22, %do.end10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_configs) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reserved_maps) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %configs) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_parse_dt_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_reserve_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_add_map_mux(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_add_map_configs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzn1_pmx_get_funcs_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %nfunctions = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call, i32 0, i32 11
  %0 = ptrtoint ptr %nfunctions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nfunctions, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rzn1_pmx_get_func_name(ptr noundef %pctldev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %functions = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call, i32 0, i32 10
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.rzn1_pmx_func, ptr %1, i32 %selector
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzn1_pmx_get_groups(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %functions = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call, i32 0, i32 10
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %groups1 = getelementptr %struct.rzn1_pmx_func, ptr %1, i32 %selector, i32 1
  %2 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups1, align 4
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %groups, align 4
  %5 = load ptr, ptr %functions, align 4
  %num_groups4 = getelementptr %struct.rzn1_pmx_func, ptr %5, i32 %selector, i32 2
  %6 = ptrtoint ptr %num_groups4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_groups4, align 4
  %8 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzn1_set_mux(ptr noundef %pctldev, i32 noundef %selector, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %groups = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %npins = getelementptr %struct.rzn1_pin_group, ptr %1, i32 %group, i32 2
  %2 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rzn1_set_mux.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rzn1_set_mux, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.rzn1_pin_group, ptr %1, i32 %group
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %functions = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call, i32 0, i32 10
  %6 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functions, align 4
  %arrayidx5 = getelementptr %struct.rzn1_pmx_func, ptr %7, i32 %selector
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx5, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rzn1_set_mux.__UNIQUE_ID_ddebug227, ptr noundef %5, ptr noundef nonnull @.str.22, ptr noundef %9, i32 noundef %selector, ptr noundef %11, i32 noundef %group) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lev1_protect_phys.i = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call, i32 0, i32 5
  %12 = ptrtoint ptr %lev1_protect_phys.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lev1_protect_phys.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !481
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  %lev1.i = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call, i32 0, i32 3
  %15 = ptrtoint ptr %lev1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lev1.i, align 4
  %status_protect.i = getelementptr inbounds %struct.rzn1_pinctrl_regs, ptr %16, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %status_protect.i, i32 %14) #7, !srcloc !482
  %lev2_protect_phys.i = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call, i32 0, i32 6
  %17 = ptrtoint ptr %lev2_protect_phys.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lev2_protect_phys.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !483
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  %lev2.i = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call, i32 0, i32 4
  %20 = ptrtoint ptr %lev2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lev2.i, align 4
  %status_protect18.i = getelementptr inbounds %struct.rzn1_pinctrl_regs, ptr %21, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %status_protect18.i, i32 %19) #7, !srcloc !482
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp30.not = icmp eq i32 %3, 0
  br i1 %cmp30.not, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %pins = getelementptr %struct.rzn1_pin_group, ptr %1, i32 %group, i32 3
  %pin_ids = getelementptr %struct.rzn1_pin_group, ptr %1, i32 %group, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %22 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pins, align 4
  %arrayidx7 = getelementptr i32, ptr %23, i32 %i.031
  %24 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx7, align 4
  %26 = ptrtoint ptr %pin_ids to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pin_ids, align 4
  %arrayidx8 = getelementptr i8, ptr %27, i32 %i.031
  %28 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx8, align 1
  %conv = zext i8 %29 to i32
  tail call fastcc void @rzn1_set_hw_pin_func(ptr noundef %call, i32 noundef %25, i32 noundef %conv)
  %inc = add nuw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %30 = ptrtoint ptr %lev1_protect_phys.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lev1_protect_phys.i, align 4
  %or.i = or i32 %31, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !481
  tail call void @arm_heavy_mb() #7
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %33 = ptrtoint ptr %lev1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lev1.i, align 4
  %status_protect.i25 = getelementptr inbounds %struct.rzn1_pinctrl_regs, ptr %34, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %status_protect.i25, i32 %32) #7, !srcloc !482
  %35 = ptrtoint ptr %lev2_protect_phys.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %lev2_protect_phys.i, align 4
  %or14.i = or i32 %36, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !483
  tail call void @arm_heavy_mb() #7
  %37 = tail call i32 @llvm.bswap.i32(i32 %or14.i) #7
  %38 = ptrtoint ptr %lev2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lev2.i, align 4
  %status_protect18.i28 = getelementptr inbounds %struct.rzn1_pinctrl_regs, ptr %39, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %status_protect18.i28, i32 %37) #7, !srcloc !482
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rzn1_set_hw_pin_func(ptr nocapture noundef %ipctl, i32 noundef %pin, i32 noundef %pin_config) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %pin_config, -72
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %0)
  %1 = icmp ult i32 %0, 32
  br i1 %1, label %if.then, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 88, i32 %pin_config)
  %cmp2 = icmp ugt i32 %pin_config, 88
  %. = zext i1 %cmp2 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %pin_config)
  %cmp4 = icmp ult i32 %pin_config, 80
  br i1 %cmp4, label %if.then.if.end18_crit_edge, label %if.else6

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.else6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 88, i32 %pin_config)
  %cmp7 = icmp ult i32 %pin_config, 88
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #9
  %sub9 = add nsw i32 %pin_config, -80
  br label %if.end18

if.else10:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %pin_config)
  %cmp11 = icmp ult i32 %pin_config, 96
  br i1 %cmp11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #9
  %sub13 = add nsw i32 %pin_config, -88
  br label %if.end18

if.else14:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #9
  %sub15 = add nsw i32 %pin_config, -96
  br label %if.end18

if.end18:                                         ; preds = %if.else14, %if.then12, %if.then8, %if.then.if.end18_crit_edge
  %mdio_func.0 = phi i32 [ %sub9, %if.then8 ], [ %sub13, %if.then12 ], [ %sub15, %if.else14 ], [ %0, %if.then.if.end18_crit_edge ]
  %pin_config.addr.0 = phi i32 [ 15, %if.then8 ], [ 14, %if.then12 ], [ 15, %if.else14 ], [ 14, %if.then.if.end18_crit_edge ]
  %arrayidx.i = getelementptr %struct.rzn1_pinctrl, ptr %ipctl, i32 0, i32 7, i32 %.
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp slt i32 %3, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %mdio_func.0)
  %cmp3.not.i = icmp eq i32 %3, %mdio_func.0
  %or.cond.i = or i1 %cmp.i, %cmp3.not.i
  br i1 %or.cond.i, label %if.end18.if.end.i_crit_edge, label %do.end.i

if.end18.if.end.i_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %ipctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipctl, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef %.) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end18.if.end.i_crit_edge
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mdio_func.0, ptr %arrayidx.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rzn1_pinctrl_mdio_select.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rzn1_set_hw_pin_func, %rzn1_pinctrl_mdio_select.exit)) #7
          to label %if.then10.i [label %rzn1_pinctrl_mdio_select.exit], !srcloc !480

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %ipctl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ipctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rzn1_pinctrl_mdio_select.__UNIQUE_ID_ddebug223, ptr noundef %8, ptr noundef nonnull @.str.28, i32 noundef %., i32 noundef %mdio_func.0) #7
  br label %rzn1_pinctrl_mdio_select.exit

rzn1_pinctrl_mdio_select.exit:                    ; preds = %if.then10.i, %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !484
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %mdio_func.0) #7
  %lev2.i = getelementptr inbounds %struct.rzn1_pinctrl, ptr %ipctl, i32 0, i32 4
  %10 = ptrtoint ptr %lev2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lev2.i, align 4
  %arrayidx16.i = getelementptr %struct.rzn1_pinctrl_regs, ptr %11, i32 0, i32 3, i32 %.
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx16.i, i32 %9) #7, !srcloc !482
  br label %if.end19

if.end19:                                         ; preds = %rzn1_pinctrl_mdio_select.exit, %entry.if.end19_crit_edge
  %pin_config.addr.1 = phi i32 [ %pin_config.addr.0, %rzn1_pinctrl_mdio_select.exit ], [ %pin_config, %entry.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 169, i32 %pin)
  %cmp20 = icmp ugt i32 %pin, 169
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %pin_config.addr.1)
  %cmp21 = icmp ugt i32 %pin_config.addr.1, 71
  %or.cond1 = or i1 %cmp20, %cmp21
  br i1 %or.cond1, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %lev1 = getelementptr inbounds %struct.rzn1_pinctrl, ptr %ipctl, i32 0, i32 3
  %12 = ptrtoint ptr %lev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lev1, align 4
  %arrayidx = getelementptr [170 x i32], ptr %13, i32 0, i32 %pin
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #7, !srcloc !485
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !486
  %lev2 = getelementptr inbounds %struct.rzn1_pinctrl, ptr %ipctl, i32 0, i32 4
  %16 = ptrtoint ptr %lev2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lev2, align 4
  %arrayidx28 = getelementptr [170 x i32], ptr %17, i32 0, i32 %pin
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx28) #7, !srcloc !485
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !487
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rzn1_set_hw_pin_func.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rzn1_set_hw_pin_func, %do.end)) #7
          to label %if.then37 [label %do.end], !srcloc !480

if.then37:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %ipctl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ipctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rzn1_set_hw_pin_func.__UNIQUE_ID_ddebug224, ptr noundef %21, ptr noundef nonnull @.str.24, i32 noundef %pin, i32 noundef %pin_config.addr.1) #7
  br label %do.end

do.end:                                           ; preds = %if.then37, %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %pin_config.addr.1)
  %cmp39 = icmp ult i32 %pin_config.addr.1, 10
  %and = and i32 %15, -16
  %or = or i32 %and, %pin_config.addr.1
  %or42 = or i32 %15, 15
  %sub43 = add nsw i32 %pin_config.addr.1, -10
  %l2.0 = select i1 %cmp39, i32 %19, i32 %sub43
  %l1.0 = select i1 %cmp39, i32 %or, i32 %or42
  call void @__sanitizer_cov_trace_cmp4(i32 %l1.0, i32 %15)
  %cmp45.not = icmp eq i32 %l1.0, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %l2.0, i32 %19)
  %cmp47.not = icmp eq i32 %l2.0, %19
  %or.cond2 = select i1 %cmp45.not, i1 %cmp47.not, i1 false
  br i1 %or.cond2, label %do.end.cleanup_crit_edge, label %do.body49

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body49:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !488
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %l1.0)
  %23 = ptrtoint ptr %lev1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lev1, align 4
  %arrayidx54 = getelementptr [170 x i32], ptr %24, i32 0, i32 %pin
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx54, i32 %22) #7, !srcloc !482
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !489
  tail call void @arm_heavy_mb() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %l2.0)
  %26 = ptrtoint ptr %lev2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lev2, align 4
  %arrayidx60 = getelementptr [170 x i32], ptr %27, i32 0, i32 %pin
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx60, i32 %25) #7, !srcloc !482
  br label %cleanup

cleanup:                                          ; preds = %do.body49, %do.end.cleanup_crit_edge, %if.end19.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzn1_pinconf_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 169, i32 %pin)
  %cmp = icmp ugt i32 %pin, 169
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lev1 = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %lev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lev1, align 4
  %arrayidx = getelementptr [170 x i32], ptr %3, i32 0, i32 %pin
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #7, !srcloc !485
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !490
  %shr = lshr i32 %5, 8
  %and4 = and i32 %shr, 3
  %trunc = trunc i32 %1 to i8
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %if.end.cleanup_crit_edge [
    i8 5, label %sw.bb
    i8 3, label %sw.bb10
    i8 1, label %sw.bb14
    i8 9, label %sw.bb18
    i8 2, label %sw.bb20
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and4)
  %cmp7.not = icmp eq i32 %and4, 1
  br i1 %cmp7.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and4)
  %cmp11.not = icmp eq i32 %and4, 3
  br i1 %cmp11.not, label %sw.bb10.sw.epilog_crit_edge, label %sw.bb10.cleanup_crit_edge

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %cmp15.not = icmp eq i32 %and4, 0
  br i1 %cmp15.not, label %sw.bb14.sw.epilog_crit_edge, label %sw.bb14.cleanup_crit_edge

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb14.sw.epilog_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %shr5 = lshr i32 %5, 10
  %and6 = and i32 %shr5, 3
  %arrayidx19 = getelementptr [4 x i32], ptr @rzn1_pinconf_get.reg_drive, i32 0, i32 %and6
  %7 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx19, align 4
  %phi.bo = shl i32 %8, 8
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end
  %and = and i32 %5, 15
  %lev2 = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call, i32 0, i32 4
  %9 = ptrtoint ptr %lev2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lev2, align 4
  %arrayidx24 = getelementptr [170 x i32], ptr %10, i32 0, i32 %pin
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx24) #7, !srcloc !485
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !491
  %12 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.221)
  switch i32 %and, label %sw.bb20.cleanup_crit_edge [
    i32 15, label %if.then29
    i32 0, label %sw.bb20.sw.epilog_crit_edge
  ]

sw.bb20.sw.epilog_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb20.cleanup_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then29:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp30.not = icmp eq i32 %11, 0
  br i1 %cmp30.not, label %if.then29.sw.epilog_crit_edge, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then29.sw.epilog_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then29.sw.epilog_crit_edge, %sw.bb20.sw.epilog_crit_edge, %sw.bb18, %sw.bb14.sw.epilog_crit_edge, %sw.bb10.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %arg.0 = phi i32 [ 0, %if.then29.sw.epilog_crit_edge ], [ %phi.bo, %sw.bb18 ], [ 0, %sw.bb14.sw.epilog_crit_edge ], [ 0, %sw.bb10.sw.epilog_crit_edge ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ %and, %sw.bb20.sw.epilog_crit_edge ]
  %or.i = or i32 %arg.0, %and.i
  %13 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then29.cleanup_crit_edge, %sw.bb20.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb10.cleanup_crit_edge ], [ -22, %sw.bb14.cleanup_crit_edge ], [ -22, %if.then29.cleanup_crit_edge ], [ -22, %sw.bb20.cleanup_crit_edge ], [ -524, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzn1_pinconf_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 169, i32 %pin)
  %cmp = icmp ugt i32 %pin, 169
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lev1 = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %lev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lev1, align 4
  %arrayidx = getelementptr [170 x i32], ptr %1, i32 0, i32 %pin
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #7, !srcloc !485
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !492
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp3185.not = icmp eq i32 %num_configs, 0
  br i1 %cmp3185.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0187 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %l1.0186 = phi i32 [ %l1.1, %for.inc.for.body_crit_edge ], [ %3, %if.end.for.body_crit_edge ]
  %arrayidx4 = getelementptr i32, ptr %configs, i32 %i.0187
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %shr.i = lshr i32 %5, 8
  %trunc = trunc i32 %5 to i8
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.222)
  switch i8 %trunc, label %for.body.cleanup_crit_edge [
    i8 5, label %do.body
    i8 3, label %do.body16
    i8 1, label %do.body38
    i8 9, label %do.body60
    i8 2, label %do.body90
  ]

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rzn1_pinconf_set.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rzn1_pinconf_set, %do.end)) #7
          to label %if.then13 [label %do.end], !srcloc !480

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rzn1_pinconf_set.__UNIQUE_ID_ddebug228, ptr noundef %8, ptr noundef nonnull @.str.30, i32 noundef %pin) #7
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %and = and i32 %l1.0186, -769
  %or = or i32 %and, 256
  br label %for.inc

do.body16:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rzn1_pinconf_set.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rzn1_pinconf_set, %do.end34)) #7
          to label %if.then30 [label %do.end34], !srcloc !480

if.then30:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rzn1_pinconf_set.__UNIQUE_ID_ddebug229, ptr noundef %10, ptr noundef nonnull @.str.31, i32 noundef %pin) #7
  br label %do.end34

do.end34:                                         ; preds = %if.then30, %do.body16
  %or36 = or i32 %l1.0186, 768
  br label %for.inc

do.body38:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rzn1_pinconf_set.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rzn1_pinconf_set, %do.end56)) #7
          to label %if.then52 [label %do.end56], !srcloc !480

if.then52:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rzn1_pinconf_set.__UNIQUE_ID_ddebug230, ptr noundef %12, ptr noundef nonnull @.str.32, i32 noundef %pin) #7
  br label %do.end56

do.end56:                                         ; preds = %if.then52, %do.body38
  %and57 = and i32 %l1.0186, -769
  br label %for.inc

do.body60:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rzn1_pinconf_set.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rzn1_pinconf_set, %do.end78)) #7
          to label %if.then74 [label %do.end78], !srcloc !480

if.then74:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rzn1_pinconf_set.__UNIQUE_ID_ddebug231, ptr noundef %14, ptr noundef nonnull @.str.33, i32 noundef %pin, i32 noundef %shr.i) #7
  br label %do.end78

do.end78:                                         ; preds = %if.then74, %do.body60
  %switch.tableidx = add nsw i32 %shr.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %15 = icmp ult i32 %switch.tableidx, 9
  br i1 %15, label %switch.hole_check, label %do.end78.do.end85_crit_edge

do.end78.do.end85_crit_edge:                      ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end85

do.end85:                                         ; preds = %switch.hole_check.do.end85_crit_edge, %do.end78.do.end85_crit_edge
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.34, i32 noundef %shr.i) #10
  br label %cleanup

switch.hole_check:                                ; preds = %do.end78
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 277, %switch.maskindex
  %18 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %switch.lobit.not = icmp eq i16 %18, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end85_crit_edge, label %switch.lookup

switch.hole_check.do.end85_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end85

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.rzn1_pinconf_set, i32 0, i32 %switch.tableidx
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load i32, ptr %switch.gep, align 4
  %and87 = and i32 %l1.0186, -3073
  %or88 = or i32 %switch.load, %and87
  br label %for.inc

do.body90:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rzn1_pinconf_set.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rzn1_pinconf_set, %do.end108)) #7
          to label %if.then104 [label %do.end108], !srcloc !480

if.then104:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rzn1_pinconf_set.__UNIQUE_ID_ddebug232, ptr noundef %21, ptr noundef nonnull @.str.35, i32 noundef %pin) #7
  br label %do.end108

do.end108:                                        ; preds = %if.then104, %do.body90
  %and109 = and i32 %l1.0186, -16
  br label %for.inc

for.inc:                                          ; preds = %do.end108, %switch.lookup, %do.end56, %do.end34, %do.end
  %l1.1 = phi i32 [ %and109, %do.end108 ], [ %or88, %switch.lookup ], [ %and57, %do.end56 ], [ %or36, %do.end34 ], [ %or, %do.end ]
  %inc = add nuw i32 %i.0187, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_cmp4(i32 %l1.1, i32 %3)
  %cmp113.not = icmp eq i32 %l1.1, %3
  br i1 %cmp113.not, label %for.end.cleanup_crit_edge, label %if.then114

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then114:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %lev1_protect_phys.i = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call, i32 0, i32 5
  %22 = ptrtoint ptr %lev1_protect_phys.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lev1_protect_phys.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !481
  tail call void @arm_heavy_mb() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  %25 = ptrtoint ptr %lev1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lev1, align 4
  %status_protect.i = getelementptr inbounds %struct.rzn1_pinctrl_regs, ptr %26, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %status_protect.i, i32 %24) #7, !srcloc !482
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !493
  tail call void @arm_heavy_mb() #7
  %27 = tail call i32 @llvm.bswap.i32(i32 %l1.1)
  %28 = ptrtoint ptr %lev1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lev1, align 4
  %arrayidx120 = getelementptr [170 x i32], ptr %29, i32 0, i32 %pin
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx120, i32 %27) #7, !srcloc !482
  %30 = ptrtoint ptr %lev1_protect_phys.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lev1_protect_phys.i, align 4
  %or.i = or i32 %31, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !481
  tail call void @arm_heavy_mb() #7
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %33 = ptrtoint ptr %lev1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lev1, align 4
  %status_protect.i176 = getelementptr inbounds %struct.rzn1_pinctrl_regs, ptr %34, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %status_protect.i176, i32 %32) #7, !srcloc !482
  br label %cleanup

cleanup:                                          ; preds = %if.then114, %for.end.cleanup_crit_edge, %do.end85, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end85 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then114 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -524, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzn1_pinconf_group_get(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %groups = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rzn1_pinconf_group_get.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rzn1_pinconf_group_get, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.rzn1_pin_group, ptr %1, i32 %selector
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rzn1_pinconf_group_get.__UNIQUE_ID_ddebug233, ptr noundef %3, ptr noundef nonnull @.str.37, ptr noundef %5, i32 noundef %selector) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pins = getelementptr %struct.rzn1_pin_group, ptr %1, i32 %selector, i32 3
  %npins = getelementptr %struct.rzn1_pin_group, ptr %1, i32 %selector, i32 2
  %6 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp28.not = icmp eq i32 %7, 0
  br i1 %cmp28.not, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %if.end13.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.030 = phi i32 [ %inc, %if.end13.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %old.029 = phi i32 [ %15, %if.end13.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %8 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pins, align 4
  %arrayidx5 = getelementptr i32, ptr %9, i32 %i.030
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx5, align 4
  %call6 = tail call i32 @rzn1_pinconf_get(ptr noundef %pctldev, i32 noundef %11, ptr noundef %config)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.030)
  %tobool10.not = icmp eq i32 %i.030, 0
  br i1 %tobool10.not, label %if.end9.if.end13_crit_edge, label %land.lhs.true

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end9
  %12 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %config, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %old.029, i32 %13)
  %cmp11.not = icmp eq i32 %old.029, %13
  br i1 %cmp11.not, label %land.lhs.true.if.end13_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.end9.if.end13_crit_edge
  %14 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %config, align 4
  %inc = add nuw i32 %i.030, 1
  %16 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %npins, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %if.end13.for.body_crit_edge, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %if.end13.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ -524, %land.lhs.true.cleanup_crit_edge ], [ -524, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzn1_pinconf_group_set(ptr noundef %pctldev, i32 noundef %selector, ptr noundef %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %groups = getelementptr inbounds %struct.rzn1_pinctrl, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rzn1_pinconf_group_set.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rzn1_pinconf_group_set, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.rzn1_pin_group, ptr %1, i32 %selector
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rzn1_pinconf_group_set.__UNIQUE_ID_ddebug234, ptr noundef %3, ptr noundef nonnull @.str.39, ptr noundef %5, i32 noundef %selector, ptr noundef %configs, i32 noundef %num_configs) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pins = getelementptr %struct.rzn1_pin_group, ptr %1, i32 %selector, i32 3
  %npins = getelementptr %struct.rzn1_pin_group, ptr %1, i32 %selector, i32 2
  %6 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp25.not = icmp eq i32 %7, 0
  br i1 %cmp25.not, label %do.end.cleanup10_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup10_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.026, 1
  %8 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %npins, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup10_crit_edge

for.cond.cleanup10_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.026 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %10 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pins, align 4
  %arrayidx5 = getelementptr i32, ptr %11, i32 %i.026
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx5, align 4
  %call6 = tail call i32 @rzn1_pinconf_set(ptr noundef %pctldev, i32 noundef %13, ptr noundef %configs, i32 noundef %num_configs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.cond, label %for.body.cleanup10_crit_edge

for.body.cleanup10_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

cleanup10:                                        ; preds = %for.body.cleanup10_crit_edge, %for.cond.cleanup10_crit_edge, %do.end.cleanup10_crit_edge
  %retval.2 = phi i32 [ 0, %do.end.cleanup10_crit_edge ], [ 0, %for.cond.cleanup10_crit_edge ], [ %call6, %for.body.cleanup10_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinconf_generic_dump_config(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rzn1_pinctrl_parse_functions(ptr noundef %np, ptr nocapture noundef %ipctl, i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %functions = getelementptr inbounds %struct.rzn1_pinctrl, ptr %ipctl, i32 0, i32 10
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.rzn1_pmx_func, ptr %1, i32 %index
  %2 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %np, align 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %arrayidx, align 4
  %call.i.i = tail call i32 @of_property_count_elems_of_size(ptr noundef %np, ptr noundef nonnull @.str.210, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp sgt i32 %call.i.i, 0
  %spec.select.i = zext i1 %cmp.i to i32
  %call1.i = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #7
  %cmp2.not17.i = icmp eq ptr %call1.i, null
  br i1 %cmp2.not17.i, label %entry.rzn1_pinctrl_count_function_groups.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.rzn1_pinctrl_count_function_groups.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rzn1_pinctrl_count_function_groups.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %count.119.i = phi i32 [ %spec.select15.i, %for.body.i.for.body.i_crit_edge ], [ %spec.select.i, %entry.for.body.i_crit_edge ]
  %child.018.i = phi ptr [ %call8.i, %for.body.i.for.body.i_crit_edge ], [ %call1.i, %entry.for.body.i_crit_edge ]
  %call.i16.i = tail call i32 @of_property_count_elems_of_size(ptr noundef nonnull %child.018.i, ptr noundef nonnull @.str.210, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16.i)
  %cmp4.i = icmp sgt i32 %call.i16.i, 0
  %inc6.i = zext i1 %cmp4.i to i32
  %spec.select15.i = add i32 %count.119.i, %inc6.i
  %call8.i = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %child.018.i) #7
  %cmp2.not.i = icmp eq ptr %call8.i, null
  br i1 %cmp2.not.i, label %for.body.i.rzn1_pinctrl_count_function_groups.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.rzn1_pinctrl_count_function_groups.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rzn1_pinctrl_count_function_groups.exit

rzn1_pinctrl_count_function_groups.exit:          ; preds = %for.body.i.rzn1_pinctrl_count_function_groups.exit_crit_edge, %entry.rzn1_pinctrl_count_function_groups.exit_crit_edge
  %count.1.lcssa.i = phi i32 [ %spec.select.i, %entry.rzn1_pinctrl_count_function_groups.exit_crit_edge ], [ %spec.select15.i, %for.body.i.rzn1_pinctrl_count_function_groups.exit_crit_edge ]
  %num_groups = getelementptr %struct.rzn1_pmx_func, ptr %1, i32 %index, i32 2
  %5 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %count.1.lcssa.i, ptr %num_groups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.lcssa.i)
  %cmp = icmp eq i32 %count.1.lcssa.i, 0
  br i1 %cmp, label %do.end, label %do.body3

do.end:                                           ; preds = %rzn1_pinctrl_count_function_groups.exit
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %ipctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipctl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.211, ptr noundef %np) #10
  br label %cleanup

do.body3:                                         ; preds = %rzn1_pinctrl_count_function_groups.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rzn1_pinctrl_parse_functions.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rzn1_pinctrl_parse_functions, %do.end14)) #7
          to label %if.then8 [label %do.end14], !srcloc !480

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %ipctl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ipctl, align 4
  %10 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %np, align 4
  %12 = ptrtoint ptr %num_groups to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_groups, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rzn1_pinctrl_parse_functions.__UNIQUE_ID_ddebug236, ptr noundef %9, ptr noundef nonnull @.str.213, ptr noundef %11, i32 noundef %13) #7
  br label %do.end14

do.end14:                                         ; preds = %if.then8, %do.body3
  %14 = ptrtoint ptr %num_groups to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_groups, align 4
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 4) #7
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %devm_kmalloc_array.exit.thread, label %devm_kmalloc_array.exit, !prof !479

devm_kmalloc_array.exit.thread:                   ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  %groups134 = getelementptr %struct.rzn1_pmx_func, ptr %1, i32 %index, i32 1
  %18 = ptrtoint ptr %groups134 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %groups134, align 4
  br label %cleanup

devm_kmalloc_array.exit:                          ; preds = %do.end14
  %19 = ptrtoint ptr %ipctl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ipctl, align 4
  %21 = extractvalue { i32, i1 } %16, 0
  %call5.i = tail call noalias ptr @devm_kmalloc(ptr noundef %20, i32 noundef %21, i32 noundef 3264) #7
  %groups = getelementptr %struct.rzn1_pmx_func, ptr %1, i32 %index, i32 1
  %22 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call5.i, ptr %groups, align 4
  %tobool19.not = icmp eq ptr %call5.i, null
  br i1 %tobool19.not, label %devm_kmalloc_array.exit.cleanup_crit_edge, label %if.end21

devm_kmalloc_array.exit.cleanup_crit_edge:        ; preds = %devm_kmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %devm_kmalloc_array.exit
  %call.i = tail call i32 @of_property_count_elems_of_size(ptr noundef %np, ptr noundef nonnull @.str.210, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp23 = icmp sgt i32 %call.i, 0
  br i1 %cmp23, label %if.then24, label %if.end21.if.end38_crit_edge

if.end21.if.end38_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then24:                                        ; preds = %if.end21
  %23 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %np, align 4
  %25 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %groups, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %26, align 4
  %groups28 = getelementptr inbounds %struct.rzn1_pinctrl, ptr %ipctl, i32 0, i32 8
  %28 = ptrtoint ptr %groups28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %groups28, align 4
  %ngroups = getelementptr inbounds %struct.rzn1_pinctrl, ptr %ipctl, i32 0, i32 9
  %30 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ngroups, align 4
  %arrayidx29 = getelementptr %struct.rzn1_pin_group, ptr %29, i32 %31
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %func31 = getelementptr %struct.rzn1_pin_group, ptr %29, i32 %31, i32 1
  %34 = ptrtoint ptr %func31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %func31, align 4
  %call32 = tail call fastcc i32 @rzn1_pinctrl_parse_groups(ptr noundef %np, ptr noundef %arrayidx29, ptr noundef %ipctl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.then24.cleanup_crit_edge, label %if.end35

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ngroups, align 4
  %inc37 = add i32 %36, 1
  store i32 %inc37, ptr %ngroups, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end35, %if.end21.if.end38_crit_edge
  %i.0 = phi i32 [ 1, %if.end35 ], [ 0, %if.end21.if.end38_crit_edge ]
  %call39 = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #7
  %cmp40.not140 = icmp eq ptr %call39, null
  br i1 %cmp40.not140, label %if.end38.do.body57_crit_edge, label %for.body.lr.ph

if.end38.do.body57_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body57

for.body.lr.ph:                                   ; preds = %if.end38
  %groups44 = getelementptr inbounds %struct.rzn1_pinctrl, ptr %ipctl, i32 0, i32 8
  %ngroups45 = getelementptr inbounds %struct.rzn1_pinctrl, ptr %ipctl, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %if.end52.for.body_crit_edge, %for.body.lr.ph
  %child.0142 = phi ptr [ %call39, %for.body.lr.ph ], [ %call56, %if.end52.for.body_crit_edge ]
  %i.1141 = phi i32 [ %i.0, %for.body.lr.ph ], [ %inc53, %if.end52.for.body_crit_edge ]
  %37 = ptrtoint ptr %child.0142 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %child.0142, align 4
  %39 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %groups, align 4
  %arrayidx43 = getelementptr ptr, ptr %40, i32 %i.1141
  %41 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %arrayidx43, align 4
  %42 = ptrtoint ptr %groups44 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %groups44, align 4
  %44 = ptrtoint ptr %ngroups45 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ngroups45, align 4
  %arrayidx46 = getelementptr %struct.rzn1_pin_group, ptr %43, i32 %45
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx, align 4
  %func48 = getelementptr %struct.rzn1_pin_group, ptr %43, i32 %45, i32 1
  %48 = ptrtoint ptr %func48 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %func48, align 4
  %call49 = tail call fastcc i32 @rzn1_pinctrl_parse_groups(ptr noundef nonnull %child.0142, ptr noundef %arrayidx46, ptr noundef %ipctl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @of_node_put(ptr noundef nonnull %child.0142) #7
  br label %cleanup

if.end52:                                         ; preds = %for.body
  %inc53 = add i32 %i.1141, 1
  %49 = ptrtoint ptr %ngroups45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ngroups45, align 4
  %inc55 = add i32 %50, 1
  store i32 %inc55, ptr %ngroups45, align 4
  %call56 = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %child.0142) #7
  %cmp40.not = icmp eq ptr %call56, null
  br i1 %cmp40.not, label %if.end52.do.body57_crit_edge, label %if.end52.for.body_crit_edge

if.end52.for.body_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end52.do.body57_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body57

do.body57:                                        ; preds = %if.end52.do.body57_crit_edge, %if.end38.do.body57_crit_edge
  %i.1.lcssa = phi i32 [ %i.0, %if.end38.do.body57_crit_edge ], [ %inc53, %if.end52.do.body57_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rzn1_pinctrl_parse_functions.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rzn1_pinctrl_parse_functions, %cleanup)) #7
          to label %if.then71 [label %cleanup], !srcloc !480

if.then71:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %ipctl to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ipctl, align 4
  %53 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %np, align 4
  %55 = ptrtoint ptr %num_groups to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_groups, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rzn1_pinctrl_parse_functions.__UNIQUE_ID_ddebug237, ptr noundef %52, ptr noundef nonnull @.str.214, ptr noundef %54, i32 noundef %i.1.lcssa, i32 noundef %56) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %do.body57, %if.then51, %if.then24.cleanup_crit_edge, %devm_kmalloc_array.exit.cleanup_crit_edge, %devm_kmalloc_array.exit.thread, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call49, %if.then51 ], [ -12, %devm_kmalloc_array.exit.cleanup_crit_edge ], [ %call32, %if.then24.cleanup_crit_edge ], [ 0, %if.then71 ], [ -12, %devm_kmalloc_array.exit.thread ], [ 0, %do.body57 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rzn1_pinctrl_parse_groups(ptr noundef %np, ptr nocapture noundef %grp, ptr nocapture noundef readonly %ipctl) unnamed_addr #2 align 64 {
entry:
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #7
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %size, align 4, !annotation !494
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rzn1_pinctrl_parse_groups.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rzn1_pinctrl_parse_groups, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %ipctl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ipctl, align 4
  %3 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %np, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rzn1_pinctrl_parse_groups.__UNIQUE_ID_ddebug235, ptr noundef %2, ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.215, ptr noundef %4) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %np, align 4
  %7 = ptrtoint ptr %grp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %grp, align 4
  %call6 = call ptr @of_get_property(ptr noundef %np, ptr noundef nonnull @.str.210, ptr noundef nonnull %size) #7
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end11, label %if.end13

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %ipctl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ipctl, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.217, ptr noundef %np) #10
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool14.not = icmp eq i32 %11, 0
  br i1 %tobool14.not, label %do.end18, label %if.end20

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %ipctl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ipctl, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.219, ptr noundef %np) #10
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %div66 = lshr i32 %11, 2
  %npins = getelementptr inbounds %struct.rzn1_pin_group, ptr %grp, i32 0, i32 2
  %14 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div66, ptr %npins, align 4
  %15 = ptrtoint ptr %ipctl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ipctl, align 4
  %call5.i = call noalias ptr @devm_kmalloc(ptr noundef %16, i32 noundef %div66, i32 noundef 3264) #7
  %pin_ids = getelementptr inbounds %struct.rzn1_pin_group, ptr %grp, i32 0, i32 4
  %17 = ptrtoint ptr %pin_ids to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i, ptr %pin_ids, align 4
  %18 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %npins, align 4
  %20 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %19, i32 4) #7
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %devm_kmalloc_array.exit71.thread, label %devm_kmalloc_array.exit71, !prof !479

devm_kmalloc_array.exit71.thread:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %pins74 = getelementptr inbounds %struct.rzn1_pin_group, ptr %grp, i32 0, i32 3
  %22 = ptrtoint ptr %pins74 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %pins74, align 4
  br label %cleanup

devm_kmalloc_array.exit71:                        ; preds = %if.end20
  %23 = ptrtoint ptr %ipctl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ipctl, align 4
  %25 = extractvalue { i32, i1 } %20, 0
  %call5.i68 = call noalias ptr @devm_kmalloc(ptr noundef %24, i32 noundef %25, i32 noundef 3264) #7
  %pins = getelementptr inbounds %struct.rzn1_pin_group, ptr %grp, i32 0, i32 3
  %26 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call5.i68, ptr %pins, align 4
  %27 = ptrtoint ptr %pin_ids to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pin_ids, align 4
  %tobool28.not = icmp eq ptr %28, null
  %tobool30.not = icmp eq ptr %call5.i68, null
  %or.cond = select i1 %tobool28.not, i1 true, i1 %tobool30.not
  br i1 %or.cond, label %devm_kmalloc_array.exit71.cleanup_crit_edge, label %for.cond.preheader

devm_kmalloc_array.exit71.cleanup_crit_edge:      ; preds = %devm_kmalloc_array.exit71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kmalloc_array.exit71
  %29 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp78.not = icmp eq i32 %30, 0
  br i1 %cmp78.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %list.080 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %call6, %for.cond.preheader.for.body_crit_edge ]
  %i.079 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %list.080, i32 1
  %31 = ptrtoint ptr %list.080 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %list.080, align 4
  %and = and i32 %32, 255
  %33 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr i32, ptr %34, i32 %i.079
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and, ptr %arrayidx, align 4
  %shr = lshr i32 %32, 8
  %36 = trunc i32 %shr to i8
  %conv = and i8 %36, 127
  %37 = ptrtoint ptr %pin_ids to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pin_ids, align 4
  %arrayidx37 = getelementptr i8, ptr %38, i32 %i.079
  %39 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv, ptr %arrayidx37, align 1
  %inc = add nuw i32 %i.079, 1
  %40 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %npins, align 4
  %cmp = icmp ult i32 %inc, %41
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %devm_kmalloc_array.exit71.cleanup_crit_edge, %devm_kmalloc_array.exit71.thread, %do.end18, %do.end11
  %retval.0 = phi i32 [ -22, %do.end18 ], [ -22, %do.end11 ], [ -12, %devm_kmalloc_array.exit71.cleanup_crit_edge ], [ -12, %devm_kmalloc_array.exit71.thread ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %41, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 232)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 232)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !66, !68, !69, !71, !73, !75, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !90, !92, !93, !95, !96, !97, !99, !100, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !448, !449, !450, !452, !453, !455, !456, !458, !459, !460, !462, !463, !464, !466, !467, !468}
!llvm.module.flags = !{!470, !471, !472, !473, !474, !475, !476, !477}
!llvm.ident = !{!478}

!0 = !{ptr @__initcall__kmod_pinctrl_rzn1__238_949__pinctrl_drv_register4, !1, !"__initcall__kmod_pinctrl_rzn1__238_949__pinctrl_drv_register4", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 949, i32 1}
!2 = !{ptr @__UNIQUE_ID_author239, !3, !"__UNIQUE_ID_author239", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 951, i32 1}
!4 = !{ptr @__UNIQUE_ID_description240, !5, !"__UNIQUE_ID_description240", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 952, i32 1}
!6 = !{ptr @__UNIQUE_ID_file241, !7, !"__UNIQUE_ID_file241", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 953, i32 1}
!8 = !{ptr @__UNIQUE_ID_license242, !7, !"__UNIQUE_ID_license242", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 940, i32 12}
!11 = !{ptr @rzn1_pinctrl_driver, !12, !"rzn1_pinctrl_driver", i1 false, i1 false}
!12 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 936, i32 31}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 894, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @rzn1_pinctrl_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @rzn1_pinctrl_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 903, i32 3}
!23 = !{ptr @rzn1_pinctrl_probe._entry.6, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @rzn1_pinctrl_probe._entry_ptr.8, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 911, i32 2}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rzn1_pinctrl_probe._entry.9, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @rzn1_pinctrl_probe._entry_ptr.12, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @rzn1_pinctrl_desc, !31, !"rzn1_pinctrl_desc", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 677, i32 28}
!32 = !{ptr @rzn1_pctrl_ops, !33, !"rzn1_pctrl_ops", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 424, i32 33}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 346, i32 2}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @rzn1_dt_node_to_map_one.__UNIQUE_ID_ddebug225, !35, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 350, i32 3}
!41 = !{ptr @rzn1_dt_node_to_map_one._entry, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @rzn1_dt_node_to_map_one._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 359, i32 3}
!45 = !{ptr @rzn1_dt_node_to_map_one._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @rzn1_dt_node_to_map_one._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 389, i32 2}
!49 = !{ptr @rzn1_dt_node_to_map_one.__UNIQUE_ID_ddebug226, !48, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!50 = !{ptr @rzn1_pmx_ops, !51, !"rzn1_pmx_ops", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 478, i32 32}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 467, i32 2}
!54 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @rzn1_set_mux.__UNIQUE_ID_ddebug227, !53, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 261, i32 2}
!58 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @rzn1_set_hw_pin_func.__UNIQUE_ID_ddebug224, !57, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 199, i32 3}
!62 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @rzn1_pinctrl_mdio_select._entry, !61, !"_entry", i1 false, i1 false}
!65 = !{ptr @rzn1_pinctrl_mdio_select._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 202, i32 2}
!68 = !{ptr @rzn1_pinctrl_mdio_select.__UNIQUE_ID_ddebug223, !67, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!69 = !{ptr @rzn1_pinconf_ops, !70, !"rzn1_pinconf_ops", i1 false, i1 false}
!70 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 668, i32 33}
!71 = !{ptr @rzn1_pinconf_get.reg_drive, !72, !"reg_drive", i1 false, i1 false}
!72 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 490, i32 19}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 559, i32 4}
!75 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @rzn1_pinconf_set.__UNIQUE_ID_ddebug228, !74, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 564, i32 4}
!79 = !{ptr @rzn1_pinconf_set.__UNIQUE_ID_ddebug229, !78, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 569, i32 4}
!82 = !{ptr @rzn1_pinconf_set.__UNIQUE_ID_ddebug230, !81, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 574, i32 4}
!85 = !{ptr @rzn1_pinconf_set.__UNIQUE_ID_ddebug231, !84, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 589, i32 5}
!88 = !{ptr @rzn1_pinconf_set._entry, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @rzn1_pinconf_set._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 601, i32 4}
!92 = !{ptr @rzn1_pinconf_set.__UNIQUE_ID_ddebug232, !91, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!93 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 628, i32 2}
!95 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @rzn1_pinconf_group_get.__UNIQUE_ID_ddebug233, !94, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!97 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 654, i32 2}
!99 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @rzn1_pinconf_group_set.__UNIQUE_ID_ddebug234, !98, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!101 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 129, i32 2}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 129, i32 15}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 129, i32 28}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 129, i32 41}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 129, i32 54}
!111 = !{ptr @.str.45, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 130, i32 2}
!113 = !{ptr @.str.46, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 130, i32 15}
!115 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 130, i32 28}
!117 = !{ptr @.str.48, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 130, i32 41}
!119 = !{ptr @.str.49, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 130, i32 54}
!121 = !{ptr @.str.50, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 131, i32 2}
!123 = !{ptr @.str.51, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 131, i32 16}
!125 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 131, i32 30}
!127 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 131, i32 44}
!129 = !{ptr @.str.54, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 131, i32 58}
!131 = !{ptr @.str.55, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 132, i32 2}
!133 = !{ptr @.str.56, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 132, i32 16}
!135 = !{ptr @.str.57, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 132, i32 30}
!137 = !{ptr @.str.58, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 132, i32 44}
!139 = !{ptr @.str.59, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 132, i32 58}
!141 = !{ptr @.str.60, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 133, i32 2}
!143 = !{ptr @.str.61, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 133, i32 16}
!145 = !{ptr @.str.62, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 133, i32 30}
!147 = !{ptr @.str.63, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 133, i32 44}
!149 = !{ptr @.str.64, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 133, i32 58}
!151 = !{ptr @.str.65, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 134, i32 2}
!153 = !{ptr @.str.66, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 134, i32 16}
!155 = !{ptr @.str.67, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 134, i32 30}
!157 = !{ptr @.str.68, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 134, i32 44}
!159 = !{ptr @.str.69, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 134, i32 58}
!161 = !{ptr @.str.70, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 135, i32 2}
!163 = !{ptr @.str.71, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 135, i32 16}
!165 = !{ptr @.str.72, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 135, i32 30}
!167 = !{ptr @.str.73, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 135, i32 44}
!169 = !{ptr @.str.74, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 135, i32 58}
!171 = !{ptr @.str.75, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 136, i32 2}
!173 = !{ptr @.str.76, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 136, i32 16}
!175 = !{ptr @.str.77, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 136, i32 30}
!177 = !{ptr @.str.78, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 136, i32 44}
!179 = !{ptr @.str.79, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 136, i32 58}
!181 = !{ptr @.str.80, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 137, i32 2}
!183 = !{ptr @.str.81, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 137, i32 16}
!185 = !{ptr @.str.82, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 137, i32 30}
!187 = !{ptr @.str.83, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 137, i32 44}
!189 = !{ptr @.str.84, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 137, i32 58}
!191 = !{ptr @.str.85, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 138, i32 2}
!193 = !{ptr @.str.86, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 138, i32 16}
!195 = !{ptr @.str.87, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 138, i32 30}
!197 = !{ptr @.str.88, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 138, i32 44}
!199 = !{ptr @.str.89, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 138, i32 58}
!201 = !{ptr @.str.90, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 139, i32 2}
!203 = !{ptr @.str.91, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 139, i32 16}
!205 = !{ptr @.str.92, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 139, i32 30}
!207 = !{ptr @.str.93, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 139, i32 44}
!209 = !{ptr @.str.94, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 139, i32 58}
!211 = !{ptr @.str.95, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 140, i32 2}
!213 = !{ptr @.str.96, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 140, i32 16}
!215 = !{ptr @.str.97, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 140, i32 30}
!217 = !{ptr @.str.98, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 140, i32 44}
!219 = !{ptr @.str.99, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 140, i32 58}
!221 = !{ptr @.str.100, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 141, i32 2}
!223 = !{ptr @.str.101, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 141, i32 16}
!225 = !{ptr @.str.102, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 141, i32 30}
!227 = !{ptr @.str.103, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 141, i32 44}
!229 = !{ptr @.str.104, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 141, i32 58}
!231 = !{ptr @.str.105, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 142, i32 2}
!233 = !{ptr @.str.106, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 142, i32 16}
!235 = !{ptr @.str.107, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 142, i32 30}
!237 = !{ptr @.str.108, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 142, i32 44}
!239 = !{ptr @.str.109, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 142, i32 58}
!241 = !{ptr @.str.110, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 143, i32 2}
!243 = !{ptr @.str.111, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 143, i32 16}
!245 = !{ptr @.str.112, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 143, i32 30}
!247 = !{ptr @.str.113, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 143, i32 44}
!249 = !{ptr @.str.114, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 143, i32 58}
!251 = !{ptr @.str.115, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 144, i32 2}
!253 = !{ptr @.str.116, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 144, i32 16}
!255 = !{ptr @.str.117, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 144, i32 30}
!257 = !{ptr @.str.118, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 144, i32 44}
!259 = !{ptr @.str.119, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 144, i32 58}
!261 = !{ptr @.str.120, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 145, i32 2}
!263 = !{ptr @.str.121, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 145, i32 16}
!265 = !{ptr @.str.122, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 145, i32 30}
!267 = !{ptr @.str.123, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 145, i32 44}
!269 = !{ptr @.str.124, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 145, i32 58}
!271 = !{ptr @.str.125, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 146, i32 2}
!273 = !{ptr @.str.126, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 146, i32 16}
!275 = !{ptr @.str.127, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 146, i32 30}
!277 = !{ptr @.str.128, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 146, i32 44}
!279 = !{ptr @.str.129, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 146, i32 58}
!281 = !{ptr @.str.130, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 147, i32 2}
!283 = !{ptr @.str.131, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 147, i32 16}
!285 = !{ptr @.str.132, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 147, i32 30}
!287 = !{ptr @.str.133, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 147, i32 44}
!289 = !{ptr @.str.134, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 147, i32 58}
!291 = !{ptr @.str.135, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 148, i32 2}
!293 = !{ptr @.str.136, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 148, i32 16}
!295 = !{ptr @.str.137, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 148, i32 30}
!297 = !{ptr @.str.138, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 148, i32 44}
!299 = !{ptr @.str.139, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 148, i32 58}
!301 = !{ptr @.str.140, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 149, i32 2}
!303 = !{ptr @.str.141, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 149, i32 17}
!305 = !{ptr @.str.142, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 149, i32 32}
!307 = !{ptr @.str.143, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 149, i32 47}
!309 = !{ptr @.str.144, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 150, i32 2}
!311 = !{ptr @.str.145, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 150, i32 17}
!313 = !{ptr @.str.146, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 150, i32 32}
!315 = !{ptr @.str.147, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 150, i32 47}
!317 = !{ptr @.str.148, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 151, i32 2}
!319 = !{ptr @.str.149, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 151, i32 17}
!321 = !{ptr @.str.150, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 151, i32 32}
!323 = !{ptr @.str.151, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 151, i32 47}
!325 = !{ptr @.str.152, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 152, i32 2}
!327 = !{ptr @.str.153, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 152, i32 17}
!329 = !{ptr @.str.154, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 152, i32 32}
!331 = !{ptr @.str.155, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 152, i32 47}
!333 = !{ptr @.str.156, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 153, i32 2}
!335 = !{ptr @.str.157, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 153, i32 17}
!337 = !{ptr @.str.158, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 153, i32 32}
!339 = !{ptr @.str.159, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 153, i32 47}
!341 = !{ptr @.str.160, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 154, i32 2}
!343 = !{ptr @.str.161, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 154, i32 17}
!345 = !{ptr @.str.162, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 154, i32 32}
!347 = !{ptr @.str.163, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 154, i32 47}
!349 = !{ptr @.str.164, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 155, i32 2}
!351 = !{ptr @.str.165, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 155, i32 17}
!353 = !{ptr @.str.166, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 155, i32 32}
!355 = !{ptr @.str.167, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 155, i32 47}
!357 = !{ptr @.str.168, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 156, i32 2}
!359 = !{ptr @.str.169, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 156, i32 17}
!361 = !{ptr @.str.170, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 156, i32 32}
!363 = !{ptr @.str.171, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 156, i32 47}
!365 = !{ptr @.str.172, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 157, i32 2}
!367 = !{ptr @.str.173, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 157, i32 17}
!369 = !{ptr @.str.174, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 157, i32 32}
!371 = !{ptr @.str.175, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 157, i32 47}
!373 = !{ptr @.str.176, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 158, i32 2}
!375 = !{ptr @.str.177, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 158, i32 17}
!377 = !{ptr @.str.178, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 158, i32 32}
!379 = !{ptr @.str.179, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 158, i32 47}
!381 = !{ptr @.str.180, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 159, i32 2}
!383 = !{ptr @.str.181, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 159, i32 17}
!385 = !{ptr @.str.182, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 159, i32 32}
!387 = !{ptr @.str.183, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 159, i32 47}
!389 = !{ptr @.str.184, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 160, i32 2}
!391 = !{ptr @.str.185, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 160, i32 17}
!393 = !{ptr @.str.186, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 160, i32 32}
!395 = !{ptr @.str.187, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 160, i32 47}
!397 = !{ptr @.str.188, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 161, i32 2}
!399 = !{ptr @.str.189, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 161, i32 17}
!401 = !{ptr @.str.190, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 161, i32 32}
!403 = !{ptr @.str.191, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 161, i32 47}
!405 = !{ptr @.str.192, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 162, i32 2}
!407 = !{ptr @.str.193, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 162, i32 17}
!409 = !{ptr @.str.194, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 162, i32 32}
!411 = !{ptr @.str.195, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 162, i32 47}
!413 = !{ptr @.str.196, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 163, i32 2}
!415 = !{ptr @.str.197, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 163, i32 17}
!417 = !{ptr @.str.198, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 163, i32 32}
!419 = !{ptr @.str.199, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 163, i32 47}
!421 = !{ptr @.str.200, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 164, i32 2}
!423 = !{ptr @.str.201, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 164, i32 17}
!425 = !{ptr @.str.202, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 164, i32 32}
!427 = !{ptr @.str.203, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 164, i32 47}
!429 = !{ptr @.str.204, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 165, i32 2}
!431 = !{ptr @.str.205, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 165, i32 17}
!433 = !{ptr @.str.206, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 165, i32 32}
!435 = !{ptr @.str.207, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 165, i32 47}
!437 = !{ptr @.str.208, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 166, i32 2}
!439 = !{ptr @.str.209, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 166, i32 17}
!441 = !{ptr @rzn1_pins, !442, !"rzn1_pins", i1 false, i1 false}
!442 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 128, i32 38}
!443 = !{ptr @.str.210, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 742, i32 38}
!445 = !{ptr @.str.211, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 769, i32 3}
!447 = !{ptr @.str.212, !446, !"<string literal>", i1 false, i1 false}
!448 = !{ptr @rzn1_pinctrl_parse_functions._entry, !446, !"_entry", i1 false, i1 false}
!449 = !{ptr @rzn1_pinctrl_parse_functions._entry_ptr, !446, !"_entry_ptr", i1 false, i1 false}
!450 = !{ptr @.str.213, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 772, i32 2}
!452 = !{ptr @rzn1_pinctrl_parse_functions.__UNIQUE_ID_ddebug236, !451, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!453 = !{ptr @.str.214, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 805, i32 2}
!455 = !{ptr @rzn1_pinctrl_parse_functions.__UNIQUE_ID_ddebug237, !454, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!456 = !{ptr @.str.215, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 692, i32 2}
!458 = !{ptr @.str.216, !457, !"<string literal>", i1 false, i1 false}
!459 = !{ptr @rzn1_pinctrl_parse_groups.__UNIQUE_ID_ddebug235, !457, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!460 = !{ptr @.str.217, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 704, i32 3}
!462 = !{ptr @rzn1_pinctrl_parse_groups._entry, !461, !"_entry", i1 false, i1 false}
!463 = !{ptr @rzn1_pinctrl_parse_groups._entry_ptr, !461, !"_entry_ptr", i1 false, i1 false}
!464 = !{ptr @.str.219, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 711, i32 3}
!466 = !{ptr @rzn1_pinctrl_parse_groups._entry.218, !465, !"_entry", i1 false, i1 false}
!467 = !{ptr @rzn1_pinctrl_parse_groups._entry_ptr.220, !465, !"_entry_ptr", i1 false, i1 false}
!468 = !{ptr @rzn1_pinctrl_match, !469, !"rzn1_pinctrl_match", i1 false, i1 false}
!469 = !{!"../drivers/pinctrl/renesas/pinctrl-rzn1.c", i32 930, i32 34}
!470 = !{i32 1, !"wchar_size", i32 2}
!471 = !{i32 1, !"min_enum_size", i32 4}
!472 = !{i32 8, !"branch-target-enforcement", i32 0}
!473 = !{i32 8, !"sign-return-address", i32 0}
!474 = !{i32 8, !"sign-return-address-all", i32 0}
!475 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!476 = !{i32 7, !"uwtable", i32 1}
!477 = !{i32 7, !"frame-pointer", i32 2}
!478 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!479 = !{!"branch_weights", i32 1, i32 2000}
!480 = !{i64 2148753183, i64 2148753188, i64 2148753201, i64 2148753245, i64 2148753279, i64 2148753300}
!481 = !{i64 2153728792}
!482 = !{i64 4833620}
!483 = !{i64 2153729203}
!484 = !{i64 2153733630}
!485 = !{i64 4834038}
!486 = !{i64 2153735522}
!487 = !{i64 2153736032}
!488 = !{i64 2153738685}
!489 = !{i64 2153739082}
!490 = !{i64 2153751221}
!491 = !{i64 2153751755}
!492 = !{i64 2153752715}
!493 = !{i64 2153766074}
!494 = !{!"auto-init"}
