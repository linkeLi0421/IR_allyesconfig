; ModuleID = '/llk/IR_all_yes/drivers/ntb/hw/mscc/ntb_hw_switchtec.c_pt.bc'
source_filename = "../drivers/ntb/hw/mscc/ntb_hw_switchtec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.class_interface = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ntb_dev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.switchtec_ntb = type { %struct.ntb_dev, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i64, i64, i32, i32, %struct.spinlock, i32, i32, i32, [6 x i32], i32, i32, [6 x i32], i8, i32, i32, %struct.work_struct, i8 }
%struct.ntb_dev = type { %struct.device, ptr, i32, ptr, ptr, ptr, %struct.spinlock, %struct.completion, ptr }
%struct.ntb_dbmsg_regs = type { [1024 x i32], i64, i64, i64, i64, [64 x i8], i32, i32, [4 x %struct.anon.77], [4 x %struct.anon.78], [3928 x i8], [1024 x i8], [3072 x i8], [24 x i8], [4072 x i8] }
%struct.anon.77 = type { i32, i32 }
%struct.anon.78 = type { i32, i8, i8, i8, i8 }
%struct.switchtec_dev = type { ptr, %struct.device, %struct.cdev, i32, i32, i32, i32, [255 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, i32, %struct.work_struct, %struct.delayed_work, i8, %struct.wait_queue_head, %struct.atomic_t, %struct.work_struct, ptr, [255 x i8], ptr, ptr, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.ntb_info_regs = type <{ i8, i8, i16, i64, i16, i16, [4 x i32], [48 x %struct.nt_partition_info] }>
%struct.nt_partition_info = type { i32, i32, i32, i32 }
%struct.ntb_ctrl_regs = type { i32, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, [7 x i32], [6 x %struct.anon.75], [6 x %struct.anon.76], [192 x i32], [512 x i32], [256 x i32], [512 x i64] }
%struct.anon.75 = type { i32, i32, i64 }
%struct.anon.76 = type { i32, [3 x i32] }
%struct.shared_mw = type { i32, i32, i32, [128 x i64], [128 x i32] }
%struct.part_cfg_regs = type { i32, i32, i32, i32, i32, i32, [47 x i32], [11 x i32], i16, i16, i32, [3 x i32], i32, [3 x i32], i32, [5 x i32], i32, [5 x i32], i32, [5 x i32], i32, [5 x i32], i32, [5 x i32], [153 x i32] }
%struct.pff_csr_regs = type { i16, i16, i16, i16, i32, i32, %union.anon.74, i32, i32, i32, i32, i32, i32, [48 x i32], [448 x i32], [128 x i32], i32, [127 x i32], i32, [3 x i32], i32, [5 x i32], i32, [5 x i32], i32, [5 x i32], i32, [5 x i32], i32, [5 x i32], i32, [5 x i32], i32, [5 x i32], i32, [5 x i32], i32, [5 x i32], i32, [5 x i32], i32, [5 x i32], i32, [5 x i32], i32, [5 x i32], [174 x i32] }
%union.anon.74 = type { [3 x i64] }

@__UNIQUE_ID_description236 = internal constant [64 x i8] c"ntb_hw_switchtec.description=Microsemi Switchtec(tm) NTB Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version237 = internal constant [29 x i8] c"ntb_hw_switchtec.version=0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ntb_hw_switchtec\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file238 = internal constant [59 x i8] c"ntb_hw_switchtec.file=drivers/ntb/hw/mscc/ntb_hw_switchtec\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [29 x i8] c"ntb_hw_switchtec.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [46 x i8] c"ntb_hw_switchtec.author=Microsemi Corporation\00", section ".modinfo", align 1
@__param_str_max_mw_size = internal constant [29 x i8] c"ntb_hw_switchtec.max_mw_size\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@max_mw_size = internal global { i32, [28 x i8] } { i32 2097152, [28 x i8] zeroinitializer }, align 32
@__param_max_mw_size = internal constant %struct.kernel_param { ptr @__param_str_max_mw_size, ptr null, ptr @param_ops_ulong, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @max_mw_size } }, section "__param", align 4
@__UNIQUE_ID_max_mw_sizetype241 = internal constant [44 x i8] c"ntb_hw_switchtec.parmtype=max_mw_size:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_max_mw_size242 = internal constant [85 x i8] c"ntb_hw_switchtec.parm=max_mw_size:Max memory window size reported to the upper layer\00", section ".modinfo", align 1
@__param_str_use_lut_mws = internal constant [29 x i8] c"ntb_hw_switchtec.use_lut_mws\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@use_lut_mws = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_use_lut_mws = internal constant %struct.kernel_param { ptr @__param_str_use_lut_mws, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @use_lut_mws } }, section "__param", align 4
@__UNIQUE_ID_use_lut_mwstype243 = internal constant [43 x i8] c"ntb_hw_switchtec.parmtype=use_lut_mws:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_lut_mws244 = internal constant [81 x i8] c"ntb_hw_switchtec.parm=use_lut_mws:Enable the use of the LUT based memory windows\00", section ".modinfo", align 1
@__initcall__kmod_ntb_hw_switchtec__266_1573_switchtec_ntb_init6 = internal global ptr @switchtec_ntb_init, section ".initcall6.init", align 4
@switchtec_interface = internal global { %struct.class_interface, [44 x i8] } { %struct.class_interface { %struct.list_head zeroinitializer, ptr null, ptr @switchtec_ntb_add, ptr @switchtec_ntb_remove }, [44 x i8] zeroinitializer }, align 32
@__exitcall_switchtec_ntb_exit = internal global ptr @switchtec_ntb_exit, section ".exitcall.exit", align 4
@switchtec_class = external dso_local local_unnamed_addr global ptr, align 4
@switchtec_ntb_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1528, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NTB device registered\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"switchtec_ntb_add\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/ntb/hw/mscc/ntb_hw_switchtec.c\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@switchtec_ntb_add._entry_ptr = internal global ptr @switchtec_ntb_add._entry, section ".printk_index", align 4
@switchtec_ntb_add._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1540, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register ntb device: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@switchtec_ntb_add._entry_ptr.11 = internal global ptr @switchtec_ntb_add._entry.8, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switchtec_ntb_ops = internal constant { %struct.ntb_dev_ops, [32 x i8] } { %struct.ntb_dev_ops { ptr null, ptr null, ptr null, ptr null, ptr @switchtec_ntb_link_is_up, ptr @switchtec_ntb_link_enable, ptr @switchtec_ntb_link_disable, ptr @switchtec_ntb_mw_count, ptr @switchtec_ntb_mw_get_align, ptr @switchtec_ntb_mw_set_trans, ptr null, ptr @switchtec_ntb_peer_mw_count, ptr @switchtec_ntb_peer_mw_get_addr, ptr null, ptr null, ptr null, ptr @switchtec_ntb_db_valid_mask, ptr @switchtec_ntb_db_vector_count, ptr @switchtec_ntb_db_vector_mask, ptr @switchtec_ntb_db_read, ptr null, ptr @switchtec_ntb_db_clear, ptr @switchtec_ntb_db_read_mask, ptr @switchtec_ntb_db_set_mask, ptr @switchtec_ntb_db_clear_mask, ptr @switchtec_ntb_peer_db_addr, ptr null, ptr @switchtec_ntb_peer_db_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @switchtec_ntb_spad_count, ptr @switchtec_ntb_spad_read, ptr @switchtec_ntb_spad_write, ptr @switchtec_ntb_peer_spad_addr, ptr @switchtec_ntb_peer_spad_read, ptr @switchtec_ntb_peer_spad_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@switchtec_ntb_init_sndev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&sndev->check_link_status_work)\00", [46 x i8] zeroinitializer }, align 32
@switchtec_ntb_init_sndev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.5, i32 869, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ntb target partition not defined\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"switchtec_ntb_init_sndev\00", [39 x i8] zeroinitializer }, align 32
@switchtec_ntb_init_sndev._entry_ptr = internal global ptr @switchtec_ntb_init_sndev._entry, section ".printk_index", align 4
@switchtec_ntb_init_sndev._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.5, i32 875, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"peer partition is not NT partition\0A\00", [60 x i8] zeroinitializer }, align 32
@switchtec_ntb_init_sndev._entry_ptr.17 = internal global ptr @switchtec_ntb_init_sndev._entry.15, section ".printk_index", align 4
@switchtec_ntb_init_sndev._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.5, i32 883, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ntb driver only supports 1 pair of 1-1 ntb mapping\0A\00", [44 x i8] zeroinitializer }, align 32
@switchtec_ntb_init_sndev._entry_ptr.20 = internal global ptr @switchtec_ntb_init_sndev._entry.18, section ".printk_index", align 4
@switchtec_ntb_init_sndev._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.5, i32 890, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ntb target partition is not NT partition\0A\00", [54 x i8] zeroinitializer }, align 32
@switchtec_ntb_init_sndev._entry_ptr.23 = internal global ptr @switchtec_ntb_init_sndev._entry.21, section ".printk_index", align 4
@switchtec_ntb_init_sndev.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str.5, ptr @.str.24, i8 0, i8 -32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Partition ID %d of %d\0A\00", [41 x i8] zeroinitializer }, align 32
@switchtec_ntb_link_enable.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.25, ptr @.str.5, ptr @.str.26, i8 0, i8 -112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"switchtec_ntb_link_enable\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"enabling link\0A\00", [17 x i8] zeroinitializer }, align 32
@switchtec_ntb_link_status_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.5, i32 513, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ntb link %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"switchtec_ntb_link_status_update\00", [63 x i8] zeroinitializer }, align 32
@switchtec_ntb_link_status_update._entry_ptr = internal global ptr @switchtec_ntb_link_status_update._entry, section ".printk_index", align 4
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"up\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"down\00", [27 x i8] zeroinitializer }, align 32
@switchtec_ntb_link_disable.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.5, ptr @.str.32, i8 0, i8 -108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"switchtec_ntb_link_disable\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"disabling link\0A\00", [16 x i8] zeroinitializer }, align 32
@switchtec_ntb_mw_set_trans.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.5, ptr @.str.34, i8 0, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"switchtec_ntb_mw_set_trans\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"MW %d: part %d addr %pad size %pap\0A\00", [60 x i8] zeroinitializer }, align 32
@switchtec_ntb_mw_set_trans._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.5, i32 300, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ERROR: Memory window address is not aligned to its size!\0A\00", [38 x i8] zeroinitializer }, align 32
@switchtec_ntb_mw_set_trans._entry_ptr = internal global ptr @switchtec_ntb_mw_set_trans._entry, section ".printk_index", align 4
@switchtec_ntb_mw_set_trans._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.33, ptr @.str.5, i32 327, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Hardware reported an error configuring mw %d: %08x\0A\00", [44 x i8] zeroinitializer }, align 32
@switchtec_ntb_mw_set_trans._entry_ptr.38 = internal global ptr @switchtec_ntb_mw_set_trans._entry.36, section ".printk_index", align 4
@switchtec_ntb_part_op.op_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr null, ptr @.str.39, ptr @.str.40, ptr @.str.41], [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"configure\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@switchtec_ntb_part_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.5, i32 147, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Timed out while performing %s (%d). (%08x)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"switchtec_ntb_part_op\00", [42 x i8] zeroinitializer }, align 32
@switchtec_ntb_part_op._entry_ptr = internal global ptr @switchtec_ntb_part_op._entry, section ".printk_index", align 4
@check_link_status_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.5, i32 534, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ntb link forced down\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"check_link_status_work\00", [41 x i8] zeroinitializer }, align 32
@check_link_status_work._entry_ptr = internal global ptr @check_link_status_work._entry, section ".printk_index", align 4
@switchtec_ntb_reinit_peer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.5, i32 1466, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"reinitialize shared memory window\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"switchtec_ntb_reinit_peer\00", [38 x i8] zeroinitializer }, align 32
@switchtec_ntb_reinit_peer._entry_ptr = internal global ptr @switchtec_ntb_reinit_peer._entry, section ".printk_index", align 4
@config_rsvd_lut_win._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.5, i32 943, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Error setting up reserved lut window: %08x / %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"config_rsvd_lut_win\00", [44 x i8] zeroinitializer }, align 32
@config_rsvd_lut_win._entry_ptr = internal global ptr @config_rsvd_lut_win._entry, section ".printk_index", align 4
@switchtec_ntb_init_mw.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.5, ptr @.str.51, i8 1, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"switchtec_ntb_init_mw\00", [42 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MWs: %d direct, %d lut\0A\00", [40 x i8] zeroinitializer }, align 32
@switchtec_ntb_init_mw.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.5, ptr @.str.52, i8 1, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Peer MWs: %d direct, %d lut\0A\00", [35 x i8] zeroinitializer }, align 32
@config_req_id_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.5, i32 960, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Not enough requester IDs available.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"config_req_id_table\00", [44 x i8] zeroinitializer }, align 32
@config_req_id_table._entry_ptr = internal global ptr @config_req_id_table._entry, section ".printk_index", align 4
@config_req_id_table.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.54, ptr @.str.5, ptr @.str.55, i8 0, i8 -12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Requester ID %02X:%02X.%X -> BB:%02X.%X\0A\00", [55 x i8] zeroinitializer }, align 32
@config_req_id_table._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.54, ptr @.str.5, i32 990, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Error setting up the requester ID table: %08x\0A\00", [49 x i8] zeroinitializer }, align 32
@config_req_id_table._entry_ptr.58 = internal global ptr @config_req_id_table._entry.56, section ".printk_index", align 4
@switchtec_ntb_init_crosslink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.5, i32 1132, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Using crosslink configuration\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"switchtec_ntb_init_crosslink\00", [35 x i8] zeroinitializer }, align 32
@switchtec_ntb_init_crosslink._entry_ptr = internal global ptr @switchtec_ntb_init_crosslink._entry, section ".printk_index", align 4
@switchtec_ntb_init_crosslink._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.5, i32 1138, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error enumerating crosslink partition\0A\00", [57 x i8] zeroinitializer }, align 32
@switchtec_ntb_init_crosslink._entry_ptr.63 = internal global ptr @switchtec_ntb_init_crosslink._entry.61, section ".printk_index", align 4
@crosslink_enum_partition.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.64, ptr @.str.5, ptr @.str.65, i8 1, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"crosslink_enum_partition\00", [39 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Crosslink BAR%d addr: %llx\0A\00", [36 x i8] zeroinitializer }, align 32
@crosslink_setup_mws._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.5, i32 1055, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Error setting up cross link windows: %08x / %08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"crosslink_setup_mws\00", [44 x i8] zeroinitializer }, align 32
@crosslink_setup_mws._entry_ptr = internal global ptr @crosslink_setup_mws._entry, section ".printk_index", align 4
@switchtec_ntb_init_db.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.68, ptr @.str.5, ptr @.str.69, i8 1, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"switchtec_ntb_init_db\00", [42 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dbs: shift %d/%d, mask %016llx\0A\00", [32 x i8] zeroinitializer }, align 32
@switchtec_ntb_init_shared_mw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.5, i32 1333, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unable to allocate memory for shared mw\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"switchtec_ntb_init_shared_mw\00", [35 x i8] zeroinitializer }, align 32
@switchtec_ntb_init_shared_mw._entry_ptr = internal global ptr @switchtec_ntb_init_shared_mw._entry, section ".printk_index", align 4
@switchtec_ntb_init_shared_mw.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.5, ptr @.str.72, i8 1, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Shared MW Ready\0A\00", [47 x i8] zeroinitializer }, align 32
@switchtec_ntb_init_db_msg_irq.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.73, ptr @.str.5, ptr @.str.74, i8 1, i8 99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"switchtec_ntb_init_db_msg_irq\00", [34 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"irqs - event: %d, db: %d, msgs: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"switchtec_ntb_doorbell\00", [41 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"switchtec_ntb_message\00", [42 x i8] zeroinitializer }, align 32
@switchtec_ntb_doorbell_isr.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.77, ptr @.str.5, ptr @.str.78, i8 1, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"switchtec_ntb_doorbell_isr\00", [37 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"doorbell\0A\00", [22 x i8] zeroinitializer }, align 32
@switchtec_ntb_message_isr.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.79, ptr @.str.5, ptr @.str.80, i8 1, i8 92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"switchtec_ntb_message_isr\00", [38 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"message: %d %08x\0A\00", [46 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@switchtec_ntb_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.5, i32 1560, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ntb device unregistered\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"switchtec_ntb_remove\00", [43 x i8] zeroinitializer }, align 32
@switchtec_ntb_remove._entry_ptr = internal global ptr @switchtec_ntb_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 17, i32 1 }
@___asan_gen_.92 = private unnamed_addr constant [12 x i8] c"max_mw_size\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 21, i32 14 }
@___asan_gen_.95 = private unnamed_addr constant [12 x i8] c"use_lut_mws\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 26, i32 13 }
@___asan_gen_.98 = private unnamed_addr constant [20 x i8] c"switchtec_interface\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1563, i32 31 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1528, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1540, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [18 x i8] c"switchtec_ntb_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 813, i32 33 }
@___asan_gen_.131 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 850, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 868, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 874, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 882, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 889, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 895, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 579, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 512, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 593, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 282, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 299, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 325, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant [8 x i8] c"op_text\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 102, i32 28 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 103, i32 29 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 104, i32 28 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 105, i32 30 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 144, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 534, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1466, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 941, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1207, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1217, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 959, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 975, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 988, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1132, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1137, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1106, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1053, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1254, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1332, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1351, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1422, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1438, i32 5 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1444, i32 5 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1377, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1393, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.365 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.366 = private constant [42 x i8] c"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1560, i32 2 }
@llvm.compiler.used = appending global [130 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__UNIQUE_ID_max_mw_size242, ptr @__UNIQUE_ID_max_mw_sizetype241, ptr @__UNIQUE_ID_use_lut_mws244, ptr @__UNIQUE_ID_use_lut_mwstype243, ptr @__UNIQUE_ID_version237, ptr @__exitcall_switchtec_ntb_exit, ptr @__initcall__kmod_ntb_hw_switchtec__266_1573_switchtec_ntb_init6, ptr @__modver_attr, ptr @__param_max_mw_size, ptr @__param_use_lut_mws, ptr @check_link_status_work._entry, ptr @check_link_status_work._entry_ptr, ptr @config_req_id_table._entry, ptr @config_req_id_table._entry.56, ptr @config_req_id_table._entry_ptr, ptr @config_req_id_table._entry_ptr.58, ptr @config_rsvd_lut_win._entry, ptr @config_rsvd_lut_win._entry_ptr, ptr @crosslink_setup_mws._entry, ptr @crosslink_setup_mws._entry_ptr, ptr @switchtec_ntb_add._entry, ptr @switchtec_ntb_add._entry.8, ptr @switchtec_ntb_add._entry_ptr, ptr @switchtec_ntb_add._entry_ptr.11, ptr @switchtec_ntb_exit, ptr @switchtec_ntb_init_crosslink._entry, ptr @switchtec_ntb_init_crosslink._entry.61, ptr @switchtec_ntb_init_crosslink._entry_ptr, ptr @switchtec_ntb_init_crosslink._entry_ptr.63, ptr @switchtec_ntb_init_shared_mw._entry, ptr @switchtec_ntb_init_shared_mw._entry_ptr, ptr @switchtec_ntb_init_sndev._entry, ptr @switchtec_ntb_init_sndev._entry.15, ptr @switchtec_ntb_init_sndev._entry.18, ptr @switchtec_ntb_init_sndev._entry.21, ptr @switchtec_ntb_init_sndev._entry_ptr, ptr @switchtec_ntb_init_sndev._entry_ptr.17, ptr @switchtec_ntb_init_sndev._entry_ptr.20, ptr @switchtec_ntb_init_sndev._entry_ptr.23, ptr @switchtec_ntb_link_status_update._entry, ptr @switchtec_ntb_link_status_update._entry_ptr, ptr @switchtec_ntb_mw_set_trans._entry, ptr @switchtec_ntb_mw_set_trans._entry.36, ptr @switchtec_ntb_mw_set_trans._entry_ptr, ptr @switchtec_ntb_mw_set_trans._entry_ptr.38, ptr @switchtec_ntb_part_op._entry, ptr @switchtec_ntb_part_op._entry_ptr, ptr @switchtec_ntb_reinit_peer._entry, ptr @switchtec_ntb_reinit_peer._entry_ptr, ptr @switchtec_ntb_remove._entry, ptr @switchtec_ntb_remove._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @max_mw_size, ptr @use_lut_mws, ptr @switchtec_interface, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @switchtec_ntb_ops, ptr @switchtec_ntb_init_sndev.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @switchtec_ntb_part_op.op_text, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_mw_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_lut_mws to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_interface to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_ntb_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_ntb_add._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_ntb_ops to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_ntb_init_sndev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_ntb_init_sndev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_ntb_init_sndev._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_ntb_init_sndev._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_ntb_init_sndev._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_ntb_link_status_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_ntb_mw_set_trans._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_ntb_mw_set_trans._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_ntb_part_op.op_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_ntb_part_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_link_status_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_ntb_reinit_peer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_rsvd_lut_win._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_req_id_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_req_id_table._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_ntb_init_crosslink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_ntb_init_crosslink._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crosslink_setup_mws._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_ntb_init_shared_mw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_ntb_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @switchtec_ntb_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @switchtec_class to i32))
  %0 = load ptr, ptr @switchtec_class, align 4
  store ptr %0, ptr getelementptr inbounds (%struct.class_interface, ptr @switchtec_interface, i32 0, i32 1), align 4
  %call = tail call i32 @class_interface_register(ptr noundef nonnull @switchtec_interface) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @switchtec_ntb_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @class_interface_unregister(ptr noundef nonnull @switchtec_interface) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_interface_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_interface_register(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @switchtec_ntb_add(ptr noundef %dev, ptr nocapture noundef readnone %class_intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  %sndev1 = getelementptr i8, ptr %dev, i32 2008
  %0 = ptrtoint ptr %sndev1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %sndev1, align 8
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 8
  %class = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 425984, i32 %4)
  %cmp.not = icmp eq i32 %4, 425984
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1320) #16
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %stdev6 = getelementptr inbounds %struct.switchtec_ntb, ptr %call.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %stdev6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %stdev6, align 8
  %call7 = tail call fastcc i32 @switchtec_ntb_init_sndev(ptr noundef nonnull %call.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.free_and_exit_crit_edge

if.end5.free_and_exit_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_and_exit

if.end10:                                         ; preds = %if.end5
  tail call fastcc void @switchtec_ntb_init_mw(ptr noundef nonnull %call.i.i.i)
  %call11 = tail call fastcc i32 @switchtec_ntb_init_req_id_table(ptr noundef nonnull %call.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.free_and_exit_crit_edge

if.end10.free_and_exit_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_and_exit

if.end14:                                         ; preds = %if.end10
  %call15 = tail call fastcc i32 @switchtec_ntb_init_crosslink(ptr noundef nonnull %call.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.free_and_exit_crit_edge

if.end14.free_and_exit_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_and_exit

if.end18:                                         ; preds = %if.end14
  tail call fastcc void @switchtec_ntb_init_db(ptr noundef nonnull %call.i.i.i)
  tail call fastcc void @switchtec_ntb_init_msgs(ptr noundef nonnull %call.i.i.i)
  %call19 = tail call fastcc i32 @switchtec_ntb_init_shared_mw(ptr noundef nonnull %call.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.deinit_crosslink_crit_edge

if.end18.deinit_crosslink_crit_edge:              ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %deinit_crosslink

if.end22:                                         ; preds = %if.end18
  %call23 = tail call fastcc i32 @switchtec_ntb_init_db_msg_irq(ptr noundef nonnull %call.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.deinit_shared_and_exit_crit_edge

if.end22.deinit_shared_and_exit_crit_edge:        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %deinit_shared_and_exit

if.end26:                                         ; preds = %if.end22
  %mmio_peer_dbmsg.i = getelementptr inbounds %struct.switchtec_ntb, ptr %call.i.i.i, i32 0, i32 12
  %7 = ptrtoint ptr %mmio_peer_dbmsg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio_peer_dbmsg.i, align 4
  %omsg.i = getelementptr inbounds %struct.ntb_dbmsg_regs, ptr %8, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %omsg.i, i32 67108864) #13, !srcloc !208
  %call28 = tail call i32 @ntb_register_device(ptr noundef nonnull %call.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %deinit_and_exit

if.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %sndev1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i.i.i, ptr %sndev1, align 8
  %link_notifier = getelementptr i8, ptr %dev, i32 1748
  %10 = ptrtoint ptr %link_notifier to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @switchtec_ntb_link_notification, ptr %link_notifier, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.3) #17
  br label %cleanup

deinit_and_exit:                                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @switchtec_ntb_deinit_db_msg_irq(ptr noundef nonnull %call.i.i.i)
  br label %deinit_shared_and_exit

deinit_shared_and_exit:                           ; preds = %deinit_and_exit, %if.end22.deinit_shared_and_exit_crit_edge
  %rc.0 = phi i32 [ %call23, %if.end22.deinit_shared_and_exit_crit_edge ], [ %call28, %deinit_and_exit ]
  tail call fastcc void @switchtec_ntb_deinit_shared_mw(ptr noundef nonnull %call.i.i.i)
  br label %deinit_crosslink

deinit_crosslink:                                 ; preds = %deinit_shared_and_exit, %if.end18.deinit_crosslink_crit_edge
  %rc.1 = phi i32 [ %call19, %if.end18.deinit_crosslink_crit_edge ], [ %rc.0, %deinit_shared_and_exit ]
  %mmio_xlink_win.i = getelementptr inbounds %struct.switchtec_ntb, ptr %call.i.i.i, i32 0, i32 13
  %11 = ptrtoint ptr %mmio_xlink_win.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio_xlink_win.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %deinit_crosslink.free_and_exit_crit_edge, label %if.then.i

deinit_crosslink.free_and_exit_crit_edge:         ; preds = %deinit_crosslink
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_and_exit

if.then.i:                                        ; preds = %deinit_crosslink
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %stdev6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stdev6, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  tail call void @pci_iounmap(ptr noundef %16, ptr noundef nonnull %12) #13
  br label %free_and_exit

free_and_exit:                                    ; preds = %if.then.i, %deinit_crosslink.free_and_exit_crit_edge, %if.end14.free_and_exit_crit_edge, %if.end10.free_and_exit_crit_edge, %if.end5.free_and_exit_crit_edge
  %rc.2 = phi i32 [ %call7, %if.end5.free_and_exit_crit_edge ], [ %call11, %if.end10.free_and_exit_crit_edge ], [ %call15, %if.end14.free_and_exit_crit_edge ], [ %rc.1, %deinit_crosslink.free_and_exit_crit_edge ], [ %rc.1, %if.then.i ]
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %rc.2) #17
  br label %cleanup

cleanup:                                          ; preds = %free_and_exit, %if.end31, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.2, %free_and_exit ], [ 0, %if.end31 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @switchtec_ntb_remove(ptr noundef %dev, ptr nocapture noundef readnone %class_intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sndev1 = getelementptr i8, ptr %dev, i32 2008
  %0 = ptrtoint ptr %sndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sndev1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %link_notifier = getelementptr i8, ptr %dev, i32 1748
  %2 = ptrtoint ptr %link_notifier to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %link_notifier, align 4
  %3 = ptrtoint ptr %sndev1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %sndev1, align 8
  tail call void @ntb_unregister_device(ptr noundef nonnull %1) #13
  %doorbell_irq.i = getelementptr inbounds %struct.switchtec_ntb, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %doorbell_irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %doorbell_irq.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %5, ptr noundef nonnull %1) #13
  %message_irq.i = getelementptr inbounds %struct.switchtec_ntb, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %message_irq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %message_irq.i, align 8
  %call1.i = tail call ptr @free_irq(i32 noundef %7, ptr noundef nonnull %1) #13
  %peer_shared.i = getelementptr inbounds %struct.switchtec_ntb, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %peer_shared.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %peer_shared.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %stdev.i = getelementptr inbounds %struct.switchtec_ntb, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %stdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stdev.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  tail call void @pci_iounmap(ptr noundef %13, ptr noundef nonnull %9) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %self_shared.i = getelementptr inbounds %struct.switchtec_ntb, ptr %1, i32 0, i32 14
  %14 = ptrtoint ptr %self_shared.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %self_shared.i, align 4
  %tobool2.not.i = icmp eq ptr %15, null
  br i1 %tobool2.not.i, label %if.end.i.switchtec_ntb_deinit_shared_mw.exit_crit_edge, label %if.then3.i

if.end.i.switchtec_ntb_deinit_shared_mw.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %switchtec_ntb_deinit_shared_mw.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %stdev4.i = getelementptr inbounds %struct.switchtec_ntb, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %stdev4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stdev4.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %self_shared_dma.i = getelementptr inbounds %struct.switchtec_ntb, ptr %1, i32 0, i32 16
  %20 = ptrtoint ptr %self_shared_dma.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %self_shared_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 65536, ptr noundef nonnull %15, i32 noundef %21, i32 noundef 0) #13
  br label %switchtec_ntb_deinit_shared_mw.exit

switchtec_ntb_deinit_shared_mw.exit:              ; preds = %if.then3.i, %if.end.i.switchtec_ntb_deinit_shared_mw.exit_crit_edge
  %nr_rsvd_luts.i = getelementptr inbounds %struct.switchtec_ntb, ptr %1, i32 0, i32 24
  %22 = ptrtoint ptr %nr_rsvd_luts.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_rsvd_luts.i, align 4
  %dec.i = add i32 %23, -1
  store i32 %dec.i, ptr %nr_rsvd_luts.i, align 4
  %mmio_xlink_win.i = getelementptr inbounds %struct.switchtec_ntb, ptr %1, i32 0, i32 13
  %24 = ptrtoint ptr %mmio_xlink_win.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio_xlink_win.i, align 8
  %tobool.not.i12 = icmp eq ptr %25, null
  br i1 %tobool.not.i12, label %switchtec_ntb_deinit_shared_mw.exit.switchtec_ntb_deinit_crosslink.exit_crit_edge, label %if.then.i14

switchtec_ntb_deinit_shared_mw.exit.switchtec_ntb_deinit_crosslink.exit_crit_edge: ; preds = %switchtec_ntb_deinit_shared_mw.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %switchtec_ntb_deinit_crosslink.exit

if.then.i14:                                      ; preds = %switchtec_ntb_deinit_shared_mw.exit
  call void @__sanitizer_cov_trace_pc() #15
  %stdev.i13 = getelementptr inbounds %struct.switchtec_ntb, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %stdev.i13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stdev.i13, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  tail call void @pci_iounmap(ptr noundef %29, ptr noundef nonnull %25) #13
  br label %switchtec_ntb_deinit_crosslink.exit

switchtec_ntb_deinit_crosslink.exit:              ; preds = %if.then.i14, %switchtec_ntb_deinit_shared_mw.exit.switchtec_ntb_deinit_crosslink.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.81) #17
  br label %cleanup

cleanup:                                          ; preds = %switchtec_ntb_deinit_crosslink.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @switchtec_ntb_init_sndev(ptr noundef %sndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %stdev = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 1
  %0 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stdev, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %pdev1 = getelementptr inbounds %struct.ntb_dev, ptr %sndev, i32 0, i32 1
  %4 = ptrtoint ptr %pdev1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %pdev1, align 8
  %topo = getelementptr inbounds %struct.ntb_dev, ptr %sndev, i32 0, i32 2
  %5 = ptrtoint ptr %topo to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %topo, align 4
  %ops = getelementptr inbounds %struct.ntb_dev, ptr %sndev, i32 0, i32 3
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @switchtec_ntb_ops, ptr %ops, align 8
  %check_link_status_work = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 32
  tail call void @__init_work(ptr noundef %check_link_status_work, i32 noundef 0) #13
  %7 = ptrtoint ptr %check_link_status_work to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %check_link_status_work, align 4
  %lockdep_map = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 32, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @switchtec_ntb_init_sndev.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry7 = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 32, i32 1
  %8 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry7, ptr %entry7, align 4
  %prev.i = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 32, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry7, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 32, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @check_link_status_work, ptr %func, align 4
  %link_force_down = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 33
  %11 = ptrtoint ptr %link_force_down to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %link_force_down, align 8
  %12 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stdev, align 8
  %partition = getelementptr inbounds %struct.switchtec_dev, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %partition to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %partition, align 4
  %self_partition = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 2
  %16 = ptrtoint ptr %self_partition to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %self_partition, align 4
  %mmio_ntb = getelementptr inbounds %struct.switchtec_dev, ptr %13, i32 0, i32 13
  %17 = ptrtoint ptr %mmio_ntb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio_ntb, align 4
  %mmio_ntb11 = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 6
  %19 = ptrtoint ptr %mmio_ntb11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %mmio_ntb11, align 4
  %target_part_high = getelementptr %struct.ntb_info_regs, ptr %18, i32 0, i32 7, i32 %15, i32 2
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %target_part_high) #13, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %21 = ptrtoint ptr %mmio_ntb11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio_ntb11, align 4
  %target_part_low = getelementptr %struct.ntb_info_regs, ptr %22, i32 0, i32 7, i32 %15, i32 1
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %target_part_low) #13, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %24 = zext i32 %20 to i64
  %25 = zext i32 %23 to i64
  %26 = shl nuw i64 %25, 32
  %27 = or i64 %26, %24
  %28 = ptrtoint ptr %mmio_ntb11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio_ntb11, align 4
  %ep_map = getelementptr inbounds %struct.ntb_info_regs, ptr %29, i32 0, i32 3
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_map) #13, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %add.ptr.i = getelementptr i8, ptr %ep_map, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %32 = zext i32 %31 to i64
  %33 = zext i32 %30 to i64
  %34 = shl nuw i64 %33, 32
  %35 = or i64 %34, %32
  %36 = tail call i64 @llvm.bswap.i64(i64 %35) #13
  %37 = and i64 %35, %27
  %38 = tail call i64 @llvm.bswap.i64(i64 %37)
  %39 = ptrtoint ptr %self_partition to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %self_partition, align 4
  %shl22 = shl nuw i32 1, %40
  %neg = xor i32 %shl22, -1
  %conv23 = sext i32 %neg to i64
  %and24 = and i64 %36, %conv23
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %37)
  %tobool.not = icmp eq i64 %37, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %41 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %stdev, align 8
  %partition_count = getelementptr inbounds %struct.switchtec_dev, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %partition_count to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %partition_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp.not = icmp eq i32 %44, 2
  br i1 %cmp.not, label %if.end, label %do.end30

