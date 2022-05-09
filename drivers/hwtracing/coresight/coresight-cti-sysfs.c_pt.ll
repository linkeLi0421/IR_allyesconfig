; ModuleID = '/llk/IR_all_yes/drivers/hwtracing/coresight/coresight-cti-sysfs.c_pt.bc'
source_filename = "../drivers/hwtracing/coresight/coresight-cti-sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.cti_drvdata = type { ptr, ptr, %struct.cti_device, %struct.spinlock, %struct.cti_config, %struct.list_head, ptr }
%struct.cti_device = type { i32, i32, %struct.list_head, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cti_config = type { i32, i32, %struct.atomic_t, i8, i8, i32, i32, i32, i8, i8, i32, i8, [32 x i32], [32 x i32], i32, i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.dev_ext_attribute = type { %struct.device_attribute, ptr }
%struct.cti_trig_con = type { ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.cti_trig_grp = type { i32, i32, [0 x i32] }

@coresight_cti_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @coresight_cti_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@coresight_cti_mgmt_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.40, ptr null, ptr null, ptr @coresight_cti_mgmt_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@coresight_cti_regs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.53, ptr null, ptr null, ptr @coresight_cti_regs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@coresight_cti_channels_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.77, ptr null, ptr null, ptr @coresight_cti_channel_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@coresight_cti_groups = dso_local global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @coresight_cti_group, ptr @coresight_cti_mgmt_group, ptr @coresight_cti_regs_group, ptr @coresight_cti_channels_group, ptr null], [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"triggers%d\00", [21 x i8] zeroinitializer }, align 32
@cti_create_con_sysfs_attr.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in_signals\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"out_signals\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in_types\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"out_types\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@sig_type_names = internal constant { [25 x ptr], [60 x i8] } { [25 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"genio\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"intreq\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"intack\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"haltreq\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"restartreq\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pe_edbgreq\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pe_dbgrestart\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pe_ctiirq\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pe_pmuirq\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pe_dbgtrigger\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"etm_extout\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"etm_extin\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"snk_full\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snk_acqcomp\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snk_flushcomp\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snk_flushin\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snk_trigin\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stm_asyncout\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stm_tout_spte\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stm_tout_sw\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stm_tout_hete\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stm_hwevent\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ela_tstart\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ela_tstop\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ela_dbgreq\00", [21 x i8] zeroinitializer }, align 32
@coresight_cti_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_enable, ptr @dev_attr_powered, ptr @dev_attr_ctmid, ptr @dev_attr_nr_trigger_cons, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @enable_show, ptr @enable_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_powered = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powered_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ctmid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ctmid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_nr_trigger_cons = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nr_trigger_cons_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"powered\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ctmid\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nr_trigger_cons\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mgmt\00", [27 x i8] zeroinitializer }, align 32
@coresight_cti_mgmt_attrs = internal global { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @dev_attr_devaff0, ptr @dev_attr_devaff1, ptr @dev_attr_authstatus, ptr @dev_attr_devarch, ptr @dev_attr_devid, ptr @dev_attr_devtype, ptr @dev_attr_pidr0, ptr @dev_attr_pidr1, ptr @dev_attr_pidr2, ptr @dev_attr_pidr3, ptr @dev_attr_pidr4, ptr null], [48 x i8] zeroinitializer }, align 32
@dev_attr_devaff0 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @devaff0_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_devaff1 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @devaff1_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_authstatus = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @authstatus_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_devarch = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @devarch_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_devid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @devid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_devtype = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @devtype_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pidr0 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pidr0_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pidr1 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pidr1_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pidr2 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pidr2_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pidr3 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pidr3_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pidr4 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pidr4_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devaff0\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devaff1\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"authstatus\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devarch\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"devid\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devtype\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pidr0\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pidr1\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pidr2\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pidr3\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pidr4\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"regs\00", [27 x i8] zeroinitializer }, align 32
@coresight_cti_regs_attrs = internal global { [23 x ptr], [36 x i8] } { [23 x ptr] [ptr @dev_attr_inout_sel, ptr @dev_attr_inen, ptr @dev_attr_outen, ptr @dev_attr_gate, ptr @dev_attr_asicctl, ptr @dev_attr_intack, ptr @dev_attr_appset, ptr @dev_attr_appclear, ptr @dev_attr_apppulse, ptr @dev_attr_triginstatus, ptr @dev_attr_trigoutstatus, ptr @dev_attr_chinstatus, ptr @dev_attr_choutstatus, ptr @dev_attr_itctrl, ptr @dev_attr_ittrigin, ptr @dev_attr_itchin, ptr @dev_attr_ittrigout, ptr @dev_attr_itchout, ptr @dev_attr_itchoutack, ptr @dev_attr_ittrigoutack, ptr @dev_attr_ittriginack, ptr @dev_attr_itchinack, ptr null], [36 x i8] zeroinitializer }, align 32
@dev_attr_inout_sel = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @inout_sel_show, ptr @inout_sel_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_inen = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @inen_show, ptr @inen_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_outen = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @outen_show, ptr @outen_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_gate = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @gate_show, ptr @gate_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_asicctl = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @asicctl_show, ptr @asicctl_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_intack = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @intack_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_appset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @appset_show, ptr @appset_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_appclear = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @appclear_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_apppulse = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @apppulse_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_triginstatus = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @triginstatus_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_trigoutstatus = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @trigoutstatus_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_chinstatus = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @chinstatus_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_choutstatus = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @choutstatus_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_itctrl = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @itctrl_show, ptr @itctrl_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ittrigin = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ittrigin_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_itchin = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @itchin_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ittrigout = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ittrigout_show, ptr @ittrigout_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_itchout = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @itchout_show, ptr @itchout_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_itchoutack = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @itchoutack_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ittrigoutack = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ittrigoutack_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ittriginack = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ittriginack_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_itchinack = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @itchinack_store }, [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"inout_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inen\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%#lx\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"outen\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gate\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%#x\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"asicctl\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"appset\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"appclear\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apppulse\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"triginstatus\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"trigoutstatus\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"chinstatus\00", [21 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"choutstatus\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"itctrl\00", [25 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ittrigin\00", [23 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"itchin\00", [25 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ittrigout\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"itchout\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"itchoutack\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ittrigoutack\00", [19 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ittriginack\00", [20 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"itchinack\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"channels\00", [23 x i8] zeroinitializer }, align 32
@coresight_cti_channel_attrs = internal global { [18 x ptr], [56 x i8] } { [18 x ptr] [ptr @dev_attr_trigin_attach, ptr @dev_attr_trigin_detach, ptr @dev_attr_trigout_attach, ptr @dev_attr_trigout_detach, ptr @dev_attr_trig_filter_enable, ptr @dev_attr_trigout_filtered, ptr @dev_attr_chan_gate_enable, ptr @dev_attr_chan_gate_disable, ptr @dev_attr_chan_set, ptr @dev_attr_chan_clear, ptr @dev_attr_chan_pulse, ptr @dev_attr_chan_inuse, ptr @dev_attr_chan_free, ptr @dev_attr_chan_xtrigs_sel, ptr @dev_attr_chan_xtrigs_in, ptr @dev_attr_chan_xtrigs_out, ptr @dev_attr_chan_xtrigs_reset, ptr null], [56 x i8] zeroinitializer }, align 32
@dev_attr_trigin_attach = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @trigin_attach_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_trigin_detach = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @trigin_detach_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_trigout_attach = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @trigout_attach_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_trigout_detach = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @trigout_detach_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_trig_filter_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @trig_filter_enable_show, ptr @trig_filter_enable_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_trigout_filtered = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @trigout_filtered_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_chan_gate_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @chan_gate_enable_show, ptr @chan_gate_enable_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_chan_gate_disable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @chan_gate_disable_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_chan_set = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @chan_set_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_chan_clear = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @chan_clear_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_chan_pulse = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @chan_pulse_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_chan_inuse = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @chan_inuse_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_chan_free = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @chan_free_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_chan_xtrigs_sel = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @chan_xtrigs_sel_show, ptr @chan_xtrigs_sel_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_chan_xtrigs_in = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @chan_xtrigs_in_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_chan_xtrigs_out = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.96, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @chan_xtrigs_out_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_chan_xtrigs_reset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.97, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @chan_xtrigs_reset_store }, [36 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"trigin_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%d %d\00", [26 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"trigin_detach\00", [18 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"trigout_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"trigout_detach\00", [17 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"trig_filter_enable\00", [45 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"trigout_filtered\00", [47 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"chan_gate_enable\00", [47 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"chan_gate_disable\00", [46 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"chan_set\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"chan_clear\00", [21 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"chan_pulse\00", [21 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"chan_inuse\00", [21 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"chan_free\00", [22 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"chan_xtrigs_sel\00", [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"chan_xtrigs_in\00", [17 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d \00", [28 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"chan_xtrigs_out\00", [16 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"chan_xtrigs_reset\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.98 = private unnamed_addr constant [20 x i8] c"coresight_cti_group\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1193, i32 37 }
@___asan_gen_.101 = private unnamed_addr constant [25 x i8] c"coresight_cti_mgmt_group\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1197, i32 37 }
@___asan_gen_.104 = private unnamed_addr constant [25 x i8] c"coresight_cti_regs_group\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1202, i32 37 }
@___asan_gen_.107 = private unnamed_addr constant [29 x i8] c"coresight_cti_channels_group\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1207, i32 37 }
@___asan_gen_.110 = private unnamed_addr constant [21 x i8] c"coresight_cti_groups\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1213, i32 1 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1089, i32 48 }
@___asan_gen_.116 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1073, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 71, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 72, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 73, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 74, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 75, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 949, i32 22 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1004, i32 31 }
@___asan_gen_.140 = private unnamed_addr constant [15 x i8] c"sig_type_names\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 27, i32 27 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 28, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 29, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 30, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 31, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 32, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 33, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 34, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 35, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 36, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 37, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 38, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 39, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 40, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 41, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 42, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 43, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 44, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 45, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 46, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 47, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 48, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 49, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 50, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 51, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 52, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [20 x i8] c"coresight_cti_attrs\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 156, i32 26 }
@___asan_gen_.221 = private unnamed_addr constant [16 x i8] c"dev_attr_enable\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [17 x i8] c"dev_attr_powered\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [15 x i8] c"dev_attr_ctmid\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [25 x i8] c"dev_attr_nr_trigger_cons\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 119, i32 8 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 94, i32 23 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 134, i32 8 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 143, i32 8 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 153, i32 8 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1199, i32 10 }
@___asan_gen_.251 = private unnamed_addr constant [25 x i8] c"coresight_cti_mgmt_attrs\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 196, i32 26 }
@___asan_gen_.254 = private unnamed_addr constant [17 x i8] c"dev_attr_devaff0\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [17 x i8] c"dev_attr_devaff1\00", align 1
@___asan_gen_.260 = private unnamed_addr constant [20 x i8] c"dev_attr_authstatus\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [17 x i8] c"dev_attr_devarch\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [15 x i8] c"dev_attr_devid\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [17 x i8] c"dev_attr_devtype\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [15 x i8] c"dev_attr_pidr0\00", align 1
@___asan_gen_.275 = private unnamed_addr constant [15 x i8] c"dev_attr_pidr1\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [15 x i8] c"dev_attr_pidr2\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [15 x i8] c"dev_attr_pidr3\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [15 x i8] c"dev_attr_pidr4\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 184, i32 1 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 185, i32 1 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 186, i32 1 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 187, i32 1 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 188, i32 1 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 189, i32 1 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 190, i32 1 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 191, i32 1 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 192, i32 1 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 193, i32 1 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 194, i32 1 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1204, i32 10 }
@___asan_gen_.326 = private unnamed_addr constant [25 x i8] c"coresight_cti_regs_attrs\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 537, i32 26 }
@___asan_gen_.329 = private unnamed_addr constant [19 x i8] c"dev_attr_inout_sel\00", align 1
@___asan_gen_.332 = private unnamed_addr constant [14 x i8] c"dev_attr_inen\00", align 1
@___asan_gen_.335 = private unnamed_addr constant [15 x i8] c"dev_attr_outen\00", align 1
@___asan_gen_.338 = private unnamed_addr constant [14 x i8] c"dev_attr_gate\00", align 1
@___asan_gen_.341 = private unnamed_addr constant [17 x i8] c"dev_attr_asicctl\00", align 1
@___asan_gen_.344 = private unnamed_addr constant [16 x i8] c"dev_attr_intack\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 406, i32 8 }
@___asan_gen_.347 = private unnamed_addr constant [16 x i8] c"dev_attr_appset\00", align 1
@___asan_gen_.350 = private unnamed_addr constant [18 x i8] c"dev_attr_appclear\00", align 1
@___asan_gen_.353 = private unnamed_addr constant [18 x i8] c"dev_attr_apppulse\00", align 1
@___asan_gen_.356 = private unnamed_addr constant [22 x i8] c"dev_attr_triginstatus\00", align 1
@___asan_gen_.359 = private unnamed_addr constant [23 x i8] c"dev_attr_trigoutstatus\00", align 1
@___asan_gen_.362 = private unnamed_addr constant [20 x i8] c"dev_attr_chinstatus\00", align 1
@___asan_gen_.365 = private unnamed_addr constant [21 x i8] c"dev_attr_choutstatus\00", align 1
@___asan_gen_.368 = private unnamed_addr constant [16 x i8] c"dev_attr_itctrl\00", align 1
@___asan_gen_.371 = private unnamed_addr constant [18 x i8] c"dev_attr_ittrigin\00", align 1
@___asan_gen_.374 = private unnamed_addr constant [16 x i8] c"dev_attr_itchin\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [19 x i8] c"dev_attr_ittrigout\00", align 1
@___asan_gen_.380 = private unnamed_addr constant [17 x i8] c"dev_attr_itchout\00", align 1
@___asan_gen_.383 = private unnamed_addr constant [20 x i8] c"dev_attr_itchoutack\00", align 1
@___asan_gen_.386 = private unnamed_addr constant [22 x i8] c"dev_attr_ittrigoutack\00", align 1
@___asan_gen_.389 = private unnamed_addr constant [21 x i8] c"dev_attr_ittriginack\00", align 1
@___asan_gen_.392 = private unnamed_addr constant [19 x i8] c"dev_attr_itchinack\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 314, i32 8 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 353, i32 8 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 328, i32 22 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 392, i32 8 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 408, i32 1 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 235, i32 22 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 409, i32 1 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 410, i32 1 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 434, i32 8 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 455, i32 8 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 457, i32 1 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 458, i32 1 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 459, i32 1 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 460, i32 1 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 527, i32 1 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 530, i32 1 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 531, i32 1 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 526, i32 1 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 525, i32 1 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 532, i32 1 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 533, i32 1 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 529, i32 1 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 528, i32 1 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1209, i32 10 }
@___asan_gen_.467 = private unnamed_addr constant [28 x i8] c"coresight_cti_channel_attrs\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 910, i32 26 }
@___asan_gen_.470 = private unnamed_addr constant [23 x i8] c"dev_attr_trigin_attach\00", align 1
@___asan_gen_.473 = private unnamed_addr constant [23 x i8] c"dev_attr_trigin_detach\00", align 1
@___asan_gen_.476 = private unnamed_addr constant [24 x i8] c"dev_attr_trigout_attach\00", align 1
@___asan_gen_.479 = private unnamed_addr constant [24 x i8] c"dev_attr_trigout_detach\00", align 1
@___asan_gen_.482 = private unnamed_addr constant [28 x i8] c"dev_attr_trig_filter_enable\00", align 1
@___asan_gen_.485 = private unnamed_addr constant [26 x i8] c"dev_attr_trigout_filtered\00", align 1
@___asan_gen_.488 = private unnamed_addr constant [26 x i8] c"dev_attr_chan_gate_enable\00", align 1
@___asan_gen_.491 = private unnamed_addr constant [27 x i8] c"dev_attr_chan_gate_disable\00", align 1
@___asan_gen_.494 = private unnamed_addr constant [18 x i8] c"dev_attr_chan_set\00", align 1
@___asan_gen_.497 = private unnamed_addr constant [20 x i8] c"dev_attr_chan_clear\00", align 1
@___asan_gen_.500 = private unnamed_addr constant [20 x i8] c"dev_attr_chan_pulse\00", align 1
@___asan_gen_.503 = private unnamed_addr constant [20 x i8] c"dev_attr_chan_inuse\00", align 1
@___asan_gen_.506 = private unnamed_addr constant [19 x i8] c"dev_attr_chan_free\00", align 1
@___asan_gen_.509 = private unnamed_addr constant [25 x i8] c"dev_attr_chan_xtrigs_sel\00", align 1
@___asan_gen_.512 = private unnamed_addr constant [24 x i8] c"dev_attr_chan_xtrigs_in\00", align 1
@___asan_gen_.515 = private unnamed_addr constant [25 x i8] c"dev_attr_chan_xtrigs_out\00", align 1
@___asan_gen_.518 = private unnamed_addr constant [27 x i8] c"dev_attr_chan_xtrigs_reset\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 591, i32 8 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 575, i32 22 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 600, i32 8 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 609, i32 8 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 618, i32 8 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 737, i32 8 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 752, i32 8 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 650, i32 8 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 664, i32 8 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 687, i32 8 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 697, i32 8 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 707, i32 8 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 900, i32 8 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 908, i32 8 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 822, i32 8 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 820, i32 22 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 842, i32 8 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 836, i32 32 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 862, i32 8 }
@___asan_gen_.578 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.579 = private constant [53 x i8] c"../drivers/hwtracing/coresight/coresight-cti-sysfs.c\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 785, i32 8 }
@llvm.compiler.used = appending global [161 x ptr] [ptr @coresight_cti_group, ptr @coresight_cti_mgmt_group, ptr @coresight_cti_regs_group, ptr @coresight_cti_channels_group, ptr @coresight_cti_groups, ptr @.str, ptr @cti_create_con_sysfs_attr.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @sig_type_names, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @coresight_cti_attrs, ptr @dev_attr_enable, ptr @dev_attr_powered, ptr @dev_attr_ctmid, ptr @dev_attr_nr_trigger_cons, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @coresight_cti_mgmt_attrs, ptr @dev_attr_devaff0, ptr @dev_attr_devaff1, ptr @dev_attr_authstatus, ptr @dev_attr_devarch, ptr @dev_attr_devid, ptr @dev_attr_devtype, ptr @dev_attr_pidr0, ptr @dev_attr_pidr1, ptr @dev_attr_pidr2, ptr @dev_attr_pidr3, ptr @dev_attr_pidr4, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @coresight_cti_regs_attrs, ptr @dev_attr_inout_sel, ptr @dev_attr_inen, ptr @dev_attr_outen, ptr @dev_attr_gate, ptr @dev_attr_asicctl, ptr @dev_attr_intack, ptr @dev_attr_appset, ptr @dev_attr_appclear, ptr @dev_attr_apppulse, ptr @dev_attr_triginstatus, ptr @dev_attr_trigoutstatus, ptr @dev_attr_chinstatus, ptr @dev_attr_choutstatus, ptr @dev_attr_itctrl, ptr @dev_attr_ittrigin, ptr @dev_attr_itchin, ptr @dev_attr_ittrigout, ptr @dev_attr_itchout, ptr @dev_attr_itchoutack, ptr @dev_attr_ittrigoutack, ptr @dev_attr_ittriginack, ptr @dev_attr_itchinack, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @coresight_cti_channel_attrs, ptr @dev_attr_trigin_attach, ptr @dev_attr_trigin_detach, ptr @dev_attr_trigout_attach, ptr @dev_attr_trigout_detach, ptr @dev_attr_trig_filter_enable, ptr @dev_attr_trigout_filtered, ptr @dev_attr_chan_gate_enable, ptr @dev_attr_chan_gate_disable, ptr @dev_attr_chan_set, ptr @dev_attr_chan_clear, ptr @dev_attr_chan_pulse, ptr @dev_attr_chan_inuse, ptr @dev_attr_chan_free, ptr @dev_attr_chan_xtrigs_sel, ptr @dev_attr_chan_xtrigs_in, ptr @dev_attr_chan_xtrigs_out, ptr @dev_attr_chan_xtrigs_reset, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97], section "llvm.metadata"
@0 = internal global [161 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coresight_cti_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coresight_cti_mgmt_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coresight_cti_regs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coresight_cti_channels_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coresight_cti_groups to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cti_create_con_sysfs_attr.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sig_type_names to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coresight_cti_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_powered to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ctmid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_nr_trigger_cons to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coresight_cti_mgmt_attrs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_devaff0 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_devaff1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_authstatus to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_devarch to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_devid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_devtype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pidr0 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pidr1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pidr2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pidr3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pidr4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coresight_cti_regs_attrs to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_inout_sel to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_inen to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_outen to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_asicctl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_intack to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_appset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_appclear to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_apppulse to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_triginstatus to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_trigoutstatus to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_chinstatus to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_choutstatus to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_itctrl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ittrigin to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_itchin to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ittrigout to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_itchout to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_itchoutack to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ittrigoutack to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ittriginack to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_itchinack to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coresight_cti_channel_attrs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_trigin_attach to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_trigin_detach to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_trigout_attach to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_trigout_detach to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_trig_filter_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_trigout_filtered to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_chan_gate_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_chan_gate_disable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_chan_set to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_chan_clear to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_chan_pulse to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_chan_inuse to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_chan_free to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_chan_xtrigs_sel to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_chan_xtrigs_in to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_chan_xtrigs_out to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_chan_xtrigs_reset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cti_create_cons_sysfs(ptr noundef %dev, ptr noundef %drvdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctidev1 = getelementptr inbounds %struct.cti_drvdata, ptr %drvdata, i32 0, i32 2
  %0 = ptrtoint ptr %ctidev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctidev1, align 4
  %add.i = add i32 %1, 5
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 4) #6
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %cti_create_cons_groups.exit.thread, label %cti_create_cons_groups.exit, !prof !283

cti_create_cons_groups.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %con_groups.i41 = getelementptr inbounds %struct.cti_drvdata, ptr %drvdata, i32 0, i32 2, i32 4
  %4 = ptrtoint ptr %con_groups.i41 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %con_groups.i41, align 4
  br label %cleanup

cti_create_cons_groups.exit:                      ; preds = %entry
  %5 = extractvalue { i32, i1 } %2, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %5, i32 noundef 3520) #6
  %con_groups.i = getelementptr inbounds %struct.cti_drvdata, ptr %drvdata, i32 0, i32 2, i32 4
  %6 = ptrtoint ptr %con_groups.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5.i.i.i, ptr %con_groups.i, align 4
  %tobool.not.i.not = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i.not, label %cti_create_cons_groups.exit.cleanup_crit_edge, label %for.cond.preheader

cti_create_cons_groups.exit.cleanup_crit_edge:    ; preds = %cti_create_cons_groups.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %cti_create_cons_groups.exit
  %7 = load ptr, ptr @coresight_cti_groups, align 4
  %8 = ptrtoint ptr %con_groups.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %con_groups.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %9, align 4
  %11 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @coresight_cti_groups, i32 0, i32 1), align 4
  %12 = load ptr, ptr %con_groups.i, align 4
  %arrayidx2.1 = getelementptr ptr, ptr %12, i32 1
  %13 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %arrayidx2.1, align 4
  %14 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @coresight_cti_groups, i32 0, i32 2), align 4
  %15 = load ptr, ptr %con_groups.i, align 4
  %arrayidx2.2 = getelementptr ptr, ptr %15, i32 2
  %16 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %arrayidx2.2, align 4
  %17 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @coresight_cti_groups, i32 0, i32 3), align 4
  %18 = load ptr, ptr %con_groups.i, align 4
  %arrayidx2.3 = getelementptr ptr, ptr %18, i32 3
  %19 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %arrayidx2.3, align 4
  %trig_cons = getelementptr inbounds %struct.cti_drvdata, ptr %drvdata, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %trig_cons to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn50 = load ptr, ptr %trig_cons, align 4
  %cmp5.not51 = icmp eq ptr %.pn50, %trig_cons
  br i1 %cmp5.not51, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body6_crit_edge

for.cond.preheader.for.body6_crit_edge:           ; preds = %for.cond.preheader
  br label %for.body6

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body6:                                        ; preds = %for.inc12.for.body6_crit_edge, %for.cond.preheader.for.body6_crit_edge
  %.pn53 = phi ptr [ %.pn, %for.inc12.for.body6_crit_edge ], [ %.pn50, %for.cond.preheader.for.body6_crit_edge ]
  %con_idx.052 = phi i32 [ %inc7, %for.inc12.for.body6_crit_edge ], [ 0, %for.cond.preheader.for.body6_crit_edge ]
  %tc.0 = getelementptr i8, ptr %.pn53, i32 -16
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body6.cleanup_crit_edge, label %if.end.i.i

for.body6.cleanup_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %for.body6
  %call1.i.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str, i32 noundef %con_idx.052) #6
  %21 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call1.i.i, ptr %call.i.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end.i.i
  %sub.i.i = add i32 %con_idx.052, 4
  %22 = ptrtoint ptr %con_groups.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %con_groups.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %23, i32 %sub.i.i
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i.i.i, ptr %arrayidx.i.i, align 4
  %attr_group.i.i = getelementptr i8, ptr %.pn53, i32 12
  %25 = ptrtoint ptr %attr_group.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i.i.i, ptr %attr_group.i.i, align 4
  %call5.i.i.i36 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #6
  %con_attrs.i = getelementptr i8, ptr %.pn53, i32 8
  %26 = ptrtoint ptr %con_attrs.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call5.i.i.i36, ptr %con_attrs.i, align 4
  %tobool3.not.i = icmp eq ptr %call5.i.i.i36, null
  br i1 %tobool3.not.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %call.i.i69.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #6
  %tobool.not.i70.i = icmp eq ptr %call.i.i69.i, null
  br i1 %tobool.not.i70.i, label %if.end5.i.cleanup_crit_edge, label %if.then.i.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end5.i
  %call1.i71.i = tail call noalias ptr @devm_kstrdup(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef 3264) #6
  %tobool2.not.i.i = icmp eq ptr %call1.i71.i, null
  br i1 %tobool2.not.i.i, label %if.then.i.i.cleanup_crit_edge, label %if.end9.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9.i:                                        ; preds = %if.then.i.i
  %27 = ptrtoint ptr %call.i.i69.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call1.i71.i, ptr %call.i.i69.i, align 4
  %mode.i.i = getelementptr inbounds %struct.attribute, ptr %call.i.i69.i, i32 0, i32 1
  %28 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 292, ptr %mode.i.i, align 4
  %show.i.i = getelementptr inbounds %struct.device_attribute, ptr %call.i.i69.i, i32 0, i32 1
  %29 = ptrtoint ptr %show.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @con_name_show, ptr %show.i.i, align 4
  %var.i.i = getelementptr inbounds %struct.dev_ext_attribute, ptr %call.i.i69.i, i32 0, i32 1
  %30 = ptrtoint ptr %var.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %tc.0, ptr %var.i.i, align 4
  %31 = ptrtoint ptr %con_attrs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %con_attrs.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i.i69.i, ptr %32, align 4
  %34 = load ptr, ptr %con_attrs.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %key.i.i = getelementptr inbounds %struct.attribute, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @cti_create_con_sysfs_attr.__key, ptr %key.i.i, align 4
  %38 = ptrtoint ptr %tc.0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tc.0, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i = icmp sgt i32 %41, 0
  br i1 %cmp.i, label %if.then10.i, label %if.end9.i.if.end21.i_crit_edge

if.end9.i.if.end21.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i

if.then10.i:                                      ; preds = %if.end9.i
  %call.i.i73.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #6
  %tobool.not.i74.i = icmp eq ptr %call.i.i73.i, null
  br i1 %tobool.not.i74.i, label %if.then10.i.cleanup_crit_edge, label %if.then.i77.i

if.then10.i.cleanup_crit_edge:                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i77.i:                                    ; preds = %if.then10.i
  %call1.i75.i = tail call noalias ptr @devm_kstrdup(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef 3264) #6
  %tobool2.not.i76.i = icmp eq ptr %call1.i75.i, null
  br i1 %tobool2.not.i76.i, label %if.then.i77.i.cleanup_crit_edge, label %if.end15.i

if.then.i77.i.cleanup_crit_edge:                  ; preds = %if.then.i77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15.i:                                       ; preds = %if.then.i77.i
  %42 = ptrtoint ptr %call.i.i73.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call1.i75.i, ptr %call.i.i73.i, align 4
  %mode.i78.i = getelementptr inbounds %struct.attribute, ptr %call.i.i73.i, i32 0, i32 1
  %43 = ptrtoint ptr %mode.i78.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 292, ptr %mode.i78.i, align 4
  %show.i79.i = getelementptr inbounds %struct.device_attribute, ptr %call.i.i73.i, i32 0, i32 1
  %44 = ptrtoint ptr %show.i79.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @trigin_sig_show, ptr %show.i79.i, align 4
  %var.i80.i = getelementptr inbounds %struct.dev_ext_attribute, ptr %call.i.i73.i, i32 0, i32 1
  %45 = ptrtoint ptr %var.i80.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %tc.0, ptr %var.i80.i, align 4
  %46 = ptrtoint ptr %con_attrs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %con_attrs.i, align 4
  %arrayidx14.i.i = getelementptr ptr, ptr %47, i32 1
  %48 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i.i73.i, ptr %arrayidx14.i.i, align 4
  %49 = load ptr, ptr %con_attrs.i, align 4
  %arrayidx16.i.i = getelementptr ptr, ptr %49, i32 1
  %50 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx16.i.i, align 4
  %key.i82.i = getelementptr inbounds %struct.attribute, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %key.i82.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @cti_create_con_sysfs_attr.__key, ptr %key.i82.i, align 4
  %call.i.i86.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #6
  %tobool.not.i87.i = icmp eq ptr %call.i.i86.i, null
  br i1 %tobool.not.i87.i, label %if.end15.i.cleanup_crit_edge, label %if.then.i90.i

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i90.i:                                    ; preds = %if.end15.i
  %call1.i88.i = tail call noalias ptr @devm_kstrdup(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef 3264) #6
  %tobool2.not.i89.i = icmp eq ptr %call1.i88.i, null
  br i1 %tobool2.not.i89.i, label %if.then.i90.i.cleanup_crit_edge, label %cti_create_con_sysfs_attr.exit100.i

if.then.i90.i.cleanup_crit_edge:                  ; preds = %if.then.i90.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cti_create_con_sysfs_attr.exit100.i:              ; preds = %if.then.i90.i
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %call.i.i86.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call1.i88.i, ptr %call.i.i86.i, align 4
  %mode.i91.i = getelementptr inbounds %struct.attribute, ptr %call.i.i86.i, i32 0, i32 1
  %54 = ptrtoint ptr %mode.i91.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 292, ptr %mode.i91.i, align 4
  %show.i92.i = getelementptr inbounds %struct.device_attribute, ptr %call.i.i86.i, i32 0, i32 1
  %55 = ptrtoint ptr %show.i92.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @trigin_type_show, ptr %show.i92.i, align 4
  %var.i93.i = getelementptr inbounds %struct.dev_ext_attribute, ptr %call.i.i86.i, i32 0, i32 1
  %56 = ptrtoint ptr %var.i93.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %tc.0, ptr %var.i93.i, align 4
  %57 = ptrtoint ptr %con_attrs.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %con_attrs.i, align 4
  %arrayidx14.i95.i = getelementptr ptr, ptr %58, i32 2
  %59 = ptrtoint ptr %arrayidx14.i95.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i.i86.i, ptr %arrayidx14.i95.i, align 4
  %60 = load ptr, ptr %con_attrs.i, align 4
  %arrayidx16.i96.i = getelementptr ptr, ptr %60, i32 2
  %61 = ptrtoint ptr %arrayidx16.i96.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx16.i96.i, align 4
  %key.i97.i = getelementptr inbounds %struct.attribute, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %key.i97.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @cti_create_con_sysfs_attr.__key, ptr %key.i97.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %cti_create_con_sysfs_attr.exit100.i, %if.end9.i.if.end21.i_crit_edge
  %attr_idx.0.i = phi i32 [ 3, %cti_create_con_sysfs_attr.exit100.i ], [ 1, %if.end9.i.if.end21.i_crit_edge ]
  %con_out.i = getelementptr i8, ptr %.pn53, i32 -12
  %64 = ptrtoint ptr %con_out.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %con_out.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp23.i = icmp sgt i32 %67, 0
  br i1 %cmp23.i, label %if.then24.i, label %if.end21.i.for.inc12_crit_edge

if.end21.i.for.inc12_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc12

if.then24.i:                                      ; preds = %if.end21.i
  %call.i.i101.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #6
  %tobool.not.i102.i = icmp eq ptr %call.i.i101.i, null
  br i1 %tobool.not.i102.i, label %if.then24.i.cleanup_crit_edge, label %if.then.i105.i

if.then24.i.cleanup_crit_edge:                    ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i105.i:                                   ; preds = %if.then24.i
  %call1.i103.i = tail call noalias ptr @devm_kstrdup(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef 3264) #6
  %tobool2.not.i104.i = icmp eq ptr %call1.i103.i, null
  br i1 %tobool2.not.i104.i, label %if.then.i105.i.cleanup_crit_edge, label %if.end29.i

if.then.i105.i.cleanup_crit_edge:                 ; preds = %if.then.i105.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29.i:                                       ; preds = %if.then.i105.i
  %68 = ptrtoint ptr %call.i.i101.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call1.i103.i, ptr %call.i.i101.i, align 4
  %mode.i106.i = getelementptr inbounds %struct.attribute, ptr %call.i.i101.i, i32 0, i32 1
  %69 = ptrtoint ptr %mode.i106.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 292, ptr %mode.i106.i, align 4
  %show.i107.i = getelementptr inbounds %struct.device_attribute, ptr %call.i.i101.i, i32 0, i32 1
  %70 = ptrtoint ptr %show.i107.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @trigout_sig_show, ptr %show.i107.i, align 4
  %var.i108.i = getelementptr inbounds %struct.dev_ext_attribute, ptr %call.i.i101.i, i32 0, i32 1
  %71 = ptrtoint ptr %var.i108.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %tc.0, ptr %var.i108.i, align 4
  %72 = ptrtoint ptr %con_attrs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %con_attrs.i, align 4
  %arrayidx14.i110.i = getelementptr ptr, ptr %73, i32 %attr_idx.0.i
  %74 = ptrtoint ptr %arrayidx14.i110.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i.i101.i, ptr %arrayidx14.i110.i, align 4
  %75 = load ptr, ptr %con_attrs.i, align 4
  %arrayidx16.i111.i = getelementptr ptr, ptr %75, i32 %attr_idx.0.i
  %76 = ptrtoint ptr %arrayidx16.i111.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx16.i111.i, align 4
  %key.i112.i = getelementptr inbounds %struct.attribute, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %key.i112.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @cti_create_con_sysfs_attr.__key, ptr %key.i112.i, align 4
  %inc25.i = add nuw nsw i32 %attr_idx.0.i, 1
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #6
  %tobool.not.i37 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i37, label %if.end29.i.cleanup_crit_edge, label %if.then.i

if.end29.i.cleanup_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.end29.i
  %call1.i = tail call noalias ptr @devm_kstrdup(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef 3264) #6
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.then.i.cleanup_crit_edge, label %cti_create_con_sysfs_attr.exit

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cti_create_con_sysfs_attr.exit:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call1.i, ptr %call.i.i, align 4
  %mode.i = getelementptr inbounds %struct.attribute, ptr %call.i.i, i32 0, i32 1
  %80 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 292, ptr %mode.i, align 4
  %show.i = getelementptr inbounds %struct.device_attribute, ptr %call.i.i, i32 0, i32 1
  %81 = ptrtoint ptr %show.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @trigout_type_show, ptr %show.i, align 4
  %var.i = getelementptr inbounds %struct.dev_ext_attribute, ptr %call.i.i, i32 0, i32 1
  %82 = ptrtoint ptr %var.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %tc.0, ptr %var.i, align 4
  %83 = ptrtoint ptr %con_attrs.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %con_attrs.i, align 4
  %arrayidx14.i = getelementptr ptr, ptr %84, i32 %inc25.i
  %85 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call.i.i, ptr %arrayidx14.i, align 4
  %86 = load ptr, ptr %con_attrs.i, align 4
  %arrayidx16.i = getelementptr ptr, ptr %86, i32 %inc25.i
  %87 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx16.i, align 4
  %key.i = getelementptr inbounds %struct.attribute, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @cti_create_con_sysfs_attr.__key, ptr %key.i, align 4
  br label %for.inc12

for.inc12:                                        ; preds = %cti_create_con_sysfs_attr.exit, %if.end21.i.for.inc12_crit_edge
  %90 = ptrtoint ptr %con_attrs.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %con_attrs.i, align 4
  %attrs.i = getelementptr inbounds %struct.attribute_group, ptr %call.i.i.i, i32 0, i32 3
  %92 = ptrtoint ptr %attrs.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %91, ptr %attrs.i, align 4
  %inc7 = add i32 %con_idx.052, 1
  %93 = ptrtoint ptr %.pn53 to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pn = load ptr, ptr %.pn53, align 4
  %cmp5.not = icmp eq ptr %.pn, %trig_cons
  br i1 %cmp5.not, label %for.inc12.cleanup_crit_edge, label %for.inc12.for.body6_crit_edge

for.inc12.for.body6_crit_edge:                    ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6

for.inc12.cleanup_crit_edge:                      ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc12.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end29.i.cleanup_crit_edge, %if.then.i105.i.cleanup_crit_edge, %if.then24.i.cleanup_crit_edge, %if.then.i90.i.cleanup_crit_edge, %if.end15.i.cleanup_crit_edge, %if.then.i77.i.cleanup_crit_edge, %if.then10.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %for.body6.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %cti_create_cons_groups.exit.cleanup_crit_edge, %cti_create_cons_groups.exit.thread
  %retval.0 = phi i32 [ -12, %cti_create_cons_groups.exit.cleanup_crit_edge ], [ -12, %cti_create_cons_groups.exit.thread ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc12.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ -12, %for.body6.cleanup_crit_edge ], [ -12, %if.end.i.i.cleanup_crit_edge ], [ -12, %if.then.i.i.cleanup_crit_edge ], [ -12, %if.end5.i.cleanup_crit_edge ], [ -12, %if.then.i77.i.cleanup_crit_edge ], [ -12, %if.then10.i.cleanup_crit_edge ], [ -12, %if.then.i90.i.cleanup_crit_edge ], [ -12, %if.end15.i.cleanup_crit_edge ], [ -12, %if.then.i105.i.cleanup_crit_edge ], [ -12, %if.then24.i.cleanup_crit_edge ], [ -12, %if.then.i.cleanup_crit_edge ], [ -12, %if.end29.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @con_name_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %var = getelementptr inbounds %struct.dev_ext_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %var, align 4
  %con_dev_name = getelementptr inbounds %struct.cti_trig_con, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %con_dev_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %con_dev_name, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.7, ptr noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trigin_sig_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %var = getelementptr inbounds %struct.dev_ext_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %var, align 4
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %used_mask = getelementptr inbounds %struct.cti_trig_grp, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %used_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %used_mask, align 4
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %mask, align 4
  %nr_trig_max = getelementptr inbounds %struct.cti_drvdata, ptr %5, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %nr_trig_max to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_trig_max, align 4
  %call1 = call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext true, ptr noundef %buf, ptr noundef nonnull %mask, i32 noundef %12) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trigout_sig_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %var = getelementptr inbounds %struct.dev_ext_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %var, align 4
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #6
  %con_out = getelementptr inbounds %struct.cti_trig_con, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %con_out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %con_out, align 4
  %used_mask = getelementptr inbounds %struct.cti_trig_grp, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %used_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %used_mask, align 4
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %mask, align 4
  %nr_trig_max = getelementptr inbounds %struct.cti_drvdata, ptr %5, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %nr_trig_max to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_trig_max, align 4
  %call1 = call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext true, ptr noundef %buf, ptr noundef nonnull %mask, i32 noundef %12) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #6
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trigin_type_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %var = getelementptr inbounds %struct.dev_ext_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %var, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp14 = icmp sgt i32 %5, 0
  br i1 %cmp14, label %entry.cti_sig_type_name.exit_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.cti_sig_type_name.exit_crit_edge:           ; preds = %entry
  br label %cti_sig_type_name.exit

