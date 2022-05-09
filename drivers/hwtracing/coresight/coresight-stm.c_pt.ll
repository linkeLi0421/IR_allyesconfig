; ModuleID = '/llk/IR_all_yes/drivers/hwtracing/coresight/coresight-stm.c_pt.bc'
source_filename = "../drivers/hwtracing/coresight/coresight-stm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.96 }
%union.anon.96 = type { ptr }
%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.coresight_dev_list = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.coresight_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.coresight_ops_source = type { ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.coresight_desc = type { i32, %union.coresight_dev_subtype, ptr, ptr, ptr, ptr, ptr, %struct.csdev_access }
%union.coresight_dev_subtype = type { %struct.anon.104 }
%struct.anon.104 = type { i32, i32 }
%struct.csdev_access = type { i8, %union.anon.105 }
%union.anon.105 = type { %struct.anon.106 }
%struct.anon.106 = type { ptr, ptr }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.stm_drvdata = type { ptr, ptr, ptr, %struct.spinlock, %struct.channel_space, %struct.stm_data, %struct.local_t, i8, i32, i32, i32, i32, i32, i32, i32 }
%struct.channel_space = type { ptr, i32, ptr }
%struct.stm_data = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.local_t = type { %struct.atomic_t }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.coresight_device = type { ptr, i32, %union.coresight_dev_subtype, ptr, %struct.csdev_access, %struct.device, ptr, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, %struct.list_head, %struct.spinlock, ptr }

@__param_str_boot_nr_channel = internal constant [30 x i8] c"coresight_stm.boot_nr_channel\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@boot_nr_channel = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_boot_nr_channel = internal constant %struct.kernel_param { ptr @__param_str_boot_nr_channel, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.96 { ptr @boot_nr_channel } }, section "__param", align 4
@__UNIQUE_ID_boot_nr_channeltype297 = internal constant [43 x i8] c"coresight_stm.parmtype=boot_nr_channel:int\00", section ".modinfo", align 1
@__initcall__kmod_coresight_stm__300_1007_stm_driver_init6 = internal global ptr @stm_driver_init, section ".initcall6.init", align 4
@stm_driver = internal global { %struct.amba_driver, [36 x i8] } { %struct.amba_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm_dev_pm_ops, ptr null, ptr null }, ptr @stm_probe, ptr @stm_remove, ptr null, ptr @stm_ids }, [36 x i8] zeroinitializer }, align 32
@__exitcall_stm_driver_exit = internal global ptr @stm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author301 = internal constant [59 x i8] c"coresight_stm.author=Pratik Patel <pratikp@codeaurora.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [70 x i8] c"coresight_stm.description=Arm CoreSight System Trace Macrocell driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [61 x i8] c"coresight_stm.file=drivers/hwtracing/coresight/coresight-stm\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [29 x i8] c"coresight_stm.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"coresight-stm\00", [18 x i8] zeroinitializer }, align 32
@stm_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm_runtime_suspend, ptr @stm_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@stm_ids = internal constant { [3 x %struct.amba_id], [60 x i8] } { [3 x %struct.amba_id] [%struct.amba_id { i32 768354, i32 1048575, ptr @.compoundliteral }, %struct.amba_id { i32 768355, i32 1048575, ptr @.compoundliteral.41 }, %struct.amba_id zeroinitializer], [60 x i8] zeroinitializer }, align 32
@stm_devs = internal global { %struct.coresight_dev_list, [20 x i8] } { %struct.coresight_dev_list { i32 0, ptr @.str.11, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"atclk\00", [26 x i8] zeroinitializer }, align 32
@stm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&drvdata->spinlock\00", [45 x i8] zeroinitializer }, align 32
@stm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 918, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s : stm_register_device failed, probing deferred\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stm_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/hwtracing/coresight/coresight-stm.c\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm_probe._entry_ptr = internal global ptr @stm_probe._entry, section ".printk_index", align 4
@stm_cs_ops = internal constant { %struct.coresight_ops, [44 x i8] } { %struct.coresight_ops { ptr null, ptr null, ptr @stm_source_ops, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@coresight_stm_groups = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @coresight_stm_group, ptr @coresight_stm_mgmt_group, ptr null], [20 x i8] zeroinitializer }, align 32
@stm_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 944, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s initialized\0A\00", [16 x i8] zeroinitializer }, align 32
@stm_probe._entry_ptr.10 = internal global ptr @stm_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"stm\00", [28 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg-names\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stm-stimulus-base\00", [46 x i8] zeroinitializer }, align 32
@stm_source_ops = internal constant { %struct.coresight_ops_source, [16 x i8] } { %struct.coresight_ops_source { ptr null, ptr @stm_trace_id, ptr @stm_enable, ptr @stm_disable }, [16 x i8] zeroinitializer }, align 32
@stm_enable.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.5, ptr @.str.16, i8 0, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"coresight_stm\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stm_enable\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"STM tracing enabled\0A\00", [43 x i8] zeroinitializer }, align 32
@stm_disable.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.17, ptr @.str.5, ptr @.str.18, i8 0, i8 69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stm_disable\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"STM tracing disabled\0A\00", [42 x i8] zeroinitializer }, align 32
@coresight_stm_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @coresight_stm_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@coresight_stm_mgmt_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.25, ptr null, ptr null, ptr @coresight_stm_mgmt_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@coresight_stm_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @dev_attr_hwevent_enable, ptr @dev_attr_hwevent_select, ptr @dev_attr_port_enable, ptr @dev_attr_port_select, ptr @dev_attr_traceid, ptr null], [40 x i8] zeroinitializer }, align 32
@dev_attr_hwevent_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hwevent_enable_show, ptr @hwevent_enable_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hwevent_select = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hwevent_select_show, ptr @hwevent_select_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_port_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @port_enable_show, ptr @port_enable_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_port_select = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @port_select_show, ptr @port_select_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_traceid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @traceid_show, ptr @traceid_store }, [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hwevent_enable\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%#lx\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hwevent_select\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"port_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"port_select\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"traceid\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mgmt\00", [27 x i8] zeroinitializer }, align 32
@coresight_stm_mgmt_attrs = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @dev_attr_tcsr, ptr @dev_attr_tsfreqr, ptr @dev_attr_syncr, ptr @dev_attr_sper, ptr @dev_attr_spter, ptr @dev_attr_privmaskr, ptr @dev_attr_spscr, ptr @dev_attr_spmscr, ptr @dev_attr_spfeat1r, ptr @dev_attr_spfeat2r, ptr @dev_attr_spfeat3r, ptr @dev_attr_devid, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_tcsr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tcsr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_tsfreqr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tsfreqr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_syncr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @syncr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sper = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sper_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_spter = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spter_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_privmaskr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @privmaskr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_spscr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spscr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_spmscr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spmscr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_spfeat1r = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spfeat1r_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_spfeat2r = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spfeat2r_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_spfeat3r = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spfeat3r_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_devid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @devid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tcsr\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%llx\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tsfreqr\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"syncr\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sper\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spter\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"privmaskr\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spscr\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spmscr\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spfeat1r\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spfeat2r\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spfeat3r\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"devid\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"STM32\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.amba_cs_uci_id, [16 x i8] } { %struct.amba_cs_uci_id { i32 0, i32 0, i32 0, ptr @.str.39 }, [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"STM500\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { %struct.amba_cs_uci_id, [16 x i8] } { %struct.amba_cs_uci_id { i32 0, i32 0, i32 0, ptr @.str.40 }, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"boot_nr_channel\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 89, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant [11 x i8] c"stm_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 995, i32 27 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 997, i32 13 }
@___asan_gen_.53 = private unnamed_addr constant [15 x i8] c"stm_dev_pm_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 983, i32 32 }
@___asan_gen_.56 = private unnamed_addr constant [8 x i8] c"stm_ids\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 987, i32 29 }
@___asan_gen_.59 = private unnamed_addr constant [9 x i8] c"stm_devs\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 874, i32 44 }
@___asan_gen_.65 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 910, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 916, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [11 x i8] c"stm_cs_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 296, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant [21 x i8] c"coresight_stm_groups\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 687, i32 38 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 943, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 111, i32 1 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 700, i32 44 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 701, i32 14 }
@___asan_gen_.110 = private unnamed_addr constant [15 x i8] c"stm_source_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 290, i32 42 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 215, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 279, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [20 x i8] c"coresight_stm_group\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 678, i32 37 }
@___asan_gen_.131 = private unnamed_addr constant [25 x i8] c"coresight_stm_mgmt_group\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 682, i32 37 }
@___asan_gen_.134 = private unnamed_addr constant [20 x i8] c"coresight_stm_attrs\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 653, i32 26 }
@___asan_gen_.137 = private unnamed_addr constant [24 x i8] c"dev_attr_hwevent_enable\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [24 x i8] c"dev_attr_hwevent_select\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [21 x i8] c"dev_attr_port_enable\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [21 x i8] c"dev_attr_port_select\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"dev_attr_traceid\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 490, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 469, i32 35 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 517, i32 8 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 607, i32 8 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 564, i32 8 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 635, i32 8 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 684, i32 10 }
@___asan_gen_.173 = private unnamed_addr constant [25 x i8] c"coresight_stm_mgmt_attrs\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 662, i32 26 }
@___asan_gen_.176 = private unnamed_addr constant [14 x i8] c"dev_attr_tcsr\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"dev_attr_tsfreqr\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [15 x i8] c"dev_attr_syncr\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [14 x i8] c"dev_attr_sper\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [15 x i8] c"dev_attr_spter\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [19 x i8] c"dev_attr_privmaskr\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [15 x i8] c"dev_attr_spscr\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [16 x i8] c"dev_attr_spmscr\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [18 x i8] c"dev_attr_spfeat1r\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [18 x i8] c"dev_attr_spfeat2r\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [18 x i8] c"dev_attr_spfeat3r\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [15 x i8] c"dev_attr_devid\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 640, i32 1 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 641, i32 1 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 642, i32 1 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 643, i32 1 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 644, i32 1 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 645, i32 1 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 646, i32 1 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 647, i32 1 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 648, i32 1 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 649, i32 1 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 650, i32 1 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 651, i32 1 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 988, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.255 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.256 = private constant [47 x i8] c"../drivers/hwtracing/coresight/coresight-stm.c\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 989, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@llvm.compiler.used = appending global [84 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_boot_nr_channeltype297, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__exitcall_stm_driver_exit, ptr @__initcall__kmod_coresight_stm__300_1007_stm_driver_init6, ptr @__param_boot_nr_channel, ptr @stm_driver_exit, ptr @stm_probe._entry, ptr @stm_probe._entry.8, ptr @stm_probe._entry_ptr, ptr @stm_probe._entry_ptr.10, ptr @boot_nr_channel, ptr @stm_driver, ptr @.str, ptr @stm_dev_pm_ops, ptr @stm_ids, ptr @stm_devs, ptr @.str.1, ptr @stm_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @stm_cs_ops, ptr @coresight_stm_groups, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @stm_source_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @coresight_stm_group, ptr @coresight_stm_mgmt_group, ptr @coresight_stm_attrs, ptr @dev_attr_hwevent_enable, ptr @dev_attr_hwevent_select, ptr @dev_attr_port_enable, ptr @dev_attr_port_select, ptr @dev_attr_traceid, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @coresight_stm_mgmt_attrs, ptr @dev_attr_tcsr, ptr @dev_attr_tsfreqr, ptr @dev_attr_syncr, ptr @dev_attr_sper, ptr @dev_attr_spter, ptr @dev_attr_privmaskr, ptr @dev_attr_spscr, ptr @dev_attr_spmscr, ptr @dev_attr_spfeat1r, ptr @dev_attr_spfeat2r, ptr @dev_attr_spfeat3r, ptr @dev_attr_devid, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.compoundliteral, ptr @.str.40, ptr @.compoundliteral.41], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boot_nr_channel to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm_ids to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm_devs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm_cs_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coresight_stm_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm_source_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coresight_stm_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coresight_stm_mgmt_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coresight_stm_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hwevent_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hwevent_select to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_port_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_port_select to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_traceid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coresight_stm_mgmt_attrs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tcsr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tsfreqr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_syncr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sper to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_spter to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_privmaskr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_spscr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_spmscr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_spfeat1r to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_spfeat2r to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_spfeat3r to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_devid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amba_driver_register(ptr noundef nonnull @stm_driver) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amba_driver_unregister(ptr noundef nonnull @stm_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm_probe(ptr noundef %adev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %name.i.i = alloca ptr, align 4
  %ch_res = alloca %struct.resource, align 4
  %desc = alloca %struct.coresight_desc, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %res2 = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ch_res) #12
  %0 = call ptr @memset(ptr %ch_res, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %desc) #12
  %1 = call ptr @memset(ptr %desc, i32 0, i32 44)
  %call = tail call ptr @coresight_alloc_device_name(ptr noundef nonnull @stm_devs, ptr noundef %adev) #12
  %name = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 6
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %name, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %adev, i32 noundef 152, i32 noundef 3520) #12
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_clk_get(ptr noundef %adev, ptr noundef nonnull @.str.1) #12
  %atclk = getelementptr inbounds %struct.stm_drvdata, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %atclk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9, ptr %atclk, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end7.if.end18_crit_edge, label %if.then12