do.end30:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.switchtec_dev, ptr %42, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #17
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and24)
  %tobool32.not = icmp eq i64 %and24, 0
  br i1 %tobool32.not, label %do.end36, label %if.end39

do.end36:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev38 = getelementptr inbounds %struct.switchtec_dev, ptr %42, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38, ptr noundef nonnull @.str.16) #17
  br label %cleanup

if.end39:                                         ; preds = %if.end
  %conv.i151 = trunc i64 %and24 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i151)
  %cmp.i = icmp eq i32 %conv.i151, 0
  br i1 %cmp.i, label %if.then.i154, label %if.end.i155

if.then.i154:                                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  %shr.i152 = lshr i64 %and24, 32
  %conv2.i = trunc i64 %shr.i152 to i32
  %45 = tail call i32 @llvm.cttz.i32(i32 %conv2.i, i1 false) #13, !range !211
  %add.i153 = add nuw nsw i32 %45, 32
  br label %__ffs64.exit

if.end.i155:                                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  %46 = tail call i32 @llvm.cttz.i32(i32 %conv.i151, i1 true) #13, !range !211
  br label %__ffs64.exit

__ffs64.exit:                                     ; preds = %if.end.i155, %if.then.i154
  %retval.0.i156 = phi i32 [ %add.i153, %if.then.i154 ], [ %46, %if.end.i155 ]
  %peer_partition = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 3
  %47 = ptrtoint ptr %peer_partition to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %retval.0.i156, ptr %peer_partition, align 8
  br label %do.body66

if.else:                                          ; preds = %entry
  %conv.i157 = trunc i64 %38 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i157)
  %cmp.i158 = icmp eq i32 %conv.i157, 0
  br i1 %cmp.i158, label %if.then.i162, label %if.end.i163

if.then.i162:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %shr.i159 = lshr i64 %38, 32
  %conv2.i160 = trunc i64 %shr.i159 to i32
  %48 = tail call i32 @llvm.cttz.i32(i32 %conv2.i160, i1 false) #13, !range !211
  %add.i161 = add nuw nsw i32 %48, 32
  br label %__ffs64.exit165

if.end.i163:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %49 = tail call i32 @llvm.cttz.i32(i32 %conv.i157, i1 true) #13, !range !211
  %.pre = lshr i64 %38, 32
  %.pre176 = trunc i64 %.pre to i32
  br label %__ffs64.exit165

__ffs64.exit165:                                  ; preds = %if.end.i163, %if.then.i162
  %conv.i.pre-phi = phi i32 [ %conv2.i160, %if.then.i162 ], [ %.pre176, %if.end.i163 ]
  %retval.0.i164 = phi i32 [ %add.i161, %if.then.i162 ], [ %49, %if.end.i163 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.pre-phi)
  %tobool.not.i = icmp eq i32 %conv.i.pre-phi, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %__ffs64.exit165
  call void @__sanitizer_cov_trace_pc() #15
  %50 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.pre-phi, i1 true) #13, !range !211
  %add.i = sub nuw nsw i32 64, %50
  br label %fls64.exit

if.end.i:                                         ; preds = %__ffs64.exit165
  call void @__sanitizer_cov_trace_pc() #15
  %51 = tail call i32 @llvm.ctlz.i32(i32 %conv.i157, i1 true) #13, !range !211
  %sub.i6.i = sub nuw nsw i32 32, %51
  %cond.i7.i = select i1 %cmp.i158, i32 0, i32 %sub.i6.i
  br label %fls64.exit

fls64.exit:                                       ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %add.i, %if.then.i ], [ %cond.i7.i, %if.end.i ]
  %sub = add nsw i32 %retval.0.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i164, i32 %sub)
  %cmp43.not = icmp eq i32 %retval.0.i164, %sub
  br i1 %cmp43.not, label %if.end51, label %do.end48

do.end48:                                         ; preds = %fls64.exit
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %stdev, align 8
  %dev50 = getelementptr inbounds %struct.switchtec_dev, ptr %53, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev50, ptr noundef nonnull @.str.19) #17
  br label %cleanup

if.end51:                                         ; preds = %fls64.exit
  br i1 %cmp.i158, label %if.then.i171, label %if.end.i172

if.then.i171:                                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  %54 = tail call i32 @llvm.cttz.i32(i32 %conv.i.pre-phi, i1 false) #13, !range !211
  %add.i170 = add nuw nsw i32 %54, 32
  br label %__ffs64.exit174

if.end.i172:                                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  %55 = tail call i32 @llvm.cttz.i32(i32 %conv.i157, i1 true) #13, !range !211
  br label %__ffs64.exit174

__ffs64.exit174:                                  ; preds = %if.end.i172, %if.then.i171
  %retval.0.i173 = phi i32 [ %add.i170, %if.then.i171 ], [ %55, %if.end.i172 ]
  %peer_partition53 = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 3
  %56 = ptrtoint ptr %peer_partition53 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %retval.0.i173, ptr %peer_partition53, align 8
  %sh_prom = zext i32 %retval.0.i173 to i64
  %shl55 = shl nuw i64 1, %sh_prom
  %and56 = and i64 %shl55, %and24
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and56)
  %tobool57.not = icmp eq i64 %and56, 0
  br i1 %tobool57.not, label %do.end61, label %__ffs64.exit174.do.body66_crit_edge

__ffs64.exit174.do.body66_crit_edge:              ; preds = %__ffs64.exit174
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body66

do.end61:                                         ; preds = %__ffs64.exit174
  call void @__sanitizer_cov_trace_pc() #15
  %57 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %stdev, align 8
  %dev63 = getelementptr inbounds %struct.switchtec_dev, ptr %58, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev63, ptr noundef nonnull @.str.22) #17
  br label %cleanup

do.body66:                                        ; preds = %__ffs64.exit174.do.body66_crit_edge, %__ffs64.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switchtec_ntb_init_sndev.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@switchtec_ntb_init_sndev, %if.then71)) #13
          to label %do.end79 [label %if.then71], !srcloc !212

if.then71:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #15
  %59 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %stdev, align 8
  %dev73 = getelementptr inbounds %struct.switchtec_dev, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %self_partition to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %self_partition, align 4
  %partition_count76 = getelementptr inbounds %struct.switchtec_dev, ptr %60, i32 0, i32 5
  %63 = ptrtoint ptr %partition_count76 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %partition_count76, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @switchtec_ntb_init_sndev.__UNIQUE_ID_ddebug252, ptr noundef %dev73, ptr noundef nonnull @.str.24, i32 noundef %62, i32 noundef %64) #13
  br label %do.end79

