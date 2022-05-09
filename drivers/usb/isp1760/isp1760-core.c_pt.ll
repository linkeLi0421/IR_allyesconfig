; ModuleID = '/llk/IR_all_yes/drivers/usb/isp1760/isp1760-core.c_pt.bc'
source_filename = "../drivers/usb/isp1760/isp1760-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.isp1760_memory_layout = type { [3 x i32], [3 x i32], i32, i32, i32 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.isp1760_device = type { ptr, i32, ptr, %struct.isp1760_hcd, %struct.isp1760_udc }
%struct.isp1760_hcd = type { ptr, ptr, ptr, [78 x ptr], i8, ptr, %struct.spinlock, ptr, i32, ptr, i32, [56 x %struct.isp1760_memory_chunk], [3 x %struct.list_head], i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.isp1760_memory_chunk = type { i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.isp1760_udc = type { ptr, i32, ptr, ptr, [40 x ptr], ptr, %struct.usb_gadget, %struct.spinlock, %struct.timer_list, [15 x %struct.isp1760_ep], i32, i8, i16, i8, i8, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.isp1760_ep = type { ptr, %struct.usb_ep, %struct.list_head, i32, i32, [7 x i8], ptr, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }

@isp1760_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 512, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"isp1760/61 do not support data width 8\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"isp1760_register\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/usb/isp1760/isp1760-core.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@isp1760_register._entry_ptr = internal global ptr @isp1760_register._entry, section ".printk_index", align 4
@isp1763_hc_regmap_conf = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.8, i32 8, i32 2, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 230, ptr null, ptr null, ptr @isp1763_hc_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@isp1763_hc_reg_fields = internal constant { [78 x %struct.reg_field], [392 x i8] } { [78 x %struct.reg_field] [%struct.reg_field { i32 160, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 160, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 160, i32 10, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 160, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 160, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 160, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 160, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 160, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 160, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 140, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 140, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 140, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 144, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 152, i32 0, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 156, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 164, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 166, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 168, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 170, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 172, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 174, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 176, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 178, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 180, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 182, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 182, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 182, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 182, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 182, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 182, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 182, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 114, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 112, i32 8, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 112, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 120, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 184, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 184, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 186, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 186, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 186, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 196, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 198, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 212, i32 0, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 214, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 214, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 216, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 218, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 220, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 222, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 224, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 226, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 228, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 228, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 228, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 228, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 228, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 228, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 228, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 228, i32 15, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 230, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 230, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 230, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 230, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 230, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 230, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 230, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 230, i32 15, i32 15, i32 0, i32 0 }], [392 x i8] zeroinitializer }, align 32
@isp1763_dc_regmap_conf = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.9, i32 8, i32 2, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 132, ptr null, ptr null, ptr @isp1763_dc_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@isp1763_dc_reg_fields = internal constant { [40 x %struct.reg_field], [192 x i8] } { [40 x %struct.reg_field] [%struct.reg_field { i32 0, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 0, i32 0, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 12, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 12, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 12, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 16, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 16, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 16, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 16, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 25, i32 25, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 23, i32 23, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 21, i32 21, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 19, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 17, i32 17, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 15, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 44, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 44, i32 1, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 44, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 40, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 40, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 40, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 40, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 40, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 28, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 0, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 8, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 8, i32 0, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 116, i32 0, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 116, i32 11, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 114, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 112, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 120, i32 0, i32 15, i32 0, i32 0 }], [192 x i8] zeroinitializer }, align 32
@isp1760_hc_regmap_conf = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.10, i32 16, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 886, ptr null, ptr null, ptr @isp176x_hc_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@isp1760_hc_reg_fields = internal constant { [77 x %struct.reg_field], [412 x i8] } { [77 x %struct.reg_field] [%struct.reg_field { i32 100, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 100, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 100, i32 10, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 100, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 100, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 100, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 100, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 100, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 100, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 0, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 8, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 8, i32 4, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 32, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 32, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 32, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 36, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 44, i32 0, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 96, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 304, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 308, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 312, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 320, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 324, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 328, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 336, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 340, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 344, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 768, i32 31, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 768, i32 15, i32 15, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 768, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 768, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 768, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 768, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 768, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 768, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 768, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 772, i32 8, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 772, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 772, i32 16, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 776, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 780, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 820, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 820, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 820, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 828, i32 16, i32 17, i32 0, i32 0 }, %struct.reg_field { i32 828, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 784, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 788, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 788, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 792, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 796, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 800, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 804, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 808, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 812, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 884, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 884, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 884, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 884, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 884, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 884, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 884, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 884, i32 26, i32 26, i32 0, i32 0 }, %struct.reg_field { i32 884, i32 23, i32 23, i32 0, i32 0 }, %struct.reg_field { i32 884, i32 20, i32 20, i32 0, i32 0 }, %struct.reg_field { i32 884, i32 19, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 884, i32 18, i32 18, i32 0, i32 0 }, %struct.reg_field { i32 884, i32 17, i32 17, i32 0, i32 0 }, %struct.reg_field { i32 884, i32 16, i32 16, i32 0, i32 0 }], [412 x i8] zeroinitializer }, align 32
@isp1761_dc_regmap_conf = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.11, i32 16, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 644, ptr null, ptr null, ptr @isp176x_dc_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@isp1761_dc_reg_fields = internal constant { [40 x %struct.reg_field], [192 x i8] } { [40 x %struct.reg_field] [%struct.reg_field { i32 512, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 512, i32 0, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 524, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 524, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 524, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 528, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 528, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 528, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 528, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 532, i32 25, i32 25, i32 0, i32 0 }, %struct.reg_field { i32 532, i32 23, i32 23, i32 0, i32 0 }, %struct.reg_field { i32 532, i32 21, i32 21, i32 0, i32 0 }, %struct.reg_field { i32 532, i32 19, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 532, i32 17, i32 17, i32 0, i32 0 }, %struct.reg_field { i32 532, i32 15, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 532, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 532, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 532, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 532, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 532, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 532, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 532, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 532, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 556, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 556, i32 1, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 556, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 552, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 552, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 552, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 552, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 552, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 540, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 516, i32 0, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 520, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 520, i32 0, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 628, i32 0, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 628, i32 11, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 624, i32 16, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 624, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 632, i32 0, i32 15, i32 0, i32 0 }], [192 x i8] zeroinitializer }, align 32
@isp1760_register._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"isp1760_core:536:(hc_regmap)->lock\00", [61 x i8] zeroinitializer }, align 32
@isp1760_register._key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"isp1760_core:548:(dc_regmap)->lock\00", [61 x i8] zeroinitializer }, align 32
@isp1763_memory_conf = internal constant { %struct.isp1760_memory_layout, [60 x i8] } { %struct.isp1760_memory_layout { [3 x i32] [i32 8, i32 2, i32 4], [3 x i32] [i32 256, i32 1024, i32 4096], i32 16, i32 14, i32 20480 }, [60 x i8] zeroinitializer }, align 32
@isp176x_memory_conf = internal constant { %struct.isp1760_memory_layout, [60 x i8] } { %struct.isp1760_memory_layout { [3 x i32] [i32 32, i32 20, i32 4], [3 x i32] [i32 256, i32 1024, i32 8192], i32 32, i32 56, i32 61440 }, [60 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_description237 = internal constant [67 x i8] c"isp1760.description=Driver for the ISP1760 USB-controller from NXP\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [58 x i8] c"isp1760.author=Sebastian Siewior <bigeasy@linuxtronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [41 x i8] c"isp1760.file=drivers/usb/isp1760/isp1760\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [23 x i8] c"isp1760.license=GPL v2\00", section ".modinfo", align 1
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"isp1763-hc\00", [21 x i8] zeroinitializer }, align 32
@isp1763_hc_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @isp1763_hc_volatile_ranges, i32 3, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@isp1763_hc_volatile_ranges = internal constant { [3 x %struct.regmap_range], [40 x i8] } { [3 x %struct.regmap_range] [%struct.regmap_range { i32 140, i32 180 }, %struct.regmap_range { i32 186, i32 198 }, %struct.regmap_range { i32 212, i32 230 }], [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"isp1763-dc\00", [21 x i8] zeroinitializer }, align 32
@isp1763_dc_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @isp1763_dc_volatile_ranges, i32 2, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@isp1763_dc_volatile_ranges = internal constant { [2 x %struct.regmap_range], [16 x i8] } { [2 x %struct.regmap_range] [%struct.regmap_range { i32 4, i32 8 }, %struct.regmap_range { i32 28, i32 44 }], [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"isp1760-hc\00", [21 x i8] zeroinitializer }, align 32
@isp176x_hc_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @isp176x_hc_volatile_ranges, i32 3, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@isp176x_hc_volatile_ranges = internal constant { [3 x %struct.regmap_range], [40 x i8] } { [3 x %struct.regmap_range] [%struct.regmap_range { i32 32, i32 344 }, %struct.regmap_range { i32 820, i32 828 }, %struct.regmap_range { i32 784, i32 886 }], [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"isp1761-dc\00", [21 x i8] zeroinitializer }, align 32
@isp176x_dc_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @isp176x_dc_volatile_ranges, i32 2, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@isp176x_dc_volatile_ranges = internal constant { [2 x %struct.regmap_range], [16 x i8] } { [2 x %struct.regmap_range] [%struct.regmap_range { i32 516, i32 520 }, %struct.regmap_range { i32 540, i32 556 }], [16 x i8] zeroinitializer }, align 32
@isp1760_init_core._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 51, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"isp1763 analog overcurrent not available\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"isp1760_init_core\00", [46 x i8] zeroinitializer }, align 32
@isp1760_init_core._entry_ptr = internal global ptr @isp1760_init_core._entry, section ".printk_index", align 4
@isp1760_init_core._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 105, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s bus width: %u, oc: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@isp1760_init_core._entry_ptr.17 = internal global ptr @isp1760_init_core._entry.14, section ".printk_index", align 4
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"isp1763\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"isp1760\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"not available\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"analog\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"digital\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 512, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [23 x i8] c"isp1763_hc_regmap_conf\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 337, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant [22 x i8] c"isp1763_hc_reg_fields\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 256, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant [23 x i8] c"isp1763_dc_regmap_conf\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 463, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant [22 x i8] c"isp1763_dc_reg_fields\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 420, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant [23 x i8] c"isp1760_hc_regmap_conf\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 173, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant [22 x i8] c"isp1760_hc_reg_fields\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 183, i32 31 }
@___asan_gen_.59 = private unnamed_addr constant [23 x i8] c"isp1761_dc_regmap_conf\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 357, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant [22 x i8] c"isp1761_dc_reg_fields\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 367, i32 31 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 536, i32 14 }
@___asan_gen_.71 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 548, i32 14 }
@___asan_gen_.77 = private unnamed_addr constant [20 x i8] c"isp1763_memory_conf\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 149, i32 43 }
@___asan_gen_.80 = private unnamed_addr constant [20 x i8] c"isp176x_memory_conf\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 128, i32 43 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 338, i32 10 }
@___asan_gen_.86 = private unnamed_addr constant [26 x i8] c"isp1763_hc_volatile_table\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 332, i32 41 }
@___asan_gen_.89 = private unnamed_addr constant [27 x i8] c"isp1763_hc_volatile_ranges\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 326, i32 34 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 464, i32 10 }
@___asan_gen_.95 = private unnamed_addr constant [26 x i8] c"isp1763_dc_volatile_table\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 415, i32 41 }
@___asan_gen_.98 = private unnamed_addr constant [27 x i8] c"isp1763_dc_volatile_ranges\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 410, i32 34 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 174, i32 10 }
@___asan_gen_.104 = private unnamed_addr constant [26 x i8] c"isp176x_hc_volatile_table\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 168, i32 41 }
@___asan_gen_.107 = private unnamed_addr constant [27 x i8] c"isp176x_hc_volatile_ranges\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 162, i32 34 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 358, i32 10 }
@___asan_gen_.113 = private unnamed_addr constant [26 x i8] c"isp176x_dc_volatile_table\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 352, i32 41 }
@___asan_gen_.116 = private unnamed_addr constant [27 x i8] c"isp176x_dc_volatile_ranges\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 347, i32 34 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 51, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.150 = private constant [38 x i8] c"../drivers/usb/isp1760/isp1760-core.c\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 100, i32 2 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @isp1760_init_core._entry, ptr @isp1760_init_core._entry.14, ptr @isp1760_init_core._entry_ptr, ptr @isp1760_init_core._entry_ptr.17, ptr @isp1760_register._entry, ptr @isp1760_register._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @isp1763_hc_regmap_conf, ptr @isp1763_hc_reg_fields, ptr @isp1763_dc_regmap_conf, ptr @isp1763_dc_reg_fields, ptr @isp1760_hc_regmap_conf, ptr @isp1760_hc_reg_fields, ptr @isp1761_dc_regmap_conf, ptr @isp1761_dc_reg_fields, ptr @isp1760_register._key, ptr @.str.5, ptr @isp1760_register._key.6, ptr @.str.7, ptr @isp1763_memory_conf, ptr @isp176x_memory_conf, ptr @.str.8, ptr @isp1763_hc_volatile_table, ptr @isp1763_hc_volatile_ranges, ptr @.str.9, ptr @isp1763_dc_volatile_table, ptr @isp1763_dc_volatile_ranges, ptr @.str.10, ptr @isp176x_hc_volatile_table, ptr @isp176x_hc_volatile_ranges, ptr @.str.11, ptr @isp176x_dc_volatile_table, ptr @isp176x_dc_volatile_ranges, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1760_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1763_hc_regmap_conf to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1763_hc_reg_fields to i32), i32 1560, i32 1952, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1763_dc_regmap_conf to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1763_dc_reg_fields to i32), i32 800, i32 992, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1760_hc_regmap_conf to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1760_hc_reg_fields to i32), i32 1540, i32 1952, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1761_dc_regmap_conf to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1761_dc_reg_fields to i32), i32 800, i32 992, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1760_register._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1760_register._key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1763_memory_conf to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp176x_memory_conf to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1763_hc_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1763_hc_volatile_ranges to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1763_dc_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1763_dc_volatile_ranges to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp176x_hc_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp176x_hc_volatile_ranges to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp176x_dc_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp176x_dc_volatile_ranges to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1760_init_core._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1760_init_core._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @isp1760_set_pullup(ptr nocapture noundef readonly %isp, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i5 = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 6, i32 11, i32 0, i32 7, i32 0, i32 3
  %arrayidx.i.i = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 6, i32 11, i32 0, i32 3
  %arrayidx.i.i5.sink = select i1 %enable, ptr %arrayidx.i.i, ptr %arrayidx.i.i5
  %0 = ptrtoint ptr %arrayidx.i.i5.sink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i5.sink, align 4
  %call.i.i.i6 = tail call i32 @regmap_field_update_bits_base(ptr noundef %1, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @isp1760_register(ptr noundef %mem, i32 noundef %irq, i32 noundef %irqflags, ptr noundef %dev, i32 noundef %devflags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %devflags, 576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %1 = icmp ne i32 %0, 0
  %call = tail call i32 @usb_disabled() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  %brmerge = or i1 %1, %tobool3.not
  br i1 %brmerge, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 3664, i32 noundef 3520) #3
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 8
  %devflags10 = getelementptr inbounds %struct.isp1760_device, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %devflags10 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %devflags, ptr %devflags10, align 4
  %hcd11 = getelementptr inbounds %struct.isp1760_device, ptr %call.i, i32 0, i32 3
  %is_isp1763 = getelementptr inbounds %struct.isp1760_device, ptr %call.i, i32 0, i32 3, i32 4
  %and = lshr i32 %devflags, 9
  %4 = trunc i32 %and to i8
  %5 = and i8 %4, 1
  %6 = ptrtoint ptr %is_isp1763 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %is_isp1763, align 4
  %is_isp176321 = getelementptr inbounds %struct.isp1760_device, ptr %call.i, i32 0, i32 4, i32 14
  %7 = ptrtoint ptr %is_isp176321 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %5, ptr %is_isp176321, align 1
  %8 = and i32 %devflags, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %8)
  %.not = icmp eq i32 %8, 1024
  br i1 %.not, label %do.end, label %if.end29

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #6
  br label %cleanup

if.end29:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool31.not = icmp eq i8 %5, 0
  %isp1760_hc_reg_fields.isp1763_hc_reg_fields = select i1 %tobool31.not, ptr @isp1760_hc_reg_fields, ptr @isp1763_hc_reg_fields
  %isp1761_dc_regmap_conf.isp1763_dc_regmap_conf = select i1 %tobool31.not, ptr @isp1761_dc_regmap_conf, ptr @isp1763_dc_regmap_conf
  %isp1761_dc_reg_fields.isp1763_dc_reg_fields = select i1 %tobool31.not, ptr @isp1761_dc_reg_fields, ptr @isp1763_dc_reg_fields
  %isp1760_hc_regmap_conf.isp1763_hc_regmap_conf = select i1 %tobool31.not, ptr @isp1760_hc_regmap_conf, ptr @isp1763_hc_regmap_conf
  %call34 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef null, i32 noundef 7) #3
  %rst_gpio = getelementptr inbounds %struct.isp1760_device, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %rst_gpio to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call34, ptr %rst_gpio, align 8
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %call34 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end29
  %call41 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %mem) #3
  %base = getelementptr inbounds %struct.isp1760_device, ptr %call.i, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call41, ptr %base, align 4
  %cmp.i208 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i208, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %call41 to i32
  br label %cleanup

