; ModuleID = '/llk/IR_all_yes/drivers/input/mouse/sentelic.c_pt.bc'
source_filename = "../drivers/input/mouse/sentelic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.psmouse_attribute = type { %struct.device_attribute, ptr, ptr, ptr, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.psmouse = type { ptr, ptr, %struct.ps2dev, %struct.delayed_work, ptr, ptr, ptr, [8 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [64 x i8], [32 x i8], i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ps2dev = type { ptr, %struct.mutex, %struct.wait_queue_head, i32, [8 x i8], i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.fsp_data = type { i8, i8, i32, i32, i8, i8, i8, i8, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Sentelic\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FingerSensingPad\00", [47 x i8] zeroinitializer }, align 32
@fsp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1029, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"sentelic: Finger Sensing Pad, hw: %d.%d.%d, sn: %x, sw: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fsp_init\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/input/mouse/sentelic.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsp_init._entry_ptr = internal global ptr @fsp_init._entry, section ".printk_index", align 4
@fsp_drv_ver = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1.1.0-K\00", [24 x i8] zeroinitializer }, align 32
@fsp_attribute_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @fsp_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@fsp_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1057, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"sentelic: Failed to create sysfs attributes (%d)\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@fsp_init._entry_ptr.10 = internal global ptr @fsp_init._entry.7, section ".printk_index", align 4
@fsp_reg_read.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.4, ptr @.str.13, i8 0, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"psmouse\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsp_reg_read\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"sentelic: READ REG: 0x%02x is 0x%02x (rc = %d)\0A\00", [48 x i8] zeroinitializer }, align 32
@fsp_page_reg_write.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.14, ptr @.str.4, ptr @.str.15, i8 0, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsp_page_reg_write\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"sentelic: WRITE PAGE REG: to 0x%02x (rc = %d)\0A\00", [49 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fsp_opc_tag_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 338, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sentelic: Unable get OPC state.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsp_opc_tag_enable\00", [45 x i8] zeroinitializer }, align 32
@fsp_opc_tag_enable._entry_ptr = internal global ptr @fsp_opc_tag_enable._entry, section ".printk_index", align 4
@fsp_opc_tag_enable._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.4, i32 355, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sentelic: Unable to enable OPC tag.\0A\00", [59 x i8] zeroinitializer }, align 32
@fsp_opc_tag_enable._entry_ptr.20 = internal global ptr @fsp_opc_tag_enable._entry.18, section ".printk_index", align 4
@fsp_reg_write.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.21, ptr @.str.4, ptr @.str.22, i8 0, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsp_reg_write\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"sentelic: WRITE REG: 0x%02x to 0x%02x (rc = %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@fsp_activate_protocol._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 859, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"sentelic: Unable to enable 4 bytes packet format.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fsp_activate_protocol\00", [42 x i8] zeroinitializer }, align 32
@fsp_activate_protocol._entry_ptr = internal global ptr @fsp_activate_protocol._entry, section ".printk_index", align 4
@fsp_activate_protocol._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.4, i32 867, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sentelic: Unable to read SYSCTL5 register.\0A\00", [52 x i8] zeroinitializer }, align 32
@fsp_activate_protocol._entry_ptr.27 = internal global ptr @fsp_activate_protocol._entry.25, section ".printk_index", align 4
@fsp_activate_protocol._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.4, i32 873, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"sentelic: Unable to retrieve number of buttons.\0A\00", [47 x i8] zeroinitializer }, align 32
@fsp_activate_protocol._entry_ptr.30 = internal global ptr @fsp_activate_protocol._entry.28, section ".printk_index", align 4
@fsp_activate_protocol._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.4, i32 887, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"sentelic: Unable to set up required mode bits.\0A\00", [48 x i8] zeroinitializer }, align 32
@fsp_activate_protocol._entry_ptr.33 = internal global ptr @fsp_activate_protocol._entry.31, section ".printk_index", align 4
@fsp_activate_protocol._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.24, ptr @.str.4, i32 897, ptr @.str.36, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"sentelic: Failed to enable OPC tag mode.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@fsp_activate_protocol._entry_ptr.37 = internal global ptr @fsp_activate_protocol._entry.34, section ".printk_index", align 4
@fsp_activate_protocol._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.24, ptr @.str.4, i32 912, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"sentelic: Unable to enable absolute coordinates output.\0A\00", [39 x i8] zeroinitializer }, align 32
@fsp_activate_protocol._entry_ptr.40 = internal global ptr @fsp_activate_protocol._entry.38, section ".printk_index", align 4
@fsp_get_buttons.buttons = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 22, i32 6, i32 4, i32 2], [16 x i8] zeroinitializer }, align 32
@fsp_attributes = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @psmouse_attr_setreg, ptr @psmouse_attr_getreg, ptr @psmouse_attr_page, ptr @psmouse_attr_vscroll, ptr @psmouse_attr_hscroll, ptr @psmouse_attr_flags, ptr @psmouse_attr_ver, ptr null], [32 x i8] zeroinitializer }, align 32
@psmouse_attr_setreg = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr null, ptr null, ptr @fsp_attr_set_setreg, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_getreg = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr null, ptr @fsp_attr_show_getreg, ptr @fsp_attr_set_getreg, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_page = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr null, ptr @fsp_attr_show_pagereg, ptr @fsp_attr_set_pagereg, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_vscroll = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr null, ptr @fsp_attr_show_vscroll, ptr @fsp_attr_set_vscroll, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_hscroll = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr null, ptr @fsp_attr_show_hscroll, ptr @fsp_attr_set_hscroll, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_flags = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr null, ptr @fsp_attr_show_flags, ptr @fsp_attr_set_flags, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_ver = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr null, ptr @fsp_attr_show_ver, ptr null, i8 1 }, [52 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"setreg\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"getreg\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%02x%02x\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"page\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x\0A\00", [26 x i8] zeroinitializer }, align 32
@fsp_page_reg_read.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.46, ptr @.str.4, ptr @.str.47, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsp_page_reg_read\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sentelic: READ PAGE REG: 0x%02x (rc = %d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vscroll\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hscroll\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%c\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ver\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Sentelic FSP kernel module %s\0A\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 233, i64 238, i64 242, i64 255]
@__sancov_gen_cov_switch_values.55 = internal global [9 x i64] [i64 7, i64 8, i64 10, i64 20, i64 40, i64 60, i64 80, i64 100, i64 200]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.57 = internal global [6 x i64] [i64 4, i64 8, i64 233, i64 238, i64 242, i64 255]
@__sancov_gen_cov_switch_values.58 = internal global [9 x i64] [i64 7, i64 8, i64 10, i64 20, i64 40, i64 60, i64 80, i64 100, i64 200]
@__sancov_gen_cov_switch_values.59 = internal global [6 x i64] [i64 4, i64 8, i64 233, i64 238, i64 242, i64 255]
@__sancov_gen_cov_switch_values.60 = internal global [9 x i64] [i64 7, i64 8, i64 10, i64 20, i64 40, i64 60, i64 80, i64 100, i64 200]
@__sancov_gen_cov_switch_values.61 = internal global [6 x i64] [i64 4, i64 8, i64 233, i64 238, i64 242, i64 255]
@__sancov_gen_cov_switch_values.62 = internal global [9 x i64] [i64 7, i64 8, i64 10, i64 20, i64 40, i64 60, i64 80, i64 100, i64 200]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 8, i64 67, i64 99]
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 973, i32 21 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 974, i32 19 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1027, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [12 x i8] c"fsp_drv_ver\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 31, i32 19 }
@___asan_gen_.91 = private unnamed_addr constant [20 x i8] c"fsp_attribute_group\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 631, i32 31 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1056, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 122, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 271, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 338, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 355, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 174, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 858, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 866, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 872, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 886, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 896, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 911, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant [8 x i8] c"buttons\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 316, i32 19 }
@___asan_gen_.184 = private unnamed_addr constant [15 x i8] c"fsp_attributes\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 620, i32 26 }
@___asan_gen_.187 = private unnamed_addr constant [20 x i8] c"psmouse_attr_setreg\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [20 x i8] c"psmouse_attr_getreg\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [18 x i8] c"psmouse_attr_page\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [21 x i8] c"psmouse_attr_vscroll\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [21 x i8] c"psmouse_attr_hscroll\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [19 x i8] c"psmouse_attr_flags\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"psmouse_attr_ver\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 447, i32 1 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 485, i32 1 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 454, i32 22 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 518, i32 1 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 496, i32 22 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 233, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 547, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 526, i32 22 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 576, i32 1 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 609, i32 1 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 584, i32 22 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 618, i32 1 }
@___asan_gen_.247 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.248 = private constant [34 x i8] c"../drivers/input/mouse/sentelic.c\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 615, i32 22 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @fsp_activate_protocol._entry, ptr @fsp_activate_protocol._entry.25, ptr @fsp_activate_protocol._entry.28, ptr @fsp_activate_protocol._entry.31, ptr @fsp_activate_protocol._entry.34, ptr @fsp_activate_protocol._entry.38, ptr @fsp_activate_protocol._entry_ptr, ptr @fsp_activate_protocol._entry_ptr.27, ptr @fsp_activate_protocol._entry_ptr.30, ptr @fsp_activate_protocol._entry_ptr.33, ptr @fsp_activate_protocol._entry_ptr.37, ptr @fsp_activate_protocol._entry_ptr.40, ptr @fsp_init._entry, ptr @fsp_init._entry.7, ptr @fsp_init._entry_ptr, ptr @fsp_init._entry_ptr.10, ptr @fsp_opc_tag_enable._entry, ptr @fsp_opc_tag_enable._entry.18, ptr @fsp_opc_tag_enable._entry_ptr, ptr @fsp_opc_tag_enable._entry_ptr.20, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @fsp_drv_ver, ptr @fsp_attribute_group, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.36, ptr @.str.39, ptr @fsp_get_buttons.buttons, ptr @fsp_attributes, ptr @psmouse_attr_setreg, ptr @psmouse_attr_getreg, ptr @psmouse_attr_page, ptr @psmouse_attr_vscroll, ptr @psmouse_attr_hscroll, ptr @psmouse_attr_flags, ptr @psmouse_attr_ver, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsp_drv_ver to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsp_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsp_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsp_opc_tag_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsp_opc_tag_enable._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsp_activate_protocol._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsp_activate_protocol._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsp_activate_protocol._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsp_activate_protocol._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsp_activate_protocol._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsp_activate_protocol._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsp_get_buttons.buttons to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsp_attributes to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_setreg to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_getreg to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_page to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_vscroll to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_hscroll to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_flags to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_ver to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsp_detect(ptr noundef %psmouse, i1 noundef zeroext %set_properties) local_unnamed_addr #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #9
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4, !annotation !117
  %call = call fastcc i32 @fsp_reg_read(ptr noundef %psmouse, i32 noundef 0, ptr noundef nonnull %id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not = icmp ne i32 %2, 1
  %set_properties.not = xor i1 %set_properties, true
  %brmerge = or i1 %cmp.not, %set_properties.not
  %.mux = select i1 %cmp.not, i32 -19, i32 0
  br i1 %brmerge, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %vendor = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 4
  %3 = ptrtoint ptr %vendor to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str, ptr %vendor, align 4
  %name = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 5
  %4 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.1, ptr %name, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %.mux, %if.end.cleanup_crit_edge ], [ 0, %if.then4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsp_reg_read(ptr noundef %psmouse, i32 noundef %reg_addr, ptr nocapture noundef %reg_val) unnamed_addr #0 align 64 {
entry:
  %param = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param) #9
  %0 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %param, align 1, !annotation !117
  %1 = getelementptr inbounds [3 x i8], ptr %param, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !117
  %3 = getelementptr inbounds [3 x i8], ptr %param, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !117
  %call = tail call i32 @psmouse_deactivate(ptr noundef %psmouse) #9
  tail call void @ps2_begin_command(ptr noundef %ps2dev1) #9
  %call2 = tail call i32 @ps2_sendbyte(ptr noundef %ps2dev1, i8 noundef zeroext -13, i32 noundef 200) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @ps2_sendbyte(ptr noundef %ps2dev1, i8 noundef zeroext 102, i32 noundef 30) #9
  %call4 = tail call i32 @ps2_sendbyte(ptr noundef %ps2dev1, i8 noundef zeroext -120, i32 noundef 30) #9
  %call5 = tail call i32 @ps2_sendbyte(ptr noundef %ps2dev1, i8 noundef zeroext -13, i32 noundef 200) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.out_crit_edge, label %if.end8

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end8:                                          ; preds = %if.end
  %conv = trunc i32 %reg_addr to i8
  %5 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %conv, label %if.end8.fsp_test_invert_cmd.exit_crit_edge [
    i8 -23, label %if.end8.sw.bb.i_crit_edge
    i8 -18, label %if.end8.sw.bb.i_crit_edge63
    i8 -14, label %if.end8.sw.bb.i_crit_edge64
    i8 -1, label %if.end8.sw.bb.i_crit_edge65
  ]