do.end79:                                         ; preds = %if.then71, %do.body66
  %65 = ptrtoint ptr %mmio_ntb11 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmio_ntb11, align 4
  %add.ptr = getelementptr i8, ptr %66, i32 16384
  %mmio_ctrl = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 7
  %67 = ptrtoint ptr %mmio_ctrl to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr, ptr %mmio_ctrl, align 8
  %add.ptr82 = getelementptr i8, ptr %66, i32 409600
  %mmio_dbmsg = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 8
  %68 = ptrtoint ptr %mmio_dbmsg to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr82, ptr %mmio_dbmsg, align 4
  %69 = ptrtoint ptr %self_partition to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %self_partition, align 4
  %arrayidx85 = getelementptr %struct.ntb_ctrl_regs, ptr %add.ptr, i32 %70
  %mmio_self_ctrl = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 9
  %71 = ptrtoint ptr %mmio_self_ctrl to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %arrayidx85, ptr %mmio_self_ctrl, align 8
  %peer_partition87 = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 3
  %72 = ptrtoint ptr %peer_partition87 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %peer_partition87, align 8
  %arrayidx88 = getelementptr %struct.ntb_ctrl_regs, ptr %add.ptr, i32 %73
  %mmio_peer_ctrl = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 10
  %74 = ptrtoint ptr %mmio_peer_ctrl to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %arrayidx88, ptr %mmio_peer_ctrl, align 4
  %arrayidx91 = getelementptr %struct.ntb_dbmsg_regs, ptr %add.ptr82, i32 %70
  %mmio_self_dbmsg = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 11
  %75 = ptrtoint ptr %mmio_self_dbmsg to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %arrayidx91, ptr %mmio_self_dbmsg, align 8
  %mmio_peer_dbmsg = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 12
  %76 = ptrtoint ptr %mmio_peer_dbmsg to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %arrayidx91, ptr %mmio_peer_dbmsg, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end79, %do.end61, %do.end48, %do.end36, %do.end30
  %retval.0 = phi i32 [ -19, %do.end48 ], [ 0, %do.end79 ], [ -19, %do.end61 ], [ -19, %do.end30 ], [ -19, %do.end36 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @switchtec_ntb_init_mw(ptr nocapture noundef %sndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %direct_mw_to_bar = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 25
  %mmio_self_ctrl = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 9
  %0 = ptrtoint ptr %mmio_self_ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_self_ctrl, align 8
  %call = tail call fastcc i32 @map_bars(ptr noundef %direct_mw_to_bar, ptr noundef %1)
  %nr_direct_mw = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 22
  %2 = ptrtoint ptr %nr_direct_mw to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %nr_direct_mw, align 4
  %3 = ptrtoint ptr %mmio_self_ctrl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio_self_ctrl, align 8
  %lut_table_entries = getelementptr inbounds %struct.ntb_ctrl_regs, ptr %4, i32 0, i32 5
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %lut_table_entries) #13, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  %nr_lut_mw = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 23
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #13
  %conv = zext i16 %6 to i32
  %7 = tail call i32 @llvm.ctlz.i32(i32 %conv, i1 true) #13, !range !211
  %sub.i.i.op.i = xor i32 %7, 31
  %cond20 = shl nuw i32 1, %sub.i.i.op.i
  %8 = ptrtoint ptr %nr_lut_mw to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond20, ptr %nr_lut_mw, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switchtec_ntb_init_mw.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@switchtec_ntb_init_mw, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !212

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %stdev = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 1
  %9 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stdev, align 8
  %dev = getelementptr inbounds %struct.switchtec_dev, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %nr_direct_mw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_direct_mw, align 4
  %13 = ptrtoint ptr %nr_lut_mw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_lut_mw, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @switchtec_ntb_init_mw.__UNIQUE_ID_ddebug257, ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %12, i32 noundef %14) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %peer_direct_mw_to_bar = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 28
  %mmio_peer_ctrl = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 10
  %15 = ptrtoint ptr %mmio_peer_ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio_peer_ctrl, align 4
  %call28 = tail call fastcc i32 @map_bars(ptr noundef %peer_direct_mw_to_bar, ptr noundef %16)
  %peer_nr_direct_mw = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 26
  %17 = ptrtoint ptr %peer_nr_direct_mw to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call28, ptr %peer_nr_direct_mw, align 8
  %18 = ptrtoint ptr %mmio_peer_ctrl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio_peer_ctrl, align 4
  %lut_table_entries30 = getelementptr inbounds %struct.ntb_ctrl_regs, ptr %19, i32 0, i32 5
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %lut_table_entries30) #13, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  %peer_nr_lut_mw = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 27
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #13
  %conv32 = zext i16 %21 to i32
  %22 = tail call i32 @llvm.ctlz.i32(i32 %conv32, i1 true) #13, !range !211
  %sub.i.i.op.i111 = xor i32 %22, 31
  %cond58 = shl nuw i32 1, %sub.i.i.op.i111
  %23 = ptrtoint ptr %peer_nr_lut_mw to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cond58, ptr %peer_nr_lut_mw, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switchtec_ntb_init_mw.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@switchtec_ntb_init_mw, %if.then72)) #13
          to label %do.end78 [label %if.then72], !srcloc !212

if.then72:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %stdev73 = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 1
  %24 = ptrtoint ptr %stdev73 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stdev73, align 8
  %dev74 = getelementptr inbounds %struct.switchtec_dev, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %peer_nr_direct_mw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %peer_nr_direct_mw, align 8
  %28 = ptrtoint ptr %peer_nr_lut_mw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %peer_nr_lut_mw, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @switchtec_ntb_init_mw.__UNIQUE_ID_ddebug258, ptr noundef %dev74, ptr noundef nonnull @.str.52, i32 noundef %27, i32 noundef %29) #13
  br label %do.end78

do.end78:                                         ; preds = %if.then72, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @switchtec_ntb_init_req_id_table(ptr nocapture noundef readonly %sndev) unnamed_addr #2 align 64 {
entry:
  %req_ids = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req_ids) #13
  %0 = getelementptr inbounds [2 x i32], ptr %req_ids, i32 0, i32 1
  %1 = ptrtoint ptr %req_ids to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %req_ids, align 4
  %mmio_ntb = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 6
  %2 = ptrtoint ptr %mmio_ntb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_ntb, align 4
  %requester_id = getelementptr inbounds %struct.ntb_info_regs, ptr %3, i32 0, i32 4
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %requester_id) #13, !srcloc !213
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  %conv = zext i16 %5 to i32
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %0, align 4
  %mmio_self_ctrl = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 9
  %7 = ptrtoint ptr %mmio_self_ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio_self_ctrl, align 8
  %call2 = call fastcc i32 @config_req_id_table(ptr noundef %sndev, ptr noundef %8, ptr noundef nonnull %req_ids, i32 noundef 2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req_ids) #13
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @switchtec_ntb_init_crosslink(ptr noundef %sndev) unnamed_addr #2 align 64 {
entry:
  %bar_addrs = alloca [6 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %direct_mw_to_bar = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 25
  %0 = ptrtoint ptr %direct_mw_to_bar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %direct_mw_to_bar, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %bar_addrs) #13
  %2 = getelementptr inbounds [6 x i64], ptr %bar_addrs, i32 0, i32 1
  %mmio_ntb.i = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 6
  %3 = call ptr @memset(ptr %bar_addrs, i32 255, i32 48)
  %4 = ptrtoint ptr %mmio_ntb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio_ntb.i, align 4
  %peer_partition.i = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 3
  %6 = ptrtoint ptr %peer_partition.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %peer_partition.i, align 8
  %arrayidx.i = getelementptr %struct.ntb_info_regs, ptr %5, i32 0, i32 7, i32 %7
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx.i) #13, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %entry
  %stdev = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 1
  %9 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stdev, align 8
  %dev = getelementptr inbounds %struct.switchtec_dev, ptr %10, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.59) #17
  %topo = getelementptr inbounds %struct.ntb_dev, ptr %sndev, i32 0, i32 2
  %11 = ptrtoint ptr %topo to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 5, ptr %topo, align 4
  %call1 = call fastcc i32 @crosslink_enum_partition(ptr noundef %sndev, ptr noundef nonnull %bar_addrs)
  %nr_direct_mw = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 22
  %12 = ptrtoint ptr %nr_direct_mw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_direct_mw, align 4
  %add = add i32 %13, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %add)
  %cmp = icmp slt i32 %call1, %add
  br i1 %cmp, label %do.end5, label %if.end8

do.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stdev, align 8
  %dev7 = getelementptr inbounds %struct.switchtec_dev, ptr %15, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.62) #17
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %16 = ptrtoint ptr %bar_addrs to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %bar_addrs, align 8
  %add11 = add i64 %17, 475136
  %18 = ptrtoint ptr %peer_partition.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %peer_partition.i, align 8
  %mul = shl i32 %19, 14
  %conv = zext i32 %mul to i64
  %add12 = add i64 %add11, %conv
  %20 = trunc i64 %add12 to i32
  %conv13 = and i32 %20, 65535
  %21 = zext i32 %conv13 to i64
  %sub = sub i64 %add12, %21
  %mmio_self_ctrl = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 9
  %22 = ptrtoint ptr %mmio_self_ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio_self_ctrl, align 8
  %call16 = tail call fastcc i32 @config_rsvd_lut_win(ptr noundef %sndev, ptr noundef %23, i32 noundef 1, i32 noundef %19, i64 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %if.end8
  %sub21 = add i32 %call1, -1
  %24 = ptrtoint ptr %mmio_self_ctrl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio_self_ctrl, align 8
  %call.i = tail call fastcc i32 @switchtec_ntb_part_op(ptr noundef %sndev, ptr noundef %25, i32 noundef 1, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end19
  %nr_lut_mw.i = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 23
  %26 = ptrtoint ptr %nr_lut_mw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_lut_mw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp5.i = icmp sgt i32 %27, 0
  br i1 %cmp5.i, label %for.inc.peel.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.inc.peel.i:                                   ; preds = %for.cond.preheader.i
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %2, align 8
  %30 = ptrtoint ptr %peer_partition.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %peer_partition.i, align 8
  %shl.peel.i = shl i32 %31, 1
  %or.peel.i = or i32 %shl.peel.i, 1
  %conv4.peel.i = sext i32 %or.peel.i to i64
  %or5.peel.i = or i64 %29, %conv4.peel.i
  %arrayidx6.peel.i = getelementptr %struct.ntb_ctrl_regs, ptr %25, i32 0, i32 17, i32 0
  %conv.i.peel.i = trunc i64 %or5.peel.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %32 = tail call i32 @llvm.bswap.i32(i32 %conv.i.peel.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx6.peel.i, i32 %32) #13, !srcloc !208
  %shr.i.peel.i = lshr i64 %or5.peel.i, 32
  %conv1.i.peel.i = trunc i64 %shr.i.peel.i to i32
  %add.ptr.i.peel.i = getelementptr i8, ptr %arrayidx6.peel.i, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %33 = tail call i32 @llvm.bswap.i32(i32 %conv1.i.peel.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.peel.i, i32 %33) #13, !srcloc !208
  %34 = ptrtoint ptr %nr_lut_mw.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr_lut_mw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %36 = icmp sgt i32 %35, 2
  br i1 %36, label %for.inc.peel.i.for.inc.i_crit_edge, label %for.inc.peel.i.for.end.i_crit_edge

for.inc.peel.i.for.end.i_crit_edge:               ; preds = %for.inc.peel.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.inc.peel.i.for.inc.i_crit_edge:               ; preds = %for.inc.peel.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.i.for.inc.i_crit_edge, %for.inc.peel.i.for.inc.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.inc.i.for.inc.i_crit_edge ], [ 2, %for.inc.peel.i.for.inc.i_crit_edge ]
  %mul.i = shl i32 %i.06.i, 16
  %conv.i74 = sext i32 %mul.i to i64
  %add.i = add i64 %29, %conv.i74
  %37 = ptrtoint ptr %peer_partition.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %peer_partition.i, align 8
  %shl.i = shl i32 %38, 1
  %or.i = or i32 %shl.i, 1
  %conv4.i = sext i32 %or.i to i64
  %or5.i = or i64 %add.i, %conv4.i
  %arrayidx6.i = getelementptr %struct.ntb_ctrl_regs, ptr %25, i32 0, i32 17, i32 %i.06.i
  %conv.i.i = trunc i64 %or5.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %39 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx6.i, i32 %39) #13, !srcloc !208
  %shr.i.i = lshr i64 %or5.i, 32
  %conv1.i.i = trunc i64 %shr.i.i to i32
  %add.ptr.i.i = getelementptr i8, ptr %arrayidx6.i, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %40 = tail call i32 @llvm.bswap.i32(i32 %conv1.i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %40) #13, !srcloc !208
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %41 = ptrtoint ptr %nr_lut_mw.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr_lut_mw.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %42
  br i1 %cmp.i, label %for.inc.i.for.inc.i_crit_edge, label %for.inc.i.for.end.i_crit_edge, !llvm.loop !217

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.inc.i.for.inc.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.inc.peel.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %43 = ptrtoint ptr %nr_direct_mw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nr_direct_mw, align 4
  %45 = tail call i32 @llvm.smin.i32(i32 %44, i32 %sub21) #13
  %46 = ptrtoint ptr %nr_direct_mw to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %nr_direct_mw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp128.i = icmp sgt i32 %45, 0
  br i1 %cmp128.i, label %for.body14.lr.ph.i, label %for.end.i.for.end84.i_crit_edge

for.end.i.for.end84.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end84.i

for.body14.lr.ph.i:                               ; preds = %for.end.i
  %pdev.i = getelementptr inbounds %struct.ntb_dev, ptr %sndev, i32 0, i32 1
  br label %for.body14.i

for.body14.i:                                     ; preds = %cond.end42.i.for.body14.i_crit_edge, %for.body14.lr.ph.i
  %i.19.i = phi i32 [ 0, %for.body14.lr.ph.i ], [ %inc83.i, %cond.end42.i.for.body14.i_crit_edge ]
  %arrayidx15.i = getelementptr %struct.switchtec_ntb, ptr %sndev, i32 0, i32 25, i32 %i.19.i
  %47 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.19.i)
  %cmp16.i = icmp eq i32 %i.19.i, 0
  br i1 %cmp16.i, label %cond.true18.i, label %for.body14.i.cond.end22.i_crit_edge

for.body14.i.cond.end22.i_crit_edge:              ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end22.i

cond.true18.i:                                    ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %nr_lut_mw.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nr_lut_mw.i, align 8
  %mul20.i = shl i32 %50, 16
  br label %cond.end22.i

cond.end22.i:                                     ; preds = %cond.true18.i, %for.body14.i.cond.end22.i_crit_edge
  %cond23.i = phi i32 [ %mul20.i, %cond.true18.i ], [ 0, %for.body14.i.cond.end22.i_crit_edge ]
  %arrayidx24.i = getelementptr i64, ptr %2, i32 %i.19.i
  %51 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx24.i, align 8
  %conv25.i = zext i32 %cond23.i to i64
  %add26.i = add i64 %52, %conv25.i
  %53 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdev.i, align 8
  %end.i = getelementptr %struct.pci_dev, ptr %54, i32 0, i32 47, i32 %48, i32 1
  %55 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp28.i = icmp eq i32 %56, 0
  br i1 %cmp28.i, label %cond.end22.i.cond.end42.i_crit_edge, label %cond.false31.i

cond.end22.i.cond.end42.i_crit_edge:              ; preds = %cond.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end42.i

cond.false31.i:                                   ; preds = %cond.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx27.i = getelementptr %struct.pci_dev, ptr %54, i32 0, i32 47, i32 %48
  %57 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx27.i, align 8
  %sub.i = add i32 %56, 1
  %add41.i = sub i32 %sub.i, %58
  br label %cond.end42.i

cond.end42.i:                                     ; preds = %cond.false31.i, %cond.end22.i.cond.end42.i_crit_edge
  %cond43.i = phi i32 [ %add41.i, %cond.false31.i ], [ 0, %cond.end22.i.cond.end42.i_crit_edge ]
  %sub44.i = sub i32 %cond43.i, %cond23.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond43.i, i32 %cond23.i)
  %tobool.not.i.i.i = icmp eq i32 %cond43.i, %cond23.i
  %59 = tail call i32 @llvm.ctlz.i32(i32 %sub44.i, i1 true) #13, !range !211
  %sub.i.op.i.i = xor i32 %59, 31
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond23.i)
  %tobool58.not.i = icmp ne i32 %cond23.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub44.i, i32 %cond23.i)
  %cmp59.i = icmp ugt i32 %sub44.i, %cond23.i
  %or.cond.i = select i1 %tobool58.not.i, i1 %cmp59.i, i1 false
  %size.0.i = select i1 %or.cond.i, i32 %cond23.i, i32 %sub44.i
  %arrayidx63.i = getelementptr %struct.ntb_ctrl_regs, ptr %25, i32 0, i32 12, i32 %48
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx63.i) #13, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %61 = or i32 %60, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx63.i, i32 %61) #13, !srcloc !208
  %and70.i = and i32 %size.0.i, -4096
  %or71.i = or i32 %sub.i.i, %and70.i
  %win_size.i = getelementptr %struct.ntb_ctrl_regs, ptr %25, i32 0, i32 12, i32 %48, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %62 = tail call i32 @llvm.bswap.i32(i32 %or71.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %win_size.i, i32 %62) #13, !srcloc !208
  %arrayidx75.i = getelementptr %struct.ntb_ctrl_regs, ptr %25, i32 0, i32 13, i32 %48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx75.i, i32 0) #13, !srcloc !208
  %63 = ptrtoint ptr %peer_partition.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %peer_partition.i, align 8
  %conv78.i = sext i32 %64 to i64
  %or79.i = or i64 %add26.i, %conv78.i
  %xlate_addr.i = getelementptr %struct.ntb_ctrl_regs, ptr %25, i32 0, i32 12, i32 %48, i32 2
  %conv.i1.i = trunc i64 %or79.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %65 = tail call i32 @llvm.bswap.i32(i32 %conv.i1.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %xlate_addr.i, i32 %65) #13, !srcloc !208
  %shr.i2.i = lshr i64 %or79.i, 32
  %conv1.i3.i = trunc i64 %shr.i2.i to i32
  %add.ptr.i4.i = getelementptr i8, ptr %xlate_addr.i, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %66 = tail call i32 @llvm.bswap.i32(i32 %conv1.i3.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %66) #13, !srcloc !208
  %inc83.i = add nuw nsw i32 %i.19.i, 1
  %67 = ptrtoint ptr %nr_direct_mw to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nr_direct_mw, align 4
  %cmp12.i = icmp slt i32 %inc83.i, %68
  br i1 %cmp12.i, label %cond.end42.i.for.body14.i_crit_edge, label %cond.end42.i.for.end84.i_crit_edge

cond.end42.i.for.end84.i_crit_edge:               ; preds = %cond.end42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end84.i

cond.end42.i.for.body14.i_crit_edge:              ; preds = %cond.end42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body14.i

for.end84.i:                                      ; preds = %cond.end42.i.for.end84.i_crit_edge, %for.end.i.for.end84.i_crit_edge
  %call85.i = tail call fastcc i32 @switchtec_ntb_part_op(ptr noundef %sndev, ptr noundef %25, i32 noundef 2, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.i)
  %tobool86.not.i = icmp eq i32 %call85.i, 0
  br i1 %tobool86.not.i, label %if.end25, label %if.then87.i

if.then87.i:                                      ; preds = %for.end84.i
  call void @__sanitizer_cov_trace_pc() #15
  %bar_error88.i = getelementptr inbounds %struct.ntb_ctrl_regs, ptr %25, i32 0, i32 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bar_error88.i) #13, !srcloc !209
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %lut_error90.i = getelementptr inbounds %struct.ntb_ctrl_regs, ptr %25, i32 0, i32 7
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %lut_error90.i) #13, !srcloc !209
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %73 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %stdev, align 8
  %dev.i = getelementptr inbounds %struct.switchtec_dev, ptr %74, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.66, i32 noundef %70, i32 noundef %72) #17
  br label %cleanup