cti_sig_type_name.exit:                           ; preds = %cti_sig_type_name.exit.cti_sig_type_name.exit_crit_edge, %entry.cti_sig_type_name.exit_crit_edge
  %6 = phi ptr [ %12, %cti_sig_type_name.exit.cti_sig_type_name.exit_crit_edge ], [ %3, %entry.cti_sig_type_name.exit_crit_edge ]
  %used.016 = phi i32 [ %add, %cti_sig_type_name.exit.cti_sig_type_name.exit_crit_edge ], [ 0, %entry.cti_sig_type_name.exit_crit_edge ]
  %sig_idx.015 = phi i32 [ %inc, %cti_sig_type_name.exit.cti_sig_type_name.exit_crit_edge ], [ 0, %entry.cti_sig_type_name.exit_crit_edge ]
  %arrayidx.i = getelementptr %struct.cti_trig_grp, ptr %6, i32 0, i32 2, i32 %sig_idx.015
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr [25 x ptr], ptr @sig_type_names, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx1.i, align 4
  %add.ptr1 = getelementptr i8, ptr %buf, i32 %used.016
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr1, ptr noundef nonnull @.str.8, ptr noundef %10)
  %add = add i32 %call2, %used.016
  %inc = add nuw nsw i32 %sig_idx.015, 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %cti_sig_type_name.exit.cti_sig_type_name.exit_crit_edge, label %cti_sig_type_name.exit.for.end_crit_edge