if.end7.if.end18_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then12:                                        ; preds = %if.end7
  %call.i143 = tail call i32 @clk_prepare(ptr noundef %call9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143)
  %tobool.not.i = icmp eq i32 %call.i143, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.then12
  %call1.i = tail call i32 @clk_enable(ptr noundef %call9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end18_crit_edge, label %if.then3.i

if.end.i.if.end18_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %call9) #12
  br label %cleanup

if.end18:                                         ; preds = %if.end.i.if.end18_crit_edge, %if.end7.if.end18_crit_edge
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call19 = tail call ptr @devm_ioremap_resource(ptr noundef %adev, ptr noundef %res2) #12
  %cmp.i144 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i144, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call19, ptr %call.i, align 4
  %access = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 7
  %7 = ptrtoint ptr %access to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %access, align 4
  %.compoundliteral.sroa.291.0.access.sroa_idx = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %.compoundliteral.sroa.291.0.access.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call19, ptr %.compoundliteral.sroa.291.0.access.sroa_idx, align 4
  %call.i145 = tail call ptr @dev_fwnode(ptr noundef %adev) #12
  %tobool.not.i.i.i = icmp eq ptr %call.i145, null
  %cmp.i.i.i = icmp ugt ptr %call.i145, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %if.end23.cleanup_crit_edge, label %is_of_node.exit.i

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