if.end25:                                         ; preds = %for.end84.i
  %mmio_peer_ctrl = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 10
  %75 = ptrtoint ptr %mmio_peer_ctrl to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mmio_peer_ctrl, align 4
  %call26 = tail call fastcc i32 @crosslink_setup_req_ids(ptr noundef %sndev, ptr noundef %76)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %77 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %stdev, align 8
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 8
  %call31 = tail call ptr @pci_iomap_range(ptr noundef %80, i32 noundef %1, i32 noundef 65536, i32 noundef 65536) #13
  %mmio_xlink_win = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 13
  %81 = ptrtoint ptr %mmio_xlink_win to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call31, ptr %mmio_xlink_win, align 8
  %tobool33.not = icmp eq ptr %call31, null
  br i1 %tobool33.not, label %if.end29.cleanup_crit_edge, label %if.end35

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %call31, i32 %conv13
  %mmio_peer_dbmsg = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 12
  %82 = ptrtoint ptr %mmio_peer_dbmsg to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %add.ptr, ptr %mmio_peer_dbmsg, align 4
  %nr_rsvd_luts = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 24
  %83 = ptrtoint ptr %nr_rsvd_luts to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %nr_rsvd_luts, align 4
  %inc = add i32 %84, 1
  store i32 %inc, ptr %nr_rsvd_luts, align 4
  tail call fastcc void @crosslink_init_dbmsgs(ptr noundef %sndev)
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end29.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.then87.i, %if.end19.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end5 ], [ 0, %if.end35 ], [ 0, %entry.cleanup_crit_edge ], [ %call16, %if.end8.cleanup_crit_edge ], [ %call26, %if.end25.cleanup_crit_edge ], [ -12, %if.end29.cleanup_crit_edge ], [ %call.i, %if.end19.cleanup_crit_edge ], [ %call85.i, %if.then87.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %bar_addrs) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @switchtec_ntb_init_db(ptr nocapture noundef %sndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %db_mask = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 17
  %0 = ptrtoint ptr %db_mask to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 1152921504606846975, ptr %db_mask, align 8
  %mmio_peer_dbmsg = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 12
  %1 = ptrtoint ptr %mmio_peer_dbmsg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmio_peer_dbmsg, align 4
  %mmio_self_dbmsg = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 11
  %3 = ptrtoint ptr %mmio_self_dbmsg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio_self_dbmsg, align 8
  %cmp.not = icmp eq ptr %2, %4
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %db_shift = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 19
  %5 = ptrtoint ptr %db_shift to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %db_shift, align 8
  br label %if.end11

if.else:                                          ; preds = %entry
  %self_partition = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 2
  %6 = ptrtoint ptr %self_partition to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %self_partition, align 4
  %peer_partition = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 3
  %8 = ptrtoint ptr %peer_partition to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %peer_partition, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp2 = icmp slt i32 %7, %9
  %db_shift4 = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 19
  br i1 %cmp2, label %if.then3, label %if.else7

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %db_shift4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %db_shift4, align 8
  br label %if.end11

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %db_shift4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 32, ptr %db_shift4, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.else7, %if.then3, %if.then
  %.sink52 = phi i32 [ 32, %if.then3 ], [ 0, %if.else7 ], [ 0, %if.then ]
  %.sink = phi i64 [ 268435455, %if.then3 ], [ 268435455, %if.else7 ], [ 1152921504606846975, %if.then ]
  %db_peer_shift5 = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 20
  %12 = ptrtoint ptr %db_peer_shift5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink52, ptr %db_peer_shift5, align 4
  %db_valid_mask6 = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 18
  %13 = ptrtoint ptr %db_valid_mask6 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %.sink, ptr %db_valid_mask6, align 8
  %idb_mask = getelementptr inbounds %struct.ntb_dbmsg_regs, ptr %4, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %idb_mask, i32 0) #13, !srcloc !208
  %add.ptr.i = getelementptr i8, ptr %idb_mask, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 240) #13, !srcloc !208
  %db_valid_mask14 = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 18
  %14 = ptrtoint ptr %db_valid_mask14 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %db_valid_mask14, align 8
  %db_peer_shift15 = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 20
  %16 = ptrtoint ptr %db_peer_shift15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %db_peer_shift15, align 4
  %sh_prom = zext i32 %17 to i64
  %shl = shl i64 %15, %sh_prom
  %18 = ptrtoint ptr %mmio_peer_dbmsg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio_peer_dbmsg, align 4
  %odb_mask = getelementptr inbounds %struct.ntb_dbmsg_regs, ptr %19, i32 0, i32 2
  %conv.i47 = trunc i64 %shl to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %20 = tail call i32 @llvm.bswap.i32(i32 %conv.i47) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %odb_mask, i32 %20) #13, !srcloc !208
  %shr.i48 = lshr i64 %shl, 32
  %conv1.i49 = trunc i64 %shr.i48 to i32
  %add.ptr.i50 = getelementptr i8, ptr %odb_mask, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %21 = tail call i32 @llvm.bswap.i32(i32 %conv1.i49) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %21) #13, !srcloc !208
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switchtec_ntb_init_db.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@switchtec_ntb_init_db, %if.then19)) #13
          to label %do.end [label %if.then19], !srcloc !212

if.then19:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %stdev = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 1
  %22 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stdev, align 8
  %dev = getelementptr inbounds %struct.switchtec_dev, ptr %23, i32 0, i32 1
  %db_shift20 = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 19
  %24 = ptrtoint ptr %db_shift20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %db_shift20, align 8
  %26 = ptrtoint ptr %db_peer_shift15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %db_peer_shift15, align 4
  %28 = ptrtoint ptr %db_valid_mask14 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %db_valid_mask14, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @switchtec_ntb_init_db.__UNIQUE_ID_ddebug259, ptr noundef %dev, ptr noundef nonnull @.str.69, i32 noundef %25, i32 noundef %27, i64 noundef %29) #13
  br label %do.end

do.end:                                           ; preds = %if.then19, %if.end11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @switchtec_ntb_init_msgs(ptr nocapture noundef readonly %sndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %peer_partition = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 3
  %0 = ptrtoint ptr %peer_partition to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %peer_partition, align 8
  %shl = shl i32 %1, 2
  %or.1 = shl i32 %1, 10
  %shl1.1 = or i32 %or.1, %shl
  %or.2 = shl i32 %1, 18
  %or2.1 = or i32 %or.2, %shl1.1
  %or.3 = shl i32 %1, 26
  %or2.2 = or i32 %or.3, %or2.1
  %or2.3 = or i32 %or2.2, 50462976
  %mmio_self_dbmsg = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 11
  %2 = ptrtoint ptr %mmio_self_dbmsg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_self_dbmsg, align 8
  %msg_map3 = getelementptr inbounds %struct.ntb_dbmsg_regs, ptr %3, i32 0, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %4 = tail call i32 @llvm.bswap.i32(i32 %or2.3) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %msg_map3, i32 %4) #13, !srcloc !208
  %5 = ptrtoint ptr %mmio_self_dbmsg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio_self_dbmsg, align 8
  %arrayidx = getelementptr %struct.ntb_dbmsg_regs, ptr %6, i32 0, i32 9, i32 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 0) #13, !srcloc !208
  %add.ptr.i = getelementptr %struct.ntb_dbmsg_regs, ptr %6, i32 0, i32 9, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16842752) #13, !srcloc !208
  %7 = ptrtoint ptr %mmio_self_dbmsg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio_self_dbmsg, align 8
  %arrayidx.1 = getelementptr %struct.ntb_dbmsg_regs, ptr %8, i32 0, i32 9, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.1, i32 0) #13, !srcloc !208
  %add.ptr.i.1 = getelementptr %struct.ntb_dbmsg_regs, ptr %8, i32 0, i32 9, i32 1, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 16842752) #13, !srcloc !208
  %9 = ptrtoint ptr %mmio_self_dbmsg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio_self_dbmsg, align 8
  %arrayidx.2 = getelementptr %struct.ntb_dbmsg_regs, ptr %10, i32 0, i32 9, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.2, i32 0) #13, !srcloc !208
  %add.ptr.i.2 = getelementptr %struct.ntb_dbmsg_regs, ptr %10, i32 0, i32 9, i32 2, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 16842752) #13, !srcloc !208
  %11 = ptrtoint ptr %mmio_self_dbmsg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio_self_dbmsg, align 8
  %arrayidx.3 = getelementptr %struct.ntb_dbmsg_regs, ptr %12, i32 0, i32 9, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.3, i32 0) #13, !srcloc !208
  %add.ptr.i.3 = getelementptr %struct.ntb_dbmsg_regs, ptr %12, i32 0, i32 9, i32 3, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 16842752) #13, !srcloc !208
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @switchtec_ntb_init_shared_mw(ptr noundef %sndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %direct_mw_to_bar = getelementptr %struct.switchtec_ntb, ptr %sndev, i32 0, i32 25
  %0 = ptrtoint ptr %direct_mw_to_bar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %direct_mw_to_bar, align 8
  %nr_rsvd_luts = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 24
  %2 = ptrtoint ptr %nr_rsvd_luts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_rsvd_luts, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %nr_rsvd_luts, align 4
  %stdev = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 1
  %4 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stdev, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %self_shared_dma = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 16
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 65536, ptr noundef %self_shared_dma, i32 noundef 3264, i32 noundef 0) #13
  %self_shared = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 14
  %8 = ptrtoint ptr %self_shared to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %self_shared, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stdev, align 8
  %dev3 = getelementptr inbounds %struct.switchtec_dev, ptr %10, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.70) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = call ptr @memset(ptr %call.i, i32 0, i32 65536)
  %12 = ptrtoint ptr %self_shared to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %self_shared, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1170997249, ptr %13, align 8
  %15 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stdev, align 8
  %partition.i = getelementptr inbounds %struct.switchtec_dev, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %partition.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %partition.i, align 4
  %19 = load ptr, ptr %self_shared, align 4
  %partition_id.i = getelementptr inbounds %struct.shared_mw, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %partition_id.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %partition_id.i, align 8
  %nr_direct_mw.i = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 22
  %21 = ptrtoint ptr %nr_direct_mw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_direct_mw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp61.i = icmp sgt i32 %22, 0
  br i1 %cmp61.i, label %for.body.lr.ph.i, label %if.end.for.cond23.preheader.i_crit_edge

if.end.for.cond23.preheader.i_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond23.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %nr_lut_mw.i = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 23
  %23 = ptrtoint ptr %direct_mw_to_bar to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %direct_mw_to_bar, align 4
  %25 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stdev, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %end.peel.i = getelementptr %struct.pci_dev, ptr %28, i32 0, i32 47, i32 %24, i32 1
  %29 = ptrtoint ptr %end.peel.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %end.peel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp5.peel.i = icmp eq i32 %30, 0
  br i1 %cmp5.peel.i, label %for.body.lr.ph.i.if.end.peel.i_crit_edge, label %cond.false.peel.i

for.body.lr.ph.i.if.end.peel.i_crit_edge:         ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.peel.i

cond.false.peel.i:                                ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx4.peel.i = getelementptr %struct.pci_dev, ptr %28, i32 0, i32 47, i32 %24
  %31 = ptrtoint ptr %arrayidx4.peel.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx4.peel.i, align 8
  %sub.peel.i = add i32 %30, 1
  %add.peel.i = sub i32 %sub.peel.i, %32
  br label %if.end.peel.i

if.end.peel.i:                                    ; preds = %cond.false.peel.i, %for.body.lr.ph.i.if.end.peel.i_crit_edge
  %cond.peel.i = phi i32 [ %add.peel.i, %cond.false.peel.i ], [ 0, %for.body.lr.ph.i.if.end.peel.i_crit_edge ]
  %33 = ptrtoint ptr %nr_lut_mw.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr_lut_mw.i, align 8
  %mul.peel.i = shl i32 %34, 16
  %35 = tail call i32 @llvm.umin.i32(i32 %cond.peel.i, i32 %mul.peel.i) #13
  %conv.peel.i = zext i32 %35 to i64
  %36 = ptrtoint ptr %self_shared to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %self_shared, align 4
  %arrayidx22.peel.i = getelementptr %struct.shared_mw, ptr %37, i32 0, i32 3, i32 0
  %38 = ptrtoint ptr %arrayidx22.peel.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv.peel.i, ptr %arrayidx22.peel.i, align 8
  %39 = ptrtoint ptr %nr_direct_mw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nr_direct_mw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.peel.i = icmp sgt i32 %40, 1
  br i1 %cmp.peel.i, label %if.end.peel.i.for.body.i_crit_edge, label %if.end.peel.i.for.cond23.preheader.i_crit_edge

if.end.peel.i.for.cond23.preheader.i_crit_edge:   ; preds = %if.end.peel.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond23.preheader.i

if.end.peel.i.for.body.i_crit_edge:               ; preds = %if.end.peel.i
  br label %for.body.i

for.cond23.preheader.i:                           ; preds = %if.end.i.for.cond23.preheader.i_crit_edge, %if.end.peel.i.for.cond23.preheader.i_crit_edge, %if.end.for.cond23.preheader.i_crit_edge
  %nr_lut_mw24.i = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 23
  %41 = ptrtoint ptr %nr_lut_mw24.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr_lut_mw24.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp2563.i = icmp sgt i32 %42, 0
  br i1 %cmp2563.i, label %for.cond23.preheader.i.for.body27.i_crit_edge, label %for.cond23.preheader.i.switchtec_ntb_init_shared.exit_crit_edge

for.cond23.preheader.i.switchtec_ntb_init_shared.exit_crit_edge: ; preds = %for.cond23.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %switchtec_ntb_init_shared.exit

for.cond23.preheader.i.for.body27.i_crit_edge:    ; preds = %for.cond23.preheader.i
  br label %for.body27.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end.peel.i.for.body.i_crit_edge
  %i.062.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 1, %if.end.peel.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.switchtec_ntb, ptr %sndev, i32 0, i32 25, i32 %i.062.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i, align 4
  %45 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %stdev, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %end.i = getelementptr %struct.pci_dev, ptr %48, i32 0, i32 47, i32 %44, i32 1
  %49 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp5.i = icmp eq i32 %50, 0
  br i1 %cmp5.i, label %for.body.i.if.end.i_crit_edge, label %cond.false.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

cond.false.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx4.i = getelementptr %struct.pci_dev, ptr %48, i32 0, i32 47, i32 %44
  %51 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx4.i, align 8
  %sub.i = add i32 %50, 1
  %add.i = sub i32 %sub.i, %52
  br label %if.end.i

if.end.i:                                         ; preds = %cond.false.i, %for.body.i.if.end.i_crit_edge
  %cond.i = phi i32 [ %add.i, %cond.false.i ], [ 0, %for.body.i.if.end.i_crit_edge ]
  %conv.i = zext i32 %cond.i to i64
  %53 = ptrtoint ptr %self_shared to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %self_shared, align 4
  %arrayidx22.i = getelementptr %struct.shared_mw, ptr %54, i32 0, i32 3, i32 %i.062.i
  %55 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv.i, ptr %arrayidx22.i, align 8
  %inc.i = add nuw nsw i32 %i.062.i, 1
  %56 = ptrtoint ptr %nr_direct_mw.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nr_direct_mw.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %57
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.cond23.preheader.i_crit_edge, !llvm.loop !219

if.end.i.for.cond23.preheader.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond23.preheader.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body27.i:                                     ; preds = %for.body27.i.for.body27.i_crit_edge, %for.cond23.preheader.i.for.body27.i_crit_edge
  %i.164.i = phi i32 [ %inc34.i, %for.body27.i.for.body27.i_crit_edge ], [ 0, %for.cond23.preheader.i.for.body27.i_crit_edge ]
  %58 = ptrtoint ptr %nr_direct_mw.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nr_direct_mw.i, align 4
  %add29.i = add i32 %59, %i.164.i
  %60 = ptrtoint ptr %self_shared to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %self_shared, align 4
  %arrayidx32.i = getelementptr %struct.shared_mw, ptr %61, i32 0, i32 3, i32 %add29.i
  %62 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 65536, ptr %arrayidx32.i, align 8
  %inc34.i = add nuw nsw i32 %i.164.i, 1
  %63 = ptrtoint ptr %nr_lut_mw24.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nr_lut_mw24.i, align 8
  %cmp25.i = icmp slt i32 %inc34.i, %64
  br i1 %cmp25.i, label %for.body27.i.for.body27.i_crit_edge, label %for.body27.i.switchtec_ntb_init_shared.exit_crit_edge

for.body27.i.switchtec_ntb_init_shared.exit_crit_edge: ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %switchtec_ntb_init_shared.exit

for.body27.i.for.body27.i_crit_edge:              ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body27.i

switchtec_ntb_init_shared.exit:                   ; preds = %for.body27.i.switchtec_ntb_init_shared.exit_crit_edge, %for.cond23.preheader.i.switchtec_ntb_init_shared.exit_crit_edge
  %mmio_peer_ctrl = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 10
  %65 = ptrtoint ptr %mmio_peer_ctrl to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmio_peer_ctrl, align 4
  %self_partition = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 2
  %67 = ptrtoint ptr %self_partition to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %self_partition, align 4
  %69 = ptrtoint ptr %self_shared_dma to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %self_shared_dma, align 4
  %conv = zext i32 %70 to i64
  %call5 = tail call fastcc i32 @config_rsvd_lut_win(ptr noundef %sndev, ptr noundef %66, i32 noundef 0, i32 noundef %68, i64 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %switchtec_ntb_init_shared.exit.unalloc_and_exit_crit_edge

switchtec_ntb_init_shared.exit.unalloc_and_exit_crit_edge: ; preds = %switchtec_ntb_init_shared.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %unalloc_and_exit

if.end8:                                          ; preds = %switchtec_ntb_init_shared.exit
  %71 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %stdev, align 8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 8
  %call11 = tail call ptr @pci_iomap(ptr noundef %74, i32 noundef %1, i32 noundef 65536) #13
  %peer_shared = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 15
  %75 = ptrtoint ptr %peer_shared to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call11, ptr %peer_shared, align 8
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %if.end8.unalloc_and_exit_crit_edge, label %do.body16

if.end8.unalloc_and_exit_crit_edge:               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %unalloc_and_exit

do.body16:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switchtec_ntb_init_shared_mw.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@switchtec_ntb_init_shared_mw, %if.then21)) #13
          to label %cleanup [label %if.then21], !srcloc !212

if.then21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #15
  %76 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %stdev, align 8
  %dev23 = getelementptr inbounds %struct.switchtec_dev, ptr %77, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @switchtec_ntb_init_shared_mw.__UNIQUE_ID_ddebug262, ptr noundef %dev23, ptr noundef nonnull @.str.72) #13
  br label %cleanup

unalloc_and_exit:                                 ; preds = %if.end8.unalloc_and_exit_crit_edge, %switchtec_ntb_init_shared.exit.unalloc_and_exit_crit_edge
  %rc.0 = phi i32 [ %call5, %switchtec_ntb_init_shared.exit.unalloc_and_exit_crit_edge ], [ -12, %if.end8.unalloc_and_exit_crit_edge ]
  %78 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %stdev, align 8
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 8
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44
  %82 = ptrtoint ptr %self_shared to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %self_shared, align 4
  %84 = ptrtoint ptr %self_shared_dma to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %self_shared_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev29, i32 noundef 65536, ptr noundef %83, i32 noundef %85, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %unalloc_and_exit, %if.then21, %do.body16, %do.end
  %retval.0 = phi i32 [ %rc.0, %unalloc_and_exit ], [ -12, %do.end ], [ 0, %if.then21 ], [ 0, %do.body16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @switchtec_ntb_init_db_msg_irq(ptr noundef %sndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %stdev = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 1
  %0 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stdev, align 8
  %mmio_part_cfg = getelementptr inbounds %struct.switchtec_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %mmio_part_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_part_cfg, align 8
  %vep_vector_number = getelementptr inbounds %struct.part_cfg_regs, ptr %3, i32 0, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vep_vector_number) #13, !srcloc !209
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %doorbell_irq.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %cmp = icmp eq i32 %doorbell_irq.0, %5
  %inc = add i32 %doorbell_irq.0, 1
  br i1 %cmp, label %while.cond.while.cond_crit_edge, label %while.cond.while.cond1_crit_edge

while.cond.while.cond1_crit_edge:                 ; preds = %while.cond
  br label %while.cond1

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

while.cond1:                                      ; preds = %while.cond1.while.cond1_crit_edge, %while.cond.while.cond1_crit_edge
  %message_irq.0 = phi i32 [ %inc5, %while.cond1.while.cond1_crit_edge ], [ 0, %while.cond.while.cond1_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %message_irq.0, i32 %doorbell_irq.0)
  %cmp2 = icmp eq i32 %message_irq.0, %doorbell_irq.0
  call void @__sanitizer_cov_trace_cmp4(i32 %message_irq.0, i32 %5)
  %cmp3 = icmp eq i32 %message_irq.0, %5
  %or.cond = select i1 %cmp2, i1 true, i1 %cmp3
  %inc5 = add i32 %message_irq.0, 1
  br i1 %or.cond, label %while.cond1.while.cond1_crit_edge, label %do.body

while.cond1.while.cond1_crit_edge:                ; preds = %while.cond1
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond1

do.body:                                          ; preds = %while.cond1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switchtec_ntb_init_db_msg_irq.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@switchtec_ntb_init_db_msg_irq, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !212

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stdev, align 8
  %dev = getelementptr inbounds %struct.switchtec_dev, ptr %7, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @switchtec_ntb_init_db_msg_irq.__UNIQUE_ID_ddebug265, ptr noundef %dev, ptr noundef nonnull @.str.74, i32 noundef %5, i32 noundef %doorbell_irq.0, i32 noundef %message_irq.0) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %conv = trunc i32 %doorbell_irq.0 to i8
  %mmio_self_dbmsg = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end
  %i.084 = phi i32 [ 0, %do.end ], [ %inc12, %for.body.for.body_crit_edge ]
  %8 = ptrtoint ptr %mmio_self_dbmsg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio_self_dbmsg, align 8
  %arrayidx = getelementptr %struct.ntb_dbmsg_regs, ptr %9, i32 0, i32 5, i32 %i.084
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !221
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx, i8 %conv) #13, !srcloc !222
  %inc12 = add nuw nsw i32 %i.084, 1
  %exitcond.not = icmp eq i32 %inc12, 60
  br i1 %exitcond.not, label %for.end23, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end23:                                        ; preds = %for.body
  %conv17 = trunc i32 %message_irq.0 to i8
  %10 = ptrtoint ptr %mmio_self_dbmsg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio_self_dbmsg, align 8
  %arrayidx20 = getelementptr %struct.ntb_dbmsg_regs, ptr %11, i32 0, i32 5, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !221
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx20, i8 %conv17) #13, !srcloc !222
  %12 = ptrtoint ptr %mmio_self_dbmsg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio_self_dbmsg, align 8
  %arrayidx20.1 = getelementptr %struct.ntb_dbmsg_regs, ptr %13, i32 0, i32 5, i32 61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !221
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx20.1, i8 %conv17) #13, !srcloc !222
  %14 = ptrtoint ptr %mmio_self_dbmsg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio_self_dbmsg, align 8
  %arrayidx20.2 = getelementptr %struct.ntb_dbmsg_regs, ptr %15, i32 0, i32 5, i32 62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !221
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx20.2, i8 %conv17) #13, !srcloc !222
  %16 = ptrtoint ptr %mmio_self_dbmsg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio_self_dbmsg, align 8
  %arrayidx20.3 = getelementptr %struct.ntb_dbmsg_regs, ptr %17, i32 0, i32 5, i32 63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !221
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx20.3, i8 %conv17) #13, !srcloc !222
  %18 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stdev, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %call25 = tail call i32 @pci_irq_vector(ptr noundef %21, i32 noundef %doorbell_irq.0) #13
  %doorbell_irq26 = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 4
  %22 = ptrtoint ptr %doorbell_irq26 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call25, ptr %doorbell_irq26, align 4
  %23 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stdev, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %call29 = tail call i32 @pci_irq_vector(ptr noundef %26, i32 noundef %message_irq.0) #13
  %message_irq30 = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 5
  %27 = ptrtoint ptr %message_irq30 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call29, ptr %message_irq30, align 8
  %28 = ptrtoint ptr %doorbell_irq26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %doorbell_irq26, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %29, ptr noundef nonnull @switchtec_ntb_doorbell_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.75, ptr noundef %sndev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool33.not = icmp eq i32 %call.i, 0
  br i1 %tobool33.not, label %if.end35, label %for.end23.cleanup_crit_edge