if.end8.sw.bb.i_crit_edge65:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end8.sw.bb.i_crit_edge64:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end8.sw.bb.i_crit_edge63:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end8.sw.bb.i_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end8.fsp_test_invert_cmd.exit_crit_edge:       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsp_test_invert_cmd.exit

sw.bb.i:                                          ; preds = %if.end8.sw.bb.i_crit_edge, %if.end8.sw.bb.i_crit_edge63, %if.end8.sw.bb.i_crit_edge64, %if.end8.sw.bb.i_crit_edge65
  %neg.i = xor i8 %conv, -1
  br label %fsp_test_invert_cmd.exit

fsp_test_invert_cmd.exit:                         ; preds = %sw.bb.i, %if.end8.fsp_test_invert_cmd.exit_crit_edge
  %retval.0.i59 = phi i8 [ %neg.i, %sw.bb.i ], [ %conv, %if.end8.fsp_test_invert_cmd.exit_crit_edge ]
  %conv10 = zext i8 %retval.0.i59 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10, i32 %reg_addr)
  %cmp11.not = icmp eq i32 %conv10, %reg_addr
  br i1 %cmp11.not, label %if.else, label %fsp_test_invert_cmd.exit.if.end25_crit_edge

fsp_test_invert_cmd.exit.if.end25_crit_edge:      ; preds = %fsp_test_invert_cmd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.else:                                          ; preds = %fsp_test_invert_cmd.exit
  %6 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %conv, label %if.else.fsp_test_swap_cmd.exit_crit_edge [
    i8 10, label %if.else.sw.bb.i60_crit_edge
    i8 20, label %if.else.sw.bb.i60_crit_edge66
    i8 40, label %if.else.sw.bb.i60_crit_edge67
    i8 60, label %if.else.sw.bb.i60_crit_edge68
    i8 80, label %if.else.sw.bb.i60_crit_edge69
    i8 100, label %if.else.sw.bb.i60_crit_edge70
    i8 -56, label %if.else.sw.bb.i60_crit_edge71
  ]

if.else.sw.bb.i60_crit_edge71:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i60

if.else.sw.bb.i60_crit_edge70:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i60

if.else.sw.bb.i60_crit_edge69:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i60

if.else.sw.bb.i60_crit_edge68:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i60

if.else.sw.bb.i60_crit_edge67:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i60

if.else.sw.bb.i60_crit_edge66:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i60

if.else.sw.bb.i60_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i60

if.else.fsp_test_swap_cmd.exit_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsp_test_swap_cmd.exit

sw.bb.i60:                                        ; preds = %if.else.sw.bb.i60_crit_edge, %if.else.sw.bb.i60_crit_edge66, %if.else.sw.bb.i60_crit_edge67, %if.else.sw.bb.i60_crit_edge68, %if.else.sw.bb.i60_crit_edge69, %if.else.sw.bb.i60_crit_edge70, %if.else.sw.bb.i60_crit_edge71
  %or.i = tail call i8 @llvm.fshl.i8(i8 %conv, i8 %conv, i8 4) #9
  br label %fsp_test_swap_cmd.exit

fsp_test_swap_cmd.exit:                           ; preds = %sw.bb.i60, %if.else.fsp_test_swap_cmd.exit_crit_edge
  %retval.0.i61 = phi i8 [ %or.i, %sw.bb.i60 ], [ %conv, %if.else.fsp_test_swap_cmd.exit_crit_edge ]
  %conv17 = zext i8 %retval.0.i61 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv17, i32 %reg_addr)
  %cmp18.not = icmp eq i32 %conv17, %reg_addr
  %. = select i1 %cmp18.not, i8 102, i8 -52
  br label %if.end25

if.end25:                                         ; preds = %fsp_test_swap_cmd.exit, %fsp_test_invert_cmd.exit.if.end25_crit_edge
  %.sink = phi i8 [ 104, %fsp_test_invert_cmd.exit.if.end25_crit_edge ], [ %., %fsp_test_swap_cmd.exit ]
  %addr.0 = phi i8 [ %retval.0.i59, %fsp_test_invert_cmd.exit.if.end25_crit_edge ], [ %retval.0.i61, %fsp_test_swap_cmd.exit ]
  %call21 = tail call i32 @ps2_sendbyte(ptr noundef %ps2dev1, i8 noundef zeroext %.sink, i32 noundef 30) #9
  %call26 = tail call i32 @ps2_sendbyte(ptr noundef %ps2dev1, i8 noundef zeroext %addr.0, i32 noundef 200) #9
  %call27 = call i32 @__ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 1001) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end25.out_crit_edge, label %if.end31

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %3, align 1
  %conv32 = zext i8 %8 to i32
  %9 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv32, ptr %reg_val, align 4
  br label %out

out:                                              ; preds = %if.end31, %if.end25.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ -1, %entry.out_crit_edge ], [ -1, %if.end.out_crit_edge ], [ -1, %if.end25.out_crit_edge ], [ 0, %if.end31 ]
  call void @ps2_end_command(ptr noundef %ps2dev1) #9
  %call33 = call i32 @psmouse_activate(ptr noundef %psmouse) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsp_reg_read.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsp_reg_read, %if.then37)) #9
          to label %do.end [label %if.then37], !srcloc !118

if.then37:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ps2dev1, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsp_reg_read.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %reg_addr, i32 noundef %13, i32 noundef %rc.0) #9
  br label %do.end

do.end:                                           ; preds = %if.then37, %out
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param) #9
  ret i32 %rc.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsp_init(ptr noundef %psmouse) local_unnamed_addr #0 align 64 {
entry:
  %ver = alloca i32, align 4
  %rev = alloca i32, align 4
  %sn = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ver) #9
  %0 = ptrtoint ptr %ver to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ver, align 4, !annotation !117
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rev) #9
  %1 = ptrtoint ptr %rev to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rev, align 4, !annotation !117
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sn) #9
  %2 = ptrtoint ptr %sn to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sn, align 4
  %call.i = call fastcc i32 @fsp_reg_read(ptr noundef %psmouse, i32 noundef 1, ptr noundef nonnull %ver) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false, label %entry.cleanup36_crit_edge

entry.cleanup36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup36

lor.lhs.false:                                    ; preds = %entry
  %call.i62 = call fastcc i32 @fsp_reg_read(ptr noundef %psmouse, i32 noundef 4, ptr noundef nonnull %rev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool.not.i63 = icmp eq i32 %call.i62, 0
  br i1 %tobool.not.i63, label %if.end, label %lor.lhs.false.cleanup36_crit_edge

lor.lhs.false.cleanup36_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup36

if.end:                                           ; preds = %lor.lhs.false
  %3 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 223, i32 %4)
  %cmp = icmp sgt i32 %4, 223
  br i1 %cmp, label %if.then3, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @fsp_get_sn(ptr noundef %psmouse, ptr noundef nonnull %sn)
  br label %do.end

do.end:                                           ; preds = %if.then3, %if.end.do.end_crit_edge
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %5 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %6, i32 0, i32 18
  %shr = ashr i32 %4, 4
  %and = and i32 %4, 15
  %7 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rev, align 4
  %9 = ptrtoint ptr %sn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sn, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %shr, i32 noundef %and, i32 noundef %8, i32 noundef %10, ptr noundef nonnull @fsp_drv_ver) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 20) #13
  %12 = ptrtoint ptr %psmouse to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %psmouse, align 4
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %do.end.cleanup36_crit_edge, label %if.end9

do.end.cleanup36_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup36

if.end9:                                          ; preds = %do.end
  %conv = trunc i32 %4 to i8
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %call7.i.i, align 8
  %conv11 = trunc i32 %8 to i8
  %rev12 = getelementptr inbounds %struct.fsp_data, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %rev12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv11, ptr %rev12, align 1
  %protocol_handler = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 26
  %15 = ptrtoint ptr %protocol_handler to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @fsp_process_byte, ptr %protocol_handler, align 4
  %disconnect = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 32
  %16 = ptrtoint ptr %disconnect to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @fsp_disconnect, ptr %disconnect, align 4
  %reconnect = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 30
  %17 = ptrtoint ptr %reconnect to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @fsp_reconnect, ptr %reconnect, align 4
  %cleanup = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 33
  %18 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @fsp_reset, ptr %cleanup, align 4
  %pktsize = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 10
  %19 = ptrtoint ptr %pktsize to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 4, ptr %pktsize, align 2
  %call13 = tail call fastcc i32 @fsp_activate_protocol(ptr noundef %psmouse)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end9.err_out_crit_edge

if.end9.err_out_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.end16:                                         ; preds = %if.end9
  tail call fastcc void @fsp_set_input_params(ptr noundef %psmouse)
  %20 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ps2dev, align 4
  %dev23 = getelementptr inbounds %struct.serio, ptr %21, i32 0, i32 18
  %call24 = tail call i32 @sysfs_create_group(ptr noundef %dev23, ptr noundef nonnull @fsp_attribute_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end16.cleanup36_crit_edge, label %do.end29

if.end16.cleanup36_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup36

do.end29:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ps2dev, align 4
  %dev32 = getelementptr inbounds %struct.serio, ptr %23, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.8, i32 noundef %call24) #12
  br label %err_out