is_of_node.exit.i:                                ; preds = %if.end23
  %ops.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %call.i145, i32 0, i32 1
  %9 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i.i, align 4
  %cmp.i.i = icmp eq ptr %10, @of_fwnode_ops
  br i1 %cmp.i.i, label %if.then.i, label %is_of_node.exit.i.cleanup_crit_edge

is_of_node.exit.i.cleanup_crit_edge:              ; preds = %is_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %is_of_node.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name.i.i) #12
  %11 = ptrtoint ptr %name.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %name.i.i, align 4
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 27
  %12 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node.i.i, align 8
  %call.i14.i.i = call i32 @of_property_read_string_helper(ptr noundef %13, ptr noundef nonnull @.str.12, ptr noundef nonnull %name.i.i, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i14.i.i)
  %tobool.not15.i.i = icmp sgt i32 %call.i14.i.i, -1
  br i1 %tobool.not15.i.i, label %if.then.i.while.body.i.i_crit_edge, label %if.then.i.stm_get_stimulus_area.exit.thread160_crit_edge

if.then.i.stm_get_stimulus_area.exit.thread160_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm_get_stimulus_area.exit.thread160

if.then.i.while.body.i.i_crit_edge:               ; preds = %if.then.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.then.i.i.while.body.i.i_crit_edge, %if.then.i.while.body.i.i_crit_edge
  %index.016.i.i = phi i32 [ %inc.i.i, %if.then.i.i.while.body.i.i_crit_edge ], [ 0, %if.then.i.while.body.i.i_crit_edge ]
  %14 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name.i.i, align 4
  %call1.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(18) @.str.13, ptr noundef %15) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %stm_get_stimulus_area.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  %inc.i.i = add i32 %index.016.i.i, 1
  %call.i.i.i = call i32 @of_property_read_string_helper(ptr noundef %13, ptr noundef nonnull @.str.12, ptr noundef nonnull %name.i.i, i32 noundef 1, i32 noundef %inc.i.i) #12
  %tobool.not.i.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i.i, label %if.then.i.i.while.body.i.i_crit_edge, label %if.then.i.i.stm_get_stimulus_area.exit.thread160_crit_edge

if.then.i.i.stm_get_stimulus_area.exit.thread160_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm_get_stimulus_area.exit.thread160

if.then.i.i.while.body.i.i_crit_edge:             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

stm_get_stimulus_area.exit.thread160:             ; preds = %if.then.i.i.stm_get_stimulus_area.exit.thread160_crit_edge, %if.then.i.stm_get_stimulus_area.exit.thread160_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i.i) #12
  br label %cleanup

stm_get_stimulus_area.exit:                       ; preds = %while.body.i.i
  %call6.i.i = call i32 @of_address_to_resource(ptr noundef %13, i32 noundef %index.016.i.i, ptr noundef nonnull %ch_res) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool26.not = icmp eq i32 %call6.i.i, 0
  br i1 %tobool26.not, label %if.end28, label %stm_get_stimulus_area.exit.cleanup_crit_edge

stm_get_stimulus_area.exit.cleanup_crit_edge:     ; preds = %stm_get_stimulus_area.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end28:                                         ; preds = %stm_get_stimulus_area.exit
  %16 = ptrtoint ptr %ch_res to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ch_res, align 4
  %phys = getelementptr inbounds %struct.stm_drvdata, ptr %call.i, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %phys, align 4
  %call29 = call ptr @devm_ioremap_resource(ptr noundef %adev, ptr noundef nonnull %ch_res) #12
  %cmp.i147 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i147, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %call29 to i32
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %chs = getelementptr inbounds %struct.stm_drvdata, ptr %call.i, i32 0, i32 4
  %20 = ptrtoint ptr %chs to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call29, ptr %chs, align 4
  %write_bytes = getelementptr inbounds %struct.stm_drvdata, ptr %call.i, i32 0, i32 8
  %21 = ptrtoint ptr %write_bytes to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %write_bytes, align 4
  %22 = load i32, ptr @boot_nr_channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool37.not = icmp eq i32 %22, 0
  br i1 %tobool37.not, label %if.else, label %if.end33.if.end41_crit_edge

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 4040
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !140
  %26 = and i32 %25, -65280
  %27 = call i32 @llvm.bswap.i32(i32 %26) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i148 = icmp eq i32 %26, 0
  %spec.store.select.i = select i1 %tobool.not.i148, i32 32, i32 %27
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.end33.if.end41_crit_edge
  %.sink = phi i32 [ %spec.store.select.i, %if.else ], [ %22, %if.end33.if.end41_crit_edge ]
  %28 = getelementptr inbounds %struct.stm_drvdata, ptr %call.i, i32 0, i32 11
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink, ptr %28, align 4
  %call43 = call ptr @devm_bitmap_zalloc(ptr noundef %adev, i32 noundef %.sink, i32 noundef 3264) #12
  %guaranteed = getelementptr inbounds %struct.stm_drvdata, ptr %call.i, i32 0, i32 4, i32 2
  %30 = ptrtoint ptr %guaranteed to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call43, ptr %guaranteed, align 4
  %tobool47.not = icmp eq ptr %call43, null
  br i1 %tobool47.not, label %if.end41.cleanup_crit_edge, label %do.body

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %if.end41
  %spinlock = getelementptr inbounds %struct.stm_drvdata, ptr %call.i, i32 0, i32 3
  call void @__raw_spin_lock_init(ptr noundef %spinlock, ptr noundef nonnull @.str.2, ptr noundef nonnull @stm_probe.__key, i16 noundef signext 3) #12
  call fastcc void @stm_init_default_data(ptr noundef nonnull %call.i)
  %31 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name, align 4
  %stm.i = getelementptr inbounds %struct.stm_drvdata, ptr %call.i, i32 0, i32 5
  %33 = ptrtoint ptr %stm.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %stm.i, align 4
  %sw_start.i = getelementptr inbounds %struct.stm_drvdata, ptr %call.i, i32 0, i32 5, i32 2
  %34 = ptrtoint ptr %sw_start.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %sw_start.i, align 4
  %sw_end.i = getelementptr inbounds %struct.stm_drvdata, ptr %call.i, i32 0, i32 5, i32 3
  %35 = ptrtoint ptr %sw_end.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %sw_end.i, align 4
  %hw_override.i = getelementptr inbounds %struct.stm_drvdata, ptr %call.i, i32 0, i32 5, i32 6
  %36 = ptrtoint ptr %hw_override.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %hw_override.i, align 4
  %37 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %28, align 4
  %sw_nchannels.i = getelementptr inbounds %struct.stm_drvdata, ptr %call.i, i32 0, i32 5, i32 4
  %39 = ptrtoint ptr %sw_nchannels.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %sw_nchannels.i, align 4
  %sw_mmiosz.i = getelementptr inbounds %struct.stm_drvdata, ptr %call.i, i32 0, i32 5, i32 5
  %40 = ptrtoint ptr %sw_mmiosz.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 256, ptr %sw_mmiosz.i, align 4
  %packet.i = getelementptr inbounds %struct.stm_drvdata, ptr %call.i, i32 0, i32 5, i32 7
  %41 = ptrtoint ptr %packet.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @stm_generic_packet, ptr %packet.i, align 4
  %mmio_addr.i = getelementptr inbounds %struct.stm_drvdata, ptr %call.i, i32 0, i32 5, i32 8
  %42 = ptrtoint ptr %mmio_addr.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @stm_mmio_addr, ptr %mmio_addr.i, align 4
  %link.i = getelementptr inbounds %struct.stm_drvdata, ptr %call.i, i32 0, i32 5, i32 9
  %43 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @stm_generic_link, ptr %link.i, align 4
  %unlink.i = getelementptr inbounds %struct.stm_drvdata, ptr %call.i, i32 0, i32 5, i32 10
  %44 = ptrtoint ptr %unlink.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @stm_generic_unlink, ptr %unlink.i, align 4
  %set_options.i = getelementptr inbounds %struct.stm_drvdata, ptr %call.i, i32 0, i32 5, i32 11
  %45 = ptrtoint ptr %set_options.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @stm_generic_set_options, ptr %set_options.i, align 4
  %call52 = call i32 @stm_register_device(ptr noundef %adev, ptr noundef %stm.i, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end59, label %do.end57

do.end57:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %adev, ptr noundef nonnull @.str.3, ptr noundef %47) #16
  br label %cleanup