for.end23.cleanup_crit_edge:                      ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end35:                                         ; preds = %for.end23
  %30 = ptrtoint ptr %message_irq30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %message_irq30, align 8
  %call.i82 = tail call i32 @request_threaded_irq(i32 noundef %31, ptr noundef nonnull @switchtec_ntb_message_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.76, ptr noundef %sndev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %tobool38.not = icmp eq i32 %call.i82, 0
  br i1 %tobool38.not, label %if.end35.cleanup_crit_edge, label %if.then39

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %doorbell_irq26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %doorbell_irq26, align 4
  %call41 = tail call ptr @free_irq(i32 noundef %33, ptr noundef %sndev) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.end35.cleanup_crit_edge, %for.end23.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i82, %if.then39 ], [ %call.i, %for.end23.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntb_register_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @switchtec_ntb_link_notification(ptr nocapture noundef readonly %stdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sndev1 = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 28
  %0 = ptrtoint ptr %sndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sndev1, align 8
  %check_link_status_work.i = getelementptr inbounds %struct.switchtec_ntb, ptr %1, i32 0, i32 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %check_link_status_work.i) #13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @switchtec_ntb_deinit_db_msg_irq(ptr noundef %sndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %doorbell_irq = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 4
  %0 = ptrtoint ptr %doorbell_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %doorbell_irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %1, ptr noundef %sndev) #13
  %message_irq = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 5
  %2 = ptrtoint ptr %message_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %message_irq, align 8
  %call1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %sndev) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @switchtec_ntb_deinit_shared_mw(ptr nocapture noundef %sndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %peer_shared = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 15
  %0 = ptrtoint ptr %peer_shared to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer_shared, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %stdev = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 1
  %2 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stdev, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void @pci_iounmap(ptr noundef %5, ptr noundef nonnull %1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %self_shared = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 14
  %6 = ptrtoint ptr %self_shared to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %self_shared, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %stdev4 = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 1
  %8 = ptrtoint ptr %stdev4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stdev4, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %self_shared_dma = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 16
  %12 = ptrtoint ptr %self_shared_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %self_shared_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 65536, ptr noundef nonnull %7, i32 noundef %13, i32 noundef 0) #13
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %nr_rsvd_luts = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 24
  %14 = ptrtoint ptr %nr_rsvd_luts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_rsvd_luts, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %nr_rsvd_luts, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @check_link_status_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1268
  %link_force_down = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %link_force_down to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %link_force_down, align 8, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %link_force_down to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %link_force_down, align 8
  %mmio_ntb.i.i = getelementptr i8, ptr %work, i32 -192
  %3 = ptrtoint ptr %mmio_ntb.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio_ntb.i.i, align 4
  %peer_partition.i.i = getelementptr i8, ptr %work, i32 -204
  %5 = ptrtoint ptr %peer_partition.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %peer_partition.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.ntb_info_regs, ptr %4, i32 0, i32 7, i32 %6
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx.i.i) #13, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.then.switchtec_ntb_reinit_peer.exit_crit_edge

if.then.switchtec_ntb_reinit_peer.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %switchtec_ntb_reinit_peer.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %stdev.i = getelementptr i8, ptr %work, i32 -212
  %8 = ptrtoint ptr %stdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stdev.i, align 8
  %dev.i = getelementptr inbounds %struct.switchtec_dev, ptr %9, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.46) #17
  %mmio_peer_ctrl.i = getelementptr i8, ptr %work, i32 -176
  %10 = ptrtoint ptr %mmio_peer_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio_peer_ctrl.i, align 4
  %self_partition.i = getelementptr i8, ptr %work, i32 -208
  %12 = ptrtoint ptr %self_partition.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %self_partition.i, align 4
  %self_shared_dma.i = getelementptr i8, ptr %work, i32 -152
  %14 = ptrtoint ptr %self_shared_dma.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %self_shared_dma.i, align 4
  %conv.i = zext i32 %15 to i64
  %call1.i = tail call fastcc i32 @config_rsvd_lut_win(ptr noundef %add.ptr, ptr noundef %11, i32 noundef 0, i32 noundef %13, i64 noundef %conv.i) #13
  br label %switchtec_ntb_reinit_peer.exit

switchtec_ntb_reinit_peer.exit:                   ; preds = %do.end.i, %if.then.switchtec_ntb_reinit_peer.exit_crit_edge
  %link_is_up = getelementptr i8, ptr %work, i32 -12
  %16 = ptrtoint ptr %link_is_up to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %link_is_up, align 8, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool2.not = icmp eq i8 %17, 0
  br i1 %tobool2.not, label %switchtec_ntb_reinit_peer.exit.cleanup_crit_edge, label %if.then3

switchtec_ntb_reinit_peer.exit.cleanup_crit_edge: ; preds = %switchtec_ntb_reinit_peer.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3:                                         ; preds = %switchtec_ntb_reinit_peer.exit
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %link_is_up to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %link_is_up, align 8
  tail call void @ntb_link_event(ptr noundef %add.ptr) #13
  %stdev = getelementptr i8, ptr %work, i32 -212
  %19 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %stdev, align 8
  %dev = getelementptr inbounds %struct.switchtec_dev, ptr %20, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.44) #17
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @switchtec_ntb_link_status_update(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %switchtec_ntb_reinit_peer.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @switchtec_ntb_link_is_up(ptr nocapture noundef readonly %ntb, ptr noundef writeonly %speed, ptr noundef writeonly %width) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %speed, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %link_speed = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 30
  %0 = ptrtoint ptr %link_speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link_speed, align 4
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %speed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool1.not = icmp eq ptr %width, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %link_width = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 31
  %3 = ptrtoint ptr %link_width to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %link_width, align 8
  %5 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %width, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %link_is_up = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 29
  %6 = ptrtoint ptr %link_is_up to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %link_is_up, align 8, !range !223
  %8 = zext i8 %7 to i64
  ret i64 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @switchtec_ntb_link_enable(ptr noundef %ntb, i32 noundef %max_speed, i32 noundef %max_width) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switchtec_ntb_link_enable.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@switchtec_ntb_link_enable, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !212

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %stdev = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 1
  %0 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stdev, align 8
  %dev = getelementptr inbounds %struct.switchtec_dev, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @switchtec_ntb_link_enable.__UNIQUE_ID_ddebug250, ptr noundef %dev, ptr noundef nonnull @.str.26) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %self_shared = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 14
  %2 = ptrtoint ptr %self_shared to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %self_shared, align 4
  %link_sta = getelementptr inbounds %struct.shared_mw, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %link_sta to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %link_sta, align 4
  %mmio_peer_dbmsg.i = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 12
  %5 = ptrtoint ptr %mmio_peer_dbmsg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio_peer_dbmsg.i, align 4
  %omsg.i = getelementptr inbounds %struct.ntb_dbmsg_regs, ptr %6, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %omsg.i, i32 16777216) #13, !srcloc !208
  tail call fastcc void @switchtec_ntb_link_status_update(ptr noundef %ntb)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @switchtec_ntb_link_disable(ptr noundef %ntb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switchtec_ntb_link_disable.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@switchtec_ntb_link_disable, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !212

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %stdev = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 1
  %0 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stdev, align 8
  %dev = getelementptr inbounds %struct.switchtec_dev, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @switchtec_ntb_link_disable.__UNIQUE_ID_ddebug251, ptr noundef %dev, ptr noundef nonnull @.str.32) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %self_shared = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 14
  %2 = ptrtoint ptr %self_shared to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %self_shared, align 4
  %link_sta = getelementptr inbounds %struct.shared_mw, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %link_sta to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %link_sta, align 4
  %mmio_peer_dbmsg.i = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 12
  %5 = ptrtoint ptr %mmio_peer_dbmsg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio_peer_dbmsg.i, align 4
  %omsg.i = getelementptr inbounds %struct.ntb_dbmsg_regs, ptr %6, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %omsg.i, i32 33554432) #13, !srcloc !208
  tail call fastcc void @switchtec_ntb_link_status_update(ptr noundef %ntb)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @switchtec_ntb_mw_count(ptr nocapture noundef readonly %ntb, i32 noundef %pidx) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pidx)
  %cmp.not = icmp eq i32 %pidx, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %peer_nr_direct_mw = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 26
  %0 = ptrtoint ptr %peer_nr_direct_mw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %peer_nr_direct_mw, align 8
  %peer_nr_lut_mw = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 27
  %2 = ptrtoint ptr %peer_nr_lut_mw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %peer_nr_lut_mw, align 4
  %nr_rsvd_luts = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 24
  %4 = ptrtoint ptr %nr_rsvd_luts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_rsvd_luts, align 4
  %sub = sub i32 %3, %5
  %6 = load i8, ptr @use_lut_mws, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %sub
  %add = add i32 %spec.select, %1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @switchtec_ntb_mw_get_align(ptr nocapture noundef readonly %ntb, i32 noundef %pidx, i32 noundef %widx, ptr noundef writeonly %addr_align, ptr noundef writeonly %size_align, ptr noundef writeonly %size_max) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pidx)
  %cmp.not = icmp eq i32 %pidx, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %peer_nr_direct_mw = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 26
  %0 = ptrtoint ptr %peer_nr_direct_mw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %peer_nr_direct_mw, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %widx)
  %cmp1.not = icmp sgt i32 %1, %widx
  %peer_shared = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 15
  %2 = ptrtoint ptr %peer_shared to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %peer_shared, align 8
  %arrayidx = getelementptr %struct.shared_mw, ptr %3, i32 0, i32 3, i32 %widx
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #13, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %add.ptr.i = getelementptr i8, ptr %arrayidx, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %6 = call i32 @llvm.bswap.i32(i32 %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %tobool.not = icmp eq ptr %addr_align, null
  br i1 %tobool.not, label %if.end7.if.end10_crit_edge, label %if.then8

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %spec.select = select i1 %cmp1.not, i32 4096, i32 %6
  %7 = ptrtoint ptr %addr_align to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.select, ptr %addr_align, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end7.if.end10_crit_edge
  %tobool11.not = icmp eq ptr %size_align, null
  br i1 %tobool11.not, label %if.end10.if.end18_crit_edge, label %if.then12

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %spec.select33 = select i1 %cmp1.not, i32 4096, i32 %6
  %8 = ptrtoint ptr %size_align to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select33, ptr %size_align, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.end10.if.end18_crit_edge
  %tobool19.not = icmp eq ptr %size_max, null
  br i1 %tobool19.not, label %if.end18.cleanup_crit_edge, label %if.then20

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %size_max to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %size_max, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then20 ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @switchtec_ntb_mw_set_trans(ptr nocapture noundef readonly %ntb, i32 noundef %pidx, i32 noundef %widx, i32 noundef %addr, i32 noundef %size) #2 align 64 {
entry:
  %addr.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %addr, ptr %addr.addr, align 4
  %1 = ptrtoint ptr %size.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %size, ptr %size.addr, align 4
  %mmio_peer_ctrl = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 10
  %2 = ptrtoint ptr %mmio_peer_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_peer_ctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not.i.i = icmp eq i32 %size, 0
  %4 = tail call i32 @llvm.ctlz.i32(i32 %size, i1 true) #13, !range !211
  %sub.i.op.i = xor i32 %4, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  %peer_nr_direct_mw = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 26
  %5 = ptrtoint ptr %peer_nr_direct_mw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %peer_nr_direct_mw, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pidx)
  %cmp6.not = icmp eq i32 %pidx, 0
  br i1 %cmp6.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switchtec_ntb_mw_set_trans.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@switchtec_ntb_mw_set_trans, %if.then11)) #13
          to label %do.end [label %if.then11], !srcloc !212

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %stdev = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 1
  %7 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stdev, align 8
  %dev = getelementptr inbounds %struct.switchtec_dev, ptr %8, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @switchtec_ntb_mw_set_trans.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %widx, i32 noundef 0, ptr noundef nonnull %addr.addr, ptr noundef nonnull %size.addr) #13
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %9 = ptrtoint ptr %peer_nr_direct_mw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %peer_nr_direct_mw, align 8
  %peer_nr_lut_mw.i = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 27
  %11 = ptrtoint ptr %peer_nr_lut_mw.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %peer_nr_lut_mw.i, align 4
  %nr_rsvd_luts.i = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 24
  %13 = ptrtoint ptr %nr_rsvd_luts.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_rsvd_luts.i, align 4
  %sub.i111 = sub i32 %12, %14
  %15 = load i8, ptr @use_lut_mws, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %sub.i111
  %add.i = add i32 %spec.select.i, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %widx)
  %cmp14.not = icmp sgt i32 %add.i, %widx
  br i1 %cmp14.not, label %if.end17, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end17:                                         ; preds = %do.end
  %16 = ptrtoint ptr %size.addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp18.not = icmp ne i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i)
  %cmp20 = icmp slt i32 %sub.i, 12
  %or.cond = select i1 %cmp18.not, i1 %cmp20, i1 false
  br i1 %or.cond, label %if.end17.cleanup_crit_edge, label %if.end23

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  %18 = ptrtoint ptr %addr.addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.addr, align 4
  %sh_prom = zext i32 %sub.i to i64
  %shl = shl nuw i64 1, %sh_prom
  %conv24 = trunc i64 %shl to i32
  %sub25 = add i32 %conv24, -1
  %and = and i32 %19, %sub25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp26 = icmp eq i32 %and, 0
  br i1 %cmp26, label %if.end34, label %do.end31

do.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %stdev32 = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 1
  %20 = ptrtoint ptr %stdev32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stdev32, align 8
  %dev33 = getelementptr inbounds %struct.switchtec_dev, ptr %21, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.35) #17
  br label %cleanup

if.end34:                                         ; preds = %if.end23
  %call35 = call fastcc i32 @switchtec_ntb_part_op(ptr noundef %ntb, ptr noundef %3, i32 noundef 1, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %22 = ptrtoint ptr %size.addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp39 = icmp eq i32 %23, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %widx)
  %cmp42 = icmp sgt i32 %6, %widx
  br i1 %cmp39, label %if.then41, label %if.else46

if.then41:                                        ; preds = %if.end38
  br i1 %cmp42, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @switchtec_ntb_mw_clr_direct(ptr noundef %ntb, i32 noundef %widx)
  br label %if.end52

if.else:                                          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @switchtec_ntb_mw_clr_lut(ptr noundef %ntb, i32 noundef %widx)
  br label %if.end52

if.else46:                                        ; preds = %if.end38
  %24 = ptrtoint ptr %addr.addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.addr, align 4
  br i1 %cmp42, label %if.then49, label %if.else50

if.then49:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @switchtec_ntb_mw_set_direct(ptr noundef %ntb, i32 noundef %widx, i32 noundef %25, i32 noundef %23)
  br label %if.end52

if.else50:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @switchtec_ntb_mw_set_lut(ptr noundef %ntb, i32 noundef %widx, i32 noundef %25)
  br label %if.end52

if.end52:                                         ; preds = %if.else50, %if.then49, %if.else, %if.then44
  %call53 = call fastcc i32 @switchtec_ntb_part_op(ptr noundef %ntb, ptr noundef %3, i32 noundef 2, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call53)
  %cmp54 = icmp eq i32 %call53, -5
  br i1 %cmp54, label %do.end59, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end59:                                         ; preds = %if.end52
  %stdev60 = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 1
  %26 = ptrtoint ptr %stdev60 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stdev60, align 8
  %dev61 = getelementptr inbounds %struct.switchtec_dev, ptr %27, i32 0, i32 1
  %bar_error = getelementptr inbounds %struct.ntb_ctrl_regs, ptr %3, i32 0, i32 4
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bar_error) #13, !srcloc !209
  %29 = call i32 @llvm.bswap.i32(i32 %28) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev61, ptr noundef nonnull @.str.37, i32 noundef %widx, i32 noundef %29) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %widx)
  %cmp63 = icmp sgt i32 %6, %widx
  br i1 %cmp63, label %if.then65, label %if.else66

if.then65:                                        ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @switchtec_ntb_mw_clr_direct(ptr noundef %ntb, i32 noundef %widx)
  br label %if.end67

if.else66:                                        ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @switchtec_ntb_mw_clr_lut(ptr noundef %ntb, i32 noundef %widx)
  br label %if.end67

if.end67:                                         ; preds = %if.else66, %if.then65
  %call68 = call fastcc i32 @switchtec_ntb_part_op(ptr noundef %ntb, ptr noundef %3, i32 noundef 2, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.end52.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %do.end31, %if.end17.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end31 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ %call35, %if.end34.cleanup_crit_edge ], [ -5, %if.end67 ], [ %call53, %if.end52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @switchtec_ntb_peer_mw_count(ptr nocapture noundef readonly %ntb) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_direct_mw = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 22
  %0 = ptrtoint ptr %nr_direct_mw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_direct_mw, align 4
  %2 = load i8, ptr @use_lut_mws, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %nr_lut_mw1 = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 23
  %3 = ptrtoint ptr %nr_lut_mw1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_lut_mw1, align 8
  %nr_rsvd_luts = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 24
  %5 = ptrtoint ptr %nr_rsvd_luts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_rsvd_luts, align 4
  %sub = sub i32 %4, %6
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %add = add i32 %cond, %1
  ret i32 %add
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @switchtec_ntb_peer_mw_get_addr(ptr nocapture noundef readonly %ntb, i32 noundef %idx, ptr noundef writeonly %base, ptr noundef writeonly %size) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_direct_mw = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 22
  %0 = ptrtoint ptr %nr_direct_mw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_direct_mw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %idx)
  %cmp = icmp sgt i32 %1, %idx
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx.i = getelementptr %struct.switchtec_ntb, ptr %ntb, i32 0, i32 25, i32 %idx
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp slt i32 %3, 0
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %cmp1.i = icmp eq i32 %idx, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %nr_lut_mw.i = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 23
  %4 = ptrtoint ptr %nr_lut_mw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_lut_mw.i, align 8
  %mul.i = shl i32 %5, 16
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %offset.0.i = phi i32 [ %mul.i, %if.then2.i ], [ 0, %if.end.i.if.end3.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %base, null
  br i1 %tobool.not.i, label %if.end3.i.if.end6.i_crit_edge, label %if.then4.i

if.end3.i.if.end6.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  %pdev.i = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 1
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 8
  %arrayidx5.i = getelementptr %struct.pci_dev, ptr %7, i32 0, i32 47, i32 %3
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5.i, align 8
  %add.i = add i32 %9, %offset.0.i
  %10 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add.i, ptr %base, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end3.i.if.end6.i_crit_edge
  %tobool7.not.i = icmp eq ptr %size, null
  br i1 %tobool7.not.i, label %if.end6.i.cleanup_crit_edge, label %if.then8.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then8.i:                                       ; preds = %if.end6.i
  %pdev10.i = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 1
  %11 = ptrtoint ptr %pdev10.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev10.i, align 8
  %end.i = getelementptr %struct.pci_dev, ptr %12, i32 0, i32 47, i32 %3, i32 1
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp13.i = icmp eq i32 %14, 0
  br i1 %cmp13.i, label %if.then8.i.cond.end.i_crit_edge, label %cond.false.i

if.then8.i.cond.end.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx12.i = getelementptr %struct.pci_dev, ptr %12, i32 0, i32 47, i32 %3
  %15 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx12.i, align 8
  %sub.i = add i32 %14, 1
  %add24.i = sub i32 %sub.i, %16
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then8.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %add24.i, %cond.false.i ], [ 0, %if.then8.i.cond.end.i_crit_edge ]
  %sub25.i = sub i32 %cond.i, %offset.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.0.i)
  %tobool26.not.i = icmp ne i32 %offset.0.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub25.i, i32 %offset.0.i)
  %cmp27.i = icmp ugt i32 %sub25.i, %offset.0.i
  %or.cond.i = select i1 %tobool26.not.i, i1 %cmp27.i, i1 false
  %spec.store.select.i = select i1 %or.cond.i, i32 %offset.0.i, i32 %sub25.i
  %17 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.store.select.i, ptr %size, align 4
  %18 = load i32, ptr @max_mw_size, align 4
  %19 = tail call i32 @llvm.umin.i32(i32 %spec.store.select.i, i32 %18) #13
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  %20 = load i8, ptr @use_lut_mws, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i15 = icmp eq i8 %20, 0
  br i1 %tobool.not.i15, label %if.else.switchtec_ntb_peer_mw_count.exit_crit_edge, label %cond.true.i