err_out:                                          ; preds = %do.end29, %if.end9.err_out_crit_edge
  %error.0 = phi i32 [ %call13, %if.end9.err_out_crit_edge ], [ %call24, %do.end29 ]
  %24 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %psmouse, align 4
  tail call void @kfree(ptr noundef %25) #9
  %26 = ptrtoint ptr %psmouse to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %psmouse, align 4
  br label %cleanup36

cleanup36:                                        ; preds = %err_out, %if.end16.cleanup36_crit_edge, %do.end.cleanup36_crit_edge, %lor.lhs.false.cleanup36_crit_edge, %entry.cleanup36_crit_edge
  %retval.0 = phi i32 [ %error.0, %err_out ], [ -19, %lor.lhs.false.cleanup36_crit_edge ], [ -19, %entry.cleanup36_crit_edge ], [ -12, %do.end.cleanup36_crit_edge ], [ 0, %if.end16.cleanup36_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sn) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rev) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ver) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsp_get_sn(ptr noundef %psmouse, ptr nocapture noundef writeonly %sn) unnamed_addr #0 align 64 {
entry:
  %v0 = alloca i32, align 4
  %v1 = alloca i32, align 4
  %v2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v0) #9
  %0 = ptrtoint ptr %v0 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %v0, align 4, !annotation !117
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v1) #9
  %1 = ptrtoint ptr %v1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %v1, align 4, !annotation !117
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v2) #9
  %2 = ptrtoint ptr %v2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %v2, align 4, !annotation !117
  %call = tail call fastcc i32 @fsp_page_reg_write(ptr noundef %psmouse, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @fsp_reg_read(ptr noundef %psmouse, i32 noundef 64, ptr noundef nonnull %v0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @fsp_reg_read(ptr noundef %psmouse, i32 noundef 65, ptr noundef nonnull %v1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end8:                                          ; preds = %if.end4
  %call9 = call fastcc i32 @fsp_reg_read(ptr noundef %psmouse, i32 noundef 66, ptr noundef nonnull %v2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %v0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %v0, align 4
  %shl = shl i32 %4, 16
  %5 = ptrtoint ptr %v1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %v1, align 4
  %shl13 = shl i32 %6, 8
  %or = or i32 %shl13, %shl
  %7 = ptrtoint ptr %v2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %v2, align 4
  %or14 = or i32 %or, %8
  %9 = ptrtoint ptr %sn to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or14, ptr %sn, align 4
  br label %out

out:                                              ; preds = %if.end12, %if.end8.out_crit_edge, %if.end4.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %call15 = tail call fastcc i32 @fsp_page_reg_write(ptr noundef %psmouse, i32 noundef 130)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v0) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsp_process_byte(ptr noundef %psmouse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %psmouse, align 4
  %packet2 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 7
  %pktcnt = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 9
  %4 = ptrtoint ptr %pktcnt to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pktcnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %cmp = icmp ult i8 %5, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %packet2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %packet2, align 4
  %8 = lshr i8 %7, 6
  %9 = zext i8 %8 to i32
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %9, label %if.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb131
    i32 0, label %if.end.sw.bb141_crit_edge
  ]

if.end.sw.bb141_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb141

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %11 = and i8 %7, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 72, i8 %11)
  %switch = icmp eq i8 %11, 72
  br i1 %switch, label %land.lhs.true, label %sw.bb.if.end27_crit_edge

sw.bb.if.end27_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true:                                    ; preds = %sw.bb
  %arrayidx14 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp16 = icmp eq i8 %13, 0
  br i1 %cmp16, label %land.lhs.true18, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true18:                                  ; preds = %land.lhs.true
  %arrayidx19 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp21 = icmp eq i8 %15, 0
  br i1 %cmp21, label %if.then23, label %land.lhs.true18.if.end27_crit_edge

land.lhs.true18.if.end27_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then23:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx24 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx24, align 1
  %18 = and i8 %17, -16
  store i8 %18, ptr %arrayidx24, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %land.lhs.true18.if.end27_crit_edge, %land.lhs.true.if.end27_crit_edge, %sw.bb.if.end27_crit_edge
  %arrayidx28 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %20 to i32
  %shl = shl nuw nsw i32 %conv29, 2
  %arrayidx30 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %21 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %22 to i32
  %23 = lshr i32 %conv31, 2
  %and33 = and i32 %23, 3
  %or = or i32 %and33, %shl
  %arrayidx35 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %24 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %25 to i32
  %shl37 = shl nuw nsw i32 %conv36, 2
  %and40 = and i32 %conv31, 3
  %or41 = or i32 %shl37, %and40
  %conv44 = zext i8 %7 to i32
  %and45 = and i32 %conv44, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool.not = icmp eq i32 %and45, 0
  br i1 %tobool.not, label %if.else74, label %if.then46

if.then46:                                        ; preds = %if.end27
  %and49 = and i32 %conv44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  %last_mt_fgr62 = getelementptr inbounds %struct.fsp_data, ptr %3, i32 0, i32 8
  %26 = ptrtoint ptr %last_mt_fgr62 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %last_mt_fgr62, align 4
  br i1 %tobool50.not, label %if.else, label %if.then51

if.then51:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp52 = icmp eq i32 %27, 2
  br i1 %cmp52, label %if.then54, label %if.then51.if.end55_crit_edge

if.then51.if.end55_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then54:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 47, i32 noundef 0) #9
  %call.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %1, i32 noundef 0, i1 noundef zeroext false) #9
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.then51.if.end55_crit_edge
  %fgrs.0 = phi i16 [ 1, %if.then54 ], [ 2, %if.then51.if.end55_crit_edge ]
  %28 = xor i1 %cmp52, true
  %29 = ptrtoint ptr %last_mt_fgr62 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %last_mt_fgr62, align 4
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 47, i32 noundef 1) #9
  %call.i299 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %1, i32 noundef 0, i1 noundef zeroext %28) #9
  br i1 %cmp52, label %if.end55.if.end101_crit_edge, label %if.then.i

if.end55.if.end101_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

if.then.i:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 53, i32 noundef %or) #9
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 54, i32 noundef %or41) #9
  br label %if.end101

if.else:                                          ; preds = %if.then46
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp63 = icmp eq i32 %27, 1
  br i1 %cmp63, label %if.then65, label %if.else.if.end66_crit_edge

if.else.if.end66_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then65:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 47, i32 noundef 1) #9
  %call.i300 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %1, i32 noundef 0, i1 noundef zeroext false) #9
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.else.if.end66_crit_edge
  %fgrs.1 = phi i16 [ 1, %if.then65 ], [ 2, %if.else.if.end66_crit_edge ]
  %30 = ptrtoint ptr %last_mt_fgr62 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %last_mt_fgr62, align 4
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 47, i32 noundef 0) #9
  %call.i301 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %1, i32 noundef 0, i1 noundef zeroext true) #9
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 53, i32 noundef %or) #9
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 54, i32 noundef %or41) #9
  br label %if.end101

if.else74:                                        ; preds = %if.end27
  %and77 = and i32 %conv44, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and77)
  %cmp78 = icmp eq i32 %and77, 1
  br i1 %cmp78, label %if.then80, label %if.else74.if.end85_crit_edge

if.else74.if.end85_crit_edge:                     ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then80:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %packet2 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %11, ptr %packet2, align 1
  br label %if.end85

if.end85:                                         ; preds = %if.then80, %if.else74.if.end85_crit_edge
  %last_mt_fgr86 = getelementptr inbounds %struct.fsp_data, ptr %3, i32 0, i32 8
  %32 = ptrtoint ptr %last_mt_fgr86 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %last_mt_fgr86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp88.not = icmp eq i32 %or, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or41)
  %cmp92.not = icmp eq i32 %or41, 0
  %or.cond = select i1 %cmp88.not, i1 true, i1 %cmp92.not
  %not.or.cond = xor i1 %or.cond, true
  %spec.select298 = zext i1 %not.or.cond to i16
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 47, i32 noundef 0) #9
  %call.i303 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %1, i32 noundef 0, i1 noundef zeroext %not.or.cond) #9
  br i1 %or.cond, label %if.end85.fsp_set_slot.exit305_crit_edge, label %if.then.i304

if.end85.fsp_set_slot.exit305_crit_edge:          ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsp_set_slot.exit305

if.then.i304:                                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 53, i32 noundef %or) #9
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 54, i32 noundef %or41) #9
  br label %fsp_set_slot.exit305

fsp_set_slot.exit305:                             ; preds = %if.then.i304, %if.end85.fsp_set_slot.exit305_crit_edge
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 47, i32 noundef 1) #9
  %call.i306 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %1, i32 noundef 0, i1 noundef zeroext false) #9
  br label %if.end101

if.end101:                                        ; preds = %fsp_set_slot.exit305, %if.end66, %if.then.i, %if.end55.if.end101_crit_edge
  %fgrs.3 = phi i16 [ %fgrs.1, %if.end66 ], [ %spec.select298, %fsp_set_slot.exit305 ], [ %fgrs.0, %if.end55.if.end101_crit_edge ], [ %fgrs.0, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %fgrs.3)
  %cmp103 = icmp eq i16 %fgrs.3, 1
  br i1 %cmp103, label %if.end101.if.then114_crit_edge, label %lor.lhs.false105

if.end101.if.then114_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then114

lor.lhs.false105:                                 ; preds = %if.end101
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %fgrs.3)
  %cmp107 = icmp eq i16 %fgrs.3, 2
  br i1 %cmp107, label %land.lhs.true109, label %lor.lhs.false105.if.end117_crit_edge

lor.lhs.false105.if.end117_crit_edge:             ; preds = %lor.lhs.false105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end117

land.lhs.true109:                                 ; preds = %lor.lhs.false105
  %33 = ptrtoint ptr %packet2 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %packet2, align 1
  %35 = and i8 %34, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool113.not = icmp eq i8 %35, 0
  br i1 %tobool113.not, label %land.lhs.true109.if.then114_crit_edge, label %land.lhs.true109.if.end117_crit_edge

land.lhs.true109.if.end117_crit_edge:             ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end117

land.lhs.true109.if.then114_crit_edge:            ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then114

if.then114:                                       ; preds = %land.lhs.true109.if.then114_crit_edge, %if.end101.if.then114_crit_edge
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 0, i32 noundef %or) #9
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 1, i32 noundef %or41) #9
  br label %if.end117

if.end117:                                        ; preds = %if.then114, %land.lhs.true109.if.end117_crit_edge, %lor.lhs.false105.if.end117_crit_edge
  %36 = ptrtoint ptr %packet2 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %packet2, align 1
  %38 = and i8 %37, 1
  %39 = zext i8 %38 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 272, i32 noundef %39) #9
  %40 = ptrtoint ptr %packet2 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %packet2, align 1
  %42 = lshr i8 %41, 1
  %.lobit = and i8 %42, 1
  %43 = zext i8 %.lobit to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 273, i32 noundef %43) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %fgrs.3)
  %tobool.i309 = icmp ne i16 %fgrs.3, 0
  %lnot.ext.i310 = zext i1 %tobool.i309 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 330, i32 noundef %lnot.ext.i310) #9
  %lnot.ext.i311 = zext i1 %cmp103 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 325, i32 noundef %lnot.ext.i311) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %fgrs.3)
  %cmp129 = icmp eq i16 %fgrs.3, 2
  %lnot.ext.i312 = zext i1 %cmp129 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 333, i32 noundef %lnot.ext.i312) #9
  br label %sw.epilog