cti_sig_type_name.exit.for.end_crit_edge:         ; preds = %cti_sig_type_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cti_sig_type_name.exit.cti_sig_type_name.exit_crit_edge: ; preds = %cti_sig_type_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cti_sig_type_name.exit

for.end:                                          ; preds = %cti_sig_type_name.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %used.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %cti_sig_type_name.exit.for.end_crit_edge ]
  %add.ptr3 = getelementptr i8, ptr %buf, i32 %used.0.lcssa
  %15 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 2560, ptr %add.ptr3, align 1
  %add5 = add i32 %used.0.lcssa, 1
  ret i32 %add5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trigout_type_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %var = getelementptr inbounds %struct.dev_ext_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %var, align 4
  %con_out = getelementptr inbounds %struct.cti_trig_con, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %con_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %con_out, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp14 = icmp sgt i32 %5, 0
  br i1 %cmp14, label %entry.cti_sig_type_name.exit_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.cti_sig_type_name.exit_crit_edge:           ; preds = %entry
  br label %cti_sig_type_name.exit

cti_sig_type_name.exit:                           ; preds = %cti_sig_type_name.exit.cti_sig_type_name.exit_crit_edge, %entry.cti_sig_type_name.exit_crit_edge
  %6 = phi ptr [ %12, %cti_sig_type_name.exit.cti_sig_type_name.exit_crit_edge ], [ %3, %entry.cti_sig_type_name.exit_crit_edge ]
  %used.016 = phi i32 [ %add, %cti_sig_type_name.exit.cti_sig_type_name.exit_crit_edge ], [ 0, %entry.cti_sig_type_name.exit_crit_edge ]
  %sig_idx.015 = phi i32 [ %inc, %cti_sig_type_name.exit.cti_sig_type_name.exit_crit_edge ], [ 0, %entry.cti_sig_type_name.exit_crit_edge ]
  %arrayidx.i = getelementptr %struct.cti_trig_grp, ptr %6, i32 0, i32 2, i32 %sig_idx.015
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr [25 x ptr], ptr @sig_type_names, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx1.i, align 4
  %add.ptr1 = getelementptr i8, ptr %buf, i32 %used.016
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr1, ptr noundef nonnull @.str.8, ptr noundef %10)
  %add = add i32 %call2, %used.016
  %inc = add nuw nsw i32 %sig_idx.015, 1
  %11 = ptrtoint ptr %con_out to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %con_out, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %cti_sig_type_name.exit.cti_sig_type_name.exit_crit_edge, label %cti_sig_type_name.exit.for.end_crit_edge