if.else.switchtec_ntb_peer_mw_count.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %switchtec_ntb_peer_mw_count.exit

cond.true.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %nr_lut_mw1.i = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 23
  %21 = ptrtoint ptr %nr_lut_mw1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_lut_mw1.i, align 8
  %nr_rsvd_luts.i = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 24
  %23 = ptrtoint ptr %nr_rsvd_luts.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_rsvd_luts.i, align 4
  %sub.i16 = sub i32 %22, %24
  br label %switchtec_ntb_peer_mw_count.exit

switchtec_ntb_peer_mw_count.exit:                 ; preds = %cond.true.i, %if.else.switchtec_ntb_peer_mw_count.exit_crit_edge
  %cond.i17 = phi i32 [ %sub.i16, %cond.true.i ], [ 0, %if.else.switchtec_ntb_peer_mw_count.exit_crit_edge ]
  %add.i18 = add i32 %cond.i17, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i18, i32 %idx)
  %cmp3 = icmp sgt i32 %add.i18, %idx
  br i1 %cmp3, label %if.then4, label %switchtec_ntb_peer_mw_count.exit.cleanup_crit_edge

switchtec_ntb_peer_mw_count.exit.cleanup_crit_edge: ; preds = %switchtec_ntb_peer_mw_count.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then4:                                         ; preds = %switchtec_ntb_peer_mw_count.exit
  %tobool.not.i20 = icmp eq ptr %base, null
  br i1 %tobool.not.i20, label %if.then4.if.end.i24_crit_edge, label %if.then.i

if.then4.if.end.i24_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i24

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = sub i32 %idx, %1
  %nr_rsvd_luts.i.i = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 24
  %25 = ptrtoint ptr %nr_rsvd_luts.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_rsvd_luts.i.i, align 4
  %add.i.i = add i32 %sub.i.i, %26
  %direct_mw_to_bar.i = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 25
  %27 = ptrtoint ptr %direct_mw_to_bar.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %direct_mw_to_bar.i, align 8
  %mul.i21 = shl i32 %add.i.i, 16
  %pdev.i22 = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 1
  %29 = ptrtoint ptr %pdev.i22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev.i22, align 8
  %arrayidx1.i = getelementptr %struct.pci_dev, ptr %30, i32 0, i32 47, i32 %28
  %31 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx1.i, align 8
  %add.i23 = add i32 %32, %mul.i21
  %33 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add.i23, ptr %base, align 4
  br label %if.end.i24

if.end.i24:                                       ; preds = %if.then.i, %if.then4.if.end.i24_crit_edge
  %tobool2.not.i = icmp eq ptr %size, null
  br i1 %tobool2.not.i, label %if.end.i24.cleanup_crit_edge, label %if.end.i24.cleanup.sink.split_crit_edge

if.end.i24.cleanup.sink.split_crit_edge:          ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end.i24.cleanup_crit_edge:                     ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.i24.cleanup.sink.split_crit_edge, %cond.end.i
  %.sink = phi i32 [ %19, %cond.end.i ], [ 65536, %if.end.i24.cleanup.sink.split_crit_edge ]
  %34 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink, ptr %size, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i24.cleanup_crit_edge, %switchtec_ntb_peer_mw_count.exit.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %switchtec_ntb_peer_mw_count.exit.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ 0, %if.end6.i.cleanup_crit_edge ], [ 0, %if.end.i24.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @switchtec_ntb_db_valid_mask(ptr nocapture noundef readonly %ntb) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %db_valid_mask = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 18
  %0 = ptrtoint ptr %db_valid_mask to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %db_valid_mask, align 8
  ret i64 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @switchtec_ntb_db_vector_count(ptr nocapture noundef readnone %ntb) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @switchtec_ntb_db_vector_mask(ptr nocapture noundef readonly %ntb, i32 noundef %db_vector) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %db_vector)
  %0 = icmp ugt i32 %db_vector, 1
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %db_valid_mask = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 18
  %1 = ptrtoint ptr %db_valid_mask to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %db_valid_mask, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %2, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @switchtec_ntb_db_read(ptr nocapture noundef readonly %ntb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_self_dbmsg = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 11
  %0 = ptrtoint ptr %mmio_self_dbmsg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_self_dbmsg, align 8
  %idb = getelementptr inbounds %struct.ntb_dbmsg_regs, ptr %1, i32 0, i32 3
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %idb) #13, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %add.ptr.i = getelementptr i8, ptr %idb, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %4 = zext i32 %3 to i64
  %5 = zext i32 %2 to i64
  %6 = shl nuw i64 %5, 32
  %7 = or i64 %6, %4
  %8 = tail call i64 @llvm.bswap.i64(i64 %7) #13
  %db_shift = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 19
  %9 = ptrtoint ptr %db_shift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %db_shift, align 8
  %sh_prom = zext i32 %10 to i64
  %shr = lshr i64 %8, %sh_prom
  %db_valid_mask = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 18
  %11 = ptrtoint ptr %db_valid_mask to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %db_valid_mask, align 8
  %and = and i64 %shr, %12
  ret i64 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @switchtec_ntb_db_clear(ptr nocapture noundef readonly %ntb, i64 noundef %db_bits) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %db_shift = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 19
  %0 = ptrtoint ptr %db_shift to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %db_shift, align 8
  %sh_prom = zext i32 %1 to i64
  %shl = shl i64 %db_bits, %sh_prom
  %mmio_self_dbmsg = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 11
  %2 = ptrtoint ptr %mmio_self_dbmsg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_self_dbmsg, align 8
  %idb = getelementptr inbounds %struct.ntb_dbmsg_regs, ptr %3, i32 0, i32 3
  %conv.i = trunc i64 %shl to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %4 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %idb, i32 %4) #13, !srcloc !208
  %shr.i = lshr i64 %shl, 32
  %conv1.i = trunc i64 %shr.i to i32
  %add.ptr.i = getelementptr i8, ptr %idb, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %5 = tail call i32 @llvm.bswap.i32(i32 %conv1.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #13, !srcloc !208
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @switchtec_ntb_db_read_mask(ptr nocapture noundef readonly %ntb) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %db_mask = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 17
  %0 = ptrtoint ptr %db_mask to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %db_mask, align 8
  %db_shift = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 19
  %2 = ptrtoint ptr %db_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %db_shift, align 8
  %sh_prom = zext i32 %3 to i64
  %shr = lshr i64 %1, %sh_prom
  %db_valid_mask = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 18
  %4 = ptrtoint ptr %db_valid_mask to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %db_valid_mask, align 8
  %and = and i64 %shr, %5
  ret i64 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @switchtec_ntb_db_set_mask(ptr noundef %ntb, i64 noundef %db_bits) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %db_valid_mask = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 18
  %0 = ptrtoint ptr %db_valid_mask to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %db_valid_mask, align 8
  %neg = xor i64 %1, -1
  %and = and i64 %neg, %db_bits
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %db_mask_lock = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 21
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %db_mask_lock) #13
  %db_shift = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 19
  %2 = ptrtoint ptr %db_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %db_shift, align 8
  %sh_prom = zext i32 %3 to i64
  %shl = shl i64 %db_bits, %sh_prom
  %db_mask = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 17
  %4 = ptrtoint ptr %db_mask to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %db_mask, align 8
  %or = or i64 %shl, %5
  store i64 %or, ptr %db_mask, align 8
  %neg7 = xor i64 %or, -1
  %mmio_self_dbmsg = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 11
  %6 = ptrtoint ptr %mmio_self_dbmsg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_self_dbmsg, align 8
  %idb_mask = getelementptr inbounds %struct.ntb_dbmsg_regs, ptr %7, i32 0, i32 4
  %conv.i = trunc i64 %neg7 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %idb_mask, i32 %8) #13, !srcloc !208
  %shr.i = lshr i64 %neg7, 32
  %conv1.i = trunc i64 %shr.i to i32
  %add.ptr.i = getelementptr i8, ptr %idb_mask, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv1.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #13, !srcloc !208
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %db_mask_lock, i32 noundef %call3) #13
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body1 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @switchtec_ntb_db_clear_mask(ptr noundef %ntb, i64 noundef %db_bits) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %db_valid_mask = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 18
  %0 = ptrtoint ptr %db_valid_mask to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %db_valid_mask, align 8
  %neg = xor i64 %1, -1
  %and = and i64 %neg, %db_bits
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %db_mask_lock = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 21
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %db_mask_lock) #13
  %db_shift = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 19
  %2 = ptrtoint ptr %db_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %db_shift, align 8
  %sh_prom = zext i32 %3 to i64
  %shl = shl i64 %db_bits, %sh_prom
  %neg6 = xor i64 %shl, -1
  %db_mask = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 17
  %4 = ptrtoint ptr %db_mask to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %db_mask, align 8
  %and7 = and i64 %5, %neg6
  store i64 %and7, ptr %db_mask, align 8
  %neg9 = xor i64 %and7, -1
  %mmio_self_dbmsg = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 11
  %6 = ptrtoint ptr %mmio_self_dbmsg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_self_dbmsg, align 8
  %idb_mask = getelementptr inbounds %struct.ntb_dbmsg_regs, ptr %7, i32 0, i32 4
  %conv.i = trunc i64 %neg9 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %idb_mask, i32 %8) #13, !srcloc !208
  %shr.i = lshr i64 %neg9, 32
  %conv1.i = trunc i64 %shr.i to i32
  %add.ptr.i = getelementptr i8, ptr %idb_mask, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv1.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #13, !srcloc !208
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %db_mask_lock, i32 noundef %call3) #13
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body1 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @switchtec_ntb_peer_db_addr(ptr nocapture noundef readonly %ntb, ptr noundef writeonly %db_addr, ptr noundef writeonly %db_size, ptr noundef writeonly %db_data, i32 noundef %db_bit) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %db_bit)
  %cmp = icmp sgt i32 %db_bit, 63
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !224

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %db_addr, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %mmio_peer_dbmsg = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 12
  %0 = ptrtoint ptr %mmio_peer_dbmsg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_peer_dbmsg, align 4
  %odb = getelementptr inbounds %struct.ntb_dbmsg_regs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %odb to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %odb, align 1
  %conv = trunc i64 %3 to i32
  %stdev = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 1
  %4 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stdev, align 8
  %mmio = getelementptr inbounds %struct.switchtec_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 8
  %8 = ptrtoint ptr %7 to i32
  %sub = sub i32 %conv, %8
  %db_shift = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 19
  %9 = ptrtoint ptr %db_shift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %db_shift, align 8
  %div = sdiv i32 %10, 8
  %add = add i32 %sub, %div
  %pdev = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 1
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 8
  %resource = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 47
  %13 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %resource, align 8
  %add4 = add i32 %add, %14
  %15 = ptrtoint ptr %db_addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add4, ptr %db_addr, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %tobool6.not = icmp eq ptr %db_size, null
  br i1 %tobool6.not, label %if.end5.if.end8_crit_edge, label %if.then7

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %db_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %db_size, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5.if.end8_crit_edge
  %tobool9.not = icmp eq ptr %db_data, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.then10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %sh_prom = zext i32 %db_bit to i64
  %shl = shl nuw i64 1, %sh_prom
  %db_peer_shift = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 20
  %17 = ptrtoint ptr %db_peer_shift to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %db_peer_shift, align 4
  %sh_prom11 = zext i32 %18 to i64
  %shl12 = shl i64 %shl, %sh_prom11
  %19 = ptrtoint ptr %db_data to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %shl12, ptr %db_data, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then10 ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @switchtec_ntb_peer_db_set(ptr nocapture noundef readonly %ntb, i64 noundef %db_bits) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %db_peer_shift = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 20
  %0 = ptrtoint ptr %db_peer_shift to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %db_peer_shift, align 4
  %sh_prom = zext i32 %1 to i64
  %shl = shl i64 %db_bits, %sh_prom
  %mmio_peer_dbmsg = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 12
  %2 = ptrtoint ptr %mmio_peer_dbmsg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_peer_dbmsg, align 4
  %odb = getelementptr inbounds %struct.ntb_dbmsg_regs, ptr %3, i32 0, i32 1
  %conv.i = trunc i64 %shl to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %4 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %odb, i32 %4) #13, !srcloc !208
  %shr.i = lshr i64 %shl, 32
  %conv1.i = trunc i64 %shr.i to i32
  %add.ptr.i = getelementptr i8, ptr %odb, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %5 = tail call i32 @llvm.bswap.i32(i32 %conv1.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #13, !srcloc !208
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @switchtec_ntb_spad_count(ptr nocapture noundef readnone %ntb) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 128
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @switchtec_ntb_spad_read(ptr nocapture noundef readonly %ntb, i32 noundef %idx) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %idx)
  %cmp1 = icmp ugt i32 %idx, 127
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %self_shared = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 14
  %0 = ptrtoint ptr %self_shared to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %self_shared, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.shared_mw, ptr %1, i32 0, i32 4, i32 %idx
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @switchtec_ntb_spad_write(ptr nocapture noundef readonly %ntb, i32 noundef %idx, i32 noundef %val) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %idx)
  %cmp1 = icmp ugt i32 %idx, 127
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %self_shared = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 14
  %0 = ptrtoint ptr %self_shared to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %self_shared, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.shared_mw, ptr %1, i32 0, i32 4, i32 %idx
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %val, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @switchtec_ntb_peer_spad_addr(ptr nocapture noundef readonly %ntb, i32 noundef %pidx, i32 noundef %sidx, ptr noundef writeonly %spad_addr) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pidx)
  %cmp.not = icmp eq i32 %pidx, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %spad_addr, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %peer_shared = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 15
  %0 = ptrtoint ptr %peer_shared to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer_shared, align 8
  %arrayidx = getelementptr %struct.shared_mw, ptr %1, i32 0, i32 4, i32 %sidx
  %2 = ptrtoint ptr %arrayidx to i32
  %stdev = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 1
  %3 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %stdev, align 8
  %mmio = getelementptr inbounds %struct.switchtec_dev, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio, align 8
  %7 = ptrtoint ptr %6 to i32
  %sub = sub i32 %2, %7
  %pdev = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 1
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %resource = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 47
  %10 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resource, align 8
  %add = add i32 %sub, %11
  %12 = ptrtoint ptr %spad_addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %spad_addr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then1 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @switchtec_ntb_peer_spad_read(ptr nocapture noundef readonly %ntb, i32 noundef %pidx, i32 noundef %sidx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pidx)
  %cmp.not = icmp eq i32 %pidx, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %sidx)
  %cmp2 = icmp ugt i32 %sidx, 127
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %peer_shared = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 15
  %0 = ptrtoint ptr %peer_shared to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer_shared, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.end6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.shared_mw, ptr %1, i32 0, i32 4, i32 %sidx
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #13, !srcloc !209
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @switchtec_ntb_peer_spad_write(ptr nocapture noundef readonly %ntb, i32 noundef %pidx, i32 noundef %sidx, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pidx)
  %cmp.not = icmp ne i32 %pidx, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %sidx)
  %cmp2 = icmp ugt i32 %sidx, 127
  %or.cond = or i1 %cmp.not, %cmp2
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %entry
  %peer_shared = getelementptr inbounds %struct.switchtec_ntb, ptr %ntb, i32 0, i32 15
  %0 = ptrtoint ptr %peer_shared to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer_shared, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.end6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.shared_mw, ptr %1, i32 0, i32 4, i32 %sidx
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %2 = tail call i32 @llvm.bswap.i32(i32 %val) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %2) #13, !srcloc !208
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ -5, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @switchtec_ntb_link_status_update(ptr noundef %sndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %link_is_up = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 29
  %0 = ptrtoint ptr %link_is_up to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %link_is_up, align 8, !range !223
  %2 = zext i8 %1 to i32
  %self_shared = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 14
  %3 = ptrtoint ptr %self_shared to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %self_shared, align 4
  %link_sta1 = getelementptr inbounds %struct.shared_mw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %link_sta1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %link_sta1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.end6.thread, label %if.end6

if.end6.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %link_is_up to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %link_is_up, align 8
  br label %switchtec_ntb_set_link_speed.exit

if.end6:                                          ; preds = %entry
  %peer_shared = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 15
  %8 = ptrtoint ptr %peer_shared to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %peer_shared, align 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #13, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %12 = zext i32 %11 to i64
  %13 = zext i32 %10 to i64
  %14 = shl nuw i64 %13, 32
  %15 = or i64 %14, %12
  %16 = tail call i64 @llvm.bswap.i64(i64 %15) #13
  %and = and i64 %16, 4294967295
  call void @__sanitizer_cov_trace_const_cmp8(i64 1170997249, i64 %and)
  %cmp = icmp eq i64 %and, 1170997249
  %shr = lshr i64 %16, 32
  %conv5 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv5)
  %tobool737 = icmp ne i32 %conv5, 0
  %tobool7 = select i1 %cmp, i1 %tobool737, i1 false
  %frombool = zext i1 %tobool7 to i8
  %17 = ptrtoint ptr %link_is_up to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool, ptr %link_is_up, align 8
  br i1 %tobool7, label %if.end.i, label %if.end6.switchtec_ntb_set_link_speed.exit_crit_edge

if.end6.switchtec_ntb_set_link_speed.exit_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %switchtec_ntb_set_link_speed.exit

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %self_partition.i = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 2
  %18 = ptrtoint ptr %self_partition.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %self_partition.i, align 4
  %stdev1.i.i = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 1
  %20 = ptrtoint ptr %stdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stdev1.i.i, align 8
  %mmio_part_cfg_all.i.i = getelementptr inbounds %struct.switchtec_dev, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %mmio_part_cfg_all.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio_part_cfg_all.i.i, align 4
  %vep_pff_inst_id.i.i = getelementptr %struct.part_cfg_regs, ptr %23, i32 %19, i32 5
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vep_pff_inst_id.i.i) #13, !srcloc !209
  %25 = lshr i32 %24, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %mmio_pff_csr.i.i = getelementptr inbounds %struct.switchtec_dev, ptr %21, i32 0, i32 16
  %26 = ptrtoint ptr %mmio_pff_csr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio_pff_csr.i.i, align 8
  %arrayidx3.i.i = getelementptr %struct.pff_csr_regs, ptr %27, i32 %25, i32 13, i32 13
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx3.i.i) #13, !srcloc !209
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %shr.i.i = lshr i32 %29, 16
  %and5.i.i = and i32 %shr.i.i, 15
  %shr8.i.i = lshr i32 %29, 20
  %and9.i.i = and i32 %shr8.i.i, 63
  %peer_partition.i = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 3
  %30 = ptrtoint ptr %peer_partition.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %peer_partition.i, align 8
  %32 = ptrtoint ptr %stdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stdev1.i.i, align 8
  %mmio_part_cfg_all.i28.i = getelementptr inbounds %struct.switchtec_dev, ptr %33, i32 0, i32 15
  %34 = ptrtoint ptr %mmio_part_cfg_all.i28.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio_part_cfg_all.i28.i, align 4
  %vep_pff_inst_id.i29.i = getelementptr %struct.part_cfg_regs, ptr %35, i32 %31, i32 5
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vep_pff_inst_id.i29.i) #13, !srcloc !209
  %37 = lshr i32 %36, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %mmio_pff_csr.i30.i = getelementptr inbounds %struct.switchtec_dev, ptr %33, i32 0, i32 16
  %38 = ptrtoint ptr %mmio_pff_csr.i30.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio_pff_csr.i30.i, align 8
  %arrayidx3.i31.i = getelementptr %struct.pff_csr_regs, ptr %39, i32 %37, i32 13, i32 13
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx3.i31.i) #13, !srcloc !209
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %shr.i32.i = lshr i32 %41, 16
  %and5.i33.i = and i32 %shr.i32.i, 15
  %shr8.i34.i = lshr i32 %41, 20
  %and9.i35.i = and i32 %shr8.i34.i, 63
  %42 = tail call i32 @llvm.umin.i32(i32 %and5.i.i, i32 %and5.i33.i) #13
  %43 = tail call i32 @llvm.umin.i32(i32 %and9.i.i, i32 %and9.i35.i) #13
  br label %switchtec_ntb_set_link_speed.exit