sw.bb131:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.fsp_data, ptr %3, i32 0, i32 3
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags, align 4
  %and132 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %cmp133.not.not = icmp eq i32 %and132, 0
  br i1 %cmp133.not.not, label %if.then135, label %sw.bb131.sw.bb141_crit_edge

sw.bb131.sw.bb141_crit_edge:                      ; preds = %sw.bb131
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb141

if.then135:                                       ; preds = %sw.bb131
  call void @__sanitizer_cov_trace_pc() #11
  %and138 = and i8 %7, -2
  %46 = ptrtoint ptr %packet2 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %and138, ptr %packet2, align 1
  br label %sw.bb141

sw.bb141:                                         ; preds = %if.then135, %sw.bb131.sw.bb141_crit_edge, %if.end.sw.bb141_crit_edge
  %arrayidx142 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %47 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx142, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp144.not = icmp eq i8 %48, 0
  br i1 %cmp144.not, label %sw.bb141.if.end199_crit_edge, label %if.then146

sw.bb141.if.end199_crit_edge:                     ; preds = %sw.bb141
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end199

if.then146:                                       ; preds = %sw.bb141
  %49 = and i8 %48, 1
  %50 = and i8 %48, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool159.not = icmp eq i8 %50, 0
  %button_status.1 = select i1 %tobool159.not, i8 %49, i8 15
  %51 = shl i8 %48, 2
  %52 = and i8 %51, 48
  %53 = or i8 %52, %button_status.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp184.not = icmp eq i8 %53, 0
  br i1 %cmp184.not, label %if.then146.if.end188_crit_edge, label %if.then186

if.then146.if.end188_crit_edge:                   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end188

if.then186:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %arrayidx142, align 1
  br label %if.end188

if.end188:                                        ; preds = %if.then186, %if.then146.if.end188_crit_edge
  %55 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx142, align 1
  %conv190 = zext i8 %56 to i32
  %57 = lshr i32 %conv190, 4
  %and192 = and i32 %57, 1
  %58 = lshr i32 %conv190, 5
  %and197 = and i32 %58, 1
  br label %if.end199

if.end199:                                        ; preds = %if.end188, %sw.bb141.if.end199_crit_edge
  %lscroll.0 = phi i32 [ %and197, %if.end188 ], [ 0, %sw.bb141.if.end199_crit_edge ]
  %rscroll.0 = phi i32 [ %and192, %if.end188 ], [ 0, %sw.bb141.if.end199_crit_edge ]
  %59 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx142, align 1
  %conv201 = zext i8 %60 to i32
  %and202 = and i32 %conv201, 8
  %and205 = and i32 %conv201, 7
  %sub = sub nsw i32 %and202, %and205
  tail call void @input_event(ptr noundef %1, i32 noundef 2, i32 noundef 8, i32 noundef %sub) #9
  %sub208 = sub nsw i32 %lscroll.0, %rscroll.0
  tail call void @input_event(ptr noundef %1, i32 noundef 2, i32 noundef 6, i32 noundef %sub208) #9
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 278, i32 noundef %lscroll.0) #9
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 277, i32 noundef %rscroll.0) #9
  tail call void @psmouse_report_standard_packet(ptr noundef %1, ptr noundef %packet2) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end199, %if.end117, %if.end.sw.epilog_crit_edge
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.epilog ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsp_disconnect(ptr noundef %psmouse) #0 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %0 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 18
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @fsp_attribute_group) #9
  %call.i = tail call fastcc i32 @fsp_opc_tag_enable(ptr noundef %psmouse, i1 noundef zeroext false) #9
  %2 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #9
  %4 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i.i, align 4, !annotation !117
  %call.i.i = call fastcc i32 @fsp_reg_read(ptr noundef %psmouse, i32 noundef 67, ptr noundef nonnull %val.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.fsp_reset.exit_crit_edge

entry.fsp_reset.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsp_reset.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %vscroll.i.i = getelementptr inbounds %struct.fsp_data, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %vscroll.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %vscroll.i.i, align 4
  %6 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val.i.i, align 4
  %and.i.i = and i32 %7, -9
  %call6.i.i = tail call fastcc i32 @fsp_reg_write(ptr noundef %psmouse, i32 noundef 67, i32 noundef %and.i.i) #9
  br label %fsp_reset.exit

fsp_reset.exit:                                   ; preds = %if.end.i.i, %entry.fsp_reset.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #9
  tail call fastcc void @fsp_onpad_hscr(ptr noundef %psmouse, i1 noundef zeroext false) #9
  %8 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %psmouse, align 4
  tail call void @kfree(ptr noundef %9) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsp_reconnect(ptr noundef %psmouse) #0 align 64 {
entry:
  %id.i = alloca i32, align 4
  %version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version) #9
  %0 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %version, align 4, !annotation !117
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #9
  %1 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %id.i, align 4, !annotation !117
  %call.i = call fastcc i32 @fsp_reg_read(ptr noundef %psmouse, i32 noundef 0, ptr noundef nonnull %id.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.fsp_detect.exit.thread_crit_edge

entry.fsp_detect.exit.thread_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsp_detect.exit.thread

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not.i.not = icmp eq i32 %3, 1
  br i1 %cmp.not.i.not, label %if.end, label %if.end.i.fsp_detect.exit.thread_crit_edge

if.end.i.fsp_detect.exit.thread_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsp_detect.exit.thread

fsp_detect.exit.thread:                           ; preds = %if.end.i.fsp_detect.exit.thread_crit_edge, %entry.fsp_detect.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #9
  %call.i11 = call fastcc i32 @fsp_reg_read(ptr noundef %psmouse, i32 noundef 1, ptr noundef nonnull %version) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %tobool.not.i12 = icmp eq i32 %call.i11, 0
  br i1 %tobool.not.i12, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call fastcc i32 @fsp_activate_protocol(ptr noundef %psmouse)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %. = select i1 %tobool6.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %fsp_detect.exit.thread
  %retval.0 = phi i32 [ -19, %if.end.cleanup_crit_edge ], [ %., %if.end4 ], [ -19, %fsp_detect.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsp_reset(ptr noundef %psmouse) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @fsp_opc_tag_enable(ptr noundef %psmouse, i1 noundef zeroext false)
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !117
  %call.i = call fastcc i32 @fsp_reg_read(ptr noundef %psmouse, i32 noundef 67, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.fsp_onpad_vscr.exit_crit_edge

entry.fsp_onpad_vscr.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsp_onpad_vscr.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %vscroll.i = getelementptr inbounds %struct.fsp_data, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %vscroll.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %vscroll.i, align 4
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val.i, align 4
  %and.i = and i32 %5, -9
  %call6.i = tail call fastcc i32 @fsp_reg_write(ptr noundef %psmouse, i32 noundef 67, i32 noundef %and.i) #9
  br label %fsp_onpad_vscr.exit

fsp_onpad_vscr.exit:                              ; preds = %if.end.i, %entry.fsp_onpad_vscr.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  tail call fastcc void @fsp_onpad_hscr(ptr noundef %psmouse, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsp_activate_protocol(ptr noundef %psmouse) unnamed_addr #0 align 64 {
entry:
  %val.i99 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %param = alloca [2 x i8], align 1
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %param) #9
  %2 = getelementptr inbounds [2 x i8], ptr %param, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !117
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !117
  %5 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -56, ptr %param, align 1
  %call = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4339) #9
  %6 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -56, ptr %param, align 1
  %call4 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4339) #9
  %7 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 80, ptr %param, align 1
  %call7 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4339) #9
  %call9 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 754) #9
  %8 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %param, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %9)
  %cmp.not = icmp eq i8 %9, 4
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ps2dev1, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %11, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %13)
  %cmp14 = icmp ult i8 %13, -32
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end
  %call17 = call fastcc i32 @fsp_reg_read(ptr noundef %psmouse, i32 noundef 64, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %if.end25, label %do.end21

do.end21:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ps2dev1, align 4
  %dev24 = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.26) #12
  br label %cleanup

if.end25:                                         ; preds = %if.then16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %val.i, align 4, !annotation !117
  %call.i = call fastcc i32 @fsp_reg_read(ptr noundef %psmouse, i32 noundef 32, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -1
  br i1 %cmp.i, label %do.end31, label %if.end35

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  %17 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ps2dev1, align 4
  %dev34 = getelementptr inbounds %struct.serio, ptr %18, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34, ptr noundef nonnull @.str.29) #12
  br label %cleanup

if.end35:                                         ; preds = %if.end25
  %buttons = getelementptr inbounds %struct.fsp_data, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i, align 4
  %and.i = lshr i32 %20, 4
  %21 = and i32 %and.i, 3
  %arrayidx.i = getelementptr [4 x i32], ptr @fsp_get_buttons.buttons, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %24 = ptrtoint ptr %buttons to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %buttons, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val, align 4
  %and36 = and i32 %26, -109
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp38 = icmp eq i32 %21, 1
  %or = or i32 %and36, 2
  %spec.select = select i1 %cmp38, i32 %or, i32 %and36
  %call42 = call fastcc i32 @fsp_reg_write(ptr noundef %psmouse, i32 noundef 64, i32 noundef %spec.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end51, label %do.end47

do.end47:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ps2dev1, align 4
  %dev50 = getelementptr inbounds %struct.serio, ptr %28, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev50, ptr noundef nonnull @.str.32) #12
  br label %cleanup

if.end51:                                         ; preds = %if.end35
  %call52 = call fastcc i32 @fsp_opc_tag_enable(ptr noundef %psmouse, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end51.if.end61_crit_edge, label %do.end57

if.end51.if.end61_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

do.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ps2dev1, align 4
  %dev60 = getelementptr inbounds %struct.serio, ptr %30, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev60, ptr noundef nonnull @.str.35) #12
  br label %if.end61

if.end61:                                         ; preds = %do.end57, %if.end51.if.end61_crit_edge
  %flags = getelementptr inbounds %struct.fsp_data, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 4
  %or62 = or i32 %32, 1
  store i32 %or62, ptr %flags, align 4
  %33 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i99) #9
  %35 = ptrtoint ptr %val.i99 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %val.i99, align 4, !annotation !117
  %call.i100 = call fastcc i32 @fsp_reg_read(ptr noundef %psmouse, i32 noundef 67, ptr noundef nonnull %val.i99) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %tobool.not.i = icmp eq i32 %call.i100, 0
  br i1 %tobool.not.i, label %if.end.i102, label %if.end61.fsp_onpad_vscr.exit_crit_edge

if.end61.fsp_onpad_vscr.exit_crit_edge:           ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsp_onpad_vscr.exit