if.end59:                                         ; preds = %do.body
  %call60 = call ptr @coresight_get_platform_data(ptr noundef %adev) #12
  %cmp.i149 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i149, label %if.end59.stm_unregister_crit_edge, label %if.end64

if.end59.stm_unregister_crit_edge:                ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm_unregister

if.end64:                                         ; preds = %if.end59
  %platform_data = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 7
  %48 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call60, ptr %platform_data, align 8
  %49 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 4, ptr %desc, align 4
  %subtype = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 1
  %50 = ptrtoint ptr %subtype to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 3, ptr %subtype, align 4
  %ops = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 2
  %51 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @stm_cs_ops, ptr %ops, align 4
  %pdata66 = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 3
  %52 = ptrtoint ptr %pdata66 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call60, ptr %pdata66, align 4
  %dev67 = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 4
  %53 = ptrtoint ptr %dev67 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %adev, ptr %dev67, align 4
  %groups = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 5
  %54 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @coresight_stm_groups, ptr %groups, align 4
  %call68 = call ptr @coresight_register(ptr noundef nonnull %desc) #12
  %csdev = getelementptr inbounds %struct.stm_drvdata, ptr %call.i, i32 0, i32 2
  %55 = ptrtoint ptr %csdev to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call68, ptr %csdev, align 4
  %cmp.i150 = icmp ugt ptr %call68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i150, label %if.end64.stm_unregister_crit_edge, label %if.end74

if.end64.stm_unregister_crit_edge:                ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm_unregister

if.end74:                                         ; preds = %if.end64
  %call.i151 = call i32 @__pm_runtime_idle(ptr noundef %adev, i32 noundef 5) #12
  %56 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %csdev, align 4
  %dev81 = getelementptr inbounds %struct.coresight_device, ptr %57, i32 0, i32 5
  %data.i = getelementptr inbounds %struct.amba_id, ptr %id, i32 0, i32 2
  %58 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i, align 4
  %tobool.not.i152 = icmp eq ptr %59, null
  br i1 %tobool.not.i152, label %if.end74.coresight_get_uci_data.exit_crit_edge, label %if.end.i153

if.end74.coresight_get_uci_data.exit_crit_edge:   ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %coresight_get_uci_data.exit

if.end.i153:                                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  %data1.i = getelementptr inbounds %struct.amba_cs_uci_id, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data1.i, align 4
  br label %coresight_get_uci_data.exit

coresight_get_uci_data.exit:                      ; preds = %if.end.i153, %if.end74.coresight_get_uci_data.exit_crit_edge
  %retval.0.i154 = phi ptr [ %61, %if.end.i153 ], [ null, %if.end74.coresight_get_uci_data.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev81, ptr noundef nonnull @.str.9, ptr noundef %retval.0.i154) #16
  br label %cleanup

stm_unregister:                                   ; preds = %if.end64.stm_unregister_crit_edge, %if.end59.stm_unregister_crit_edge
  %ret.0.in = phi ptr [ %call60, %if.end59.stm_unregister_crit_edge ], [ %call68, %if.end64.stm_unregister_crit_edge ]
  %ret.0 = ptrtoint ptr %ret.0.in to i32
  call void @stm_unregister_device(ptr noundef %stm.i) #12
  br label %cleanup

cleanup:                                          ; preds = %stm_unregister, %coresight_get_uci_data.exit, %do.end57, %if.end41.cleanup_crit_edge, %if.then31, %stm_get_stimulus_area.exit.cleanup_crit_edge, %stm_get_stimulus_area.exit.thread160, %is_of_node.exit.i.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.then21, %if.then3.i, %if.then12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then21 ], [ %19, %if.then31 ], [ -517, %do.end57 ], [ %ret.0, %stm_unregister ], [ 0, %coresight_get_uci_data.exit ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call6.i.i, %stm_get_stimulus_area.exit.cleanup_crit_edge ], [ -12, %if.end41.cleanup_crit_edge ], [ -22, %stm_get_stimulus_area.exit.thread160 ], [ %call1.i, %if.then3.i ], [ %call.i143, %if.then12.cleanup_crit_edge ], [ -2, %is_of_node.exit.i.cleanup_crit_edge ], [ -2, %if.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %desc) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ch_res) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm_remove(ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %csdev = getelementptr inbounds %struct.stm_drvdata, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csdev, align 4
  tail call void @coresight_unregister(ptr noundef %3) #12
  %stm = getelementptr inbounds %struct.stm_drvdata, ptr %1, i32 0, i32 5
  tail call void @stm_unregister_device(ptr noundef %stm) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %atclk = getelementptr inbounds %struct.stm_drvdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %atclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %atclk, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_disable(ptr noundef %3) #12
  tail call void @clk_unprepare(ptr noundef %3) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %atclk = getelementptr inbounds %struct.stm_drvdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %atclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %atclk, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %3) #12
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coresight_alloc_device_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_bitmap_zalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm_init_default_data(ptr nocapture noundef %drvdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %stmspscr = getelementptr inbounds %struct.stm_drvdata, ptr %drvdata, i32 0, i32 10
  %0 = ptrtoint ptr %stmspscr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %stmspscr, align 4
  %stmsper = getelementptr inbounds %struct.stm_drvdata, ptr %drvdata, i32 0, i32 9
  %1 = ptrtoint ptr %stmsper to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %stmsper, align 4
  %traceid = getelementptr inbounds %struct.stm_drvdata, ptr %drvdata, i32 0, i32 7
  %2 = ptrtoint ptr %traceid to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %traceid, align 4
  %guaranteed = getelementptr inbounds %struct.stm_drvdata, ptr %drvdata, i32 0, i32 4, i32 2
  %3 = ptrtoint ptr %guaranteed to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %guaranteed, align 4
  %numsp = getelementptr inbounds %struct.stm_drvdata, ptr %drvdata, i32 0, i32 11
  %5 = ptrtoint ptr %numsp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %numsp, align 4
  tail call void @__bitmap_clear(ptr noundef %4, i32 noundef 0, i32 noundef %6) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stm_register_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coresight_get_platform_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coresight_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stm_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm_generic_packet(ptr noundef %stm_data, i32 noundef %master, i32 noundef %channel, i32 noundef %packet, i32 noundef %flags, i32 noundef %size, ptr noundef %payload) #2 align 64 {
entry:
  %paload.i68.sroa.0 = alloca i64, align 8
  %paload.i.sroa.0 = alloca i8, align 8
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %stm_data, i32 -68
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %mode = getelementptr i8, ptr %stm_data, i32 48
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mode, i32 noundef 4) #12
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %numsp = getelementptr i8, ptr %stm_data, i32 68
  %2 = ptrtoint ptr %numsp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %numsp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %channel)
  %cmp.not = icmp ugt i32 %3, %channel
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %chs = getelementptr i8, ptr %stm_data, i32 -12
  %4 = ptrtoint ptr %chs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chs, align 4
  %mul = shl i32 %channel, 8
  %add.ptr4 = getelementptr i8, ptr %5, i32 %mul
  %and = shl i32 %flags, 2
  %6 = and i32 %and, 8
  %guaranteed = getelementptr i8, ptr %stm_data, i32 -4
  %7 = ptrtoint ptr %guaranteed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %guaranteed, align 4
  %div3.i = lshr i32 %channel, 5
  %arrayidx.i = getelementptr i32, ptr %8, i32 %div3.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %channel, 31
  %11 = shl nuw i32 1, %and.i
  %12 = and i32 %10, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  %cond9 = select i1 %tobool8.not, i32 0, i32 128
  %or = or i32 %cond9, %6
  %write_bytes = getelementptr i8, ptr %stm_data, i32 56
  %13 = ptrtoint ptr %write_bytes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %write_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %size)
  %cmp10 = icmp ult i32 %14, %size
  %15 = tail call i32 @llvm.ctlz.i32(i32 %size, i1 true) #12, !range !141
  %sub.i.i.op.i = xor i32 %15, 31
  %sub.i.i.op.op.i = shl nuw i32 1, %sub.i.i.op.i
  %size.addr.0 = select i1 %cmp10, i32 %14, i32 %sub.i.i.op.op.i
  %16 = zext i32 %packet to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %packet, label %if.end3.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb30
  ]

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end3
  %and26 = xor i32 %or, 232
  %add.ptr27 = getelementptr i8, ptr %add.ptr4, i32 %and26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %paload.i.sroa.0)
  %17 = ptrtoint ptr %payload to i32
  %conv.i.i = and i32 %14, 255
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %and.i.i = and i32 %sub.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %18 = ptrtoint ptr %paload.i.sroa.0 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %paload.i.sroa.0, align 8
  br i1 %tobool.i.not.i, label %sw.bb.stm_send.exit_crit_edge, label %if.then.i