cti_sig_type_name.exit.for.end_crit_edge:         ; preds = %cti_sig_type_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cti_sig_type_name.exit.cti_sig_type_name.exit_crit_edge: ; preds = %cti_sig_type_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cti_sig_type_name.exit

for.end:                                          ; preds = %cti_sig_type_name.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %used.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %cti_sig_type_name.exit.for.end_crit_edge ]
  %add.ptr3 = getelementptr i8, ptr %buf, i32 %used.0.lcssa
  %15 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 2560, ptr %add.ptr3, align 1
  %add5 = add i32 %used.0.lcssa, 1
  ret i32 %add5
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_print_to_pagebuf(i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %enable_req_count = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %enable_req_count, i32 noundef 4) #6
  %4 = ptrtoint ptr %enable_req_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %enable_req_count, align 4
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %6 = ptrtoint ptr %hw_powered to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hw_powered, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %hw_enabled = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %hw_enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hw_enabled, align 4, !range !284
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool10 = icmp ne i32 %5, 0
  %lnot.ext = zext i1 %tobool10 to i32
  %10 = zext i8 %9 to i32
  %lnot.ext.sink = select i1 %tobool.not, i32 %lnot.ext, i32 %10
  %call12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %lnot.ext.sink)
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enable_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !285
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  %csdev5 = getelementptr inbounds %struct.cti_drvdata, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %csdev5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %csdev5, align 4
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = call i32 @cti_enable(ptr noundef %8) #6
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = call i32 @cti_disable(ptr noundef %8) #6
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  %ret.0 = phi i32 [ %call4, %if.then3 ], [ %call6, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool8.not = icmp eq i32 %ret.0, 0
  %size.ret.0 = select i1 %tobool8.not, i32 %size, i32 %ret.0
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %size.ret.0, %if.end7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cti_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cti_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @powered_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %hw_powered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_powered, align 1, !range !284
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %6 = zext i8 %5 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %6)
  ret i32 %call3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctmid_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %ctm_id = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %ctm_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctm_id, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %5)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nr_trigger_cons_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %ctidev = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ctidev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctidev, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %5)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devaff0_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #6
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %hw_powered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_powered, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 4008
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !286
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %9, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #6
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %val.0)
  ret i32 %call7
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devaff1_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #6
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %hw_powered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_powered, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 4012
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !286
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %9, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #6
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %val.0)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @authstatus_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #6
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %hw_powered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_powered, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 4024
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !286
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %9, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #6
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %val.0)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devarch_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #6
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %hw_powered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_powered, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 4028
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !286
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %9, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #6
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %val.0)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devid_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #6
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %hw_powered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_powered, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 4040
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !286
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %9, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #6
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %val.0)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devtype_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #6
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %hw_powered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_powered, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 4044
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !286
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %9, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #6
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %val.0)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pidr0_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #6
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %hw_powered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_powered, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 4064
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !286
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %9, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #6
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %val.0)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pidr1_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #6
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %hw_powered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_powered, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 4068
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !286
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %9, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #6
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %val.0)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pidr2_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #6
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %hw_powered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_powered, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 4072
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !286
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %9, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #6
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %val.0)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pidr3_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #6
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %hw_powered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_powered, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 4076
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !286
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %9, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #6
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %val.0)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pidr4_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #6
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %hw_powered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_powered, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 4048
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !286
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %9, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #6
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %val.0)
  ret i32 %call7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inout_sel_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %ctiinout_sel = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 11
  %4 = ptrtoint ptr %ctiinout_sel to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctiinout_sel, align 4
  %conv = zext i8 %5 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inout_sel_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !285
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %6)
  %cmp = icmp ugt i32 %6, 31
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %4, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %conv = trunc i32 %8 to i8
  %ctiinout_sel = getelementptr inbounds %struct.cti_drvdata, ptr %4, i32 0, i32 4, i32 11
  %9 = ptrtoint ptr %ctiinout_sel to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %ctiinout_sel, align 4
  call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inen_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %ctiinout_sel = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 11
  %4 = ptrtoint ptr %ctiinout_sel to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctiinout_sel, align 4
  %conv = zext i8 %5 to i32
  %arrayidx = getelementptr %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 12, i32 %conv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.56, i32 noundef %7)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inen_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !285
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %4, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %ctiinout_sel = getelementptr inbounds %struct.cti_drvdata, ptr %4, i32 0, i32 4, i32 11
  %5 = ptrtoint ptr %ctiinout_sel to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ctiinout_sel, align 4
  %conv = zext i8 %6 to i32
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %arrayidx = getelementptr %struct.cti_drvdata, ptr %4, i32 0, i32 4, i32 12, i32 %conv
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx, align 4
  %hw_powered.i = getelementptr inbounds %struct.cti_drvdata, ptr %4, i32 0, i32 4, i32 4
  %10 = ptrtoint ptr %hw_powered.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hw_powered.i, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.end.if.end5_crit_edge, label %cti_active.exit

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