if.end.i102:                                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %vscroll.i = getelementptr inbounds %struct.fsp_data, ptr %34, i32 0, i32 4
  %36 = ptrtoint ptr %vscroll.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %vscroll.i, align 4
  %37 = ptrtoint ptr %val.i99 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val.i99, align 4
  %or.i = or i32 %38, 9
  %call6.i = call fastcc i32 @fsp_reg_write(ptr noundef %psmouse, i32 noundef 67, i32 noundef %or.i) #9
  br label %fsp_onpad_vscr.exit

fsp_onpad_vscr.exit:                              ; preds = %if.end.i102, %if.end61.fsp_onpad_vscr.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i99) #9
  call fastcc void @fsp_onpad_hscr(ptr noundef %psmouse, i1 noundef zeroext true)
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call65 = call fastcc i32 @fsp_reg_write(ptr noundef %psmouse, i32 noundef 144, i32 noundef 29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.else.cleanup_crit_edge, label %do.end70

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end70:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ps2dev1, align 4
  %dev73 = getelementptr inbounds %struct.serio, ptr %40, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev73, ptr noundef nonnull @.str.39) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end70, %if.else.cleanup_crit_edge, %fsp_onpad_vscr.exit, %do.end47, %do.end31, %do.end21, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end21 ], [ -5, %do.end31 ], [ -5, %do.end47 ], [ -5, %do.end70 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %fsp_onpad_vscr.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsp_set_input_params(ptr nocapture noundef readonly %psmouse) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %psmouse, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %5)
  %cmp = icmp ult i8 %5, -32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr %struct.input_dev, ptr %1, i32 0, i32 6, i32 8
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %or.i4 = or i32 %7, 6553600
  store i32 %or.i4, ptr %add.ptr.i, align 4
  %relbit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %relbit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %relbit, align 4
  %or.i6 = or i32 %9, 320
  store i32 %or.i6, ptr %relbit, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %evbit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %evbit, align 4
  %or.i7 = and i32 %11, -13
  %and.i = or i32 %or.i7, 8
  store i32 %and.i, ptr %evbit, align 4
  %add.ptr.i8 = getelementptr %struct.input_dev, ptr %1, i32 0, i32 6, i32 10
  %12 = ptrtoint ptr %add.ptr.i8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i8, align 4
  %or.i13 = or i32 %13, 9248
  store i32 %or.i13, ptr %add.ptr.i8, align 4
  %propbit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %propbit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %propbit, align 4
  %or.i14 = or i32 %15, 8
  store i32 %or.i14, ptr %propbit, align 4
  tail call void @input_set_abs_params(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 967, i32 noundef 0, i32 noundef 0) #9
  tail call void @input_set_abs_params(ptr noundef %1, i32 noundef 1, i32 noundef 0, i32 noundef 711, i32 noundef 0, i32 noundef 0) #9
  %call = tail call i32 @input_mt_init_slots(ptr noundef %1, i32 noundef 2, i32 noundef 0) #9
  tail call void @input_set_abs_params(ptr noundef %1, i32 noundef 53, i32 noundef 0, i32 noundef 967, i32 noundef 0, i32 noundef 0) #9
  tail call void @input_set_abs_params(ptr noundef %1, i32 noundef 54, i32 noundef 0, i32 noundef 711, i32 noundef 0, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_deactivate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ps2_begin_command(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_sendbyte(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ps2_command(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ps2_end_command(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_activate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsp_page_reg_write(ptr noundef %psmouse, i32 noundef %reg_val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  tail call void @ps2_begin_command(ptr noundef %ps2dev1) #9
  %call = tail call i32 @ps2_sendbyte(ptr noundef %ps2dev1, i8 noundef zeroext -13, i32 noundef 200) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ps2_sendbyte(ptr noundef %ps2dev1, i8 noundef zeroext 56, i32 noundef 30) #9
  %call3 = tail call i32 @ps2_sendbyte(ptr noundef %ps2dev1, i8 noundef zeroext -120, i32 noundef 30) #9
  %call4 = tail call i32 @ps2_sendbyte(ptr noundef %ps2dev1, i8 noundef zeroext -13, i32 noundef 200) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.out_crit_edge, label %if.end7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end7:                                          ; preds = %if.end
  %conv = trunc i32 %reg_val to i8
  %0 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %conv, label %if.end7.fsp_test_invert_cmd.exit_crit_edge [
    i8 -23, label %if.end7.sw.bb.i_crit_edge
    i8 -18, label %if.end7.sw.bb.i_crit_edge51
    i8 -14, label %if.end7.sw.bb.i_crit_edge52
    i8 -1, label %if.end7.sw.bb.i_crit_edge53
  ]

if.end7.sw.bb.i_crit_edge53:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end7.sw.bb.i_crit_edge52:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end7.sw.bb.i_crit_edge51:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end7.sw.bb.i_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end7.fsp_test_invert_cmd.exit_crit_edge:       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsp_test_invert_cmd.exit

sw.bb.i:                                          ; preds = %if.end7.sw.bb.i_crit_edge, %if.end7.sw.bb.i_crit_edge51, %if.end7.sw.bb.i_crit_edge52, %if.end7.sw.bb.i_crit_edge53
  %neg.i = xor i8 %conv, -1
  br label %fsp_test_invert_cmd.exit

fsp_test_invert_cmd.exit:                         ; preds = %sw.bb.i, %if.end7.fsp_test_invert_cmd.exit_crit_edge
  %retval.0.i47 = phi i8 [ %neg.i, %sw.bb.i ], [ %conv, %if.end7.fsp_test_invert_cmd.exit_crit_edge ]
  %conv9 = zext i8 %retval.0.i47 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv9, i32 %reg_val)
  %cmp10.not = icmp eq i32 %conv9, %reg_val
  br i1 %cmp10.not, label %if.else, label %fsp_test_invert_cmd.exit.if.end24_crit_edge

fsp_test_invert_cmd.exit.if.end24_crit_edge:      ; preds = %fsp_test_invert_cmd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.else:                                          ; preds = %fsp_test_invert_cmd.exit
  %1 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %conv, label %if.else.fsp_test_swap_cmd.exit_crit_edge [
    i8 10, label %if.else.sw.bb.i48_crit_edge
    i8 20, label %if.else.sw.bb.i48_crit_edge54
    i8 40, label %if.else.sw.bb.i48_crit_edge55
    i8 60, label %if.else.sw.bb.i48_crit_edge56
    i8 80, label %if.else.sw.bb.i48_crit_edge57
    i8 100, label %if.else.sw.bb.i48_crit_edge58
    i8 -56, label %if.else.sw.bb.i48_crit_edge59
  ]

if.else.sw.bb.i48_crit_edge59:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i48

if.else.sw.bb.i48_crit_edge58:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i48

if.else.sw.bb.i48_crit_edge57:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i48

if.else.sw.bb.i48_crit_edge56:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i48

if.else.sw.bb.i48_crit_edge55:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i48

if.else.sw.bb.i48_crit_edge54:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i48

if.else.sw.bb.i48_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i48

if.else.fsp_test_swap_cmd.exit_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsp_test_swap_cmd.exit

sw.bb.i48:                                        ; preds = %if.else.sw.bb.i48_crit_edge, %if.else.sw.bb.i48_crit_edge54, %if.else.sw.bb.i48_crit_edge55, %if.else.sw.bb.i48_crit_edge56, %if.else.sw.bb.i48_crit_edge57, %if.else.sw.bb.i48_crit_edge58, %if.else.sw.bb.i48_crit_edge59
  %or.i = tail call i8 @llvm.fshl.i8(i8 %conv, i8 %conv, i8 4) #9
  br label %fsp_test_swap_cmd.exit

fsp_test_swap_cmd.exit:                           ; preds = %sw.bb.i48, %if.else.fsp_test_swap_cmd.exit_crit_edge
  %retval.0.i49 = phi i8 [ %or.i, %sw.bb.i48 ], [ %conv, %if.else.fsp_test_swap_cmd.exit_crit_edge ]
  %conv16 = zext i8 %retval.0.i49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv16, i32 %reg_val)
  %cmp17.not = icmp eq i32 %conv16, %reg_val
  %. = select i1 %cmp17.not, i8 51, i8 68
  br label %if.end24

if.end24:                                         ; preds = %fsp_test_swap_cmd.exit, %fsp_test_invert_cmd.exit.if.end24_crit_edge
  %.sink = phi i8 [ 71, %fsp_test_invert_cmd.exit.if.end24_crit_edge ], [ %., %fsp_test_swap_cmd.exit ]
  %v.0 = phi i8 [ %retval.0.i47, %fsp_test_invert_cmd.exit.if.end24_crit_edge ], [ %retval.0.i49, %fsp_test_swap_cmd.exit ]
  %call20 = tail call i32 @ps2_sendbyte(ptr noundef %ps2dev1, i8 noundef zeroext %.sink, i32 noundef 30) #9
  %call25 = tail call i32 @ps2_sendbyte(ptr noundef %ps2dev1, i8 noundef zeroext %v.0, i32 noundef 30) #9
  br label %out

out:                                              ; preds = %if.end24, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ -1, %entry.out_crit_edge ], [ -1, %if.end.out_crit_edge ], [ 0, %if.end24 ]
  tail call void @ps2_end_command(ptr noundef %ps2dev1) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsp_page_reg_write.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsp_page_reg_write, %if.then29)) #9
          to label %do.end [label %if.then29], !srcloc !118

if.then29:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps2dev1, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsp_page_reg_write.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %reg_val, i32 noundef %rc.0) #9
  br label %do.end

do.end:                                           ; preds = %if.then29, %out
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @psmouse_report_standard_packet(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsp_opc_tag_enable(ptr noundef %psmouse, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  %v.i27 = alloca i32, align 4
  %v.i = alloca i32, align 4
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #9
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %v, align 4, !annotation !117
  %call = call fastcc i32 @fsp_reg_read(ptr noundef %psmouse, i32 noundef 49, ptr noundef nonnull %v)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %v, align 4
  %and = and i32 %2, -129
  %masksel = select i1 %enable, i32 128, i32 0
  %nv.0 = or i32 %and, %masksel
  call void @__sanitizer_cov_trace_cmp4(i32 %nv.0, i32 %2)
  %cmp3.not = icmp eq i32 %nv.0, %2
  br i1 %cmp3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i) #9
  %3 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %v.i, align 4, !annotation !117
  %call.i = call fastcc i32 @fsp_reg_read(ptr noundef %psmouse, i32 noundef 16, ptr noundef nonnull %v.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -1
  br i1 %cmp.i, label %if.then4.fsp_reg_write_enable.exit_crit_edge, label %if.end.i

if.then4.fsp_reg_write_enable.exit_crit_edge:     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsp_reg_write_enable.exit

if.end.i:                                         ; preds = %if.then4
  %4 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %v.i, align 4
  %nv.0.i = or i32 %5, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %nv.0.i, i32 %5)
  %cmp3.not.i = icmp eq i32 %nv.0.i, %5
  br i1 %cmp3.not.i, label %if.end.i.fsp_reg_write_enable.exit_crit_edge, label %if.then4.i

if.end.i.fsp_reg_write_enable.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsp_reg_write_enable.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call5.i = tail call fastcc i32 @fsp_reg_write(ptr noundef %psmouse, i32 noundef 16, i32 noundef %nv.0.i) #9
  br label %fsp_reg_write_enable.exit

fsp_reg_write_enable.exit:                        ; preds = %if.then4.i, %if.end.i.fsp_reg_write_enable.exit_crit_edge, %if.then4.fsp_reg_write_enable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #9
  %call6 = tail call fastcc i32 @fsp_reg_write(ptr noundef %psmouse, i32 noundef 49, i32 noundef %nv.0)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i27) #9
  %6 = ptrtoint ptr %v.i27 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %v.i27, align 4, !annotation !117
  %call.i28 = call fastcc i32 @fsp_reg_read(ptr noundef %psmouse, i32 noundef 16, ptr noundef nonnull %v.i27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i28)
  %cmp.i29 = icmp eq i32 %call.i28, -1
  br i1 %cmp.i29, label %fsp_reg_write_enable.exit.fsp_reg_write_enable.exit38_crit_edge, label %if.end.i32