if.end47:                                         ; preds = %if.end40
  %call49 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call41, ptr noundef nonnull %isp1760_hc_regmap_conf.isp1763_hc_regmap_conf, ptr noundef nonnull @isp1760_register._key, ptr noundef nonnull @.str.5) #3
  %regs = getelementptr inbounds %struct.isp1760_device, ptr %call.i, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call49, ptr %regs, align 4
  %cmp.i209 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i209, label %if.then52, label %if.end47.for.body_crit_edge

if.end47.for.body_crit_edge:                      ; preds = %if.end47
  br label %for.body

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %call49 to i32
  br label %cleanup

for.body:                                         ; preds = %if.end61.for.body_crit_edge, %if.end47.for.body_crit_edge
  %i.0213 = phi i32 [ %inc, %if.end61.for.body_crit_edge ], [ 0, %if.end47.for.body_crit_edge ]
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr %struct.reg_field, ptr %isp1760_hc_reg_fields.isp1763_hc_reg_fields, i32 %i.0213
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack199 = load i32, ptr %arrayidx, align 4
  %18 = insertvalue [5 x i32] undef, i32 %.unpack199, 0
  %.elt200 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 1
  %19 = ptrtoint ptr %.elt200 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack201 = load i32, ptr %.elt200, align 4
  %20 = insertvalue [5 x i32] %18, i32 %.unpack201, 1
  %.elt202 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 2
  %21 = ptrtoint ptr %.elt202 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack203 = load i32, ptr %.elt202, align 4
  %22 = insertvalue [5 x i32] %20, i32 %.unpack203, 2
  %.elt204 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 3
  %23 = ptrtoint ptr %.elt204 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack205 = load i32, ptr %.elt204, align 4
  %24 = insertvalue [5 x i32] %22, i32 %.unpack205, 3
  %.elt206 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 4
  %25 = ptrtoint ptr %.elt206 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack207 = load i32, ptr %.elt206, align 4
  %26 = insertvalue [5 x i32] %24, i32 %.unpack207, 4
  %call57 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev, ptr noundef %16, [5 x i32] %26) #3
  %cmp.i210 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i210, label %if.then59, label %if.end61