cti_active.exit:                                  ; preds = %if.end
  %hw_enabled.i = getelementptr inbounds %struct.cti_drvdata, ptr %4, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %hw_enabled.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hw_enabled.i, align 4, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.i.not = icmp eq i8 %13, 0
  br i1 %tobool1.i.not, label %cti_active.exit.if.end5_crit_edge, label %if.then4

cti_active.exit.if.end5_crit_edge:                ; preds = %cti_active.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %cti_active.exit
  call void @__sanitizer_cov_trace_pc() #8
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 32
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  call void @cti_write_single_reg(ptr noundef %4, i32 noundef %add, i32 noundef %15) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %cti_active.exit.if.end5_crit_edge, %if.end.if.end5_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end5 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cti_write_single_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @outen_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %ctiinout_sel = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 11
  %4 = ptrtoint ptr %ctiinout_sel to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctiinout_sel, align 4
  %conv = zext i8 %5 to i32
  %arrayidx = getelementptr %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 13, i32 %conv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.56, i32 noundef %7)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @outen_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !285
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %4, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %ctiinout_sel = getelementptr inbounds %struct.cti_drvdata, ptr %4, i32 0, i32 4, i32 11
  %5 = ptrtoint ptr %ctiinout_sel to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ctiinout_sel, align 4
  %conv = zext i8 %6 to i32
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %arrayidx = getelementptr %struct.cti_drvdata, ptr %4, i32 0, i32 4, i32 13, i32 %conv
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx, align 4
  %hw_powered.i = getelementptr inbounds %struct.cti_drvdata, ptr %4, i32 0, i32 4, i32 4
  %10 = ptrtoint ptr %hw_powered.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hw_powered.i, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.end.if.end5_crit_edge, label %cti_active.exit

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

cti_active.exit:                                  ; preds = %if.end
  %hw_enabled.i = getelementptr inbounds %struct.cti_drvdata, ptr %4, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %hw_enabled.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hw_enabled.i, align 4, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.i.not = icmp eq i8 %13, 0
  br i1 %tobool1.i.not, label %cti_active.exit.if.end5_crit_edge, label %if.then4

cti_active.exit.if.end5_crit_edge:                ; preds = %cti_active.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %cti_active.exit
  call void @__sanitizer_cov_trace_pc() #8
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 160
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  call void @cti_write_single_reg(ptr noundef %4, i32 noundef %add, i32 noundef %15) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %cti_active.exit.if.end5_crit_edge, %if.end.if.end5_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end5 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gate_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %ctigate = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 14
  %call1 = tail call fastcc i32 @cti_reg32_show(ptr noundef %dev, ptr noundef %buf, ptr noundef %ctigate, i32 noundef 320)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gate_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %ctigate = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !285
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cti_reg32_store.exit_crit_edge

entry.cti_reg32_store.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cti_reg32_store.exit

if.end.i:                                         ; preds = %entry
  %spinlock.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #6
  %tobool3.not.i = icmp eq ptr %ctigate, null
  br i1 %tobool3.not.i, label %if.end.i.land.lhs.true.i_crit_edge, label %if.then4.i

if.end.i.land.lhs.true.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %7 = ptrtoint ptr %ctigate to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %ctigate, align 4
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then4.i, %if.end.i.land.lhs.true.i_crit_edge
  %hw_powered.i.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %8 = ptrtoint ptr %hw_powered.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hw_powered.i.i, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.if.end8.i_crit_edge, label %cti_active.exit.i

land.lhs.true.i.if.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

cti_active.exit.i:                                ; preds = %land.lhs.true.i
  %hw_enabled.i.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %hw_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hw_enabled.i.i, align 4, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.i.not.i = icmp eq i8 %11, 0
  br i1 %tobool1.i.not.i, label %cti_active.exit.i.if.end8.i_crit_edge, label %if.then7.i

cti_active.exit.i.if.end8.i_crit_edge:            ; preds = %cti_active.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then7.i:                                       ; preds = %cti_active.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i, align 4
  call void @cti_write_single_reg(ptr noundef %3, i32 noundef 320, i32 noundef %13) #6
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %cti_active.exit.i.if.end8.i_crit_edge, %land.lhs.true.i.if.end8.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #6
  br label %cti_reg32_store.exit

cti_reg32_store.exit:                             ; preds = %if.end8.i, %entry.cti_reg32_store.exit_crit_edge
  %retval.0.i = phi i32 [ %size, %if.end8.i ], [ -22, %entry.cti_reg32_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cti_reg32_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %buf, ptr noundef %pcached_val, i32 noundef %reg_offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %hw_powered.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %hw_powered.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_powered.i, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %cti_active.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

cti_active.exit:                                  ; preds = %entry
  %hw_enabled.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %hw_enabled.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hw_enabled.i, align 4, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.i.not = icmp eq i8 %7, 0
  br i1 %tobool1.i.not, label %cti_active.exit.if.else_crit_edge, label %if.then

cti_active.exit.if.else_crit_edge:                ; preds = %cti_active.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %cti_active.exit
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1439608005) #6, !srcloc !287
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !288
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %reg_offset
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !286
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %tobool.not = icmp eq ptr %pcached_val, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %pcached_val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %pcached_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !289
  tail call void @arm_heavy_mb() #6
  %add.ptr.i23 = getelementptr i8, ptr %16, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 0) #6, !srcloc !287
  br label %if.end10

if.else:                                          ; preds = %cti_active.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %tobool7.not = icmp eq ptr %pcached_val, null
  br i1 %tobool7.not, label %if.else.if.end10_crit_edge, label %if.then8

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %pcached_val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pcached_val, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.else.if.end10_crit_edge, %if.end
  %val.0 = phi i32 [ %13, %if.end ], [ %18, %if.then8 ], [ 0, %if.else.if.end10_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %call12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.59, i32 noundef %val.0)
  ret i32 %call12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asicctl_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %asicctl = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 15
  %call1 = tail call fastcc i32 @cti_reg32_show(ptr noundef %dev, ptr noundef %buf, ptr noundef %asicctl, i32 noundef 324)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asicctl_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %asicctl = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !285
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cti_reg32_store.exit_crit_edge

entry.cti_reg32_store.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cti_reg32_store.exit

if.end.i:                                         ; preds = %entry
  %spinlock.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #6
  %tobool3.not.i = icmp eq ptr %asicctl, null
  br i1 %tobool3.not.i, label %if.end.i.land.lhs.true.i_crit_edge, label %if.then4.i

if.end.i.land.lhs.true.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %7 = ptrtoint ptr %asicctl to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %asicctl, align 4
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then4.i, %if.end.i.land.lhs.true.i_crit_edge
  %hw_powered.i.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %8 = ptrtoint ptr %hw_powered.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hw_powered.i.i, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.if.end8.i_crit_edge, label %cti_active.exit.i

land.lhs.true.i.if.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

cti_active.exit.i:                                ; preds = %land.lhs.true.i
  %hw_enabled.i.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %hw_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hw_enabled.i.i, align 4, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.i.not.i = icmp eq i8 %11, 0
  br i1 %tobool1.i.not.i, label %cti_active.exit.i.if.end8.i_crit_edge, label %if.then7.i

cti_active.exit.i.if.end8.i_crit_edge:            ; preds = %cti_active.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then7.i:                                       ; preds = %cti_active.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i, align 4
  call void @cti_write_single_reg(ptr noundef %3, i32 noundef 324, i32 noundef %13) #6
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %cti_active.exit.i.if.end8.i_crit_edge, %land.lhs.true.i.if.end8.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #6
  br label %cti_reg32_store.exit