sw.bb.stm_send.exit_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm_send.exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %payload to i32
  call void @__asan_load1_noabort(i32 %19)
  %paload.i.sroa.0.0.copyload = load i8, ptr %payload, align 1
  %20 = ptrtoint ptr %paload.i.sroa.0 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %paload.i.sroa.0.0.copyload, ptr %paload.i.sroa.0, align 8
  br label %stm_send.exit

stm_send.exit:                                    ; preds = %if.then.i, %sw.bb.stm_send.exit_crit_edge
  %data.addr.0.i = phi ptr [ %paload.i.sroa.0, %if.then.i ], [ %payload, %sw.bb.stm_send.exit_crit_edge ]
  %21 = ptrtoint ptr %data.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %data.addr.0.i, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr27, i8 %22) #12, !srcloc !142
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %paload.i.sroa.0)
  br label %cleanup

sw.bb30:                                          ; preds = %if.end3
  %and31 = shl i32 %flags, 4
  %23 = and i32 %and31, 16
  %or34 = or i32 %or, %23
  %and36 = xor i32 %or34, 152
  %add.ptr37 = getelementptr i8, ptr %add.ptr4, i32 %and36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %paload.i68.sroa.0)
  %24 = ptrtoint ptr %payload to i32
  %conv.i.i69 = and i32 %14, 255
  %sub.i.i70 = add nsw i32 %conv.i.i69, -1
  %and.i.i71 = and i32 %sub.i.i70, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i71)
  %tobool.i.not.i72 = icmp eq i32 %and.i.i71, 0
  %25 = ptrtoint ptr %paload.i68.sroa.0 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 -1, ptr %paload.i68.sroa.0, align 8
  br i1 %tobool.i.not.i72, label %sw.bb30.if.end.i_crit_edge, label %if.then.i73

sw.bb30.if.end.i_crit_edge:                       ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i73:                                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #14
  %26 = call ptr @memcpy(ptr %paload.i68.sroa.0, ptr %payload, i32 %size.addr.0)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i73, %sw.bb30.if.end.i_crit_edge
  %data.addr.0.i74 = phi ptr [ %paload.i68.sroa.0, %if.then.i73 ], [ %payload, %sw.bb30.if.end.i_crit_edge ]
  %27 = zext i32 %size.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %size.addr.0, label %if.end.i.stm_send.exit75_crit_edge [
    i32 4, label %sw.bb.i
    i32 2, label %sw.bb2.i
    i32 1, label %sw.bb3.i
  ]

if.end.i.stm_send.exit75_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm_send.exit75

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %data.addr.0.i74 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %data.addr.0.i74, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %30) #12, !srcloc !143
  br label %stm_send.exit75

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %data.addr.0.i74 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %data.addr.0.i74, align 1
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr37, i16 %33) #12, !srcloc !144
  br label %stm_send.exit75

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %data.addr.0.i74 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %data.addr.0.i74, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr37, i8 %35) #12, !srcloc !142
  br label %stm_send.exit75

stm_send.exit75:                                  ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb.i, %if.end.i.stm_send.exit75_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %paload.i68.sroa.0)
  br label %cleanup