if.then59:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %27 = ptrtoint ptr %call57 to i32
  br label %cleanup

if.end61:                                         ; preds = %for.body
  %arrayidx62 = getelementptr %struct.isp1760_device, ptr %call.i, i32 0, i32 3, i32 3, i32 %i.0213
  %28 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call57, ptr %arrayidx62, align 4
  %inc = add nuw nsw i32 %i.0213, 1
  %exitcond.not = icmp eq i32 %inc, 78
  br i1 %exitcond.not, label %for.end, label %if.end61.for.body_crit_edge

if.end61.for.body_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %if.end61
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %call65 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %30, ptr noundef nonnull %isp1761_dc_regmap_conf.isp1763_dc_regmap_conf, ptr noundef nonnull @isp1760_register._key.6, ptr noundef nonnull @.str.7) #3
  %regs66 = getelementptr inbounds %struct.isp1760_device, ptr %call.i, i32 0, i32 4, i32 3
  %31 = ptrtoint ptr %regs66 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call65, ptr %regs66, align 4
  %cmp.i211 = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i211, label %if.then69, label %for.end.for.body75_crit_edge

for.end.for.body75_crit_edge:                     ; preds = %for.end
  br label %for.body75

if.then69:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  %32 = ptrtoint ptr %call65 to i32
  br label %cleanup