cti_reg32_store.exit:                             ; preds = %if.end8.i, %entry.cti_reg32_store.exit_crit_edge
  %retval.0.i = phi i32 [ %size, %if.end8.i ], [ -22, %entry.cti_reg32_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intack_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !285
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @cti_write_intack(ptr noundef %dev, i32 noundef %2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cti_write_intack(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @appset_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %ctiappset = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 10
  %call1 = tail call fastcc i32 @cti_reg32_show(ptr noundef %dev, ptr noundef %buf, ptr noundef %ctiappset, i32 noundef 20)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @appset_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %ctiappset = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !285
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cti_reg32_store.exit_crit_edge

entry.cti_reg32_store.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cti_reg32_store.exit

if.end.i:                                         ; preds = %entry
  %spinlock.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #6
  %tobool3.not.i = icmp eq ptr %ctiappset, null
  br i1 %tobool3.not.i, label %if.end.i.land.lhs.true.i_crit_edge, label %if.then4.i

if.end.i.land.lhs.true.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %7 = ptrtoint ptr %ctiappset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %ctiappset, align 4
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then4.i, %if.end.i.land.lhs.true.i_crit_edge
  %hw_powered.i.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %8 = ptrtoint ptr %hw_powered.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hw_powered.i.i, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.if.end8.i_crit_edge, label %cti_active.exit.i

land.lhs.true.i.if.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

cti_active.exit.i:                                ; preds = %land.lhs.true.i
  %hw_enabled.i.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %hw_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hw_enabled.i.i, align 4, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.i.not.i = icmp eq i8 %11, 0
  br i1 %tobool1.i.not.i, label %cti_active.exit.i.if.end8.i_crit_edge, label %if.then7.i

cti_active.exit.i.if.end8.i_crit_edge:            ; preds = %cti_active.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then7.i:                                       ; preds = %cti_active.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i, align 4
  call void @cti_write_single_reg(ptr noundef %3, i32 noundef 20, i32 noundef %13) #6
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %cti_active.exit.i.if.end8.i_crit_edge, %land.lhs.true.i.if.end8.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #6
  br label %cti_reg32_store.exit

cti_reg32_store.exit:                             ; preds = %if.end8.i, %entry.cti_reg32_store.exit_crit_edge
  %retval.0.i = phi i32 [ %size, %if.end8.i ], [ -22, %entry.cti_reg32_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @appclear_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !285
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %4, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %neg = xor i32 %6, -1
  %ctiappset = getelementptr inbounds %struct.cti_drvdata, ptr %4, i32 0, i32 4, i32 10
  %7 = ptrtoint ptr %ctiappset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ctiappset, align 4
  %and = and i32 %8, %neg
  store i32 %and, ptr %ctiappset, align 4
  %hw_powered.i = getelementptr inbounds %struct.cti_drvdata, ptr %4, i32 0, i32 4, i32 4
  %9 = ptrtoint ptr %hw_powered.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %hw_powered.i, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end.if.end5_crit_edge, label %cti_active.exit

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

cti_active.exit:                                  ; preds = %if.end
  %hw_enabled.i = getelementptr inbounds %struct.cti_drvdata, ptr %4, i32 0, i32 4, i32 3
  %11 = ptrtoint ptr %hw_enabled.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %hw_enabled.i, align 4, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool1.i.not = icmp eq i8 %12, 0
  br i1 %tobool1.i.not, label %cti_active.exit.if.end5_crit_edge, label %if.then4

cti_active.exit.if.end5_crit_edge:                ; preds = %cti_active.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %cti_active.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @cti_write_single_reg(ptr noundef %4, i32 noundef 24, i32 noundef %6) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %cti_active.exit.if.end5_crit_edge, %if.end.if.end5_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end5 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apppulse_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !285
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %4, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %hw_powered.i = getelementptr inbounds %struct.cti_drvdata, ptr %4, i32 0, i32 4, i32 4
  %5 = ptrtoint ptr %hw_powered.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hw_powered.i, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.end.if.end5_crit_edge, label %cti_active.exit

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

cti_active.exit:                                  ; preds = %if.end
  %hw_enabled.i = getelementptr inbounds %struct.cti_drvdata, ptr %4, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %hw_enabled.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hw_enabled.i, align 4, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.i.not = icmp eq i8 %8, 0
  br i1 %tobool1.i.not, label %cti_active.exit.if.end5_crit_edge, label %if.then4

cti_active.exit.if.end5_crit_edge:                ; preds = %cti_active.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %cti_active.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void @cti_write_single_reg(ptr noundef %4, i32 noundef 28, i32 noundef %10) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %cti_active.exit.if.end5_crit_edge, %if.end.if.end5_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end5 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @triginstatus_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #6
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %hw_powered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_powered, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 304
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !286
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %9, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #6
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %val.0)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trigoutstatus_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #6
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %hw_powered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_powered, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 308
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !286
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %9, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #6
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %val.0)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chinstatus_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #6
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %hw_powered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_powered, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 312
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !286
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %9, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #6
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %val.0)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @choutstatus_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #6
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %hw_powered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_powered, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 316
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !286
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %9, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #6
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %val.0)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @itctrl_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #6
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %hw_powered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_powered, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 3840
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !286
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %9, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #6
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %val.0)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @itctrl_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %val, align 4
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %call.i16 = call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #6
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %hw_powered to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hw_powered, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void @cti_write_single_reg(ptr noundef %3, i32 noundef 3840, i32 noundef %10) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %call.i17 = call i32 @__pm_runtime_idle(ptr noundef %12, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ittrigin_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #6
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %hw_powered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_powered, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 3832
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !286
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %9, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #6
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %val.0)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @itchin_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #6
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %hw_powered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_powered, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 3828
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !286
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %9, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #6
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %val.0)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ittrigout_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #6
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %hw_powered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_powered, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 3816
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !286
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %9, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #6
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %val.0)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ittrigout_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %val, align 4
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %call.i16 = call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #6
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %hw_powered to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hw_powered, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void @cti_write_single_reg(ptr noundef %3, i32 noundef 3816, i32 noundef %10) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %call.i17 = call i32 @__pm_runtime_idle(ptr noundef %12, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @itchout_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #6
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %hw_powered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_powered, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 3812
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !286
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %9, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #6
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %val.0)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @itchout_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %val, align 4
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %call.i16 = call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #6
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %hw_powered to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hw_powered, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void @cti_write_single_reg(ptr noundef %3, i32 noundef 3812, i32 noundef %10) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %call.i17 = call i32 @__pm_runtime_idle(ptr noundef %12, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @itchoutack_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #6
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %hw_powered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_powered, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 3820
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !286
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %9, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #6
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %val.0)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ittrigoutack_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #6
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %hw_powered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_powered, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 3824
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !286
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %9, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #6
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %val.0)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ittriginack_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %val, align 4
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %call.i16 = call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #6
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %hw_powered to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hw_powered, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void @cti_write_single_reg(ptr noundef %3, i32 noundef 3808, i32 noundef %10) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %call.i17 = call i32 @__pm_runtime_idle(ptr noundef %12, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @itchinack_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %val, align 4
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %call.i16 = call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #6
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %hw_powered to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hw_powered, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void @cti_write_single_reg(ptr noundef %3, i32 noundef 3804, i32 noundef %10) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %call.i17 = call i32 @__pm_runtime_idle(ptr noundef %12, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trigin_attach_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %size) #0 align 64 {
entry:
  %chan_idx.i = alloca i32, align 4
  %trig_idx.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chan_idx.i) #6
  %0 = ptrtoint ptr %chan_idx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %chan_idx.i, align 4, !annotation !285
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trig_idx.i) #6
  %1 = ptrtoint ptr %trig_idx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %trig_idx.i, align 4, !annotation !285
  %call.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.79, ptr noundef nonnull %chan_idx.i, ptr noundef nonnull %trig_idx.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 2
  br i1 %cmp.i, label %if.then.i, label %entry.cti_trig_op_parse.exit_crit_edge

entry.cti_trig_op_parse.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cti_trig_op_parse.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %chan_idx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_idx.i, align 4
  %4 = ptrtoint ptr %trig_idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %trig_idx.i, align 4
  %call1.i = call i32 @cti_channel_trig_op(ptr noundef %dev, i32 noundef 0, i32 noundef 0, i32 noundef %3, i32 noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 %size, i32 %call1.i
  br label %cti_trig_op_parse.exit

cti_trig_op_parse.exit:                           ; preds = %if.then.i, %entry.cti_trig_op_parse.exit_crit_edge
  %err.0.i = phi i32 [ -22, %entry.cti_trig_op_parse.exit_crit_edge ], [ %spec.select.i, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trig_idx.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan_idx.i) #6
  ret i32 %err.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cti_channel_trig_op(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trigin_detach_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %size) #0 align 64 {
entry:
  %chan_idx.i = alloca i32, align 4
  %trig_idx.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chan_idx.i) #6
  %0 = ptrtoint ptr %chan_idx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %chan_idx.i, align 4, !annotation !285
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trig_idx.i) #6
  %1 = ptrtoint ptr %trig_idx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %trig_idx.i, align 4, !annotation !285
  %call.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.79, ptr noundef nonnull %chan_idx.i, ptr noundef nonnull %trig_idx.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 2
  br i1 %cmp.i, label %if.then.i, label %entry.cti_trig_op_parse.exit_crit_edge

entry.cti_trig_op_parse.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cti_trig_op_parse.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %chan_idx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_idx.i, align 4
  %4 = ptrtoint ptr %trig_idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %trig_idx.i, align 4
  %call1.i = call i32 @cti_channel_trig_op(ptr noundef %dev, i32 noundef 1, i32 noundef 0, i32 noundef %3, i32 noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 %size, i32 %call1.i
  br label %cti_trig_op_parse.exit

cti_trig_op_parse.exit:                           ; preds = %if.then.i, %entry.cti_trig_op_parse.exit_crit_edge
  %err.0.i = phi i32 [ -22, %entry.cti_trig_op_parse.exit_crit_edge ], [ %spec.select.i, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trig_idx.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan_idx.i) #6
  ret i32 %err.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trigout_attach_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %size) #0 align 64 {
entry:
  %chan_idx.i = alloca i32, align 4
  %trig_idx.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chan_idx.i) #6
  %0 = ptrtoint ptr %chan_idx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %chan_idx.i, align 4, !annotation !285
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trig_idx.i) #6
  %1 = ptrtoint ptr %trig_idx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %trig_idx.i, align 4, !annotation !285
  %call.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.79, ptr noundef nonnull %chan_idx.i, ptr noundef nonnull %trig_idx.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 2
  br i1 %cmp.i, label %if.then.i, label %entry.cti_trig_op_parse.exit_crit_edge

entry.cti_trig_op_parse.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cti_trig_op_parse.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %chan_idx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_idx.i, align 4
  %4 = ptrtoint ptr %trig_idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %trig_idx.i, align 4
  %call1.i = call i32 @cti_channel_trig_op(ptr noundef %dev, i32 noundef 0, i32 noundef 1, i32 noundef %3, i32 noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 %size, i32 %call1.i
  br label %cti_trig_op_parse.exit

cti_trig_op_parse.exit:                           ; preds = %if.then.i, %entry.cti_trig_op_parse.exit_crit_edge
  %err.0.i = phi i32 [ -22, %entry.cti_trig_op_parse.exit_crit_edge ], [ %spec.select.i, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trig_idx.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan_idx.i) #6
  ret i32 %err.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trigout_detach_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %size) #0 align 64 {
entry:
  %chan_idx.i = alloca i32, align 4
  %trig_idx.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chan_idx.i) #6
  %0 = ptrtoint ptr %chan_idx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %chan_idx.i, align 4, !annotation !285
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trig_idx.i) #6
  %1 = ptrtoint ptr %trig_idx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %trig_idx.i, align 4, !annotation !285
  %call.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.79, ptr noundef nonnull %chan_idx.i, ptr noundef nonnull %trig_idx.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 2
  br i1 %cmp.i, label %if.then.i, label %entry.cti_trig_op_parse.exit_crit_edge

entry.cti_trig_op_parse.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cti_trig_op_parse.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %chan_idx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_idx.i, align 4
  %4 = ptrtoint ptr %trig_idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %trig_idx.i, align 4
  %call1.i = call i32 @cti_channel_trig_op(ptr noundef %dev, i32 noundef 1, i32 noundef 1, i32 noundef %3, i32 noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 %size, i32 %call1.i
  br label %cti_trig_op_parse.exit

cti_trig_op_parse.exit:                           ; preds = %if.then.i, %entry.cti_trig_op_parse.exit_crit_edge
  %err.0.i = phi i32 [ -22, %entry.cti_trig_op_parse.exit_crit_edge ], [ %spec.select.i, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trig_idx.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan_idx.i) #6
  ret i32 %err.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trig_filter_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %trig_filter_enable = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %trig_filter_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %trig_filter_enable, align 4, !range !284
  %6 = zext i8 %5 to i32
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %6)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trig_filter_enable_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !285
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %4, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2 = icmp ne i32 %6, 0
  %trig_filter_enable = getelementptr inbounds %struct.cti_drvdata, ptr %4, i32 0, i32 4, i32 8
  %frombool = zext i1 %tobool2 to i8
  %7 = ptrtoint ptr %trig_filter_enable to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %trig_filter_enable, align 4
  call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trigout_filtered_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %nr_trig_max1 = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %nr_trig_max1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_trig_max1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #6
  %trig_out_filter = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 7
  %6 = ptrtoint ptr %trig_out_filter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %trig_out_filter, align 4
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext true, ptr noundef %buf, ptr noundef nonnull %mask, i32 noundef %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %size.0 = phi i32 [ %call2, %if.then ], [ 0, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #6
  ret i32 %size.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chan_gate_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %ctigate_bitmask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctigate_bitmask) #6
  %ctigate = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 14
  %4 = ptrtoint ptr %ctigate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctigate, align 4
  %6 = ptrtoint ptr %ctigate_bitmask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %ctigate_bitmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 2560, ptr %buf, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %config = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config, align 4
  %call3 = call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext true, ptr noundef %buf, ptr noundef nonnull %ctigate_bitmask, i32 noundef %9) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %size.0 = phi i32 [ 1, %if.then ], [ %call3, %if.else ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctigate_bitmask) #6
  ret i32 %size.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chan_gate_enable_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %channel = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channel) #6
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %channel, align 4
  %call = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %channel) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %channel, align 4
  %call1 = call i32 @cti_channel_gate_op(ptr noundef %dev, i32 noundef 0, i32 noundef %2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  %size.call1 = select i1 %tobool2.not, i32 %size, i32 %call1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size.call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cti_channel_gate_op(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chan_gate_disable_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %channel = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channel) #6
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %channel, align 4
  %call = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %channel) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %channel, align 4
  %call1 = call i32 @cti_channel_gate_op(ptr noundef %dev, i32 noundef 1, i32 noundef %2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  %size.call1 = select i1 %tobool2.not, i32 %size, i32 %call1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size.call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chan_set_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %channel.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channel.i) #6
  %0 = ptrtoint ptr %channel.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %channel.i, align 4
  %call.i = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %channel.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %chan_op_parse.exit, label %chan_op_parse.exit.thread

chan_op_parse.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel.i) #6
  br label %3