fsp_reg_write_enable.exit.fsp_reg_write_enable.exit38_crit_edge: ; preds = %fsp_reg_write_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsp_reg_write_enable.exit38

if.end.i32:                                       ; preds = %fsp_reg_write_enable.exit
  %7 = ptrtoint ptr %v.i27 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %v.i27, align 4
  %and.i30 = and i32 %8, -33
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i30, i32 %8)
  %cmp3.not.i31 = icmp eq i32 %and.i30, %8
  br i1 %cmp3.not.i31, label %if.end.i32.fsp_reg_write_enable.exit38_crit_edge, label %if.then4.i35

if.end.i32.fsp_reg_write_enable.exit38_crit_edge: ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsp_reg_write_enable.exit38

if.then4.i35:                                     ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #11
  %call5.i33 = tail call fastcc i32 @fsp_reg_write(ptr noundef %psmouse, i32 noundef 16, i32 noundef %and.i30) #9
  br label %fsp_reg_write_enable.exit38

fsp_reg_write_enable.exit38:                      ; preds = %if.then4.i35, %if.end.i32.fsp_reg_write_enable.exit38_crit_edge, %fsp_reg_write_enable.exit.fsp_reg_write_enable.exit38_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %phi.cmp = icmp eq i32 %call6, 0
  br i1 %phi.cmp, label %fsp_reg_write_enable.exit38.cleanup_crit_edge, label %fsp_reg_write_enable.exit38.cleanup.sink.split_crit_edge

fsp_reg_write_enable.exit38.cleanup.sink.split_crit_edge: ; preds = %fsp_reg_write_enable.exit38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

fsp_reg_write_enable.exit38.cleanup_crit_edge:    ; preds = %fsp_reg_write_enable.exit38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %fsp_reg_write_enable.exit38.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.19.sink = phi ptr [ @.str.16, %entry.cleanup.sink.split_crit_edge ], [ @.str.19, %fsp_reg_write_enable.exit38.cleanup.sink.split_crit_edge ]
  %ps2dev14 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %9 = ptrtoint ptr %ps2dev14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ps2dev14, align 4
  %dev16 = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull %.str.19.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %fsp_reg_write_enable.exit38.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %fsp_reg_write_enable.exit38.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -5, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsp_onpad_hscr(ptr noundef %psmouse, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  %v2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !117
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v2) #9
  %3 = ptrtoint ptr %v2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %v2, align 4, !annotation !117
  %call = call fastcc i32 @fsp_reg_read(ptr noundef %psmouse, i32 noundef 67, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @fsp_reg_read(ptr noundef %psmouse, i32 noundef 64, ptr noundef nonnull %v2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %hscroll = getelementptr inbounds %struct.fsp_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %hscroll to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %hscroll, align 1
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  br i1 %enable, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %6, 33
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or, ptr %val, align 4
  %8 = ptrtoint ptr %v2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %v2, align 4
  %or9 = or i32 %9, 2
  br label %if.end11

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %6, -33
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %val, align 4
  %11 = ptrtoint ptr %v2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %v2, align 4
  %and10 = and i32 %12, -15
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  %storemerge = phi i32 [ %and10, %if.else ], [ %or9, %if.then8 ]
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %call12 = tail call fastcc i32 @fsp_reg_write(ptr noundef %psmouse, i32 noundef 67, i32 noundef %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = tail call fastcc i32 @fsp_reg_write(ptr noundef %psmouse, i32 noundef 64, i32 noundef %storemerge)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsp_reg_write(ptr noundef %psmouse, i32 noundef %reg_addr, i32 noundef %reg_val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  tail call void @ps2_begin_command(ptr noundef %ps2dev1) #9
  %call = tail call i32 @ps2_sendbyte(ptr noundef %ps2dev1, i8 noundef zeroext -13, i32 noundef 200) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %conv = trunc i32 %reg_addr to i8
  %0 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %conv, label %if.end.fsp_test_invert_cmd.exit_crit_edge [
    i8 -23, label %if.end.sw.bb.i_crit_edge
    i8 -18, label %if.end.sw.bb.i_crit_edge87
    i8 -14, label %if.end.sw.bb.i_crit_edge88
    i8 -1, label %if.end.sw.bb.i_crit_edge89
  ]

if.end.sw.bb.i_crit_edge89:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge88:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge87:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.fsp_test_invert_cmd.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsp_test_invert_cmd.exit

sw.bb.i:                                          ; preds = %if.end.sw.bb.i_crit_edge, %if.end.sw.bb.i_crit_edge87, %if.end.sw.bb.i_crit_edge88, %if.end.sw.bb.i_crit_edge89
  %neg.i = xor i8 %conv, -1
  br label %fsp_test_invert_cmd.exit

fsp_test_invert_cmd.exit:                         ; preds = %sw.bb.i, %if.end.fsp_test_invert_cmd.exit_crit_edge
  %retval.0.i73 = phi i8 [ %neg.i, %sw.bb.i ], [ %conv, %if.end.fsp_test_invert_cmd.exit_crit_edge ]
  %conv3 = zext i8 %retval.0.i73 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %reg_addr)
  %cmp4.not = icmp eq i32 %conv3, %reg_addr
  br i1 %cmp4.not, label %if.else, label %fsp_test_invert_cmd.exit.if.end18_crit_edge

fsp_test_invert_cmd.exit.if.end18_crit_edge:      ; preds = %fsp_test_invert_cmd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.else:                                          ; preds = %fsp_test_invert_cmd.exit
  %1 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %conv, label %if.else.fsp_test_swap_cmd.exit_crit_edge [
    i8 10, label %if.else.sw.bb.i74_crit_edge
    i8 20, label %if.else.sw.bb.i74_crit_edge90
    i8 40, label %if.else.sw.bb.i74_crit_edge91
    i8 60, label %if.else.sw.bb.i74_crit_edge92
    i8 80, label %if.else.sw.bb.i74_crit_edge93
    i8 100, label %if.else.sw.bb.i74_crit_edge94
    i8 -56, label %if.else.sw.bb.i74_crit_edge95
  ]

if.else.sw.bb.i74_crit_edge95:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i74

if.else.sw.bb.i74_crit_edge94:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i74

if.else.sw.bb.i74_crit_edge93:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i74

if.else.sw.bb.i74_crit_edge92:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i74

if.else.sw.bb.i74_crit_edge91:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i74

if.else.sw.bb.i74_crit_edge90:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i74

if.else.sw.bb.i74_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i74

if.else.fsp_test_swap_cmd.exit_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsp_test_swap_cmd.exit

sw.bb.i74:                                        ; preds = %if.else.sw.bb.i74_crit_edge, %if.else.sw.bb.i74_crit_edge90, %if.else.sw.bb.i74_crit_edge91, %if.else.sw.bb.i74_crit_edge92, %if.else.sw.bb.i74_crit_edge93, %if.else.sw.bb.i74_crit_edge94, %if.else.sw.bb.i74_crit_edge95
  %or.i = tail call i8 @llvm.fshl.i8(i8 %conv, i8 %conv, i8 4) #9
  br label %fsp_test_swap_cmd.exit

fsp_test_swap_cmd.exit:                           ; preds = %sw.bb.i74, %if.else.fsp_test_swap_cmd.exit_crit_edge
  %retval.0.i75 = phi i8 [ %or.i, %sw.bb.i74 ], [ %conv, %if.else.fsp_test_swap_cmd.exit_crit_edge ]
  %conv10 = zext i8 %retval.0.i75 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10, i32 %reg_addr)
  %cmp11.not = icmp eq i32 %conv10, %reg_addr
  %. = select i1 %cmp11.not, i8 85, i8 119
  br label %if.end18

if.end18:                                         ; preds = %fsp_test_swap_cmd.exit, %fsp_test_invert_cmd.exit.if.end18_crit_edge
  %.sink = phi i8 [ 116, %fsp_test_invert_cmd.exit.if.end18_crit_edge ], [ %., %fsp_test_swap_cmd.exit ]
  %v.0 = phi i8 [ %retval.0.i73, %fsp_test_invert_cmd.exit.if.end18_crit_edge ], [ %retval.0.i75, %fsp_test_swap_cmd.exit ]
  %call14 = tail call i32 @ps2_sendbyte(ptr noundef %ps2dev1, i8 noundef zeroext %.sink, i32 noundef 30) #9
  %call19 = tail call i32 @ps2_sendbyte(ptr noundef %ps2dev1, i8 noundef zeroext %v.0, i32 noundef 30) #9
  %call20 = tail call i32 @ps2_sendbyte(ptr noundef %ps2dev1, i8 noundef zeroext -13, i32 noundef 200) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end18.out_crit_edge, label %if.end24

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end24:                                         ; preds = %if.end18
  %conv25 = trunc i32 %reg_val to i8
  %2 = zext i8 %conv25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %conv25, label %if.end24.fsp_test_invert_cmd.exit79_crit_edge [
    i8 -23, label %if.end24.sw.bb.i77_crit_edge
    i8 -18, label %if.end24.sw.bb.i77_crit_edge96
    i8 -14, label %if.end24.sw.bb.i77_crit_edge97
    i8 -1, label %if.end24.sw.bb.i77_crit_edge98
  ]

if.end24.sw.bb.i77_crit_edge98:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i77

if.end24.sw.bb.i77_crit_edge97:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i77

if.end24.sw.bb.i77_crit_edge96:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i77

if.end24.sw.bb.i77_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i77

if.end24.fsp_test_invert_cmd.exit79_crit_edge:    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsp_test_invert_cmd.exit79

sw.bb.i77:                                        ; preds = %if.end24.sw.bb.i77_crit_edge, %if.end24.sw.bb.i77_crit_edge96, %if.end24.sw.bb.i77_crit_edge97, %if.end24.sw.bb.i77_crit_edge98
  %neg.i76 = xor i8 %conv25, -1
  br label %fsp_test_invert_cmd.exit79

fsp_test_invert_cmd.exit79:                       ; preds = %sw.bb.i77, %if.end24.fsp_test_invert_cmd.exit79_crit_edge
  %retval.0.i78 = phi i8 [ %neg.i76, %sw.bb.i77 ], [ %conv25, %if.end24.fsp_test_invert_cmd.exit79_crit_edge ]
  %conv27 = zext i8 %retval.0.i78 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv27, i32 %reg_val)
  %cmp28.not = icmp eq i32 %conv27, %reg_val
  br i1 %cmp28.not, label %if.else32, label %fsp_test_invert_cmd.exit79.if.end43_crit_edge

fsp_test_invert_cmd.exit79.if.end43_crit_edge:    ; preds = %fsp_test_invert_cmd.exit79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.else32:                                        ; preds = %fsp_test_invert_cmd.exit79
  %3 = zext i8 %conv25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %conv25, label %if.else32.fsp_test_swap_cmd.exit83_crit_edge [
    i8 10, label %if.else32.sw.bb.i81_crit_edge
    i8 20, label %if.else32.sw.bb.i81_crit_edge99
    i8 40, label %if.else32.sw.bb.i81_crit_edge100
    i8 60, label %if.else32.sw.bb.i81_crit_edge101
    i8 80, label %if.else32.sw.bb.i81_crit_edge102
    i8 100, label %if.else32.sw.bb.i81_crit_edge103
    i8 -56, label %if.else32.sw.bb.i81_crit_edge104
  ]

if.else32.sw.bb.i81_crit_edge104:                 ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i81

if.else32.sw.bb.i81_crit_edge103:                 ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i81

if.else32.sw.bb.i81_crit_edge102:                 ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i81

if.else32.sw.bb.i81_crit_edge101:                 ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i81

if.else32.sw.bb.i81_crit_edge100:                 ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i81

if.else32.sw.bb.i81_crit_edge99:                  ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i81

if.else32.sw.bb.i81_crit_edge:                    ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i81

if.else32.fsp_test_swap_cmd.exit83_crit_edge:     ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsp_test_swap_cmd.exit83

sw.bb.i81:                                        ; preds = %if.else32.sw.bb.i81_crit_edge, %if.else32.sw.bb.i81_crit_edge99, %if.else32.sw.bb.i81_crit_edge100, %if.else32.sw.bb.i81_crit_edge101, %if.else32.sw.bb.i81_crit_edge102, %if.else32.sw.bb.i81_crit_edge103, %if.else32.sw.bb.i81_crit_edge104
  %or.i80 = tail call i8 @llvm.fshl.i8(i8 %conv25, i8 %conv25, i8 4) #9
  br label %fsp_test_swap_cmd.exit83

fsp_test_swap_cmd.exit83:                         ; preds = %sw.bb.i81, %if.else32.fsp_test_swap_cmd.exit83_crit_edge
  %retval.0.i82 = phi i8 [ %or.i80, %sw.bb.i81 ], [ %conv25, %if.else32.fsp_test_swap_cmd.exit83_crit_edge ]
  %conv35 = zext i8 %retval.0.i82 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv35, i32 %reg_val)
  %cmp36.not = icmp eq i32 %conv35, %reg_val
  %.86 = select i1 %cmp36.not, i8 51, i8 68
  br label %if.end43