cleanup:                                          ; preds = %stm_send.exit75, %stm_send.exit, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -13, %land.lhs.true.cleanup_crit_edge ], [ -13, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -524, %if.end3.cleanup_crit_edge ], [ %size.addr.0, %stm_send.exit75 ], [ 1, %stm_send.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm_mmio_addr(ptr nocapture noundef readonly %stm_data, i32 noundef %master, i32 noundef %channel, i32 noundef %nr_chans) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phys = getelementptr i8, ptr %stm_data, i32 -8
  %0 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phys, align 4
  %mul = shl i32 %channel, 8
  %add = add i32 %1, %mul
  %and = and i32 %add, 4095
  %2 = and i32 %nr_chans, 15
  %3 = or i32 %and, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %4 = icmp eq i32 %3, 0
  %retval.0 = select i1 %4, i32 %add, i32 0
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm_generic_link(ptr noundef readonly %stm_data, i32 noundef %master, i32 noundef %channel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %stm_data, i32 -68
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %csdev = getelementptr i8, ptr %stm_data, i32 -60
  %0 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csdev, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @coresight_enable(ptr noundef nonnull %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm_generic_unlink(ptr noundef readonly %stm_data, i32 noundef %master, i32 noundef %channel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %stm_data, i32 -68
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %csdev = getelementptr i8, ptr %stm_data, i32 -60
  %0 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csdev, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @coresight_disable(ptr noundef nonnull %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm_generic_set_options(ptr noundef %stm_data, i32 noundef %master, i32 noundef %channel, i32 noundef %nr_chans, i32 noundef %options) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %stm_data, i32 -68
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %mode = getelementptr i8, ptr %stm_data, i32 48
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mode, i32 noundef 4) #12
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %numsp = getelementptr i8, ptr %stm_data, i32 68
  %2 = ptrtoint ptr %numsp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %numsp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %channel)
  %cmp.not = icmp ugt i32 %3, %channel
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = zext i32 %options to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %options, label %if.end3.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ]

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %guaranteed = getelementptr i8, ptr %stm_data, i32 -4
  %5 = ptrtoint ptr %guaranteed to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %guaranteed, align 4
  tail call void @_set_bit(i32 noundef %channel, ptr noundef %6) #12
  br label %cleanup

sw.bb4:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %guaranteed6 = getelementptr i8, ptr %stm_data, i32 -4
  %7 = ptrtoint ptr %guaranteed6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %guaranteed6, align 4
  tail call void @_clear_bit(i32 noundef %channel, ptr noundef %8) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.bb4, %sw.bb, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ 0, %sw.bb4 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coresight_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @coresight_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm_trace_id(ptr nocapture noundef readonly %csdev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %traceid = getelementptr inbounds %struct.stm_drvdata, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %traceid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %traceid, align 4
  %conv = zext i8 %5 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm_enable(ptr noundef %csdev, ptr nocapture noundef readnone %event, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5
  %parent = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp.not = icmp eq i32 %mode, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode1 = getelementptr inbounds %struct.stm_drvdata, ptr %3, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mode1, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %mode1, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %mode1, ptr %mode1, i32 0, i32 1, ptr elementtype(i32) %mode1) #12, !srcloc !146
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_long_cmpxchg.exit, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i

atomic_long_cmpxchg.exit:                         ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %4, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i.i)
  %tobool.not = icmp eq i32 %asmresult3.i.i.i.i, 0
  br i1 %tobool.not, label %if.end4, label %atomic_long_cmpxchg.exit.cleanup_crit_edge

atomic_long_cmpxchg.exit.cleanup_crit_edge:       ; preds = %atomic_long_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %atomic_long_cmpxchg.exit
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #12
  %spinlock = getelementptr inbounds %struct.stm_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #12
  %stmheer.i = getelementptr inbounds %struct.stm_drvdata, ptr %3, i32 0, i32 12
  %7 = ptrtoint ptr %stmheer.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stmheer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end4.stm_enable_hw.exit_crit_edge, label %if.then.i

if.end4.stm_enable_hw.exit_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm_enable_hw.exit

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1439608005) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !148
  tail call void @arm_heavy_mb() #12
  %stmhebsr.i.i = getelementptr inbounds %struct.stm_drvdata, ptr %3, i32 0, i32 14
  %11 = ptrtoint ptr %stmhebsr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stmhebsr.i.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #12
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 3424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %13) #12, !srcloc !143
  %stmheter.i.i = getelementptr inbounds %struct.stm_drvdata, ptr %3, i32 0, i32 13
  %16 = ptrtoint ptr %stmheter.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stmheter.i.i, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #12
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %20, i32 3360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %18) #12, !srcloc !143
  %21 = ptrtoint ptr %stmheer.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stmheer.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #12
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %25, i32 3328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %23) #12, !srcloc !143
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %27, i32 3428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 83886080) #12, !srcloc !143
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !149
  tail call void @arm_heavy_mb() #12
  %add.ptr.i17.i.i = getelementptr i8, ptr %29, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i.i, i32 0) #12, !srcloc !143
  br label %stm_enable_hw.exit

stm_enable_hw.exit:                               ; preds = %if.then.i, %if.end4.stm_enable_hw.exit_crit_edge
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %add.ptr.i.i13.i = getelementptr i8, ptr %31, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i13.i, i32 1439608005) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !148
  tail call void @arm_heavy_mb() #12
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %33, i32 3696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 268435456) #12, !srcloc !143
  %stmspscr.i.i = getelementptr inbounds %struct.stm_drvdata, ptr %3, i32 0, i32 10
  %34 = ptrtoint ptr %stmspscr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %stmspscr.i.i, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #12
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %3, align 4
  %add.ptr3.i15.i = getelementptr i8, ptr %38, i32 3680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i15.i, i32 %36) #12, !srcloc !143
  %stmsper.i.i = getelementptr inbounds %struct.stm_drvdata, ptr %3, i32 0, i32 9
  %39 = ptrtoint ptr %stmsper.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %stmsper.i.i, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #12
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %3, align 4
  %add.ptr5.i16.i = getelementptr i8, ptr %43, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i16.i, i32 %41) #12, !srcloc !143
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !149
  tail call void @arm_heavy_mb() #12
  %add.ptr.i13.i.i = getelementptr i8, ptr %45, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i.i, i32 0) #12, !srcloc !143
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %3, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %47, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 1439608005) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !148
  tail call void @arm_heavy_mb() #12
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %49, i32 3728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -15794176) #12, !srcloc !143
  %traceid.i = getelementptr inbounds %struct.stm_drvdata, ptr %3, i32 0, i32 7
  %50 = ptrtoint ptr %traceid.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %traceid.i, align 4
  %conv.i = zext i8 %51 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %or2.i = or i32 %shl.i, 3
  %52 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #12
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %3, align 4
  %add.ptr4.i = getelementptr i8, ptr %54, i32 3712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %52) #12, !srcloc !143
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !149
  tail call void @arm_heavy_mb() #12
  %add.ptr.i18.i = getelementptr i8, ptr %56, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 0) #12, !srcloc !143
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm_enable.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm_enable, %if.then13)) #12
          to label %cleanup [label %if.then13], !srcloc !150

if.then13:                                        ; preds = %stm_enable_hw.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm_enable.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.16) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %stm_enable_hw.exit, %atomic_long_cmpxchg.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -16, %atomic_long_cmpxchg.exit.cleanup_crit_edge ], [ 0, %if.then13 ], [ 0, %stm_enable_hw.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm_disable(ptr noundef %csdev, ptr nocapture noundef readnone %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5
  %parent = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %mode = getelementptr inbounds %struct.stm_drvdata, ptr %3, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mode, i32 noundef 4) #12
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then:                                          ; preds = %entry
  %access = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 4
  %spinlock = getelementptr inbounds %struct.stm_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #12
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1439608005) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !148
  tail call void @arm_heavy_mb() #12
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 3712
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !140
  %11 = and i32 %10, -16777217
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %add.ptr3.i = getelementptr i8, ptr %13, i32 3712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %11) #12, !srcloc !143
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !149
  tail call void @arm_heavy_mb() #12
  %add.ptr.i12.i = getelementptr i8, ptr %15, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 0) #12, !srcloc !143
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %17, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1439608005) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !148
  tail call void @arm_heavy_mb() #12
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %19, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 0) #12, !srcloc !143
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %21, i32 3696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 0) #12, !srcloc !143
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !149
  tail call void @arm_heavy_mb() #12
  %add.ptr.i8.i.i = getelementptr i8, ptr %23, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 0) #12, !srcloc !143
  %stmheer.i = getelementptr inbounds %struct.stm_drvdata, ptr %3, i32 0, i32 12
  %24 = ptrtoint ptr %stmheer.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stmheer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %if.then.stm_disable_hw.exit_crit_edge, label %if.then.i