chan_op_parse.exit:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %channel.i, align 4
  %call1.i = call i32 @cti_channel_setop(ptr noundef %dev, i32 noundef 0, i32 noundef %2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  %spec.select = select i1 %tobool.not, i32 %size, i32 %call1.i
  br label %3

3:                                                ; preds = %chan_op_parse.exit, %chan_op_parse.exit.thread
  %4 = phi i32 [ -22, %chan_op_parse.exit.thread ], [ %spec.select, %chan_op_parse.exit ]
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cti_channel_setop(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chan_clear_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %channel.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channel.i) #6
  %0 = ptrtoint ptr %channel.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %channel.i, align 4
  %call.i = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %channel.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %chan_op_parse.exit, label %chan_op_parse.exit.thread

chan_op_parse.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel.i) #6
  br label %3

chan_op_parse.exit:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %channel.i, align 4
  %call1.i = call i32 @cti_channel_setop(ptr noundef %dev, i32 noundef 1, i32 noundef %2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  %spec.select = select i1 %tobool.not, i32 %size, i32 %call1.i
  br label %3

3:                                                ; preds = %chan_op_parse.exit, %chan_op_parse.exit.thread
  %4 = phi i32 [ -22, %chan_op_parse.exit.thread ], [ %spec.select, %chan_op_parse.exit ]
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chan_pulse_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %channel.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channel.i) #6
  %0 = ptrtoint ptr %channel.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %channel.i, align 4
  %call.i = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %channel.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %chan_op_parse.exit, label %chan_op_parse.exit.thread

chan_op_parse.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel.i) #6
  br label %3

chan_op_parse.exit:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %channel.i, align 4
  %call1.i = call i32 @cti_channel_setop(ptr noundef %dev, i32 noundef 2, i32 noundef %2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  %spec.select = select i1 %tobool.not, i32 %size, i32 %call1.i
  br label %3

3:                                                ; preds = %chan_op_parse.exit, %chan_op_parse.exit.thread
  %4 = phi i32 [ -22, %chan_op_parse.exit.thread ], [ %spec.select, %chan_op_parse.exit ]
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chan_inuse_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %inuse_bits.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %config1.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inuse_bits.i) #6
  %4 = ptrtoint ptr %inuse_bits.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %inuse_bits.i, align 4
  %spinlock.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock.i) #6
  %nr_trig_max.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %nr_trig_max.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_trig_max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp23.i = icmp sgt i32 %6, 0
  br i1 %cmp23.i, label %entry.for.body.i_crit_edge, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 12, i32 %i.024.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %9 = ptrtoint ptr %inuse_bits.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %inuse_bits.i, align 4
  %or.i = or i32 %10, %8
  %arrayidx2.i = getelementptr %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 13, i32 %i.024.i
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx2.i, align 4
  %or3.i = or i32 %or.i, %12
  store i32 %or3.i, ptr %inuse_bits.i, align 4
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %spinlock.i) #6
  %13 = ptrtoint ptr %config1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %config1.i, align 4
  %sub5.i = sub i32 32, %14
  %shr.i = lshr i32 -1, %sub5.i
  %15 = ptrtoint ptr %inuse_bits.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %inuse_bits.i, align 4
  %and6.i = and i32 %shr.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i = call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext true, ptr noundef %buf, ptr noundef nonnull %inuse_bits.i, i32 noundef %14) #6
  br label %print_chan_list.exit

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 2560, ptr %buf, align 1
  br label %print_chan_list.exit

print_chan_list.exit:                             ; preds = %if.else.i, %if.then8.i
  %size.0.i = phi i32 [ %call10.i, %if.then8.i ], [ 1, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inuse_bits.i) #6
  ret i32 %size.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @print_chan_list(ptr nocapture noundef readonly %dev, ptr noundef %buf, i1 noundef zeroext %inuse) unnamed_addr #0 align 64 {
entry:
  %inuse_bits = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %config1 = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inuse_bits) #6
  %4 = ptrtoint ptr %inuse_bits to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %inuse_bits, align 4
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %nr_trig_max = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %nr_trig_max to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_trig_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp23 = icmp sgt i32 %6, 0
  br i1 %cmp23, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %7 = ptrtoint ptr %nr_trig_max to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_trig_max, align 4
  %smax = call i32 @llvm.smax.i32(i32 %8, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 12, i32 %i.024
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %inuse_bits to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %inuse_bits, align 4
  %or = or i32 %12, %10
  %arrayidx2 = getelementptr %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 13, i32 %i.024
  %13 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx2, align 4
  %or3 = or i32 %14, %or
  store i32 %or3, ptr %inuse_bits, align 4
  %inc = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  br i1 %inuse, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %inuse_bits to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %inuse_bits, align 4
  %neg = xor i32 %16, -1
  store i32 %neg, ptr %inuse_bits, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %17 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %config1, align 4
  %sub5 = sub i32 32, %18
  %shr = lshr i32 -1, %sub5
  %19 = ptrtoint ptr %inuse_bits to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %inuse_bits, align 4
  %and6 = and i32 %shr, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext true, ptr noundef %buf, ptr noundef nonnull %inuse_bits, i32 noundef %18) #6
  br label %if.end12

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 2560, ptr %buf, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then8
  %size.0 = phi i32 [ %call10, %if.then8 ], [ 1, %if.else ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inuse_bits) #6
  ret i32 %size.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chan_free_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @print_chan_list(ptr noundef %dev, ptr noundef %buf, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chan_xtrigs_sel_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %xtrig_rchan_sel = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 9
  %4 = ptrtoint ptr %xtrig_rchan_sel to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %xtrig_rchan_sel, align 1
  %conv = zext i8 %5 to i32
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.93, i32 noundef %conv)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chan_xtrigs_sel_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !285
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %config = getelementptr inbounds %struct.cti_drvdata, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %config, align 4
  %sub = add i32 %8, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %sub)
  %cmp = icmp ugt i32 %6, %sub
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %4, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %conv = trunc i32 %10 to i8
  %xtrig_rchan_sel = getelementptr inbounds %struct.cti_drvdata, ptr %4, i32 0, i32 4, i32 9
  %11 = ptrtoint ptr %xtrig_rchan_sel to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %xtrig_rchan_sel, align 1
  call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chan_xtrigs_in_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %nr_trig_max2 = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %nr_trig_max2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_trig_max2, align 4
  %xtrig_rchan_sel = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 9
  %6 = ptrtoint ptr %xtrig_rchan_sel to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %xtrig_rchan_sel, align 1
  %conv = zext i8 %7 to i32
  %shl = shl nuw i32 1, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp18 = icmp sgt i32 %5, 0
  br i1 %cmp18, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %reg_idx.020 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %used.019 = phi i32 [ %used.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 12, i32 %reg_idx.020
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %and = and i32 %9, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %buf, i32 %used.019
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.95, i32 noundef %reg_idx.020)
  %add = add i32 %call4, %used.019
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %used.1 = phi i32 [ %add, %if.then ], [ %used.019, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %reg_idx.020, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %used.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %used.1, %for.inc.for.end_crit_edge ]
  %add.ptr5 = getelementptr i8, ptr %buf, i32 %used.0.lcssa
  %10 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 2560, ptr %add.ptr5, align 1
  %add7 = add i32 %used.0.lcssa, 1
  ret i32 %add7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chan_xtrigs_out_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %nr_trig_max2 = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %nr_trig_max2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_trig_max2, align 4
  %xtrig_rchan_sel = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 9
  %6 = ptrtoint ptr %xtrig_rchan_sel to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %xtrig_rchan_sel, align 1
  %conv = zext i8 %7 to i32
  %shl = shl nuw i32 1, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp18 = icmp sgt i32 %5, 0
  br i1 %cmp18, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %reg_idx.020 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %used.019 = phi i32 [ %used.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 13, i32 %reg_idx.020
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %and = and i32 %9, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %buf, i32 %used.019
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.95, i32 noundef %reg_idx.020)
  %add = add i32 %call4, %used.019
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %used.1 = phi i32 [ %add, %if.then ], [ %used.019, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %reg_idx.020, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %used.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %used.1, %for.inc.for.end_crit_edge ]
  %add.ptr5 = getelementptr i8, ptr %buf, i32 %used.0.lcssa
  %10 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 2560, ptr %add.ptr5, align 1
  %add7 = add i32 %used.0.lcssa, 1
  ret i32 %add7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chan_xtrigs_reset_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef returned %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %config1 = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #6
  %nr_trig_max = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %nr_trig_max to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_trig_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp21 = icmp sgt i32 %5, 0
  br i1 %cmp21, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 12, i32 %i.022
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 13, i32 %i.022
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arrayidx2, align 4
  %inc = add nuw nsw i32 %i.022, 1
  %8 = ptrtoint ptr %nr_trig_max to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_trig_max, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %10 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %config1, align 4
  %sub3 = sub i32 32, %11
  %shr = lshr i32 -1, %sub3
  %ctigate = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 14
  %12 = ptrtoint ptr %ctigate to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr, ptr %ctigate, align 4
  %asicctl = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 15
  %13 = ptrtoint ptr %asicctl to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %asicctl, align 4
  %ctiappset = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 10
  %14 = ptrtoint ptr %ctiappset to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %ctiappset, align 4
  %ctiinout_sel = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 11
  %15 = ptrtoint ptr %ctiinout_sel to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %ctiinout_sel, align 4
  %xtrig_rchan_sel = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 9
  %16 = ptrtoint ptr %xtrig_rchan_sel to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %xtrig_rchan_sel, align 1
  %hw_powered.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %17 = ptrtoint ptr %hw_powered.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %hw_powered.i, align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %for.end.if.end_crit_edge, label %cti_active.exit

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

cti_active.exit:                                  ; preds = %for.end
  %hw_enabled.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 3
  %19 = ptrtoint ptr %hw_enabled.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %hw_enabled.i, align 4, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool1.i.not = icmp eq i8 %20, 0
  br i1 %tobool1.i.not, label %cti_active.exit.if.end_crit_edge, label %if.then

cti_active.exit.if.end_crit_edge:                 ; preds = %cti_active.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %cti_active.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @cti_write_all_hw_regs(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %cti_active.exit.if.end_crit_edge, %for.end.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #6
  ret i32 %size
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cti_write_all_hw_regs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 161)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 161)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !85, !87, !89, !90, !92, !93, !95, !96, !98, !100, !102, !104, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !138, !140, !142, !144, !145, !147, !148, !150, !152, !153, !155, !156, !158, !160, !161, !163, !165, !166, !168, !169, !171, !172, !174, !175, !177, !178, !180, !181, !183, !184, !186, !187, !189, !190, !192, !193, !195, !196, !198, !199, !201, !202, !204, !205, !207, !208, !210, !211, !213, !215, !217, !219, !220, !222, !224, !225, !227, !228, !230, !231, !233, !234, !236, !237, !239, !240, !242, !243, !245, !246, !248, !249, !251, !252, !254, !255, !257, !258, !260, !261, !263, !265, !266, !268, !270, !271, !273}
!llvm.module.flags = !{!274, !275, !276, !277, !278, !279, !280, !281}
!llvm.ident = !{!282}