switchtec_ntb_set_link_speed.exit:                ; preds = %if.end.i, %if.end6.switchtec_ntb_set_link_speed.exit_crit_edge, %if.end6.thread
  %tobool736 = phi i1 [ true, %if.end.i ], [ false, %if.end6.switchtec_ntb_set_link_speed.exit_crit_edge ], [ false, %if.end6.thread ]
  %link_sta.135 = phi i32 [ %conv5, %if.end.i ], [ 0, %if.end6.switchtec_ntb_set_link_speed.exit_crit_edge ], [ 0, %if.end6.thread ]
  %.sink36.i = phi i32 [ %42, %if.end.i ], [ 0, %if.end6.switchtec_ntb_set_link_speed.exit_crit_edge ], [ 0, %if.end6.thread ]
  %.sink.i = phi i32 [ %43, %if.end.i ], [ 0, %if.end6.switchtec_ntb_set_link_speed.exit_crit_edge ], [ 0, %if.end6.thread ]
  %44 = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 30
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %.sink36.i, ptr %44, align 4
  %46 = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 31
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %.sink.i, ptr %46, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %link_sta.135, i32 %2)
  %cmp9.not = icmp eq i32 %link_sta.135, %2
  br i1 %cmp9.not, label %switchtec_ntb_set_link_speed.exit.if.end17_crit_edge, label %if.then11

switchtec_ntb_set_link_speed.exit.if.end17_crit_edge: ; preds = %switchtec_ntb_set_link_speed.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then11:                                        ; preds = %switchtec_ntb_set_link_speed.exit
  %mmio_peer_dbmsg.i = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 12
  %48 = ptrtoint ptr %mmio_peer_dbmsg.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio_peer_dbmsg.i, align 4
  %omsg.i = getelementptr inbounds %struct.ntb_dbmsg_regs, ptr %49, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %omsg.i, i32 50331648) #13, !srcloc !208
  tail call void @ntb_link_event(ptr noundef %sndev) #13
  %stdev = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 1
  %50 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %stdev, align 8
  %dev = getelementptr inbounds %struct.switchtec_dev, ptr %51, i32 0, i32 1
  %cond = select i1 %tobool736, ptr @.str.29, ptr @.str.30
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull %cond) #17
  br i1 %tobool736, label %if.then15, label %if.then11.if.end17_crit_edge

if.then11.if.end17_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @crosslink_init_dbmsgs(ptr noundef %sndev)
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.then11.if.end17_crit_edge, %switchtec_ntb_set_link_speed.exit.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntb_link_event(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @crosslink_init_dbmsgs(ptr nocapture noundef readonly %sndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_ntb.i = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 6
  %0 = ptrtoint ptr %mmio_ntb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_ntb.i, align 4
  %peer_partition.i = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 3
  %2 = ptrtoint ptr %peer_partition.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %peer_partition.i, align 8
  %arrayidx.i = getelementptr %struct.ntb_info_regs, ptr %1, i32 0, i32 7, i32 %3
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx.i) #13, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %self_partition = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 2
  %5 = ptrtoint ptr %self_partition to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %self_partition, align 4
  %shl = shl i32 %6, 2
  %or.1 = shl i32 %6, 10
  %shl1.1 = or i32 %or.1, %shl
  %or.2 = shl i32 %6, 18
  %or2.1 = or i32 %or.2, %shl1.1
  %or.3 = shl i32 %6, 26
  %or2.2 = or i32 %or.3, %or2.1
  %or2.3 = or i32 %or2.2, 50462976
  %mmio_peer_dbmsg = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 12
  %7 = ptrtoint ptr %mmio_peer_dbmsg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio_peer_dbmsg, align 4
  %msg_map3 = getelementptr inbounds %struct.ntb_dbmsg_regs, ptr %8, i32 0, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %9 = tail call i32 @llvm.bswap.i32(i32 %or2.3) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %msg_map3, i32 %9) #13, !srcloc !208
  %db_valid_mask = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 18
  %10 = ptrtoint ptr %db_valid_mask to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %db_valid_mask, align 8
  %db_peer_shift = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 20
  %12 = ptrtoint ptr %db_peer_shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %db_peer_shift, align 4
  %sh_prom = zext i32 %13 to i64
  %shl4 = shl i64 %11, %sh_prom
  %14 = ptrtoint ptr %mmio_peer_dbmsg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio_peer_dbmsg, align 4
  %odb_mask = getelementptr inbounds %struct.ntb_dbmsg_regs, ptr %15, i32 0, i32 2
  %conv.i16 = trunc i64 %shl4 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %16 = tail call i32 @llvm.bswap.i32(i32 %conv.i16) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %odb_mask, i32 %16) #13, !srcloc !208
  %shr.i = lshr i64 %shl4, 32
  %conv1.i = trunc i64 %shr.i to i32
  %add.ptr.i = getelementptr i8, ptr %odb_mask, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %17 = tail call i32 @llvm.bswap.i32(i32 %conv1.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #13, !srcloc !208
  br label %cleanup

cleanup:                                          ; preds = %for.cond.preheader, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @switchtec_ntb_part_op(ptr nocapture noundef readonly %sndev, ptr noundef %ctl, i32 noundef %op, i32 noundef %wait_status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %op, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %status.0 = phi i32 [ 4, %sw.bb1 ], [ 3, %entry.sw.epilog_crit_edge ]
  %partition_op = getelementptr inbounds %struct.ntb_ctrl_regs, ptr %ctl, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %1 = tail call i32 @llvm.bswap.i32(i32 %op) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %partition_op, i32 %1) #13, !srcloc !208
  br label %for.body

for.cond:                                         ; preds = %if.end
  %inc = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %sw.epilog
  %i.029 = phi i32 [ 0, %sw.epilog ], [ %inc, %for.cond.for.body_crit_edge ]
  %call = tail call i32 @msleep_interruptible(i32 noundef 50) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3.not = icmp eq i32 %call, 0
  br i1 %cmp3.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %partition_op, i32 50331648) #13, !srcloc !208
  br label %cleanup

if.end:                                           ; preds = %for.body
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctl) #13, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %3 = and i32 %2, -65536
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %status.0)
  %cmp6.not = icmp eq i32 %4, %status.0
  br i1 %cmp6.not, label %for.cond, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.cond.for.end_crit_edge
  %.lcssa = phi i32 [ %4, %if.end.for.end_crit_edge ], [ %status.0, %for.cond.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa, i32 %wait_status)
  %cmp9 = icmp eq i32 %.lcssa, %wait_status
  br i1 %cmp9, label %for.end.cleanup_crit_edge, label %if.end11

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa, i32 %status.0)
  %cmp12 = icmp eq i32 %.lcssa, %status.0
  br i1 %cmp12, label %do.end, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %stdev = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 1
  %5 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stdev, align 8
  %dev = getelementptr inbounds %struct.switchtec_dev, ptr %6, i32 0, i32 1
  %arrayidx = getelementptr [4 x ptr], ptr @switchtec_ntb_part_op.op_text, i32 0, i32 %op
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctl) #13, !srcloc !209
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef %8, i32 noundef %op, i32 noundef %10) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end11.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -4, %if.then ], [ -110, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ -5, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @switchtec_ntb_mw_clr_direct(ptr nocapture noundef readonly %sndev, i32 noundef %idx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_peer_ctrl = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 10
  %0 = ptrtoint ptr %mmio_peer_ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_peer_ctrl, align 4
  %arrayidx = getelementptr %struct.switchtec_ntb, ptr %sndev, i32 0, i32 28, i32 %idx
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr %struct.ntb_ctrl_regs, ptr %1, i32 0, i32 12, i32 %3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx1) #13, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %5 = and i32 %4, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx1, i32 %5) #13, !srcloc !208
  %win_size = getelementptr %struct.ntb_ctrl_regs, ptr %1, i32 0, i32 12, i32 %3, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %win_size, i32 0) #13, !srcloc !208
  %arrayidx8 = getelementptr %struct.ntb_ctrl_regs, ptr %1, i32 0, i32 13, i32 %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx8, i32 0) #13, !srcloc !208
  %self_partition = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 2
  %6 = ptrtoint ptr %self_partition to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %self_partition, align 4
  %xlate_addr = getelementptr %struct.ntb_ctrl_regs, ptr %1, i32 0, i32 12, i32 %3, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %xlate_addr, i32 %8) #13, !srcloc !208
  %9 = ashr i32 %7, 31
  %add.ptr.i = getelementptr i8, ptr %xlate_addr, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #13, !srcloc !208
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @switchtec_ntb_mw_clr_lut(ptr nocapture noundef readonly %sndev, i32 noundef %idx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_peer_ctrl = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 10
  %0 = ptrtoint ptr %mmio_peer_ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_peer_ctrl, align 4
  %peer_nr_direct_mw.i = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 26
  %2 = ptrtoint ptr %peer_nr_direct_mw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %peer_nr_direct_mw.i, align 8
  %sub.i = sub i32 %idx, %3
  %nr_rsvd_luts.i = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 24
  %4 = ptrtoint ptr %nr_rsvd_luts.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_rsvd_luts.i, align 4
  %add.i = add i32 %sub.i, %5
  %arrayidx = getelementptr %struct.ntb_ctrl_regs, ptr %1, i32 0, i32 17, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 0) #13, !srcloc !208
  %add.ptr.i = getelementptr i8, ptr %arrayidx, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #13, !srcloc !208
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @switchtec_ntb_mw_set_direct(ptr nocapture noundef readonly %sndev, i32 noundef %idx, i32 noundef %addr, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not.i.i = icmp eq i32 %size, 0
  %0 = tail call i32 @llvm.ctlz.i32(i32 %size, i1 true) #13, !range !211
  %sub.i.op.i = xor i32 %0, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  %arrayidx = getelementptr %struct.switchtec_ntb, ptr %sndev, i32 0, i32 28, i32 %idx
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %mmio_peer_ctrl = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 10
  %3 = ptrtoint ptr %mmio_peer_ctrl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio_peer_ctrl, align 4
  %arrayidx5 = getelementptr %struct.ntb_ctrl_regs, ptr %4, i32 0, i32 12, i32 %2
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx5) #13, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %6 = or i32 %5, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx5, i32 %6) #13, !srcloc !208
  %and11 = and i32 %size, -4096
  %or12 = or i32 %sub.i, %and11
  %win_size = getelementptr %struct.ntb_ctrl_regs, ptr %4, i32 0, i32 12, i32 %2, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %7 = tail call i32 @llvm.bswap.i32(i32 %or12) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %win_size, i32 %7) #13, !srcloc !208
  %arrayidx16 = getelementptr %struct.ntb_ctrl_regs, ptr %4, i32 0, i32 13, i32 %2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx16, i32 0) #13, !srcloc !208
  %self_partition = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 2
  %8 = ptrtoint ptr %self_partition to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %self_partition, align 4
  %or18 = or i32 %9, %addr
  %xlate_addr = getelementptr %struct.ntb_ctrl_regs, ptr %4, i32 0, i32 12, i32 %2, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %10 = tail call i32 @llvm.bswap.i32(i32 %or18) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %xlate_addr, i32 %10) #13, !srcloc !208
  %add.ptr.i = getelementptr i8, ptr %xlate_addr, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #13, !srcloc !208
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @switchtec_ntb_mw_set_lut(ptr nocapture noundef readonly %sndev, i32 noundef %idx, i32 noundef %addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_peer_ctrl = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 10
  %0 = ptrtoint ptr %mmio_peer_ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_peer_ctrl, align 4
  %self_partition = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 2
  %2 = ptrtoint ptr %self_partition to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %self_partition, align 4
  %shl = shl i32 %3, 1
  %or = or i32 %shl, %addr
  %or1 = or i32 %or, 1
  %peer_nr_direct_mw.i = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 26
  %4 = ptrtoint ptr %peer_nr_direct_mw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %peer_nr_direct_mw.i, align 8
  %sub.i = sub i32 %idx, %5
  %nr_rsvd_luts.i = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 24
  %6 = ptrtoint ptr %nr_rsvd_luts.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_rsvd_luts.i, align 4
  %add.i = add i32 %sub.i, %7
  %arrayidx = getelementptr %struct.ntb_ctrl_regs, ptr %1, i32 0, i32 17, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %8 = tail call i32 @llvm.bswap.i32(i32 %or1) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %8) #13, !srcloc !208
  %add.ptr.i = getelementptr i8, ptr %arrayidx, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #13, !srcloc !208
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @config_rsvd_lut_win(ptr nocapture noundef readonly %sndev, ptr noundef %ctl, i32 noundef %lut_idx, i32 noundef %partition, i64 noundef %addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %peer_direct_mw_to_bar = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 28
  %0 = ptrtoint ptr %peer_direct_mw_to_bar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %peer_direct_mw_to_bar, align 8
  %call = tail call fastcc i32 @switchtec_ntb_part_op(ptr noundef %sndev, ptr noundef %ctl, i32 noundef 1, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr %struct.ntb_ctrl_regs, ptr %ctl, i32 0, i32 12, i32 %1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx1) #13, !srcloc !209
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %nr_lut_mw = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 23
  %4 = ptrtoint ptr %nr_lut_mw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_lut_mw, align 8
  %sub = shl i32 %5, 14
  %shl = add i32 %sub, -16384
  %or4 = or i32 %shl, %3
  %or5 = or i32 %or4, 4128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %6 = tail call i32 @llvm.bswap.i32(i32 %or5) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx1, i32 %6) #13, !srcloc !208
  %shl9 = shl i32 %partition, 1
  %or10 = or i32 %shl9, 1
  %conv = sext i32 %or10 to i64
  %or11 = or i64 %conv, %addr
  %arrayidx12 = getelementptr %struct.ntb_ctrl_regs, ptr %ctl, i32 0, i32 17, i32 %lut_idx
  %conv.i = trunc i64 %or11 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %7 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx12, i32 %7) #13, !srcloc !208
  %shr.i = lshr i64 %or11, 32
  %conv1.i = trunc i64 %shr.i to i32
  %add.ptr.i = getelementptr i8, ptr %arrayidx12, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv1.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #13, !srcloc !208
  %call13 = tail call fastcc i32 @switchtec_ntb_part_op(ptr noundef %sndev, ptr noundef %ctl, i32 noundef 2, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.then15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %bar_error16 = getelementptr inbounds %struct.ntb_ctrl_regs, ptr %ctl, i32 0, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bar_error16) #13, !srcloc !209
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %lut_error18 = getelementptr inbounds %struct.ntb_ctrl_regs, ptr %ctl, i32 0, i32 7
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %lut_error18) #13, !srcloc !209
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %stdev = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 1
  %13 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stdev, align 8
  %dev = getelementptr inbounds %struct.switchtec_dev, ptr %14, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.48, i32 noundef %10, i32 noundef %12) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.then15 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @map_bars(ptr nocapture noundef writeonly %map, ptr noundef %ctrl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ntb_ctrl_regs, ptr %ctrl, i32 0, i32 12, i32 0
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #13, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %1 = and i32 %0, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %map, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cnt.1 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %arrayidx.1 = getelementptr %struct.ntb_ctrl_regs, ptr %ctrl, i32 0, i32 12, i32 1
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.1) #13, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.1 = icmp eq i32 %4, 0
  br i1 %tobool.not.1, label %if.end.if.end.1_crit_edge, label %if.then.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %inc.1 = add nuw nsw i32 %cnt.1, 1
  %arrayidx1.1 = getelementptr i32, ptr %map, i32 %cnt.1
  %5 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %arrayidx1.1, align 4
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end.if.end.1_crit_edge
  %cnt.1.1 = phi i32 [ %inc.1, %if.then.1 ], [ %cnt.1, %if.end.if.end.1_crit_edge ]
  %arrayidx.2 = getelementptr %struct.ntb_ctrl_regs, ptr %ctrl, i32 0, i32 12, i32 2
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.2) #13, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.2 = icmp eq i32 %7, 0
  br i1 %tobool.not.2, label %if.end.1.if.end.2_crit_edge, label %if.then.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.2

if.then.2:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #15
  %inc.2 = add nuw nsw i32 %cnt.1.1, 1
  %arrayidx1.2 = getelementptr i32, ptr %map, i32 %cnt.1.1
  %8 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %arrayidx1.2, align 4
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.end.1.if.end.2_crit_edge
  %cnt.1.2 = phi i32 [ %inc.2, %if.then.2 ], [ %cnt.1.1, %if.end.1.if.end.2_crit_edge ]
  %arrayidx.3 = getelementptr %struct.ntb_ctrl_regs, ptr %ctrl, i32 0, i32 12, i32 3
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.3) #13, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.3 = icmp eq i32 %10, 0
  br i1 %tobool.not.3, label %if.end.2.if.end.3_crit_edge, label %if.then.3

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.3

if.then.3:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #15
  %inc.3 = add nuw nsw i32 %cnt.1.2, 1
  %arrayidx1.3 = getelementptr i32, ptr %map, i32 %cnt.1.2
  %11 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %arrayidx1.3, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %if.end.2.if.end.3_crit_edge
  %cnt.1.3 = phi i32 [ %inc.3, %if.then.3 ], [ %cnt.1.2, %if.end.2.if.end.3_crit_edge ]
  %arrayidx.4 = getelementptr %struct.ntb_ctrl_regs, ptr %ctrl, i32 0, i32 12, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.4) #13, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.4 = icmp eq i32 %13, 0
  br i1 %tobool.not.4, label %if.end.3.if.end.4_crit_edge, label %if.then.4

if.end.3.if.end.4_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.4

if.then.4:                                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #15
  %inc.4 = add nuw nsw i32 %cnt.1.3, 1
  %arrayidx1.4 = getelementptr i32, ptr %map, i32 %cnt.1.3
  %14 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %arrayidx1.4, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.4, %if.end.3.if.end.4_crit_edge
  %cnt.1.4 = phi i32 [ %inc.4, %if.then.4 ], [ %cnt.1.3, %if.end.3.if.end.4_crit_edge ]
  %arrayidx.5 = getelementptr %struct.ntb_ctrl_regs, ptr %ctrl, i32 0, i32 12, i32 5
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.5) #13, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %16 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.5 = icmp eq i32 %16, 0
  br i1 %tobool.not.5, label %if.end.4.if.end.5_crit_edge, label %if.then.5

if.end.4.if.end.5_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.5