if.then.stm_disable_hw.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %stm_disable_hw.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %add.ptr.i.i14.i = getelementptr i8, ptr %27, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i14.i, i32 1439608005) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !148
  tail call void @arm_heavy_mb() #12
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %29, i32 3428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 0) #12, !srcloc !143
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %add.ptr3.i16.i = getelementptr i8, ptr %31, i32 3328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i16.i, i32 0) #12, !srcloc !143
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %33, i32 3360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 0) #12, !srcloc !143
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !149
  tail call void @arm_heavy_mb() #12
  %add.ptr.i11.i.i = getelementptr i8, ptr %35, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i, i32 0) #12, !srcloc !143
  br label %stm_disable_hw.exit

stm_disable_hw.exit:                              ; preds = %if.then.i, %if.then.stm_disable_hw.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #12
  %call3 = tail call i32 @coresight_timeout(ptr noundef %access, i32 noundef 3712, i32 noundef 23, i32 noundef 0) #12
  %36 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %37, i32 noundef 5) #12
  %call.i.i22 = tail call zeroext i1 @__kasan_check_write(ptr noundef %mode, i32 noundef 4) #12
  %38 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 0, ptr %mode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm_disable.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm_disable, %if.then12)) #12
          to label %if.end14 [label %if.then12], !srcloc !150

if.then12:                                        ; preds = %stm_disable_hw.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm_disable.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.18) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %stm_disable_hw.exit, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coresight_timeout(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwevent_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %stmheer = getelementptr inbounds %struct.stm_drvdata, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %stmheer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stmheer, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.20, i32 noundef %5) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwevent_enable_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !151
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %stmheer = getelementptr inbounds %struct.stm_drvdata, ptr %3, i32 0, i32 12
  %7 = ptrtoint ptr %stmheer to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %stmheer, align 4
  %stmheter = getelementptr inbounds %struct.stm_drvdata, ptr %3, i32 0, i32 13
  %8 = ptrtoint ptr %stmheter to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %stmheter, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwevent_select_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %stmhebsr = getelementptr inbounds %struct.stm_drvdata, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %stmhebsr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stmhebsr, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.20, i32 noundef %5) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwevent_select_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !151
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %stmhebsr = getelementptr inbounds %struct.stm_drvdata, ptr %3, i32 0, i32 14
  %7 = ptrtoint ptr %stmhebsr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %stmhebsr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %mode = getelementptr inbounds %struct.stm_drvdata, ptr %3, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mode, i32 noundef 4) #12
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %stmsper = getelementptr inbounds %struct.stm_drvdata, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %stmsper to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stmsper, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %spinlock = getelementptr inbounds %struct.stm_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #12
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 3584
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !140
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %val.0 = phi i32 [ %11, %if.else ], [ %7, %if.then ]
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.20, i32 noundef %val.0) #12
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_enable_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !151
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %spinlock = getelementptr inbounds %struct.stm_drvdata, ptr %3, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %spinlock) #12
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %stmsper = getelementptr inbounds %struct.stm_drvdata, ptr %3, i32 0, i32 9
  %7 = ptrtoint ptr %stmsper to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %stmsper, align 4
  %mode = getelementptr inbounds %struct.stm_drvdata, ptr %3, i32 0, i32 6
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %mode, i32 noundef 4) #12
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 4016
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1439608005) #12, !srcloc !143
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !148
  call void @arm_heavy_mb() #12
  %12 = ptrtoint ptr %stmsper to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stmsper, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 3584
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #12, !srcloc !143
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !149
  call void @arm_heavy_mb() #12
  %add.ptr.i20 = getelementptr i8, ptr %18, i32 4016
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 0) #12, !srcloc !143
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end8 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_select_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %mode = getelementptr inbounds %struct.stm_drvdata, ptr %3, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mode, i32 noundef 4) #12
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %stmspscr = getelementptr inbounds %struct.stm_drvdata, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %stmspscr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stmspscr, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %spinlock = getelementptr inbounds %struct.stm_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #12
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 3680
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !140
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %val.0 = phi i32 [ %11, %if.else ], [ %7, %if.then ]
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.20, i32 noundef %val.0) #12
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_select_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !151
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %spinlock = getelementptr inbounds %struct.stm_drvdata, ptr %3, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %spinlock) #12
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %stmspscr = getelementptr inbounds %struct.stm_drvdata, ptr %3, i32 0, i32 10
  %7 = ptrtoint ptr %stmspscr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %stmspscr, align 4
  %mode = getelementptr inbounds %struct.stm_drvdata, ptr %3, i32 0, i32 6
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %mode, i32 noundef 4) #12
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %if.end.if.end15_crit_edge, label %if.then4

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 4016
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1439608005) #12, !srcloc !143
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !148
  call void @arm_heavy_mb() #12
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 3584
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !140
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %add.ptr8 = getelementptr i8, ptr %16, i32 3584
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #12, !srcloc !143
  %17 = ptrtoint ptr %stmspscr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stmspscr, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %add.ptr11 = getelementptr i8, ptr %21, i32 3680
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %19) #12, !srcloc !143
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %add.ptr13 = getelementptr i8, ptr %23, i32 3584
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %14) #12, !srcloc !143
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !149
  call void @arm_heavy_mb() #12
  %add.ptr.i31 = getelementptr i8, ptr %25, i32 4016
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 0) #12, !srcloc !143
  br label %if.end15