if.end43:                                         ; preds = %fsp_test_swap_cmd.exit83, %fsp_test_invert_cmd.exit79.if.end43_crit_edge
  %.sink85 = phi i8 [ 71, %fsp_test_invert_cmd.exit79.if.end43_crit_edge ], [ %.86, %fsp_test_swap_cmd.exit83 ]
  %v.1 = phi i8 [ %retval.0.i78, %fsp_test_invert_cmd.exit79.if.end43_crit_edge ], [ %retval.0.i82, %fsp_test_swap_cmd.exit83 ]
  %call39 = tail call i32 @ps2_sendbyte(ptr noundef %ps2dev1, i8 noundef zeroext %.sink85, i32 noundef 30) #9
  %call44 = tail call i32 @ps2_sendbyte(ptr noundef %ps2dev1, i8 noundef zeroext %v.1, i32 noundef 30) #9
  br label %out

out:                                              ; preds = %if.end43, %if.end18.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ -1, %entry.out_crit_edge ], [ -1, %if.end18.out_crit_edge ], [ 0, %if.end43 ]
  tail call void @ps2_end_command(ptr noundef %ps2dev1) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsp_reg_write.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsp_reg_write, %if.then48)) #9
          to label %do.end [label %if.then48], !srcloc !118

if.then48:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ps2dev1, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsp_reg_write.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %reg_addr, i32 noundef %reg_val, i32 noundef %rc.0) #9
  br label %do.end

do.end:                                           ; preds = %if.then48, %out
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_command(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_attr_show_helper(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_attr_set_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsp_attr_set_setreg(ptr noundef %psmouse, ptr nocapture noundef readnone %data, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %v.i31 = alloca i32, align 4
  %v.i = alloca i32, align 4
  %val = alloca i32, align 4
  %rest = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !117
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rest) #9
  %1 = ptrtoint ptr %rest to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %rest, align 4, !annotation !117
  %call = call i32 @simple_strtoul(ptr noundef %buf, ptr noundef nonnull %rest, i32 noundef 16) #9
  %2 = ptrtoint ptr %rest to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rest, align 4
  %cmp = icmp eq ptr %3, %buf
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %5)
  %cmp2.not = icmp ne i8 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call)
  %cmp5 = icmp ugt i32 %call, 255
  %or.cond = select i1 %cmp2.not, i1 true, i1 %cmp5
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr = getelementptr i8, ptr %3, i32 1
  %call7 = call i32 @kstrtouint(ptr noundef %add.ptr, i32 noundef 16, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %7)
  %cmp10 = icmp ugt i32 %7, 255
  br i1 %cmp10, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i) #9
  %8 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %v.i, align 4, !annotation !117
  %call.i = call fastcc i32 @fsp_reg_read(ptr noundef %psmouse, i32 noundef 16, ptr noundef nonnull %v.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -1
  br i1 %cmp.i, label %if.end13.fsp_reg_write_enable.exit.thread_crit_edge, label %if.end.i

if.end13.fsp_reg_write_enable.exit.thread_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsp_reg_write_enable.exit.thread

if.end.i:                                         ; preds = %if.end13
  %9 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %v.i, align 4
  %nv.0.i = or i32 %10, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %nv.0.i, i32 %10)
  %cmp3.not.i = icmp eq i32 %nv.0.i, %10
  br i1 %cmp3.not.i, label %if.end.i.if.end17_crit_edge, label %if.then4.i

if.end.i.if.end17_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then4.i:                                       ; preds = %if.end.i
  %call5.i = call fastcc i32 @fsp_reg_write(ptr noundef %psmouse, i32 noundef 16, i32 noundef %nv.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i)
  %cmp6.i = icmp eq i32 %call5.i, -1
  br i1 %cmp6.i, label %if.then4.i.fsp_reg_write_enable.exit.thread_crit_edge, label %if.then4.i.if.end17_crit_edge

if.then4.i.if.end17_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then4.i.fsp_reg_write_enable.exit.thread_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsp_reg_write_enable.exit.thread

fsp_reg_write_enable.exit.thread:                 ; preds = %if.then4.i.fsp_reg_write_enable.exit.thread_crit_edge, %if.end13.fsp_reg_write_enable.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #9
  br label %cleanup

if.end17:                                         ; preds = %if.then4.i.if.end17_crit_edge, %if.end.i.if.end17_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #9
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %call18 = call fastcc i32 @fsp_reg_write(ptr noundef %psmouse, i32 noundef %call, i32 noundef %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  %spec.select = select i1 %cmp19, i32 -5, i32 %count
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i31) #9
  %13 = ptrtoint ptr %v.i31 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %v.i31, align 4, !annotation !117
  %call.i32 = call fastcc i32 @fsp_reg_read(ptr noundef %psmouse, i32 noundef 16, ptr noundef nonnull %v.i31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i32)
  %cmp.i33 = icmp eq i32 %call.i32, -1
  br i1 %cmp.i33, label %if.end17.fsp_reg_write_enable.exit42_crit_edge, label %if.end.i36

if.end17.fsp_reg_write_enable.exit42_crit_edge:   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsp_reg_write_enable.exit42

if.end.i36:                                       ; preds = %if.end17
  %14 = ptrtoint ptr %v.i31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %v.i31, align 4
  %and.i34 = and i32 %15, -33
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i34, i32 %15)
  %cmp3.not.i35 = icmp eq i32 %and.i34, %15
  br i1 %cmp3.not.i35, label %if.end.i36.fsp_reg_write_enable.exit42_crit_edge, label %if.then4.i39

if.end.i36.fsp_reg_write_enable.exit42_crit_edge: ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsp_reg_write_enable.exit42

if.then4.i39:                                     ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #11
  %call5.i37 = call fastcc i32 @fsp_reg_write(ptr noundef %psmouse, i32 noundef 16, i32 noundef %and.i34) #9
  br label %fsp_reg_write_enable.exit42

fsp_reg_write_enable.exit42:                      ; preds = %if.then4.i39, %if.end.i36.fsp_reg_write_enable.exit42_crit_edge, %if.end17.fsp_reg_write_enable.exit42_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i31) #9
  br label %cleanup