if.then.5:                                        ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #15
  %inc.5 = add nuw nsw i32 %cnt.1.4, 1
  %arrayidx1.5 = getelementptr i32, ptr %map, i32 %cnt.1.4
  %17 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 5, ptr %arrayidx1.5, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.5, %if.end.4.if.end.5_crit_edge
  %cnt.1.5 = phi i32 [ %inc.5, %if.then.5 ], [ %cnt.1.4, %if.end.4.if.end.5_crit_edge ]
  ret i32 %cnt.1.5
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @config_req_id_table(ptr nocapture noundef readonly %sndev, ptr noundef %mmio_ctrl, ptr nocapture noundef readonly %req_ids, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %req_id_table_size = getelementptr inbounds %struct.ntb_ctrl_regs, ptr %mmio_ctrl, i32 0, i32 8
  %0 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %req_id_table_size) #13, !srcloc !213
  %1 = tail call i16 @llvm.bswap.i16(i16 %0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %count)
  %cmp = icmp slt i32 %conv, %count
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %stdev = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 1
  %2 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stdev, align 8
  %dev = getelementptr inbounds %struct.switchtec_dev, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.53) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @switchtec_ntb_part_op(ptr noundef %sndev, ptr noundef %mmio_ctrl, i32 noundef 1, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp569 = icmp sgt i32 %count, 0
  br i1 %cmp569, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %stdev17 = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.070 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %req_ids, i32 %i.070
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %shl = shl i32 %5, 16
  %or = or i32 %shl, 1
  %arrayidx7 = getelementptr %struct.ntb_ctrl_regs, ptr %mmio_ctrl, i32 0, i32 15, i32 %i.070
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx7, i32 %6) #13, !srcloc !208
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx7) #13, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_req_id_table.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@config_req_id_table, %if.then16)) #13
          to label %for.inc [label %if.then16], !srcloc !212

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #13
  %9 = ptrtoint ptr %stdev17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stdev17, align 8
  %dev18 = getelementptr inbounds %struct.switchtec_dev, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %shr = ashr i32 %12, 8
  %13 = lshr i32 %12, 3
  %and = and i32 %13, 31
  %and23 = and i32 %12, 7
  %shr24 = lshr i32 %8, 4
  %and25 = and i32 %shr24, 31
  %shr26 = lshr i32 %8, 1
  %and27 = and i32 %shr26, 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_req_id_table.__UNIQUE_ID_ddebug253, ptr noundef %dev18, ptr noundef nonnull @.str.55, i32 noundef %shr, i32 noundef %and, i32 noundef %and23, i32 noundef %and25, i32 noundef %and27) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %for.body
  %inc = add nuw nsw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call31 = tail call fastcc i32 @switchtec_ntb_part_op(ptr noundef %sndev, ptr noundef %mmio_ctrl, i32 noundef 2, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call31)
  %cmp32 = icmp eq i32 %call31, -5
  br i1 %cmp32, label %if.then34, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then34:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %req_id_error = getelementptr inbounds %struct.ntb_ctrl_regs, ptr %mmio_ctrl, i32 0, i32 10
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %req_id_error) #13, !srcloc !209
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %stdev39 = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 1
  %16 = ptrtoint ptr %stdev39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stdev39, align 8
  %dev40 = getelementptr inbounds %struct.switchtec_dev, ptr %17, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.57, i32 noundef %15) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -14, %do.end ], [ %call2, %if.end.cleanup_crit_edge ], [ 0, %if.then34 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crosslink_enum_partition(ptr nocapture noundef readonly %sndev, ptr nocapture noundef writeonly %bar_addrs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %stdev = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 1
  %0 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stdev, align 8
  %mmio_part_cfg_all = getelementptr inbounds %struct.switchtec_dev, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %mmio_part_cfg_all to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_part_cfg_all, align 4
  %peer_partition = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 3
  %4 = ptrtoint ptr %peer_partition to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %peer_partition, align 8
  %vep_pff_inst_id = getelementptr %struct.part_cfg_regs, ptr %3, i32 %5, i32 5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vep_pff_inst_id) #13, !srcloc !209
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %8 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stdev, align 8
  %mmio_pff_csr = getelementptr inbounds %struct.switchtec_dev, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %mmio_pff_csr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio_pff_csr, align 8
  %pcicmd = getelementptr %struct.pff_csr_regs, ptr %11, i32 %7, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %pcicmd, i16 1536) #13, !srcloc !226
  %12 = getelementptr %struct.pff_csr_regs, ptr %11, i32 %7, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.039 = phi i32 [ 0, %entry ], [ %inc19, %for.inc.for.body_crit_edge ]
  %bar_cnt.038 = phi i32 [ 0, %entry ], [ %bar_cnt.1, %for.inc.for.body_crit_edge ]
  %conv35 = zext i32 %i.039 to i64
  %mul = shl nuw nsw i64 %conv35, 36
  %arrayidx3 = getelementptr [3 x i64], ptr %12, i32 0, i32 %i.039
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx3, i32 0) #13, !srcloc !208
  %shr.i = shl i32 %i.039, 4
  %add.ptr.i = getelementptr i8, ptr %arrayidx3, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @arm_heavy_mb() #13
  %13 = tail call i32 @llvm.bswap.i32(i32 %shr.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #13, !srcloc !208
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx3) #13, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %16 = zext i32 %15 to i64
  %17 = zext i32 %14 to i64
  %18 = shl nuw i64 %17, 32
  %.masked = and i64 %18, -1080863914863886336
  %19 = or i64 %.masked, %16
  %20 = tail call i64 @llvm.bswap.i64(i64 %19)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @crosslink_enum_partition.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@crosslink_enum_partition, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !212

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stdev, align 8
  %dev = getelementptr inbounds %struct.switchtec_dev, ptr %22, i32 0, i32 1
  %mul11 = shl nuw nsw i32 %i.039, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @crosslink_enum_partition.__UNIQUE_ID_ddebug256, ptr noundef %dev, ptr noundef nonnull @.str.65, i32 noundef %mul11, i64 noundef %20) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %for.body
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %mul)
  %cmp14.not = icmp eq i64 %20, %mul
  br i1 %cmp14.not, label %if.end17, label %do.end.for.inc_crit_edge

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end17:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %inc = add i32 %bar_cnt.038, 1
  %arrayidx18 = getelementptr i64, ptr %bar_addrs, i32 %bar_cnt.038
  %23 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %mul, ptr %arrayidx18, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end17, %do.end.for.inc_crit_edge
  %bar_cnt.1 = phi i32 [ %bar_cnt.038, %do.end.for.inc_crit_edge ], [ %inc, %if.end17 ]
  %inc19 = add nuw nsw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc19, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  ret i32 %bar_cnt.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crosslink_setup_req_ids(ptr nocapture noundef readonly %sndev, ptr noundef %mmio_ctrl) unnamed_addr #2 align 64 {
entry:
  %req_ids = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req_ids) #13
  %0 = call ptr @memset(ptr %req_ids, i32 255, i32 64)
  %mmio_self_ctrl = getelementptr inbounds %struct.switchtec_ntb, ptr %sndev, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.010 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %1 = ptrtoint ptr %mmio_self_ctrl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmio_self_ctrl, align 8
  %arrayidx = getelementptr %struct.ntb_ctrl_regs, ptr %2, i32 0, i32 15, i32 %i.010
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #13, !srcloc !209
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end:                                           ; preds = %for.body
  %shr = lshr i32 %4, 1
  %and1 = and i32 %shr, 255
  %arrayidx2 = getelementptr [16 x i32], ptr %req_ids, i32 0, i32 %i.010
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and1, ptr %arrayidx2, align 4
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %i.010, %for.body.for.end_crit_edge ], [ 16, %if.end.for.end_crit_edge ]
  %call3 = call fastcc i32 @config_req_id_table(ptr noundef %sndev, ptr noundef %mmio_ctrl, ptr noundef nonnull %req_ids, i32 noundef %i.0.lcssa)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req_ids) #13
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @switchtec_ntb_doorbell_isr(i32 noundef %irq, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switchtec_ntb_doorbell_isr.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@switchtec_ntb_doorbell_isr, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !212

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %stdev = getelementptr inbounds %struct.switchtec_ntb, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stdev, align 8
  %dev3 = getelementptr inbounds %struct.switchtec_dev, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @switchtec_ntb_doorbell_isr.__UNIQUE_ID_ddebug263, ptr noundef %dev3, ptr noundef nonnull @.str.78) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @ntb_db_event(ptr noundef %dev, i32 noundef 0) #13
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @switchtec_ntb_message_isr(i32 noundef %irq, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_self_dbmsg = getelementptr inbounds %struct.switchtec_ntb, ptr %dev, i32 0, i32 11
  %stdev = getelementptr inbounds %struct.switchtec_ntb, ptr %dev, i32 0, i32 1
  %link_force_down.i = getelementptr inbounds %struct.switchtec_ntb, ptr %dev, i32 0, i32 33
  %check_link_status_work.i = getelementptr inbounds %struct.switchtec_ntb, ptr %dev, i32 0, i32 32
  %0 = ptrtoint ptr %mmio_self_dbmsg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_self_dbmsg, align 8
  %arrayidx.peel = getelementptr %struct.ntb_dbmsg_regs, ptr %1, i32 0, i32 9, i32 0
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.peel) #13, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %add.ptr.i.peel = getelementptr %struct.ntb_dbmsg_regs, ptr %1, i32 0, i32 9, i32 0, i32 1
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.peel) #13, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %4 = zext i32 %3 to i64
  %5 = zext i32 %2 to i64
  %6 = shl nuw i64 %5, 32
  %7 = or i64 %6, %4
  %8 = tail call i64 @llvm.bswap.i64(i64 %7) #13
  %and.peel = and i64 %8, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.peel)
  %tobool.not.peel = icmp eq i64 %and.peel, 0
  br i1 %tobool.not.peel, label %entry.for.body.preheader_crit_edge, label %do.body.peel

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.preheader

do.body.peel:                                     ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switchtec_ntb_message_isr.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@switchtec_ntb_message_isr, %if.then5.peel)) #13
          to label %if.then12.peel [label %if.then5.peel], !srcloc !212

if.then5.peel:                                    ; preds = %do.body.peel
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stdev, align 8
  %dev6.peel = getelementptr inbounds %struct.switchtec_dev, ptr %10, i32 0, i32 1
  %conv.peel = trunc i64 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @switchtec_ntb_message_isr.__UNIQUE_ID_ddebug264, ptr noundef %dev6.peel, ptr noundef nonnull @.str.80, i32 noundef 0, i32 noundef %conv.peel) #13
  br label %if.then12.peel

if.then12.peel:                                   ; preds = %if.then5.peel, %do.body.peel
  %11 = ptrtoint ptr %mmio_self_dbmsg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio_self_dbmsg, align 8
  %status.peel = getelementptr %struct.ntb_dbmsg_regs, ptr %12, i32 0, i32 9, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !221
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %status.peel, i8 1) #13, !srcloc !222
  %conv13.peel = trunc i64 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv13.peel)
  %cmp.i.peel = icmp eq i32 %conv13.peel, 4
  br i1 %cmp.i.peel, label %if.then.i.peel, label %if.then12.peel.switchtec_ntb_check_link.exit.peel_crit_edge

if.then12.peel.switchtec_ntb_check_link.exit.peel_crit_edge: ; preds = %if.then12.peel
  call void @__sanitizer_cov_trace_pc() #15
  br label %switchtec_ntb_check_link.exit.peel

if.then.i.peel:                                   ; preds = %if.then12.peel
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %link_force_down.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %link_force_down.i, align 8
  br label %switchtec_ntb_check_link.exit.peel

switchtec_ntb_check_link.exit.peel:               ; preds = %if.then.i.peel, %if.then12.peel.switchtec_ntb_check_link.exit.peel_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %14 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.peel = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %check_link_status_work.i) #13
  br label %for.body.preheader

for.body.preheader:                               ; preds = %switchtec_ntb_check_link.exit.peel, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %for.body.preheader
  %i.027 = phi i32 [ %inc, %if.end15.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %15 = ptrtoint ptr %mmio_self_dbmsg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio_self_dbmsg, align 8
  %arrayidx = getelementptr %struct.ntb_dbmsg_regs, ptr %16, i32 0, i32 9, i32 %i.027
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #13, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %add.ptr.i = getelementptr i8, ptr %arrayidx, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !210
  %19 = zext i32 %18 to i64
  %20 = zext i32 %17 to i64
  %21 = shl nuw i64 %20, 32
  %22 = or i64 %21, %19
  %23 = tail call i64 @llvm.bswap.i64(i64 %22) #13
  %and = and i64 %23, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.body.if.end15_crit_edge, label %do.body

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switchtec_ntb_message_isr.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@switchtec_ntb_message_isr, %if.then5)) #13
          to label %do.end [label %if.then5], !srcloc !212

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stdev, align 8
  %dev6 = getelementptr inbounds %struct.switchtec_dev, ptr %25, i32 0, i32 1
  %conv = trunc i64 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @switchtec_ntb_message_isr.__UNIQUE_ID_ddebug264, ptr noundef %dev6, ptr noundef nonnull @.str.80, i32 noundef %i.027, i32 noundef %conv) #13
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %26 = ptrtoint ptr %mmio_self_dbmsg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio_self_dbmsg, align 8
  %status = getelementptr %struct.ntb_dbmsg_regs, ptr %27, i32 0, i32 9, i32 %i.027, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !221
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %status, i8 1) #13, !srcloc !222
  br label %if.end15

if.end15:                                         ; preds = %do.end, %for.body.if.end15_crit_edge
  %inc = add nuw nsw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %if.end15.for.body_crit_edge, !llvm.loop !227

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntb_db_event(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntb_unregister_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !15, !16, !18, !20, !21, !23, !25, !27, !29, !30, !32, !33, !35, !37, !38, !39, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !73, !75, !76, !77, !79, !80, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !104, !106, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !137, !138, !139, !140, !142, !143, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !171, !172, !173, !174, !176, !177, !179, !180, !181, !183, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197}
!llvm.module.flags = !{!198, !199, !200, !201, !202, !203, !204, !205}
!llvm.ident = !{!206}

!0 = !{ptr @__UNIQUE_ID_description236, !1, !"__UNIQUE_ID_description236", i1 false, i1 false}
!1 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 16, i32 1}
!2 = !{ptr @__UNIQUE_ID_version237, !3, !"__UNIQUE_ID_version237", i1 false, i1 false}
!3 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 17, i32 1}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__modver_attr, !3, !"__modver_attr", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_file238, !9, !"__UNIQUE_ID_file238", i1 false, i1 false}
!9 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 18, i32 1}
!10 = !{ptr @__UNIQUE_ID_license239, !9, !"__UNIQUE_ID_license239", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author240, !12, !"__UNIQUE_ID_author240", i1 false, i1 false}
!12 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 19, i32 1}
!13 = !{ptr @__param_max_mw_size, !14, !"__param_max_mw_size", i1 false, i1 false}
!14 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 22, i32 1}
!15 = !{ptr @__UNIQUE_ID_max_mw_sizetype241, !14, !"__UNIQUE_ID_max_mw_sizetype241", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_max_mw_size242, !17, !"__UNIQUE_ID_max_mw_size242", i1 false, i1 false}
!17 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 23, i32 1}
!18 = !{ptr @__param_use_lut_mws, !19, !"__param_use_lut_mws", i1 false, i1 false}
!19 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 27, i32 1}
!20 = !{ptr @__UNIQUE_ID_use_lut_mwstype243, !19, !"__UNIQUE_ID_use_lut_mwstype243", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_use_lut_mws244, !22, !"__UNIQUE_ID_use_lut_mws244", i1 false, i1 false}
!22 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 28, i32 1}
!23 = !{ptr @__initcall__kmod_ntb_hw_switchtec__266_1573_switchtec_ntb_init6, !24, !"__initcall__kmod_ntb_hw_switchtec__266_1573_switchtec_ntb_init6", i1 false, i1 false}
!24 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 1573, i32 1}
!25 = !{ptr @__exitcall_switchtec_ntb_exit, !26, !"__exitcall_switchtec_ntb_exit", i1 false, i1 false}
!26 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 1579, i32 1}
!27 = !{ptr @use_lut_mws, !28, !"use_lut_mws", i1 false, i1 false}
!28 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 26, i32 13}
!29 = !{ptr @__param_str_max_mw_size, !14, !"__param_str_max_mw_size", i1 false, i1 false}
!30 = !{ptr @max_mw_size, !31, !"max_mw_size", i1 false, i1 false}
!31 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 21, i32 14}
!32 = !{ptr @__param_str_use_lut_mws, !19, !"__param_str_use_lut_mws", i1 false, i1 false}
!33 = !{ptr @switchtec_interface, !34, !"switchtec_interface", i1 false, i1 false}
!34 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 1563, i32 31}
!35 = !{ptr @.str.3, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 1528, i32 2}
!37 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @switchtec_ntb_add._entry, !36, !"_entry", i1 false, i1 false}
!42 = !{ptr @switchtec_ntb_add._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 1540, i32 2}
!45 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @switchtec_ntb_add._entry.8, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @switchtec_ntb_add._entry_ptr.11, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @switchtec_ntb_init_sndev.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 850, i32 2}
!50 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 868, i32 4}
!53 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @switchtec_ntb_init_sndev._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @switchtec_ntb_init_sndev._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 874, i32 4}
!58 = !{ptr @switchtec_ntb_init_sndev._entry.15, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @switchtec_ntb_init_sndev._entry_ptr.17, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 882, i32 4}
!62 = !{ptr @switchtec_ntb_init_sndev._entry.18, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @switchtec_ntb_init_sndev._entry_ptr.20, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 889, i32 4}
!66 = !{ptr @switchtec_ntb_init_sndev._entry.21, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @switchtec_ntb_init_sndev._entry_ptr.23, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 895, i32 2}
!70 = !{ptr @switchtec_ntb_init_sndev.__UNIQUE_ID_ddebug252, !69, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!71 = !{ptr @switchtec_ntb_ops, !72, !"switchtec_ntb_ops", i1 false, i1 false}
!72 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 813, i32 33}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 579, i32 2}
!75 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @switchtec_ntb_link_enable.__UNIQUE_ID_ddebug250, !74, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 512, i32 3}
!79 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @switchtec_ntb_link_status_update._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @switchtec_ntb_link_status_update._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 593, i32 2}
!86 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @switchtec_ntb_link_disable.__UNIQUE_ID_ddebug251, !85, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 282, i32 2}
!90 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @switchtec_ntb_mw_set_trans.__UNIQUE_ID_ddebug245, !89, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 299, i32 3}
!94 = !{ptr @switchtec_ntb_mw_set_trans._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @switchtec_ntb_mw_set_trans._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 325, i32 3}
!98 = !{ptr @switchtec_ntb_mw_set_trans._entry.36, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @switchtec_ntb_mw_set_trans._entry_ptr.38, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 103, i32 29}
!102 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 104, i32 28}
!104 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 105, i32 30}
!106 = !{ptr @switchtec_ntb_part_op.op_text, !107, !"op_text", i1 false, i1 false}
!107 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 102, i32 28}
!108 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 144, i32 3}
!110 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @switchtec_ntb_part_op._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @switchtec_ntb_part_op._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 534, i32 4}
!115 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @check_link_status_work._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @check_link_status_work._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.46, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 1466, i32 2}
!120 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @switchtec_ntb_reinit_peer._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @switchtec_ntb_reinit_peer._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 941, i32 3}
!125 = !{ptr @.str.49, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @config_rsvd_lut_win._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @config_rsvd_lut_win._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 1207, i32 2}
!130 = !{ptr @.str.51, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @switchtec_ntb_init_mw.__UNIQUE_ID_ddebug257, !129, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!132 = !{ptr @.str.52, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 1217, i32 2}
!134 = !{ptr @switchtec_ntb_init_mw.__UNIQUE_ID_ddebug258, !133, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!135 = !{ptr @.str.53, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 959, i32 3}
!137 = !{ptr @.str.54, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @config_req_id_table._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @config_req_id_table._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.55, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 975, i32 3}
!142 = !{ptr @config_req_id_table.__UNIQUE_ID_ddebug253, !141, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!143 = !{ptr @.str.57, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 988, i32 3}
!145 = !{ptr @config_req_id_table._entry.56, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @config_req_id_table._entry_ptr.58, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.59, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 1132, i32 2}
!149 = !{ptr @.str.60, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @switchtec_ntb_init_crosslink._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @switchtec_ntb_init_crosslink._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.62, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 1137, i32 3}
!154 = !{ptr @switchtec_ntb_init_crosslink._entry.61, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @switchtec_ntb_init_crosslink._entry_ptr.63, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.64, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 1106, i32 3}
!158 = !{ptr @.str.65, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @crosslink_enum_partition.__UNIQUE_ID_ddebug256, !157, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!160 = !{ptr @.str.66, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 1053, i32 3}
!162 = !{ptr @.str.67, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @crosslink_setup_mws._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @crosslink_setup_mws._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.68, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 1254, i32 2}
!167 = !{ptr @.str.69, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @switchtec_ntb_init_db.__UNIQUE_ID_ddebug259, !166, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!169 = !{ptr @.str.70, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 1332, i32 3}
!171 = !{ptr @.str.71, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @switchtec_ntb_init_shared_mw._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @switchtec_ntb_init_shared_mw._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.72, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 1351, i32 2}
!176 = !{ptr @switchtec_ntb_init_shared_mw.__UNIQUE_ID_ddebug262, !175, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!177 = !{ptr @.str.73, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 1422, i32 2}
!179 = !{ptr @.str.74, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @switchtec_ntb_init_db_msg_irq.__UNIQUE_ID_ddebug265, !178, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!181 = !{ptr @.str.75, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 1438, i32 5}
!183 = !{ptr @.str.76, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 1444, i32 5}
!185 = !{ptr @.str.77, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 1377, i32 2}
!187 = !{ptr @.str.78, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @switchtec_ntb_doorbell_isr.__UNIQUE_ID_ddebug263, !186, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!189 = !{ptr @.str.79, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 1393, i32 4}
!191 = !{ptr @.str.80, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @switchtec_ntb_message_isr.__UNIQUE_ID_ddebug264, !190, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!193 = !{ptr @.str.81, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/ntb/hw/mscc/ntb_hw_switchtec.c", i32 1560, i32 2}
!195 = !{ptr @.str.82, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @switchtec_ntb_remove._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @switchtec_ntb_remove._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{i32 1, !"wchar_size", i32 2}
!199 = !{i32 1, !"min_enum_size", i32 4}
!200 = !{i32 8, !"branch-target-enforcement", i32 0}
!201 = !{i32 8, !"sign-return-address", i32 0}
!202 = !{i32 8, !"sign-return-address-all", i32 0}
!203 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!204 = !{i32 7, !"uwtable", i32 1}
!205 = !{i32 7, !"frame-pointer", i32 2}
!206 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!207 = !{i64 2151777444}
!208 = !{i64 4235322}
!209 = !{i64 4235740}
!210 = !{i64 2151776089}
!211 = !{i32 0, i32 33}
!212 = !{i64 2148754514, i64 2148754519, i64 2148754532, i64 2148754576, i64 2148754610, i64 2148754631}
!213 = !{i64 4234902}
!214 = !{i64 2151775477}
!215 = !{i64 4235520}
!216 = !{i64 2151774865}
!217 = distinct !{!217, !218}
!218 = !{!"llvm.loop.peeled.count", i32 2}
!219 = distinct !{!219, !220}
!220 = !{!"llvm.loop.peeled.count", i32 1}
!221 = !{i64 2151776470}
!222 = !{i64 4235125}
!223 = !{i8 0, i8 2}
!224 = !{!"branch_weights", i32 1, i32 2000}
!225 = !{i64 2151776894}
!226 = !{i64 4234702}
!227 = distinct !{!227, !220}