for.body75:                                       ; preds = %if.end82.for.body75_crit_edge, %for.end.for.body75_crit_edge
  %i.1214 = phi i32 [ %inc86, %if.end82.for.body75_crit_edge ], [ 0, %for.end.for.body75_crit_edge ]
  %33 = ptrtoint ptr %regs66 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs66, align 4
  %arrayidx77 = getelementptr %struct.reg_field, ptr %isp1761_dc_reg_fields.isp1763_dc_reg_fields, i32 %i.1214
  %35 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.unpack = load i32, ptr %arrayidx77, align 4
  %36 = insertvalue [5 x i32] undef, i32 %.unpack, 0
  %.elt191 = getelementptr inbounds [5 x i32], ptr %arrayidx77, i32 0, i32 1
  %37 = ptrtoint ptr %.elt191 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.unpack192 = load i32, ptr %.elt191, align 4
  %38 = insertvalue [5 x i32] %36, i32 %.unpack192, 1
  %.elt193 = getelementptr inbounds [5 x i32], ptr %arrayidx77, i32 0, i32 2
  %39 = ptrtoint ptr %.elt193 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.unpack194 = load i32, ptr %.elt193, align 4
  %40 = insertvalue [5 x i32] %38, i32 %.unpack194, 2
  %.elt195 = getelementptr inbounds [5 x i32], ptr %arrayidx77, i32 0, i32 3
  %41 = ptrtoint ptr %.elt195 to i32
  call void @__asan_load4_noabort(i32 %41)
  %.unpack196 = load i32, ptr %.elt195, align 4
  %42 = insertvalue [5 x i32] %40, i32 %.unpack196, 3
  %.elt197 = getelementptr inbounds [5 x i32], ptr %arrayidx77, i32 0, i32 4
  %43 = ptrtoint ptr %.elt197 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.unpack198 = load i32, ptr %.elt197, align 4
  %44 = insertvalue [5 x i32] %42, i32 %.unpack198, 4
  %call78 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev, ptr noundef %34, [5 x i32] %44) #3
  %cmp.i212 = icmp ugt ptr %call78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i212, label %if.then80, label %if.end82