cleanup:                                          ; preds = %fsp_reg_write_enable.exit42, %fsp_reg_write_enable.exit.thread, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %fsp_reg_write_enable.exit42 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call7, %if.end.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -5, %fsp_reg_write_enable.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rest) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsp_attr_show_getreg(ptr nocapture noundef readonly %psmouse, ptr nocapture noundef readnone %data, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %last_reg = getelementptr inbounds %struct.fsp_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %last_reg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %last_reg, align 2
  %conv = zext i8 %3 to i32
  %last_val = getelementptr inbounds %struct.fsp_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %last_val to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %last_val, align 1
  %conv1 = zext i8 %5 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.43, i32 noundef %conv, i32 noundef %conv1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsp_attr_set_getreg(ptr noundef %psmouse, ptr nocapture noundef readnone %data, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #9
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !117
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val, align 4, !annotation !117
  %call = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %reg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %cmp = icmp ugt i32 %5, 255
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = call fastcc i32 @fsp_reg_read(ptr noundef %psmouse, i32 noundef %5, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg, align 4
  %conv = trunc i32 %7 to i8
  %last_reg = getelementptr inbounds %struct.fsp_data, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %last_reg to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %last_reg, align 2
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %conv7 = trunc i32 %10 to i8
  %last_val = getelementptr inbounds %struct.fsp_data, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %last_val to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv7, ptr %last_val, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end6 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -5, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsp_attr_show_pagereg(ptr noundef %psmouse, ptr nocapture noundef readnone %data, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %call = call fastcc i32 @fsp_page_reg_read(ptr noundef %psmouse, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.45, i32 noundef %2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsp_attr_set_pagereg(ptr noundef %psmouse, ptr nocapture noundef readnone %data, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !117
  %call = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %2)
  %cmp = icmp ugt i32 %2, 255
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = call fastcc i32 @fsp_page_reg_write(ptr noundef %psmouse, i32 noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %count. = select i1 %tobool4.not, i32 %count, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %count., %if.end2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsp_page_reg_read(ptr noundef %psmouse, ptr nocapture noundef %reg_val) unnamed_addr #0 align 64 {
entry:
  %param = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param) #9
  %0 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %param, align 1, !annotation !117
  %1 = getelementptr inbounds [3 x i8], ptr %param, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !117
  %3 = getelementptr inbounds [3 x i8], ptr %param, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !117
  %call = tail call i32 @psmouse_deactivate(ptr noundef %psmouse) #9
  tail call void @ps2_begin_command(ptr noundef %ps2dev1) #9
  %call2 = tail call i32 @ps2_sendbyte(ptr noundef %ps2dev1, i8 noundef zeroext -13, i32 noundef 200) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @ps2_sendbyte(ptr noundef %ps2dev1, i8 noundef zeroext 102, i32 noundef 30) #9
  %call4 = tail call i32 @ps2_sendbyte(ptr noundef %ps2dev1, i8 noundef zeroext -120, i32 noundef 30) #9
  %call5 = tail call i32 @ps2_sendbyte(ptr noundef %ps2dev1, i8 noundef zeroext -13, i32 noundef 200) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.out_crit_edge, label %if.end8

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @ps2_sendbyte(ptr noundef %ps2dev1, i8 noundef zeroext -125, i32 noundef 30) #9
  %call10 = tail call i32 @ps2_sendbyte(ptr noundef %ps2dev1, i8 noundef zeroext -120, i32 noundef 30) #9
  %call11 = call i32 @__ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 1001) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end13, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %3, align 1
  %conv = zext i8 %6 to i32
  %7 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %reg_val, align 4
  br label %out

out:                                              ; preds = %if.end13, %if.end8.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ -1, %entry.out_crit_edge ], [ -1, %if.end.out_crit_edge ], [ -1, %if.end8.out_crit_edge ], [ 0, %if.end13 ]
  call void @ps2_end_command(ptr noundef %ps2dev1) #9
  %call14 = call i32 @psmouse_activate(ptr noundef %psmouse) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsp_page_reg_read.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsp_page_reg_read, %if.then19)) #9
          to label %do.end [label %if.then19], !srcloc !118

if.then19:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ps2dev1, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg_val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsp_page_reg_read.__UNIQUE_ID_ddebug229, ptr noundef %dev, ptr noundef nonnull @.str.47, i32 noundef %11, i32 noundef %rc.0) #9
  br label %do.end

do.end:                                           ; preds = %if.then19, %out
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param) #9
  ret i32 %rc.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsp_attr_show_vscroll(ptr nocapture noundef readonly %psmouse, ptr nocapture noundef readnone %data, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %vscroll = getelementptr inbounds %struct.fsp_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %vscroll to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vscroll, align 4, !range !119
  %4 = zext i8 %3 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.49, i32 noundef %4)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsp_attr_set_vscroll(ptr noundef %psmouse, ptr nocapture noundef readnone %data, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !117
  %call = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp ugt i32 %2, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %3 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val.i, align 4, !annotation !117
  %call.i = call fastcc i32 @fsp_reg_read(ptr noundef %psmouse, i32 noundef 67, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end2.fsp_onpad_vscr.exit_crit_edge

if.end2.fsp_onpad_vscr.exit_crit_edge:            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsp_onpad_vscr.exit

if.end.i:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool3 = icmp ne i32 %2, 0
  %frombool.i = zext i1 %tobool3 to i8
  %vscroll.i = getelementptr inbounds %struct.fsp_data, ptr %4, i32 0, i32 4
  %6 = ptrtoint ptr %vscroll.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool.i, ptr %vscroll.i, align 4
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %and.i = and i32 %8, -9
  %or.i = or i32 %8, 9
  %storemerge.i = select i1 %tobool3, i32 %or.i, i32 %and.i
  %call6.i = call fastcc i32 @fsp_reg_write(ptr noundef %psmouse, i32 noundef 67, i32 noundef %storemerge.i) #9
  br label %fsp_onpad_vscr.exit

fsp_onpad_vscr.exit:                              ; preds = %if.end.i, %if.end2.fsp_onpad_vscr.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  br label %cleanup

cleanup:                                          ; preds = %fsp_onpad_vscr.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %fsp_onpad_vscr.exit ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsp_attr_show_hscroll(ptr nocapture noundef readonly %psmouse, ptr nocapture noundef readnone %data, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %hscroll = getelementptr inbounds %struct.fsp_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hscroll to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hscroll, align 1, !range !119
  %4 = zext i8 %3 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.49, i32 noundef %4)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsp_attr_set_hscroll(ptr noundef %psmouse, ptr nocapture noundef readnone %data, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !117
  %call = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp ugt i32 %2, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool3 = icmp ne i32 %2, 0
  call fastcc void @fsp_onpad_hscr(ptr noundef %psmouse, i1 noundef zeroext %tobool3)
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end2 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsp_attr_show_flags(ptr nocapture noundef readonly %psmouse, ptr nocapture noundef readnone %data, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %flags = getelementptr inbounds %struct.fsp_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 99, i32 67
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.52, i32 noundef %cond)
  ret i32 %call
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsp_attr_set_flags(ptr nocapture noundef readonly %psmouse, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %buf, i32 noundef %count) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp8.not = icmp eq i32 %count, 0
  br i1 %cmp8.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %flags2 = getelementptr inbounds %struct.fsp_data, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.09
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %3, label %for.body.cleanup_crit_edge [
    i8 67, label %sw.bb
    i8 99, label %sw.bb1
  ]

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags2, align 4
  %or = or i32 %6, 1
  br label %for.inc

sw.bb1:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags2, align 4
  %and = and i32 %8, -2
  br label %for.inc

for.inc:                                          ; preds = %sw.bb1, %sw.bb
  %storemerge = phi i32 [ %and, %sw.bb1 ], [ %or, %sw.bb ]
  %9 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %storemerge, ptr %flags2, align 4
  %inc = add nuw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %count, %for.inc.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsp_attr_show_ver(ptr nocapture noundef readnone %psmouse, ptr nocapture noundef readnone %data, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.54, ptr noundef nonnull @fsp_drv_ver)
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !71, !73, !75, !76, !78, !79, !81, !83, !84, !86, !88, !89, !90, !92, !93, !95, !97, !98, !100, !101, !103, !105, !106}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/mouse/sentelic.c", i32 973, i32 21}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/input/mouse/sentelic.c", i32 974, i32 19}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/input/mouse/sentelic.c", i32 1027, i32 2}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @fsp_init._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @fsp_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/mouse/sentelic.c", i32 1056, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @fsp_init._entry.7, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @fsp_init._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/input/mouse/sentelic.c", i32 122, i32 2}
!19 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @fsp_reg_read.__UNIQUE_ID_ddebug227, !18, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/mouse/sentelic.c", i32 271, i32 2}
!24 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @fsp_page_reg_write.__UNIQUE_ID_ddebug230, !23, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!26 = !{ptr @fsp_drv_ver, !27, !"fsp_drv_ver", i1 false, i1 false}
!27 = !{!"../drivers/input/mouse/sentelic.c", i32 31, i32 19}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/mouse/sentelic.c", i32 338, i32 3}
!30 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @fsp_opc_tag_enable._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @fsp_opc_tag_enable._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/mouse/sentelic.c", i32 355, i32 3}
!35 = !{ptr @fsp_opc_tag_enable._entry.18, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @fsp_opc_tag_enable._entry_ptr.20, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/mouse/sentelic.c", i32 174, i32 2}
!39 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @fsp_reg_write.__UNIQUE_ID_ddebug228, !38, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/mouse/sentelic.c", i32 858, i32 3}
!43 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @fsp_activate_protocol._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @fsp_activate_protocol._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/mouse/sentelic.c", i32 866, i32 4}
!48 = !{ptr @fsp_activate_protocol._entry.25, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @fsp_activate_protocol._entry_ptr.27, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/mouse/sentelic.c", i32 872, i32 4}
!52 = !{ptr @fsp_activate_protocol._entry.28, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @fsp_activate_protocol._entry_ptr.30, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/mouse/sentelic.c", i32 886, i32 4}
!56 = !{ptr @fsp_activate_protocol._entry.31, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @fsp_activate_protocol._entry_ptr.33, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.35, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/mouse/sentelic.c", i32 896, i32 4}
!60 = !{ptr @.str.36, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @fsp_activate_protocol._entry.34, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @fsp_activate_protocol._entry_ptr.37, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.39, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/input/mouse/sentelic.c", i32 911, i32 4}
!65 = !{ptr @fsp_activate_protocol._entry.38, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @fsp_activate_protocol._entry_ptr.40, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @fsp_get_buttons.buttons, !68, !"buttons", i1 false, i1 false}
!68 = !{!"../drivers/input/mouse/sentelic.c", i32 316, i32 19}
!69 = !{ptr @fsp_attribute_group, !70, !"fsp_attribute_group", i1 false, i1 false}
!70 = !{!"../drivers/input/mouse/sentelic.c", i32 631, i32 31}
!71 = !{ptr @fsp_attributes, !72, !"fsp_attributes", i1 false, i1 false}
!72 = !{!"../drivers/input/mouse/sentelic.c", i32 620, i32 26}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/input/mouse/sentelic.c", i32 447, i32 1}
!75 = !{ptr @psmouse_attr_setreg, !74, !"psmouse_attr_setreg", i1 false, i1 false}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/mouse/sentelic.c", i32 485, i32 1}
!78 = !{ptr @psmouse_attr_getreg, !77, !"psmouse_attr_getreg", i1 false, i1 false}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/input/mouse/sentelic.c", i32 454, i32 22}
!81 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/input/mouse/sentelic.c", i32 518, i32 1}
!83 = !{ptr @psmouse_attr_page, !82, !"psmouse_attr_page", i1 false, i1 false}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/input/mouse/sentelic.c", i32 496, i32 22}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/input/mouse/sentelic.c", i32 233, i32 2}
!88 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @fsp_page_reg_read.__UNIQUE_ID_ddebug229, !87, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/input/mouse/sentelic.c", i32 547, i32 1}
!92 = !{ptr @psmouse_attr_vscroll, !91, !"psmouse_attr_vscroll", i1 false, i1 false}
!93 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/input/mouse/sentelic.c", i32 526, i32 22}
!95 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/input/mouse/sentelic.c", i32 576, i32 1}
!97 = !{ptr @psmouse_attr_hscroll, !96, !"psmouse_attr_hscroll", i1 false, i1 false}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/input/mouse/sentelic.c", i32 609, i32 1}
!100 = !{ptr @psmouse_attr_flags, !99, !"psmouse_attr_flags", i1 false, i1 false}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/input/mouse/sentelic.c", i32 584, i32 22}
!103 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/input/mouse/sentelic.c", i32 618, i32 1}
!105 = !{ptr @psmouse_attr_ver, !104, !"psmouse_attr_ver", i1 false, i1 false}
!106 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/input/mouse/sentelic.c", i32 615, i32 22}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{!"auto-init"}
!118 = !{i64 2148976916, i64 2148976921, i64 2148976934, i64 2148976978, i64 2148977012, i64 2148977033}
!119 = !{i8 0, i8 2}