if.end15:                                         ; preds = %if.then4, %if.end.if.end15_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end15 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @traceid_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %traceid = getelementptr inbounds %struct.stm_drvdata, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %traceid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %traceid, align 4
  %conv = zext i8 %5 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @traceid_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !151
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = trunc i32 %6 to i8
  %conv = and i8 %7, 127
  %traceid = getelementptr inbounds %struct.stm_drvdata, ptr %4, i32 0, i32 7
  %8 = ptrtoint ptr %traceid to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %traceid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcsr_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 3712
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !140
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #12
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.27, i64 noundef %conv.i) #12
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsfreqr_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 3724
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !140
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #12
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.27, i64 noundef %conv.i) #12
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @syncr_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 3728
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !140
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #12
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.27, i64 noundef %conv.i) #12
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sper_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 3584
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !140
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #12
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.27, i64 noundef %conv.i) #12
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spter_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 3616
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !140
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #12
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.27, i64 noundef %conv.i) #12
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @privmaskr_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 3648
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !140
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #12
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.27, i64 noundef %conv.i) #12
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spscr_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 3680
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !140
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #12
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.27, i64 noundef %conv.i) #12
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmscr_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 3684
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !140
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #12
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.27, i64 noundef %conv.i) #12
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spfeat1r_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 3744
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !140
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #12
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.27, i64 noundef %conv.i) #12
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spfeat2r_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 3748
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !140
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #12
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.27, i64 noundef %conv.i) #12
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spfeat3r_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 3752
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !140
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #12
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.27, i64 noundef %conv.i) #12
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devid_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4040
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !140
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #12
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.27, i64 noundef %conv.i) #12
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @coresight_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !15, !16, !18, !20, !22, !24, !26, !27, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !44, !46, !48, !50, !52, !53, !54, !55, !57, !58, !59, !61, !63, !65, !67, !68, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !86, !88, !90, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !129}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @__param_boot_nr_channel, !1, !"__param_boot_nr_channel", i1 false, i1 false}
!1 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 95, i32 1}
!2 = !{ptr @__UNIQUE_ID_boot_nr_channeltype297, !1, !"__UNIQUE_ID_boot_nr_channeltype297", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_coresight_stm__300_1007_stm_driver_init6, !4, !"__initcall__kmod_coresight_stm__300_1007_stm_driver_init6", i1 false, i1 false}
!4 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 1007, i32 1}
!5 = !{ptr @__exitcall_stm_driver_exit, !4, !"__exitcall_stm_driver_exit", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author301, !7, !"__UNIQUE_ID_author301", i1 false, i1 false}
!7 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 1009, i32 1}
!8 = !{ptr @__UNIQUE_ID_description302, !9, !"__UNIQUE_ID_description302", i1 false, i1 false}
!9 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 1010, i32 1}
!10 = !{ptr @__UNIQUE_ID_file303, !11, !"__UNIQUE_ID_file303", i1 false, i1 false}
!11 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 1011, i32 1}
!12 = !{ptr @__UNIQUE_ID_license304, !11, !"__UNIQUE_ID_license304", i1 false, i1 false}
!13 = !{ptr @boot_nr_channel, !14, !"boot_nr_channel", i1 false, i1 false}
!14 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 89, i32 12}
!15 = !{ptr @__param_str_boot_nr_channel, !1, !"__param_str_boot_nr_channel", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 997, i32 13}
!18 = !{ptr @stm_driver, !19, !"stm_driver", i1 false, i1 false}
!19 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 995, i32 27}
!20 = !{ptr @stm_dev_pm_ops, !21, !"stm_dev_pm_ops", i1 false, i1 false}
!21 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 983, i32 32}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 874, i32 44}
!24 = !{ptr @stm_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 910, i32 2}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 916, i32 3}
!29 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @stm_probe._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @stm_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 943, i32 2}
!37 = !{ptr @stm_probe._entry.8, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @stm_probe._entry_ptr.10, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 111, i32 1}
!41 = !{ptr @stm_devs, !40, !"stm_devs", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 700, i32 44}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 701, i32 14}
!46 = !{ptr @stm_cs_ops, !47, !"stm_cs_ops", i1 false, i1 false}
!47 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 296, i32 35}
!48 = !{ptr @stm_source_ops, !49, !"stm_source_ops", i1 false, i1 false}
!49 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 290, i32 42}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 215, i32 2}
!52 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @stm_enable.__UNIQUE_ID_ddebug298, !51, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 279, i32 3}
!57 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @stm_disable.__UNIQUE_ID_ddebug299, !56, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!59 = !{ptr @coresight_stm_groups, !60, !"coresight_stm_groups", i1 false, i1 false}
!60 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 687, i32 38}
!61 = !{ptr @coresight_stm_group, !62, !"coresight_stm_group", i1 false, i1 false}
!62 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 678, i32 37}
!63 = !{ptr @coresight_stm_attrs, !64, !"coresight_stm_attrs", i1 false, i1 false}
!64 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 653, i32 26}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 490, i32 8}
!67 = !{ptr @dev_attr_hwevent_enable, !66, !"dev_attr_hwevent_enable", i1 false, i1 false}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 469, i32 35}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 517, i32 8}
!72 = !{ptr @dev_attr_hwevent_select, !71, !"dev_attr_hwevent_select", i1 false, i1 false}
!73 = !{ptr @.str.22, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 607, i32 8}
!75 = !{ptr @dev_attr_port_enable, !74, !"dev_attr_port_enable", i1 false, i1 false}
!76 = !{ptr @.str.23, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 564, i32 8}
!78 = !{ptr @dev_attr_port_select, !77, !"dev_attr_port_select", i1 false, i1 false}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 635, i32 8}
!81 = !{ptr @dev_attr_traceid, !80, !"dev_attr_traceid", i1 false, i1 false}
!82 = !{ptr @.str.25, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 684, i32 10}
!84 = !{ptr @coresight_stm_mgmt_group, !85, !"coresight_stm_mgmt_group", i1 false, i1 false}
!85 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 682, i32 37}
!86 = !{ptr @coresight_stm_mgmt_attrs, !87, !"coresight_stm_mgmt_attrs", i1 false, i1 false}
!87 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 662, i32 26}
!88 = !{ptr @.str.26, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 640, i32 1}
!90 = !{ptr @dev_attr_tcsr, !89, !"dev_attr_tcsr", i1 false, i1 false}
!91 = !{ptr @.str.27, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.28, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 641, i32 1}
!94 = !{ptr @dev_attr_tsfreqr, !93, !"dev_attr_tsfreqr", i1 false, i1 false}
!95 = !{ptr @.str.29, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 642, i32 1}
!97 = !{ptr @dev_attr_syncr, !96, !"dev_attr_syncr", i1 false, i1 false}
!98 = !{ptr @.str.30, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 643, i32 1}
!100 = !{ptr @dev_attr_sper, !99, !"dev_attr_sper", i1 false, i1 false}
!101 = !{ptr @.str.31, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 644, i32 1}
!103 = !{ptr @dev_attr_spter, !102, !"dev_attr_spter", i1 false, i1 false}
!104 = !{ptr @.str.32, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 645, i32 1}
!106 = !{ptr @dev_attr_privmaskr, !105, !"dev_attr_privmaskr", i1 false, i1 false}
!107 = !{ptr @.str.33, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 646, i32 1}
!109 = !{ptr @dev_attr_spscr, !108, !"dev_attr_spscr", i1 false, i1 false}
!110 = !{ptr @.str.34, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 647, i32 1}
!112 = !{ptr @dev_attr_spmscr, !111, !"dev_attr_spmscr", i1 false, i1 false}
!113 = !{ptr @.str.35, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 648, i32 1}
!115 = !{ptr @dev_attr_spfeat1r, !114, !"dev_attr_spfeat1r", i1 false, i1 false}
!116 = !{ptr @.str.36, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 649, i32 1}
!118 = !{ptr @dev_attr_spfeat2r, !117, !"dev_attr_spfeat2r", i1 false, i1 false}
!119 = !{ptr @.str.37, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 650, i32 1}
!121 = !{ptr @dev_attr_spfeat3r, !120, !"dev_attr_spfeat3r", i1 false, i1 false}
!122 = !{ptr @.str.38, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 651, i32 1}
!124 = !{ptr @dev_attr_devid, !123, !"dev_attr_devid", i1 false, i1 false}
!125 = !{ptr @.str.39, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 988, i32 2}
!127 = !{ptr @.str.40, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 989, i32 2}
!129 = !{ptr @stm_ids, !130, !"stm_ids", i1 false, i1 false}
!130 = !{!"../drivers/hwtracing/coresight/coresight-stm.c", i32 987, i32 29}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{i64 6847479}
!141 = !{i32 0, i32 33}
!142 = !{i64 6846864}
!143 = !{i64 6847061}
!144 = !{i64 6846441}
!145 = !{i64 2148598328}
!146 = !{i64 981994, i64 982018, i64 982039, i64 982056, i64 982073}
!147 = !{i64 2148598554}
!148 = !{i64 2155994181}
!149 = !{i64 2155993485}
!150 = !{i64 2148180054, i64 2148180059, i64 2148180072, i64 2148180116, i64 2148180150, i64 2148180171}
!151 = !{!"auto-init"}