if.then80:                                        ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #5
  %45 = ptrtoint ptr %call78 to i32
  br label %cleanup

if.end82:                                         ; preds = %for.body75
  %arrayidx84 = getelementptr %struct.isp1760_device, ptr %call.i, i32 0, i32 4, i32 4, i32 %i.1214
  %46 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call78, ptr %arrayidx84, align 4
  %inc86 = add nuw nsw i32 %i.1214, 1
  %exitcond217.not = icmp eq i32 %inc86, 40
  br i1 %exitcond217.not, label %for.end87, label %if.end82.for.body75_crit_edge

if.end82.for.body75_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body75

for.end87:                                        ; preds = %if.end82
  %47 = ptrtoint ptr %is_isp1763 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %is_isp1763, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool89.not = icmp eq i8 %48, 0
  %spec.select = select i1 %tobool89.not, ptr @isp176x_memory_conf, ptr @isp1763_memory_conf
  %49 = getelementptr inbounds %struct.isp1760_device, ptr %call.i, i32 0, i32 3, i32 5
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %spec.select, ptr %49, align 4
  %call94 = tail call fastcc i32 @isp1760_init_core(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %for.end87.cleanup_crit_edge, label %if.end97

for.end87.cleanup_crit_edge:                      ; preds = %for.end87
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end97:                                         ; preds = %for.end87
  %call98 = tail call i32 @usb_disabled() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.then100, label %if.end97.if.end105_crit_edge

if.end97.if.end105_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end105

if.then100:                                       ; preds = %if.end97
  %or = or i32 %irqflags, 128
  %call101 = tail call i32 @isp1760_hcd_register(ptr noundef %hcd11, ptr noundef %mem, i32 noundef %irq, i32 noundef %or, ptr noundef %dev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %if.then100.cleanup_crit_edge, label %if.then100.if.end105_crit_edge

if.then100.if.end105_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end105

if.then100.cleanup_crit_edge:                     ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end105:                                        ; preds = %if.then100.if.end105_crit_edge, %if.end97.if.end105_crit_edge
  br i1 %1, label %if.then107, label %if.end105.if.end112_crit_edge

if.end105.if.end112_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end112

if.then107:                                       ; preds = %if.end105
  %call108 = tail call i32 @isp1760_udc_register(ptr noundef nonnull %call.i, i32 noundef %irq, i32 noundef %irqflags) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %cmp109 = icmp slt i32 %call108, 0
  br i1 %cmp109, label %if.then110, label %if.then107.if.end112_crit_edge

if.then107.if.end112_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end112

if.then110:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @isp1760_hcd_unregister(ptr noundef %hcd11) #3
  br label %cleanup

if.end112:                                        ; preds = %if.then107.if.end112_crit_edge, %if.end105.if.end112_crit_edge
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %51 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end112, %if.then110, %if.then100.cleanup_crit_edge, %for.end87.cleanup_crit_edge, %if.then80, %if.then69, %if.then59, %if.then52, %if.then44, %if.then37, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then37 ], [ %12, %if.then44 ], [ %14, %if.then52 ], [ %27, %if.then59 ], [ %32, %if.then69 ], [ %45, %if.then80 ], [ %call108, %if.then110 ], [ 0, %if.end112 ], [ -22, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call94, %for.end87.cleanup_crit_edge ], [ %call101, %if.then100.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isp1760_init_core(ptr nocapture noundef readonly %isp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rst_gpio = getelementptr inbounds %struct.isp1760_device, ptr %isp, i32 0, i32 2
  %0 = ptrtoint ptr %rst_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rst_gpio, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %1, i32 noundef 1) #3
  tail call void @msleep(i32 noundef 50) #3
  %2 = ptrtoint ptr %rst_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst_gpio, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx.i.i = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 3, i32 3, i32 46
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %5, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  tail call void @msleep(i32 noundef 100) #3
  %devflags = getelementptr inbounds %struct.isp1760_device, ptr %isp, i32 0, i32 1
  %6 = ptrtoint ptr %devflags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devflags, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %is_isp1763 = getelementptr inbounds %struct.isp1760_device, ptr %isp, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %is_isp1763 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_isp1763, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end8_crit_edge, label %do.end

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %isp, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.12) #6
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %and10 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.if.end15_crit_edge, label %if.then12

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx.i.i134 = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 3, i32 3, i32 33
  %12 = ptrtoint ptr %arrayidx.i.i134 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i134, align 4
  %call.i.i.i135 = tail call i32 @regmap_field_update_bits_base(ptr noundef %13, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end8.if.end15_crit_edge
  %14 = ptrtoint ptr %devflags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %devflags, align 4
  %and17 = and i32 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end15.if.end22_crit_edge, label %if.then19

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end22

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx.i.i136 = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 3, i32 3, i32 33
  %16 = ptrtoint ptr %arrayidx.i.i136 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i136, align 4
  %call.i.i.i137 = tail call i32 @regmap_field_update_bits_base(ptr noundef %17, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end15.if.end22_crit_edge
  %18 = ptrtoint ptr %devflags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %devflags, align 4
  %and24 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end22.if.end29_crit_edge, label %if.then26

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end29

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx.i.i138 = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 3, i32 3, i32 29
  %20 = ptrtoint ptr %arrayidx.i.i138 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i138, align 4
  %call.i.i.i139 = tail call i32 @regmap_field_update_bits_base(ptr noundef %21, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end22.if.end29_crit_edge
  %22 = ptrtoint ptr %devflags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %devflags, align 4
  %and31 = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end29.if.end36_crit_edge, label %if.then33

if.end29.if.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end36

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx.i.i140 = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 3, i32 3, i32 34
  %24 = ptrtoint ptr %arrayidx.i.i140 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i140, align 4
  %call.i.i.i141 = tail call i32 @regmap_field_update_bits_base(ptr noundef %25, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end29.if.end36_crit_edge
  %26 = ptrtoint ptr %devflags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %devflags, align 4
  %and38 = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end36.if.end43_crit_edge, label %if.then40

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end43

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx.i.i142 = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 3, i32 3, i32 35
  %28 = ptrtoint ptr %arrayidx.i.i142 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i142, align 4
  %call.i.i.i143 = tail call i32 @regmap_field_update_bits_base(ptr noundef %29, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end36.if.end43_crit_edge
  %30 = ptrtoint ptr %devflags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %devflags, align 4
  %and45 = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end43.if.end50_crit_edge, label %if.then47

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end50

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx.i.i144 = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 3, i32 3, i32 36
  %32 = ptrtoint ptr %arrayidx.i.i144 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i144, align 4
  %call.i.i.i145 = tail call i32 @regmap_field_update_bits_base(ptr noundef %33, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end43.if.end50_crit_edge
  %34 = ptrtoint ptr %devflags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %devflags, align 4
  %and52 = and i32 %35, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end50.if.end57_crit_edge, label %if.then54

if.end50.if.end57_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end57

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx.i.i146 = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 3, i32 3, i32 38
  %36 = ptrtoint ptr %arrayidx.i.i146 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i146, align 4
  %call.i.i.i147 = tail call i32 @regmap_field_update_bits_base(ptr noundef %37, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end50.if.end57_crit_edge
  %38 = ptrtoint ptr %devflags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %devflags, align 4
  %and59 = and i32 %39, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end57.if.end64_crit_edge, label %if.then61

if.end57.if.end64_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end64

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #5
  %regs = getelementptr inbounds %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 3
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %41, i32 noundef 524, i32 noundef 0) #3
  %arrayidx.i.i148 = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 3, i32 3, i32 31
  %42 = ptrtoint ptr %arrayidx.i.i148 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i148, align 4
  %call.i.i.i149 = tail call i32 @regmap_field_update_bits_base(ptr noundef %43, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end57.if.end64_crit_edge
  %44 = ptrtoint ptr %devflags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %devflags, align 4
  %and66 = and i32 %45, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end64.do.end78_crit_edge, label %if.then68

if.end64.do.end78_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end78

if.then68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #5
  %and70 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  %. = select i1 %tobool71.not, i32 8388632, i32 394240
  %regs74 = getelementptr inbounds %struct.isp1760_device, ptr %isp, i32 0, i32 3, i32 2
  %46 = ptrtoint ptr %regs74 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs74, align 4
  %call.i150 = tail call i32 @regmap_write(ptr noundef %47, i32 noundef 884, i32 noundef %.) #3
  br label %do.end78

do.end78:                                         ; preds = %if.then68, %if.end64.do.end78_crit_edge
  %48 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %isp, align 8
  %is_isp176380 = getelementptr inbounds %struct.isp1760_device, ptr %isp, i32 0, i32 3, i32 4
  %50 = ptrtoint ptr %is_isp176380 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %is_isp176380, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool81.not = icmp eq i8 %51, 0
  %cond = select i1 %tobool81.not, ptr @.str.19, ptr @.str.18
  %52 = ptrtoint ptr %devflags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %devflags, align 4
  %and83 = and i32 %53, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  %and86 = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  %cond88 = select i1 %tobool87.not, i32 32, i32 16
  %cond89 = select i1 %tobool84.not, i32 %cond88, i32 8
  %and95 = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  %cond97 = select i1 %tobool96.not, ptr @.str.22, ptr @.str.21
  %cond99 = select i1 %tobool81.not, ptr %cond97, ptr @.str.20
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %49, ptr noundef nonnull @.str.15, ptr noundef nonnull %cond, i32 noundef %cond89, ptr noundef nonnull %cond99) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end78, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end78 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @isp1760_hcd_register(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @isp1760_udc_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @isp1760_hcd_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @isp1760_unregister(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @isp1760_udc_unregister(ptr noundef %1) #3
  %hcd = getelementptr inbounds %struct.isp1760_device, ptr %1, i32 0, i32 3
  tail call void @isp1760_hcd_unregister(ptr noundef %hcd) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @isp1760_udc_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !68, !69, !70, !72, !73, !74, !75, !76, !77, !78, !79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/isp1760/isp1760-core.c", i32 512, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @isp1760_register._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @isp1760_register._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @isp1760_register._key, !9, !"_key", i1 false, i1 false}
!9 = !{!"../drivers/usb/isp1760/isp1760-core.c", i32 536, i32 14}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @isp1760_register._key.6, !12, !"_key", i1 false, i1 false}
!12 = !{!"../drivers/usb/isp1760/isp1760-core.c", i32 548, i32 14}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_description237, !15, !"__UNIQUE_ID_description237", i1 false, i1 false}
!15 = !{!"../drivers/usb/isp1760/isp1760-core.c", i32 597, i32 1}
!16 = !{ptr @__UNIQUE_ID_author238, !17, !"__UNIQUE_ID_author238", i1 false, i1 false}
!17 = !{!"../drivers/usb/isp1760/isp1760-core.c", i32 598, i32 1}
!18 = !{ptr @__UNIQUE_ID_file239, !19, !"__UNIQUE_ID_file239", i1 false, i1 false}
!19 = !{!"../drivers/usb/isp1760/isp1760-core.c", i32 599, i32 1}
!20 = !{ptr @__UNIQUE_ID_license240, !19, !"__UNIQUE_ID_license240", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/isp1760/isp1760-core.c", i32 338, i32 10}
!23 = !{ptr @isp1763_hc_regmap_conf, !24, !"isp1763_hc_regmap_conf", i1 false, i1 false}
!24 = !{!"../drivers/usb/isp1760/isp1760-core.c", i32 337, i32 35}
!25 = !{ptr @isp1763_hc_volatile_table, !26, !"isp1763_hc_volatile_table", i1 false, i1 false}
!26 = !{!"../drivers/usb/isp1760/isp1760-core.c", i32 332, i32 41}
!27 = !{ptr @isp1763_hc_volatile_ranges, !28, !"isp1763_hc_volatile_ranges", i1 false, i1 false}
!28 = !{!"../drivers/usb/isp1760/isp1760-core.c", i32 326, i32 34}
!29 = !{ptr @isp1763_hc_reg_fields, !30, !"isp1763_hc_reg_fields", i1 false, i1 false}
!30 = !{!"../drivers/usb/isp1760/isp1760-core.c", i32 256, i32 31}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/isp1760/isp1760-core.c", i32 464, i32 10}
!33 = !{ptr @isp1763_dc_regmap_conf, !34, !"isp1763_dc_regmap_conf", i1 false, i1 false}
!34 = !{!"../drivers/usb/isp1760/isp1760-core.c", i32 463, i32 35}
!35 = !{ptr @isp1763_dc_volatile_table, !36, !"isp1763_dc_volatile_table", i1 false, i1 false}
!36 = !{!"../drivers/usb/isp1760/isp1760-core.c", i32 415, i32 41}
!37 = !{ptr @isp1763_dc_volatile_ranges, !38, !"isp1763_dc_volatile_ranges", i1 false, i1 false}
!38 = !{!"../drivers/usb/isp1760/isp1760-core.c", i32 410, i32 34}
!39 = !{ptr @isp1763_dc_reg_fields, !40, !"isp1763_dc_reg_fields", i1 false, i1 false}
!40 = !{!"../drivers/usb/isp1760/isp1760-core.c", i32 420, i32 31}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/isp1760/isp1760-core.c", i32 174, i32 10}
!43 = !{ptr @isp1760_hc_regmap_conf, !44, !"isp1760_hc_regmap_conf", i1 false, i1 false}
!44 = !{!"../drivers/usb/isp1760/isp1760-core.c", i32 173, i32 35}
!45 = !{ptr @isp176x_hc_volatile_table, !46, !"isp176x_hc_volatile_table", i1 false, i1 false}
!46 = !{!"../drivers/usb/isp1760/isp1760-core.c", i32 168, i32 41}
!47 = !{ptr @isp176x_hc_volatile_ranges, !48, !"isp176x_hc_volatile_ranges", i1 false, i1 false}
!48 = !{!"../drivers/usb/isp1760/isp1760-core.c", i32 162, i32 34}
!49 = !{ptr @isp1760_hc_reg_fields, !50, !"isp1760_hc_reg_fields", i1 false, i1 false}
!50 = !{!"../drivers/usb/isp1760/isp1760-core.c", i32 183, i32 31}
!51 = !{ptr @.str.11, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/isp1760/isp1760-core.c", i32 358, i32 10}
!53 = !{ptr @isp1761_dc_regmap_conf, !54, !"isp1761_dc_regmap_conf", i1 false, i1 false}
!54 = !{!"../drivers/usb/isp1760/isp1760-core.c", i32 357, i32 35}
!55 = !{ptr @isp176x_dc_volatile_table, !56, !"isp176x_dc_volatile_table", i1 false, i1 false}
!56 = !{!"../drivers/usb/isp1760/isp1760-core.c", i32 352, i32 41}
!57 = !{ptr @isp176x_dc_volatile_ranges, !58, !"isp176x_dc_volatile_ranges", i1 false, i1 false}
!58 = !{!"../drivers/usb/isp1760/isp1760-core.c", i32 347, i32 34}
!59 = !{ptr @isp1761_dc_reg_fields, !60, !"isp1761_dc_reg_fields", i1 false, i1 false}
!60 = !{!"../drivers/usb/isp1760/isp1760-core.c", i32 367, i32 31}
!61 = !{ptr @isp1763_memory_conf, !62, !"isp1763_memory_conf", i1 false, i1 false}
!62 = !{!"../drivers/usb/isp1760/isp1760-core.c", i32 149, i32 43}
!63 = !{ptr @isp176x_memory_conf, !64, !"isp176x_memory_conf", i1 false, i1 false}
!64 = !{!"../drivers/usb/isp1760/isp1760-core.c", i32 128, i32 43}
!65 = !{ptr @.str.12, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/isp1760/isp1760-core.c", i32 51, i32 3}
!67 = !{ptr @.str.13, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @isp1760_init_core._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @isp1760_init_core._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.15, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/isp1760/isp1760-core.c", i32 100, i32 2}
!72 = !{ptr @.str.16, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @isp1760_init_core._entry.14, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @isp1760_init_core._entry_ptr.17, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.18, !71, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i8 0, i8 2}