!0 = !{ptr @coresight_cti_groups, !1, !"coresight_cti_groups", i1 false, i1 false}
!1 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 1213, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 1089, i32 48}
!4 = !{ptr @cti_create_con_sysfs_attr.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 1073, i32 2}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 71, i32 2}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 72, i32 2}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 73, i32 2}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 74, i32 2}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 75, i32 2}
!16 = distinct !{null, !17, !"con_attr_names", i1 false, i1 false}
!17 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 70, i32 27}
!18 = distinct !{null, !19, !"show_fns", i1 false, i1 false}
!19 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 1032, i32 18}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 949, i32 22}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 1004, i32 31}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 1006, i32 30}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 28, i32 2}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 29, i32 2}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 30, i32 2}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 31, i32 2}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 32, i32 2}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 33, i32 2}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 34, i32 2}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 35, i32 2}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 36, i32 2}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 37, i32 2}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 38, i32 2}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 39, i32 2}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 40, i32 2}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 41, i32 2}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 42, i32 2}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 43, i32 2}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 44, i32 2}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 45, i32 2}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 46, i32 2}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 47, i32 2}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 48, i32 2}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 49, i32 2}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 50, i32 2}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 51, i32 2}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 52, i32 2}
!76 = !{ptr @sig_type_names, !77, !"sig_type_names", i1 false, i1 false}
!77 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 27, i32 27}
!78 = !{ptr @coresight_cti_group, !79, !"coresight_cti_group", i1 false, i1 false}
!79 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 1193, i32 37}
!80 = !{ptr @coresight_cti_attrs, !81, !"coresight_cti_attrs", i1 false, i1 false}
!81 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 156, i32 26}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 119, i32 8}
!84 = !{ptr @dev_attr_enable, !83, !"dev_attr_enable", i1 false, i1 false}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 94, i32 23}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 134, i32 8}
!89 = !{ptr @dev_attr_powered, !88, !"dev_attr_powered", i1 false, i1 false}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 143, i32 8}
!92 = !{ptr @dev_attr_ctmid, !91, !"dev_attr_ctmid", i1 false, i1 false}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 153, i32 8}
!95 = !{ptr @dev_attr_nr_trigger_cons, !94, !"dev_attr_nr_trigger_cons", i1 false, i1 false}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 1199, i32 10}
!98 = !{ptr @coresight_cti_mgmt_group, !99, !"coresight_cti_mgmt_group", i1 false, i1 false}
!99 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 1197, i32 37}
!100 = !{ptr @coresight_cti_mgmt_attrs, !101, !"coresight_cti_mgmt_attrs", i1 false, i1 false}
!101 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 196, i32 26}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 184, i32 1}
!104 = !{ptr @dev_attr_devaff0, !103, !"dev_attr_devaff0", i1 false, i1 false}
!105 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 185, i32 1}
!108 = !{ptr @dev_attr_devaff1, !107, !"dev_attr_devaff1", i1 false, i1 false}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 186, i32 1}
!111 = !{ptr @dev_attr_authstatus, !110, !"dev_attr_authstatus", i1 false, i1 false}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 187, i32 1}
!114 = !{ptr @dev_attr_devarch, !113, !"dev_attr_devarch", i1 false, i1 false}
!115 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 188, i32 1}
!117 = !{ptr @dev_attr_devid, !116, !"dev_attr_devid", i1 false, i1 false}
!118 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 189, i32 1}
!120 = !{ptr @dev_attr_devtype, !119, !"dev_attr_devtype", i1 false, i1 false}
!121 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 190, i32 1}
!123 = !{ptr @dev_attr_pidr0, !122, !"dev_attr_pidr0", i1 false, i1 false}
!124 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 191, i32 1}
!126 = !{ptr @dev_attr_pidr1, !125, !"dev_attr_pidr1", i1 false, i1 false}
!127 = !{ptr @.str.50, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 192, i32 1}
!129 = !{ptr @dev_attr_pidr2, !128, !"dev_attr_pidr2", i1 false, i1 false}
!130 = !{ptr @.str.51, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 193, i32 1}
!132 = !{ptr @dev_attr_pidr3, !131, !"dev_attr_pidr3", i1 false, i1 false}
!133 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 194, i32 1}
!135 = !{ptr @dev_attr_pidr4, !134, !"dev_attr_pidr4", i1 false, i1 false}
!136 = !{ptr @.str.53, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 1204, i32 10}
!138 = !{ptr @coresight_cti_regs_group, !139, !"coresight_cti_regs_group", i1 false, i1 false}
!139 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 1202, i32 37}
!140 = !{ptr @coresight_cti_regs_attrs, !141, !"coresight_cti_regs_attrs", i1 false, i1 false}
!141 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 537, i32 26}
!142 = !{ptr @.str.54, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 314, i32 8}
!144 = !{ptr @dev_attr_inout_sel, !143, !"dev_attr_inout_sel", i1 false, i1 false}
!145 = !{ptr @.str.55, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 353, i32 8}
!147 = !{ptr @dev_attr_inen, !146, !"dev_attr_inen", i1 false, i1 false}
!148 = !{ptr @.str.56, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 328, i32 22}
!150 = !{ptr @.str.57, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 392, i32 8}
!152 = !{ptr @dev_attr_outen, !151, !"dev_attr_outen", i1 false, i1 false}
!153 = !{ptr @.str.58, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 408, i32 1}
!155 = !{ptr @dev_attr_gate, !154, !"dev_attr_gate", i1 false, i1 false}
!156 = !{ptr @.str.59, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 235, i32 22}
!158 = !{ptr @.str.60, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 409, i32 1}
!160 = !{ptr @dev_attr_asicctl, !159, !"dev_attr_asicctl", i1 false, i1 false}
!161 = !{ptr @dev_attr_intack, !162, !"dev_attr_intack", i1 false, i1 false}
!162 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 406, i32 8}
!163 = !{ptr @.str.61, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 410, i32 1}
!165 = !{ptr @dev_attr_appset, !164, !"dev_attr_appset", i1 false, i1 false}
!166 = !{ptr @.str.62, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 434, i32 8}
!168 = !{ptr @dev_attr_appclear, !167, !"dev_attr_appclear", i1 false, i1 false}
!169 = !{ptr @.str.63, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 455, i32 8}
!171 = !{ptr @dev_attr_apppulse, !170, !"dev_attr_apppulse", i1 false, i1 false}
!172 = !{ptr @.str.64, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 457, i32 1}
!174 = !{ptr @dev_attr_triginstatus, !173, !"dev_attr_triginstatus", i1 false, i1 false}
!175 = !{ptr @.str.65, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 458, i32 1}
!177 = !{ptr @dev_attr_trigoutstatus, !176, !"dev_attr_trigoutstatus", i1 false, i1 false}
!178 = !{ptr @.str.66, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 459, i32 1}
!180 = !{ptr @dev_attr_chinstatus, !179, !"dev_attr_chinstatus", i1 false, i1 false}
!181 = !{ptr @.str.67, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 460, i32 1}
!183 = !{ptr @dev_attr_choutstatus, !182, !"dev_attr_choutstatus", i1 false, i1 false}
!184 = !{ptr @.str.68, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 527, i32 1}
!186 = !{ptr @dev_attr_itctrl, !185, !"dev_attr_itctrl", i1 false, i1 false}
!187 = !{ptr @.str.69, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 530, i32 1}
!189 = !{ptr @dev_attr_ittrigin, !188, !"dev_attr_ittrigin", i1 false, i1 false}
!190 = !{ptr @.str.70, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 531, i32 1}
!192 = !{ptr @dev_attr_itchin, !191, !"dev_attr_itchin", i1 false, i1 false}
!193 = !{ptr @.str.71, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 526, i32 1}
!195 = !{ptr @dev_attr_ittrigout, !194, !"dev_attr_ittrigout", i1 false, i1 false}
!196 = !{ptr @.str.72, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 525, i32 1}
!198 = !{ptr @dev_attr_itchout, !197, !"dev_attr_itchout", i1 false, i1 false}
!199 = !{ptr @.str.73, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 532, i32 1}
!201 = !{ptr @dev_attr_itchoutack, !200, !"dev_attr_itchoutack", i1 false, i1 false}
!202 = !{ptr @.str.74, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 533, i32 1}
!204 = !{ptr @dev_attr_ittrigoutack, !203, !"dev_attr_ittrigoutack", i1 false, i1 false}
!205 = !{ptr @.str.75, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 529, i32 1}
!207 = !{ptr @dev_attr_ittriginack, !206, !"dev_attr_ittriginack", i1 false, i1 false}
!208 = !{ptr @.str.76, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 528, i32 1}
!210 = !{ptr @dev_attr_itchinack, !209, !"dev_attr_itchinack", i1 false, i1 false}
!211 = !{ptr @.str.77, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 1209, i32 10}
!213 = !{ptr @coresight_cti_channels_group, !214, !"coresight_cti_channels_group", i1 false, i1 false}
!214 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 1207, i32 37}
!215 = !{ptr @coresight_cti_channel_attrs, !216, !"coresight_cti_channel_attrs", i1 false, i1 false}
!216 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 910, i32 26}
!217 = !{ptr @.str.78, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 591, i32 8}
!219 = !{ptr @dev_attr_trigin_attach, !218, !"dev_attr_trigin_attach", i1 false, i1 false}
!220 = !{ptr @.str.79, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 575, i32 22}
!222 = !{ptr @.str.80, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 600, i32 8}
!224 = !{ptr @dev_attr_trigin_detach, !223, !"dev_attr_trigin_detach", i1 false, i1 false}
!225 = !{ptr @.str.81, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 609, i32 8}
!227 = !{ptr @dev_attr_trigout_attach, !226, !"dev_attr_trigout_attach", i1 false, i1 false}
!228 = !{ptr @.str.82, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 618, i32 8}
!230 = !{ptr @dev_attr_trigout_detach, !229, !"dev_attr_trigout_detach", i1 false, i1 false}
!231 = !{ptr @.str.83, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 737, i32 8}
!233 = !{ptr @dev_attr_trig_filter_enable, !232, !"dev_attr_trig_filter_enable", i1 false, i1 false}
!234 = !{ptr @.str.84, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 752, i32 8}
!236 = !{ptr @dev_attr_trigout_filtered, !235, !"dev_attr_trigout_filtered", i1 false, i1 false}
!237 = !{ptr @.str.85, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 650, i32 8}
!239 = !{ptr @dev_attr_chan_gate_enable, !238, !"dev_attr_chan_gate_enable", i1 false, i1 false}
!240 = !{ptr @.str.86, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 664, i32 8}
!242 = !{ptr @dev_attr_chan_gate_disable, !241, !"dev_attr_chan_gate_disable", i1 false, i1 false}
!243 = !{ptr @.str.87, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 687, i32 8}
!245 = !{ptr @dev_attr_chan_set, !244, !"dev_attr_chan_set", i1 false, i1 false}
!246 = !{ptr @.str.88, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 697, i32 8}
!248 = !{ptr @dev_attr_chan_clear, !247, !"dev_attr_chan_clear", i1 false, i1 false}
!249 = !{ptr @.str.89, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 707, i32 8}
!251 = !{ptr @dev_attr_chan_pulse, !250, !"dev_attr_chan_pulse", i1 false, i1 false}
!252 = !{ptr @.str.90, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 900, i32 8}
!254 = !{ptr @dev_attr_chan_inuse, !253, !"dev_attr_chan_inuse", i1 false, i1 false}
!255 = !{ptr @.str.91, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 908, i32 8}
!257 = !{ptr @dev_attr_chan_free, !256, !"dev_attr_chan_free", i1 false, i1 false}
!258 = !{ptr @.str.92, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 822, i32 8}
!260 = !{ptr @dev_attr_chan_xtrigs_sel, !259, !"dev_attr_chan_xtrigs_sel", i1 false, i1 false}
!261 = !{ptr @.str.93, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 820, i32 22}
!263 = !{ptr @.str.94, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 842, i32 8}
!265 = !{ptr @dev_attr_chan_xtrigs_in, !264, !"dev_attr_chan_xtrigs_in", i1 false, i1 false}
!266 = !{ptr @.str.95, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 836, i32 32}
!268 = !{ptr @.str.96, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 862, i32 8}
!270 = !{ptr @dev_attr_chan_xtrigs_out, !269, !"dev_attr_chan_xtrigs_out", i1 false, i1 false}
!271 = !{ptr @.str.97, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/hwtracing/coresight/coresight-cti-sysfs.c", i32 785, i32 8}
!273 = !{ptr @dev_attr_chan_xtrigs_reset, !272, !"dev_attr_chan_xtrigs_reset", i1 false, i1 false}
!274 = !{i32 1, !"wchar_size", i32 2}
!275 = !{i32 1, !"min_enum_size", i32 4}
!276 = !{i32 8, !"branch-target-enforcement", i32 0}
!277 = !{i32 8, !"sign-return-address", i32 0}
!278 = !{i32 8, !"sign-return-address-all", i32 0}
!279 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!280 = !{i32 7, !"uwtable", i32 1}
!281 = !{i32 7, !"frame-pointer", i32 2}
!282 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!283 = !{!"branch_weights", i32 1, i32 2000}
!284 = !{i8 0, i8 2}
!285 = !{!"auto-init"}
!286 = !{i64 4820732}
!287 = !{i64 4820314}
!288 = !{i64 2155422008}
!289 = !{i64 2155421312}
