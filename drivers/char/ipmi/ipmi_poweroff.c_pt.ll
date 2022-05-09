; ModuleID = '/llk/IR_all_yes/drivers/char/ipmi/ipmi_poweroff.c_pt.bc'
source_filename = "../drivers/char/ipmi/ipmi_poweroff.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.ipmi_user_hndl = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ipmi_recv_msg = type { %struct.list_head, i32, ptr, %struct.ipmi_addr, i32, %struct.kernel_ipmi_msg, ptr, ptr, [272 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.ipmi_addr = type { i32, i16, [32 x i8] }
%struct.kernel_ipmi_msg = type { i8, i8, i16, ptr }
%struct.poweroff_function = type { ptr, ptr, ptr }
%struct.ipmi_smi_msg = type { %struct.list_head, i32, i32, ptr, i32, [272 x i8], i32, [272 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.ipmi_smi_watcher = type { %struct.list_head, ptr, ptr, ptr }
%struct.ipmi_system_interface_addr = type { i32, i16, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ipmi_ipmb_addr = type { i32, i16, i8, i8 }

@__param_str_ifnum_to_use = internal constant [27 x i8] c"ipmi_poweroff.ifnum_to_use\00", align 1
@__param_ops_ifnum_to_use = internal constant %struct.kernel_param_ops { i32 0, ptr @set_param_ifnum, ptr @param_get_int, ptr null }, align 4
@ifnum_to_use = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_ifnum_to_use = internal constant %struct.kernel_param { ptr @__param_str_ifnum_to_use, ptr null, ptr @__param_ops_ifnum_to_use, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @ifnum_to_use } }, section "__param", align 4
@__UNIQUE_ID_ifnum_to_use223 = internal constant [142 x i8] c"ipmi_poweroff.parm=ifnum_to_use:The interface number to use for the watchdog timer.  Setting to -1 defaults to the first registered interface\00", section ".modinfo", align 1
@__param_str_poweroff_powercycle = internal constant [34 x i8] c"ipmi_poweroff.poweroff_powercycle\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@poweroff_powercycle = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_poweroff_powercycle = internal constant %struct.kernel_param { ptr @__param_str_poweroff_powercycle, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @poweroff_powercycle } }, section "__param", align 4
@__UNIQUE_ID_poweroff_powercycletype224 = internal constant [47 x i8] c"ipmi_poweroff.parmtype=poweroff_powercycle:int\00", section ".modinfo", align 1
@__UNIQUE_ID_poweroff_powercycle225 = internal constant [190 x i8] c"ipmi_poweroff.parm=poweroff_powercycle: Set to non-zero to enable power cycle instead of power down. Power cycle is contingent on hardware support, otherwise it defaults back to power down.\00", section ".modinfo", align 1
@__initcall__kmod_ipmi_poweroff__226_739_ipmi_poweroff_init6 = internal global ptr @ipmi_poweroff_init, section ".initcall6.init", align 4
@__UNIQUE_ID_file227 = internal constant [51 x i8] c"ipmi_poweroff.file=drivers/char/ipmi/ipmi_poweroff\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [26 x i8] c"ipmi_poweroff.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [56 x i8] c"ipmi_poweroff.author=Corey Minyard <minyard@mvista.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [64 x i8] c"ipmi_poweroff.description=IPMI Poweroff extension to sys_reboot\00", section ".modinfo", align 1
@ipmi_ifnum = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ready = internal global { i1, [31 x i8] } zeroinitializer, align 32
@ipmi_user = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@old_poweroff_func = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@ipmi_poweroff_handler = internal constant { %struct.ipmi_user_hndl, [16 x i8] } { %struct.ipmi_user_hndl { ptr @receive_handler, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@ipmi_po_new_smi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013IPMI poweroff: could not create IPMI user, error %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ipmi_po_new_smi\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/char/ipmi/ipmi_poweroff.c\00", [62 x i8] zeroinitializer }, align 32
@ipmi_po_new_smi._entry_ptr = internal global ptr @ipmi_po_new_smi._entry, section ".printk_index", align 4
@ipmi_po_new_smi._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013IPMI poweroff: Unable to send IPMI get device id info, IPMI error 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@ipmi_po_new_smi._entry_ptr.5 = internal global ptr @ipmi_po_new_smi._entry.3, section ".printk_index", align 4
@halt_recv_msg = internal global { %struct.ipmi_recv_msg, [68 x i8] } { %struct.ipmi_recv_msg { %struct.list_head zeroinitializer, i32 0, ptr null, %struct.ipmi_addr zeroinitializer, i32 0, %struct.kernel_ipmi_msg zeroinitializer, ptr null, ptr @dummy_recv_free, [272 x i8] zeroinitializer }, [68 x i8] zeroinitializer }, align 32
@ipmi_po_new_smi._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\013IPMI poweroff: (chassis) IPMI get device id info too short, was %d bytes, needed %d bytes\0A\00", [35 x i8] zeroinitializer }, align 32
@ipmi_po_new_smi._entry_ptr.8 = internal global ptr @ipmi_po_new_smi._entry.6, section ".printk_index", align 4
@mfg_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@prod_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@capabilities = internal global { i8, [31 x i8] } zeroinitializer, align 32
@ipmi_version = internal global { i8, [31 x i8] } zeroinitializer, align 32
@poweroff_functions = internal constant { [5 x %struct.poweroff_function], [36 x i8] } { [5 x %struct.poweroff_function] [%struct.poweroff_function { ptr @.str.16, ptr @ipmi_atca_detect, ptr @ipmi_poweroff_atca }, %struct.poweroff_function { ptr @.str.17, ptr @ipmi_cpi1_detect, ptr @ipmi_poweroff_cpi1 }, %struct.poweroff_function { ptr @.str.18, ptr @ipmi_dell_chassis_detect, ptr @ipmi_poweroff_chassis }, %struct.poweroff_function { ptr @.str.18, ptr @ipmi_hp_chassis_detect, ptr @ipmi_poweroff_chassis }, %struct.poweroff_function { ptr @.str.18, ptr @ipmi_chassis_detect, ptr @ipmi_poweroff_chassis }], [36 x i8] zeroinitializer }, align 32
@ipmi_po_new_smi._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013IPMI poweroff: Unable to find a poweroff function that will work, giving up\0A\00", [49 x i8] zeroinitializer }, align 32
@ipmi_po_new_smi._entry_ptr.11 = internal global ptr @ipmi_po_new_smi._entry.9, section ".printk_index", align 4
@ipmi_po_new_smi._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016IPMI poweroff: Found a %s style poweroff function\0A\00", [43 x i8] zeroinitializer }, align 32
@ipmi_po_new_smi._entry_ptr.14 = internal global ptr @ipmi_po_new_smi._entry.12, section ".printk_index", align 4
@specific_poweroff_func = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@halt_smi_msg = internal global { %struct.ipmi_smi_msg, [128 x i8] } { %struct.ipmi_smi_msg { %struct.list_head zeroinitializer, i32 0, i32 0, ptr null, i32 0, [272 x i8] zeroinitializer, i32 0, [272 x i8] zeroinitializer, ptr @dummy_smi_free }, [128 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@dummy_count = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ATCA\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CPI1\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"chassis\00", [24 x i8] zeroinitializer }, align 32
@ipmi_atca_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016IPMI poweroff: ATCA Detect mfg 0x%X prod 0x%X\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ipmi_atca_detect\00", [47 x i8] zeroinitializer }, align 32
@ipmi_atca_detect._entry_ptr = internal global ptr @ipmi_atca_detect._entry, section ".printk_index", align 4
@ipmi_atca_detect._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016IPMI poweroff: Installing Pigeon Point Systems Poweroff Hook\0A\00", [32 x i8] zeroinitializer }, align 32
@ipmi_atca_detect._entry_ptr.23 = internal global ptr @ipmi_atca_detect._entry.21, section ".printk_index", align 4
@atca_oem_poweroff_hook = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pps_poweroff_atca._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016IPMI poweroff: PPS powerdown hook used\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pps_poweroff_atca\00", [46 x i8] zeroinitializer }, align 32
@pps_poweroff_atca._entry_ptr = internal global ptr @pps_poweroff_atca._entry, section ".printk_index", align 4
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00@\0A\00", [28 x i8] zeroinitializer }, align 32
@pps_poweroff_atca._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013IPMI poweroff: Unable to send ATCA, IPMI error 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@pps_poweroff_atca._entry_ptr.29 = internal global ptr @pps_poweroff_atca._entry.27, section ".printk_index", align 4
@ipmi_poweroff_atca._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016IPMI poweroff: Powering down via ATCA power command\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ipmi_poweroff_atca\00", [45 x i8] zeroinitializer }, align 32
@ipmi_poweroff_atca._entry_ptr = internal global ptr @ipmi_poweroff_atca._entry, section ".printk_index", align 4
@ipmi_poweroff_atca._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013IPMI poweroff: Unable to send ATCA powerdown message, IPMI error 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@ipmi_poweroff_atca._entry_ptr.34 = internal global ptr @ipmi_poweroff_atca._entry.32, section ".printk_index", align 4
@ipmi_poweroff_cpi1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016IPMI poweroff: Powering down via CPI1 power command\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ipmi_poweroff_cpi1\00", [45 x i8] zeroinitializer }, align 32
@ipmi_poweroff_cpi1._entry_ptr = internal global ptr @ipmi_poweroff_cpi1._entry, section ".printk_index", align 4
@__const.ipmi_dell_chassis_detect.mfr = private unnamed_addr constant [3 x i8] c"\A2\02\00", align 1
@ipmi_poweroff_chassis._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016IPMI poweroff: Powering %s via IPMI chassis control command\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ipmi_poweroff_chassis\00", [42 x i8] zeroinitializer }, align 32
@ipmi_poweroff_chassis._entry_ptr = internal global ptr @ipmi_poweroff_chassis._entry, section ".printk_index", align 4
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cycle\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"down\00", [27 x i8] zeroinitializer }, align 32
@ipmi_poweroff_chassis._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.38, ptr @.str.2, i32 504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013IPMI poweroff: Unable to send chassis power cycle message, IPMI error 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@ipmi_poweroff_chassis._entry_ptr.43 = internal global ptr @ipmi_poweroff_chassis._entry.41, section ".printk_index", align 4
@ipmi_poweroff_chassis._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.38, ptr @.str.2, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013IPMI poweroff: Unable to send chassis power down message, IPMI error 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@ipmi_poweroff_chassis._entry_ptr.46 = internal global ptr @ipmi_poweroff_chassis._entry.44, section ".printk_index", align 4
@ipmi_poweroff_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\016IPMI poweroff: Copyright (C) 2004 MontaVista Software - IPMI Powerdown via sys_reboot\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ipmi_poweroff_init\00", [45 x i8] zeroinitializer }, align 32
@ipmi_poweroff_init._entry_ptr = internal global ptr @ipmi_poweroff_init._entry, section ".printk_index", align 4
@ipmi_poweroff_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016IPMI poweroff: Power cycle is enabled\0A\00", [55 x i8] zeroinitializer }, align 32
@ipmi_poweroff_init._entry_ptr.51 = internal global ptr @ipmi_poweroff_init._entry.49, section ".printk_index", align 4
@ipmi_root_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.58, ptr null, i32 0, i16 365, ptr @ipmi_dir_table, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ipmi_table_header = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ipmi_poweroff_init._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.2, i32 698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013IPMI poweroff: Unable to register powercycle sysctl\0A\00", [41 x i8] zeroinitializer }, align 32
@ipmi_poweroff_init._entry_ptr.54 = internal global ptr @ipmi_poweroff_init._entry.52, section ".printk_index", align 4
@smi_watcher = internal global { %struct.ipmi_smi_watcher, [44 x i8] } { %struct.ipmi_smi_watcher { %struct.list_head zeroinitializer, ptr null, ptr @ipmi_po_new_smi, ptr @ipmi_po_smi_gone }, [44 x i8] zeroinitializer }, align 32
@ipmi_poweroff_init._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.48, ptr @.str.2, i32 709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013IPMI poweroff: Unable to register SMI watcher: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@ipmi_poweroff_init._entry_ptr.57 = internal global ptr @ipmi_poweroff_init._entry.55, section ".printk_index", align 4
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dev\00", [28 x i8] zeroinitializer }, align 32
@ipmi_dir_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.59, ptr null, i32 0, i16 365, ptr @ipmi_table, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ipmi\00", [27 x i8] zeroinitializer }, align 32
@ipmi_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.60, ptr @poweroff_powercycle, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"poweroff_powercycle\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 255]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 255]
@___asan_gen_.62 = private unnamed_addr constant [13 x i8] c"ifnum_to_use\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 39, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant [20 x i8] c"poweroff_powercycle\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 36, i32 12 }
@___asan_gen_.68 = private unnamed_addr constant [11 x i8] c"ipmi_ifnum\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 44, i32 12 }
@___asan_gen_.71 = private unnamed_addr constant [6 x i8] c"ready\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [10 x i8] c"ipmi_user\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 43, i32 26 }
@___asan_gen_.75 = private unnamed_addr constant [18 x i8] c"old_poweroff_func\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 48, i32 15 }
@___asan_gen_.78 = private unnamed_addr constant [22 x i8] c"ipmi_poweroff_handler\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 117, i32 36 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 572, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 594, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [14 x i8] c"halt_recv_msg\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 100, i32 29 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 600, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"mfg_id\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 77, i32 21 }
@___asan_gen_.111 = private unnamed_addr constant [8 x i8] c"prod_id\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 78, i32 21 }
@___asan_gen_.114 = private unnamed_addr constant [13 x i8] c"capabilities\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 79, i32 22 }
@___asan_gen_.117 = private unnamed_addr constant [13 x i8] c"ipmi_version\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 80, i32 22 }
@___asan_gen_.120 = private unnamed_addr constant [19 x i8] c"poweroff_functions\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 522, i32 33 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 621, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 626, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [23 x i8] c"specific_poweroff_func\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 45, i32 15 }
@___asan_gen_.138 = private unnamed_addr constant [13 x i8] c"halt_smi_msg\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 97, i32 28 }
@___asan_gen_.141 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 87, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [12 x i8] c"dummy_count\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 88, i32 17 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 523, i32 21 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 526, i32 21 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 529, i32 21 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 237, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 240, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [23 x i8] c"atca_oem_poweroff_hook\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 182, i32 15 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 196, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 200, i32 18 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 206, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 260, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 283, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 335, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 483, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 503, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 509, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 690, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 693, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant [16 x i8] c"ipmi_root_table\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 673, i32 25 }
@___asan_gen_.264 = private unnamed_addr constant [18 x i8] c"ipmi_table_header\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 680, i32 33 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 698, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant [12 x i8] c"smi_watcher\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 647, i32 32 }
@___asan_gen_.276 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 709, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 674, i32 16 }
@___asan_gen_.285 = private unnamed_addr constant [15 x i8] c"ipmi_dir_table\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 666, i32 25 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 667, i32 16 }
@___asan_gen_.291 = private unnamed_addr constant [11 x i8] c"ipmi_table\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 657, i32 25 }
@___asan_gen_.294 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.295 = private constant [37 x i8] c"../drivers/char/ipmi/ipmi_poweroff.c\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 658, i32 16 }
@llvm.compiler.used = appending global [108 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_ifnum_to_use223, ptr @__UNIQUE_ID_license228, ptr @__UNIQUE_ID_poweroff_powercycle225, ptr @__UNIQUE_ID_poweroff_powercycletype224, ptr @__initcall__kmod_ipmi_poweroff__226_739_ipmi_poweroff_init6, ptr @__param_ifnum_to_use, ptr @__param_poweroff_powercycle, ptr @ipmi_atca_detect._entry, ptr @ipmi_atca_detect._entry.21, ptr @ipmi_atca_detect._entry_ptr, ptr @ipmi_atca_detect._entry_ptr.23, ptr @ipmi_po_new_smi._entry, ptr @ipmi_po_new_smi._entry.12, ptr @ipmi_po_new_smi._entry.3, ptr @ipmi_po_new_smi._entry.6, ptr @ipmi_po_new_smi._entry.9, ptr @ipmi_po_new_smi._entry_ptr, ptr @ipmi_po_new_smi._entry_ptr.11, ptr @ipmi_po_new_smi._entry_ptr.14, ptr @ipmi_po_new_smi._entry_ptr.5, ptr @ipmi_po_new_smi._entry_ptr.8, ptr @ipmi_poweroff_atca._entry, ptr @ipmi_poweroff_atca._entry.32, ptr @ipmi_poweroff_atca._entry_ptr, ptr @ipmi_poweroff_atca._entry_ptr.34, ptr @ipmi_poweroff_chassis._entry, ptr @ipmi_poweroff_chassis._entry.41, ptr @ipmi_poweroff_chassis._entry.44, ptr @ipmi_poweroff_chassis._entry_ptr, ptr @ipmi_poweroff_chassis._entry_ptr.43, ptr @ipmi_poweroff_chassis._entry_ptr.46, ptr @ipmi_poweroff_cpi1._entry, ptr @ipmi_poweroff_cpi1._entry_ptr, ptr @ipmi_poweroff_init._entry, ptr @ipmi_poweroff_init._entry.49, ptr @ipmi_poweroff_init._entry.52, ptr @ipmi_poweroff_init._entry.55, ptr @ipmi_poweroff_init._entry_ptr, ptr @ipmi_poweroff_init._entry_ptr.51, ptr @ipmi_poweroff_init._entry_ptr.54, ptr @ipmi_poweroff_init._entry_ptr.57, ptr @pps_poweroff_atca._entry, ptr @pps_poweroff_atca._entry.27, ptr @pps_poweroff_atca._entry_ptr, ptr @pps_poweroff_atca._entry_ptr.29, ptr @ifnum_to_use, ptr @poweroff_powercycle, ptr @ipmi_ifnum, ptr @ready, ptr @ipmi_user, ptr @old_poweroff_func, ptr @ipmi_poweroff_handler, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @halt_recv_msg, ptr @.str.7, ptr @mfg_id, ptr @prod_id, ptr @capabilities, ptr @ipmi_version, ptr @poweroff_functions, ptr @.str.10, ptr @.str.13, ptr @specific_poweroff_func, ptr @halt_smi_msg, ptr @init_completion.__key, ptr @.str.15, ptr @dummy_count, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @atca_oem_poweroff_hook, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @ipmi_root_table, ptr @ipmi_table_header, ptr @.str.53, ptr @smi_watcher, ptr @.str.56, ptr @.str.58, ptr @ipmi_dir_table, ptr @.str.59, ptr @ipmi_table, ptr @.str.60], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifnum_to_use to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poweroff_powercycle to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_ifnum to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ready to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_user to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @old_poweroff_func to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_poweroff_handler to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_po_new_smi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_po_new_smi._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @halt_recv_msg to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_po_new_smi._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfg_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prod_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capabilities to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_version to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poweroff_functions to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_po_new_smi._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_po_new_smi._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @specific_poweroff_func to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @halt_smi_msg to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_atca_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_atca_detect._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atca_oem_poweroff_hook to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_poweroff_atca._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_poweroff_atca._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_poweroff_atca._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_poweroff_atca._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_poweroff_cpi1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_poweroff_chassis._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_poweroff_chassis._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_poweroff_chassis._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_poweroff_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_poweroff_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_root_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_table_header to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_poweroff_init._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smi_watcher to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_poweroff_init._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_dir_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_poweroff_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #12
  %0 = load i32, ptr @poweroff_powercycle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end3

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #12
  br label %if.end

if.end:                                           ; preds = %do.end3, %entry.if.end_crit_edge
  %call6 = tail call ptr @register_sysctl_table(ptr noundef nonnull @ipmi_root_table) #9
  store ptr %call6, ptr @ipmi_table_header, align 4
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end11, label %if.end14

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #12
  br label %out_err

if.end14:                                         ; preds = %if.end
  %call15 = tail call i32 @ipmi_smi_watcher_register(ptr noundef nonnull @smi_watcher) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.out_err_crit_edge, label %if.then17

if.end14.out_err_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %1 = load ptr, ptr @ipmi_table_header, align 4
  tail call void @unregister_sysctl_table(ptr noundef %1) #9
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call15) #12
  br label %out_err

out_err:                                          ; preds = %if.then17, %if.end14.out_err_crit_edge, %do.end11
  %rv.0 = phi i32 [ %call15, %if.then17 ], [ 0, %if.end14.out_err_crit_edge ], [ -12, %do.end11 ]
  ret i32 %rv.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_param_ifnum(ptr noundef %val, ptr noundef %kp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @param_set_int(ptr noundef %val, ptr noundef %kp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @ifnum_to_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %1 = load i32, ptr @ipmi_ifnum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %1)
  %cmp1 = icmp eq i32 %0, %1
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %.b.i = load i1, ptr @ready, align 4
  br i1 %.b.i, label %if.end2.i, label %if.end3.ipmi_po_smi_gone.exit_crit_edge

if.end3.ipmi_po_smi_gone.exit_crit_edge:          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipmi_po_smi_gone.exit

if.end2.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 false, ptr @ready, align 4
  %2 = load ptr, ptr @ipmi_user, align 4
  %call.i = tail call i32 @ipmi_destroy_user(ptr noundef %2) #9
  %3 = load ptr, ptr @old_poweroff_func, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr %3, ptr @pm_power_off, align 4
  br label %ipmi_po_smi_gone.exit

ipmi_po_smi_gone.exit:                            ; preds = %if.end2.i, %if.end3.ipmi_po_smi_gone.exit_crit_edge
  %4 = load i32, ptr @ifnum_to_use, align 4
  tail call void @ipmi_po_new_smi(i32 noundef %4, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %ipmi_po_smi_gone.exit, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_int(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_int(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipmi_po_smi_gone(i32 noundef %if_num) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @ready, align 4
  br i1 %.b, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @ipmi_ifnum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %if_num)
  %cmp.not = icmp eq i32 %0, %if_num
  br i1 %cmp.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 false, ptr @ready, align 4
  %1 = load ptr, ptr @ipmi_user, align 4
  %call = tail call i32 @ipmi_destroy_user(ptr noundef %1) #9
  %2 = load ptr, ptr @old_poweroff_func, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr %2, ptr @pm_power_off, align 4
  br label %return

return:                                           ; preds = %if.end2, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipmi_po_new_smi(i32 noundef %if_num, ptr nocapture noundef readnone %device) #1 align 64 {
entry:
  %smi_addr = alloca %struct.ipmi_system_interface_addr, align 8
  %send_msg = alloca %struct.kernel_ipmi_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %smi_addr) #9
  %0 = ptrtoint ptr %smi_addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 51540590847, ptr %smi_addr, align 8, !annotation !177
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %send_msg) #9
  %1 = getelementptr inbounds %struct.kernel_ipmi_msg, ptr %send_msg, i32 0, i32 1
  %2 = getelementptr inbounds %struct.kernel_ipmi_msg, ptr %send_msg, i32 0, i32 2
  %3 = getelementptr inbounds %struct.kernel_ipmi_msg, ptr %send_msg, i32 0, i32 3
  %.b = load i1, ptr @ready, align 4
  br i1 %.b, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, ptr @ifnum_to_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp slt i32 %4, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %if_num)
  %cmp1.not = icmp eq i32 %4, %if_num
  %or.cond = or i1 %cmp, %cmp1.not
  br i1 %or.cond, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call = tail call i32 @ipmi_create_user(i32 noundef %if_num, ptr noundef nonnull @ipmi_poweroff_handler, ptr noundef null, ptr noundef nonnull @ipmi_user) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  store i32 %if_num, ptr @ipmi_ifnum, align 4
  %5 = ptrtoint ptr %send_msg to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 6, ptr %send_msg, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %1, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %3, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %2, align 2
  %9 = load ptr, ptr @ipmi_user, align 4
  %call8 = call fastcc i32 @ipmi_request_wait_for_response(ptr noundef %9, ptr noundef nonnull %smi_addr, ptr noundef nonnull %send_msg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end16, label %do.end13

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call8) #12
  br label %do.end51

if.end16:                                         ; preds = %if.end7
  %10 = load i16, ptr getelementptr inbounds (%struct.ipmi_recv_msg, ptr @halt_recv_msg, i32 0, i32 5, i32 2), align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %10)
  %cmp17 = icmp ult i16 %10, 12
  br i1 %cmp17, label %do.end22, label %if.end26

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %10 to i32
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv, i32 noundef 12) #12
  br label %do.end51

if.end26:                                         ; preds = %if.end16
  %11 = load ptr, ptr getelementptr inbounds (%struct.ipmi_recv_msg, ptr @halt_recv_msg, i32 0, i32 5, i32 3), align 4
  %arrayidx = getelementptr i8, ptr %11, i32 7
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %conv27 = zext i8 %13 to i32
  %arrayidx28 = getelementptr i8, ptr %11, i32 8
  %14 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %15 to i32
  %shl = shl nuw nsw i32 %conv29, 8
  %or = or i32 %shl, %conv27
  %arrayidx30 = getelementptr i8, ptr %11, i32 9
  %16 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %17 to i32
  %shl32 = shl nuw nsw i32 %conv31, 16
  %or33 = or i32 %or, %shl32
  store i32 %or33, ptr @mfg_id, align 4
  %arrayidx34 = getelementptr i8, ptr %11, i32 10
  %18 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %19 to i32
  %arrayidx36 = getelementptr i8, ptr %11, i32 11
  %20 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %21 to i32
  %shl38 = shl nuw nsw i32 %conv37, 8
  %or39 = or i32 %shl38, %conv35
  store i32 %or39, ptr @prod_id, align 4
  %arrayidx40 = getelementptr i8, ptr %11, i32 6
  %22 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx40, align 1
  store i8 %23, ptr @capabilities, align 1
  %arrayidx41 = getelementptr i8, ptr %11, i32 5
  %24 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx41, align 1
  store i8 %25, ptr @ipmi_version, align 1
  %26 = load ptr, ptr @ipmi_user, align 4
  %call45 = call i32 @ipmi_atca_detect(ptr noundef %26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %for.inc, label %if.end26.do.end57_crit_edge

if.end26.do.end57_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end57

for.inc:                                          ; preds = %if.end26
  %27 = load i32, ptr @mfg_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 264, i32 %27)
  %cmp.i = icmp eq i32 %27, 264
  br i1 %cmp.i, label %ipmi_cpi1_detect.exit, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

ipmi_cpi1_detect.exit:                            ; preds = %for.inc
  %28 = load i32, ptr @prod_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 343, i32 %28)
  %cmp1.i.not = icmp eq i32 %28, 343
  br i1 %cmp1.i.not, label %ipmi_cpi1_detect.exit.do.end57_crit_edge, label %ipmi_cpi1_detect.exit.for.inc.1_crit_edge

ipmi_cpi1_detect.exit.for.inc.1_crit_edge:        ; preds = %ipmi_cpi1_detect.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

ipmi_cpi1_detect.exit.do.end57_crit_edge:         ; preds = %ipmi_cpi1_detect.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end57

for.inc.1:                                        ; preds = %ipmi_cpi1_detect.exit.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %29 = load ptr, ptr @ipmi_user, align 4
  %call45.2 = call i32 @ipmi_dell_chassis_detect(ptr noundef %29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.2)
  %tobool46.not.2 = icmp eq i32 %call45.2, 0
  br i1 %tobool46.not.2, label %for.inc.2, label %for.inc.1.do.end57_crit_edge

for.inc.1.do.end57_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end57

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %27)
  %cmp.i77 = icmp eq i32 %27, 11
  br i1 %cmp.i77, label %land.lhs.true.i, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

land.lhs.true.i:                                  ; preds = %for.inc.2
  %30 = load i32, ptr @prod_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33281, i32 %30)
  %cmp1.i78 = icmp eq i32 %30, 33281
  br i1 %cmp1.i78, label %land.lhs.true2.i, label %land.lhs.true.i.for.inc.3_crit_edge

land.lhs.true.i.for.inc.3_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %31 = load i8, ptr @ipmi_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp3.i = icmp eq i8 %31, 1
  br i1 %cmp3.i, label %land.lhs.true2.i.do.end57_crit_edge, label %land.lhs.true2.i.for.inc.3_crit_edge

land.lhs.true2.i.for.inc.3_crit_edge:             ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

land.lhs.true2.i.do.end57_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end57

for.inc.3:                                        ; preds = %land.lhs.true2.i.for.inc.3_crit_edge, %land.lhs.true.i.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %32 = load i8, ptr @capabilities, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %32)
  %tobool46.not.4 = icmp sgt i8 %32, -1
  br i1 %tobool46.not.4, label %for.inc.3.do.end51_crit_edge, label %for.inc.3.do.end57_crit_edge

for.inc.3.do.end57_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end57

for.inc.3.do.end51_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51

do.end51:                                         ; preds = %for.inc.3.do.end51_crit_edge, %do.end22, %do.end13
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  %33 = load ptr, ptr @ipmi_user, align 4
  %call54 = call i32 @ipmi_destroy_user(ptr noundef %33) #9
  br label %cleanup

do.end57:                                         ; preds = %for.inc.3.do.end57_crit_edge, %land.lhs.true2.i.do.end57_crit_edge, %for.inc.1.do.end57_crit_edge, %ipmi_cpi1_detect.exit.do.end57_crit_edge, %if.end26.do.end57_crit_edge
  %i.075.lcssa = phi i32 [ 0, %if.end26.do.end57_crit_edge ], [ 1, %ipmi_cpi1_detect.exit.do.end57_crit_edge ], [ 2, %for.inc.1.do.end57_crit_edge ], [ 4, %for.inc.3.do.end57_crit_edge ], [ 3, %land.lhs.true2.i.do.end57_crit_edge ]
  %arrayidx44 = getelementptr [5 x %struct.poweroff_function], ptr @poweroff_functions, i32 0, i32 %i.075.lcssa
  %34 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx44, align 4
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %35) #12
  %poweroff_func = getelementptr [5 x %struct.poweroff_function], ptr @poweroff_functions, i32 0, i32 %i.075.lcssa, i32 2
  %36 = ptrtoint ptr %poweroff_func to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %poweroff_func, align 4
  store ptr %37, ptr @specific_poweroff_func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  %38 = load ptr, ptr @pm_power_off, align 4
  store ptr %38, ptr @old_poweroff_func, align 4
  store ptr @ipmi_poweroff_function, ptr @pm_power_off, align 4
  store i1 true, ptr @ready, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end57, %do.end51, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %send_msg) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %smi_addr) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_destroy_user(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_create_user(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipmi_request_wait_for_response(ptr noundef %user, ptr noundef %addr, ptr noundef %send_msg) unnamed_addr #1 align 64 {
entry:
  %comp = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %comp) #9
  %0 = getelementptr inbounds i8, ptr %comp, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %comp, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @init_completion.__key) #9
  %call = call i32 @ipmi_request_supply_msgs(ptr noundef %user, ptr noundef %addr, i32 noundef 0, ptr noundef %send_msg, ptr noundef nonnull %comp, ptr noundef nonnull @halt_smi_msg, ptr noundef nonnull @halt_recv_msg, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @wait_for_completion(ptr noundef nonnull %comp) #9
  %3 = load ptr, ptr getelementptr inbounds (%struct.ipmi_recv_msg, ptr @halt_recv_msg, i32 0, i32 5, i32 3), align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %conv = zext i8 %5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %comp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipmi_poweroff_function() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @ready, align 4
  br i1 %.b, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @specific_poweroff_func, align 4
  %1 = load ptr, ptr @ipmi_user, align 4
  tail call void %0(ptr noundef %1) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @receive_handler(ptr nocapture noundef readonly %recv_msg, ptr nocapture noundef readnone %handler_data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %user_msg_data = getelementptr inbounds %struct.ipmi_recv_msg, ptr %recv_msg, i32 0, i32 6
  %0 = ptrtoint ptr %user_msg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_msg_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @complete(ptr noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_request_supply_msgs(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dummy_smi_free(ptr nocapture noundef readnone %msg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @dummy_count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull @dummy_count, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @dummy_count, ptr nonnull @dummy_count, i32 1, ptr nonnull elementtype(i32) @dummy_count) #9, !srcloc !178
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dummy_recv_free(ptr nocapture noundef readnone %msg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @dummy_count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull @dummy_count, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @dummy_count, ptr nonnull @dummy_count, i32 1, ptr nonnull elementtype(i32) @dummy_count) #9, !srcloc !178
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_atca_detect(ptr noundef %user) #1 align 64 {
entry:
  %comp.i = alloca %struct.completion, align 4
  %smi_addr = alloca %struct.ipmi_system_interface_addr, align 8
  %send_msg = alloca %struct.kernel_ipmi_msg, align 4
  %data = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %smi_addr) #9
  %0 = ptrtoint ptr %smi_addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 51540590847, ptr %smi_addr, align 8, !annotation !177
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %send_msg) #9
  %1 = getelementptr inbounds %struct.kernel_ipmi_msg, ptr %send_msg, i32 0, i32 1
  %2 = getelementptr inbounds %struct.kernel_ipmi_msg, ptr %send_msg, i32 0, i32 2
  %3 = getelementptr inbounds %struct.kernel_ipmi_msg, ptr %send_msg, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #9
  %4 = ptrtoint ptr %send_msg to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 44, ptr %send_msg, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %1, align 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %data, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data, ptr %3, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %2, align 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %comp.i) #9
  %9 = getelementptr inbounds i8, ptr %comp.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 52)
  %11 = ptrtoint ptr %comp.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %comp.i, align 4
  call void @__init_swait_queue_head(ptr noundef %9, ptr noundef nonnull @.str.15, ptr noundef nonnull @init_completion.__key) #9
  %call.i = call i32 @ipmi_request_supply_msgs(ptr noundef %user, ptr noundef nonnull %smi_addr, i32 noundef 0, ptr noundef nonnull %send_msg, ptr noundef nonnull %comp.i, ptr noundef nonnull @halt_smi_msg, ptr noundef nonnull @halt_recv_msg, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.ipmi_request_wait_for_response.exit_crit_edge

entry.ipmi_request_wait_for_response.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipmi_request_wait_for_response.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @wait_for_completion(ptr noundef nonnull %comp.i) #9
  %12 = load ptr, ptr getelementptr inbounds (%struct.ipmi_recv_msg, ptr @halt_recv_msg, i32 0, i32 5, i32 3), align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %conv.i = zext i8 %14 to i32
  br label %ipmi_request_wait_for_response.exit

ipmi_request_wait_for_response.exit:              ; preds = %if.end.i, %entry.ipmi_request_wait_for_response.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.end.i ], [ %call.i, %entry.ipmi_request_wait_for_response.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %comp.i) #9
  %15 = load i32, ptr @mfg_id, align 4
  %16 = load i32, ptr @prod_id, align 4
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %15, i32 noundef %16) #12
  %17 = load i32, ptr @mfg_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %17)
  %cmp = icmp eq i32 %17, 161
  br i1 %cmp, label %land.lhs.true, label %ipmi_request_wait_for_response.exit.if.end_crit_edge

ipmi_request_wait_for_response.exit.if.end_crit_edge: ; preds = %ipmi_request_wait_for_response.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %ipmi_request_wait_for_response.exit
  %18 = load i32, ptr @prod_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 81, i32 %18)
  %cmp3 = icmp eq i32 %18, 81
  br i1 %cmp3, label %do.end6, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end6:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #12
  store ptr @pps_poweroff_atca, ptr @atca_oem_poweroff_hook, align 4
  br label %if.end

if.end:                                           ; preds = %do.end6, %land.lhs.true.if.end_crit_edge, %ipmi_request_wait_for_response.exit.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  %lnot.ext = zext i1 %tobool.not to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %send_msg) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %smi_addr) #9
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipmi_poweroff_atca(ptr noundef %user) #1 align 64 {
entry:
  %smi_addr = alloca %struct.ipmi_system_interface_addr, align 8
  %send_msg = alloca %struct.kernel_ipmi_msg, align 4
  %data = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %smi_addr) #9
  %0 = ptrtoint ptr %smi_addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 51540590847, ptr %smi_addr, align 8, !annotation !177
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %send_msg) #9
  %1 = getelementptr inbounds %struct.kernel_ipmi_msg, ptr %send_msg, i32 0, i32 1
  %2 = getelementptr inbounds %struct.kernel_ipmi_msg, ptr %send_msg, i32 0, i32 2
  %3 = getelementptr inbounds %struct.kernel_ipmi_msg, ptr %send_msg, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #12
  %4 = ptrtoint ptr %send_msg to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 44, ptr %send_msg, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 17, ptr %1, align 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %data, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data, ptr %3, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 4, ptr %2, align 2
  %call5 = call fastcc i32 @ipmi_request_in_rc_mode(ptr noundef %user, ptr noundef nonnull %smi_addr, ptr noundef nonnull %send_msg)
  %9 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call5, label %do.end8 [
    i32 0, label %entry.if.end_crit_edge
    i32 255, label %entry.if.end_crit_edge17
  ]

entry.if.end_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %call5) #12
  br label %out

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge17
  %10 = load ptr, ptr @atca_oem_poweroff_hook, align 4
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %if.end.out_crit_edge, label %if.then12

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void %10(ptr noundef %user) #9, !callees !179
  br label %out

out:                                              ; preds = %if.then12, %if.end.out_crit_edge, %do.end8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %send_msg) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %smi_addr) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipmi_cpi1_detect(ptr nocapture noundef readnone %user) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mfg_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 264, i32 %0)
  %cmp = icmp eq i32 %0, 264
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = load i32, ptr @prod_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 343, i32 %1)
  %cmp1 = icmp eq i32 %1, 343
  %phi.cast = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %2 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipmi_poweroff_cpi1(ptr noundef %user) #1 align 64 {
entry:
  %smi_addr = alloca %struct.ipmi_system_interface_addr, align 8
  %ipmb_addr = alloca %struct.ipmi_ipmb_addr, align 8
  %send_msg = alloca %struct.kernel_ipmi_msg, align 4
  %data = alloca [1 x i8], align 1
  %hotswap_ipmb = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %smi_addr) #9
  %0 = ptrtoint ptr %smi_addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 51540590847, ptr %smi_addr, align 8, !annotation !177
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ipmb_addr) #9
  %1 = getelementptr inbounds %struct.ipmi_ipmb_addr, ptr %ipmb_addr, i32 0, i32 1
  %2 = getelementptr inbounds %struct.ipmi_ipmb_addr, ptr %ipmb_addr, i32 0, i32 2
  %3 = getelementptr inbounds %struct.ipmi_ipmb_addr, ptr %ipmb_addr, i32 0, i32 3
  %4 = ptrtoint ptr %ipmb_addr to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %ipmb_addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %send_msg) #9
  %5 = getelementptr inbounds %struct.kernel_ipmi_msg, ptr %send_msg, i32 0, i32 1
  %6 = getelementptr inbounds %struct.kernel_ipmi_msg, ptr %send_msg, i32 0, i32 2
  %7 = getelementptr inbounds %struct.kernel_ipmi_msg, ptr %send_msg, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hotswap_ipmb) #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #12
  %8 = ptrtoint ptr %send_msg to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 62, ptr %send_msg, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -93, ptr %5, align 1
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %7, align 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %6, align 2
  %call2 = call fastcc i32 @ipmi_request_in_rc_mode(ptr noundef %user, ptr noundef nonnull %smi_addr, ptr noundef nonnull %send_msg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %12 = load ptr, ptr getelementptr inbounds (%struct.ipmi_recv_msg, ptr @halt_recv_msg, i32 0, i32 5, i32 3), align 4
  %arrayidx = getelementptr i8, ptr %12, i32 1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %14)
  %cmp = icmp ugt i8 %14, 9
  %mul = shl i8 %14, 1
  %cond.v = select i1 %cmp, i8 -80, i8 -82
  %cond = add i8 %cond.v, %mul
  %15 = ptrtoint ptr %hotswap_ipmb to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %cond, ptr %hotswap_ipmb, align 1
  %16 = ptrtoint ptr %send_msg to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 4, ptr %send_msg, align 4
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %5, align 1
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %7, align 4
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %6, align 2
  %call11 = call fastcc i32 @ipmi_request_in_rc_mode(ptr noundef %user, ptr noundef nonnull %smi_addr, ptr noundef nonnull %send_msg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end14:                                         ; preds = %if.end
  %20 = load ptr, ptr getelementptr inbounds (%struct.ipmi_recv_msg, ptr @halt_recv_msg, i32 0, i32 5, i32 3), align 4
  %arrayidx15 = getelementptr i8, ptr %20, i32 1
  %21 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx15, align 1
  %arrayidx16 = getelementptr i8, ptr %20, i32 2
  %23 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx16, align 1
  %25 = ptrtoint ptr %ipmb_addr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %ipmb_addr, align 8
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %1, align 4
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %22, ptr %2, align 2
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %24, ptr %3, align 1
  %29 = ptrtoint ptr %send_msg to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 62, ptr %send_msg, align 4
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -128, ptr %5, align 1
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %hotswap_ipmb, ptr %7, align 4
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %6, align 2
  %call24 = call fastcc i32 @ipmi_request_in_rc_mode(ptr noundef %user, ptr noundef nonnull %ipmb_addr, ptr noundef nonnull %send_msg)
  %33 = ptrtoint ptr %send_msg to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 62, ptr %send_msg, align 4
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -124, ptr %5, align 1
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %data, ptr %7, align 4
  %36 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %data, align 1
  %37 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %6, align 2
  %call30 = call fastcc i32 @ipmi_request_in_rc_mode(ptr noundef %user, ptr noundef nonnull %smi_addr, ptr noundef nonnull %send_msg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end14.out_crit_edge

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end33:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %send_msg to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 62, ptr %send_msg, align 4
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -126, ptr %5, align 1
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %data, ptr %7, align 4
  %41 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %data, align 1
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %6, align 2
  %call40 = call fastcc i32 @ipmi_request_in_rc_mode(ptr noundef %user, ptr noundef nonnull %smi_addr, ptr noundef nonnull %send_msg)
  br label %out

out:                                              ; preds = %if.end33, %if.end14.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hotswap_ipmb) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %send_msg) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ipmb_addr) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %smi_addr) #9
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipmi_dell_chassis_detect(ptr nocapture noundef readnone %user) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @ipmi_version, align 1
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) @__const.ipmi_dell_chassis_detect.mfr, ptr noundef nonnull dereferenceable(3) @mfg_id, i32 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  %and = and i8 %0, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and)
  %cmp = icmp eq i8 %and, 0
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %0)
  %cmp9 = icmp ult i8 %0, 80
  %or.cond13 = select i1 %or.cond, i1 %cmp9, i1 false
  %retval.0 = zext i1 %or.cond13 to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipmi_poweroff_chassis(ptr noundef %user) #1 align 64 {
entry:
  %smi_addr = alloca %struct.ipmi_system_interface_addr, align 8
  %send_msg = alloca %struct.kernel_ipmi_msg, align 8
  %data = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %smi_addr) #9
  %0 = ptrtoint ptr %smi_addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 51540590847, ptr %smi_addr, align 8, !annotation !177
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %send_msg) #9
  %1 = getelementptr inbounds %struct.kernel_ipmi_msg, ptr %send_msg, i32 0, i32 1
  %2 = getelementptr inbounds %struct.kernel_ipmi_msg, ptr %send_msg, i32 0, i32 2
  %3 = getelementptr inbounds %struct.kernel_ipmi_msg, ptr %send_msg, i32 0, i32 3
  %4 = ptrtoint ptr %send_msg to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %send_msg, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #9
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %data, align 1, !annotation !177
  br label %powercyclefailed

powercyclefailed:                                 ; preds = %do.end11, %entry
  %6 = load i32, ptr @poweroff_powercycle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %cond = select i1 %tobool.not, ptr @.str.40, ptr @.str.39
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull %cond) #12
  %7 = ptrtoint ptr %send_msg to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %send_msg, align 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %1, align 1
  %9 = load i32, ptr @poweroff_powercycle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not = icmp eq i32 %9, 0
  %. = select i1 %tobool1.not, i8 0, i8 2
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %., ptr %data, align 1
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %data, ptr %3, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %2, align 2
  %call4 = call fastcc i32 @ipmi_request_in_rc_mode(ptr noundef %user, ptr noundef nonnull %smi_addr, ptr noundef nonnull %send_msg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %powercyclefailed.if.end20_crit_edge, label %if.then6

powercyclefailed.if.end20_crit_edge:              ; preds = %powercyclefailed
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then6:                                         ; preds = %powercyclefailed
  %13 = load i32, ptr @poweroff_powercycle, align 4
  %tobool7.not = icmp eq i32 %13, 0
  br i1 %tobool7.not, label %do.end17, label %do.end11

do.end11:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %call4) #12
  store i32 0, ptr @poweroff_powercycle, align 4
  br label %powercyclefailed

do.end17:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %call4) #12
  br label %if.end20

if.end20:                                         ; preds = %do.end17, %powercyclefailed.if.end20_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %send_msg) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %smi_addr) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipmi_hp_chassis_detect(ptr nocapture noundef readnone %user) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mfg_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %0)
  %cmp = icmp eq i32 %0, 11
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr @prod_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33281, i32 %1)
  %cmp1 = icmp eq i32 %1, 33281
  br i1 %cmp1, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i8, ptr @ipmi_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp3 = icmp eq i8 %2, 1
  br i1 %cmp3, label %land.lhs.true2.return_crit_edge, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true2.return_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true2.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %land.lhs.true2.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipmi_chassis_detect(ptr nocapture noundef readnone %user) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @capabilities, align 1
  %1 = and i8 %0, -128
  %and = zext i8 %1 to i32
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pps_poweroff_atca(ptr noundef %user) #1 align 64 {
entry:
  %smi_addr = alloca %struct.ipmi_system_interface_addr, align 8
  %send_msg = alloca %struct.kernel_ipmi_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %smi_addr) #9
  %0 = ptrtoint ptr %smi_addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 51540590847, ptr %smi_addr, align 8, !annotation !177
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %send_msg) #9
  %1 = getelementptr inbounds %struct.kernel_ipmi_msg, ptr %send_msg, i32 0, i32 1
  %2 = getelementptr inbounds %struct.kernel_ipmi_msg, ptr %send_msg, i32 0, i32 2
  %3 = getelementptr inbounds %struct.kernel_ipmi_msg, ptr %send_msg, i32 0, i32 3
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #12
  %4 = ptrtoint ptr %send_msg to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 46, ptr %send_msg, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 17, ptr %1, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.26, ptr %3, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 3, ptr %2, align 2
  %call1 = call fastcc i32 @ipmi_request_in_rc_mode(ptr noundef %user, ptr noundef nonnull %smi_addr, ptr noundef nonnull %send_msg)
  %8 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %call1, label %do.end4 [
    i32 0, label %entry.if.end_crit_edge
    i32 255, label %entry.if.end_crit_edge9
  ]

entry.if.end_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %call1) #12
  br label %if.end

if.end:                                           ; preds = %do.end4, %entry.if.end_crit_edge, %entry.if.end_crit_edge9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %send_msg) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %smi_addr) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipmi_request_in_rc_mode(ptr noundef %user, ptr noundef %addr, ptr noundef %send_msg) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @dummy_count, i32 noundef 4) #9
  store volatile i32 2, ptr @dummy_count, align 4
  %call = tail call i32 @ipmi_request_supply_msgs(ptr noundef %user, ptr noundef %addr, i32 noundef 0, ptr noundef %send_msg, ptr noundef null, ptr noundef nonnull @halt_smi_msg, ptr noundef nonnull @halt_recv_msg, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.preheader, label %if.then

while.cond.preheader:                             ; preds = %entry
  %call.i.i1112 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @dummy_count, i32 noundef 4) #9
  %0 = load volatile i32, ptr @dummy_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp13 = icmp sgt i32 %0, 0
  br i1 %cmp13, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i10 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @dummy_count, i32 noundef 4) #9
  store volatile i32 0, ptr @dummy_count, align 4
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  tail call void @ipmi_poll_interface(ptr noundef %user) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !181
  %call.i.i11 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @dummy_count, i32 noundef 4) #9
  %1 = load volatile i32, ptr @dummy_count, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %2 = load ptr, ptr getelementptr inbounds (%struct.ipmi_recv_msg, ptr @halt_recv_msg, i32 0, i32 5, i32 3), align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %conv = zext i8 %4 to i32
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %conv, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipmi_poll_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_smi_watcher_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_sysctl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !20, !21, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !56, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !97, !98, !99, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !156, !158, !160, !162, !164, !166}
!llvm.module.flags = !{!168, !169, !170, !171, !172, !173, !174, !175}
!llvm.ident = !{!176}

!0 = !{ptr @__param_ifnum_to_use, !1, !"__param_ifnum_to_use", i1 false, i1 false}
!1 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 63, i32 1}
!2 = !{ptr @__UNIQUE_ID_ifnum_to_use223, !3, !"__UNIQUE_ID_ifnum_to_use223", i1 false, i1 false}
!3 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 65, i32 1}
!4 = !{ptr @__param_poweroff_powercycle, !5, !"__param_poweroff_powercycle", i1 false, i1 false}
!5 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 70, i32 1}
!6 = !{ptr @__UNIQUE_ID_poweroff_powercycletype224, !5, !"__UNIQUE_ID_poweroff_powercycletype224", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_poweroff_powercycle225, !8, !"__UNIQUE_ID_poweroff_powercycle225", i1 false, i1 false}
!8 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 71, i32 1}
!9 = !{ptr @__initcall__kmod_ipmi_poweroff__226_739_ipmi_poweroff_init6, !10, !"__initcall__kmod_ipmi_poweroff__226_739_ipmi_poweroff_init6", i1 false, i1 false}
!10 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 739, i32 1}
!11 = !{ptr @__UNIQUE_ID_file227, !12, !"__UNIQUE_ID_file227", i1 false, i1 false}
!12 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 740, i32 1}
!13 = !{ptr @__UNIQUE_ID_license228, !12, !"__UNIQUE_ID_license228", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_author229, !15, !"__UNIQUE_ID_author229", i1 false, i1 false}
!15 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 741, i32 1}
!16 = !{ptr @__UNIQUE_ID_description230, !17, !"__UNIQUE_ID_description230", i1 false, i1 false}
!17 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 742, i32 1}
!18 = !{ptr @poweroff_powercycle, !19, !"poweroff_powercycle", i1 false, i1 false}
!19 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 36, i32 12}
!20 = !{ptr @__param_str_ifnum_to_use, !1, !"__param_str_ifnum_to_use", i1 false, i1 false}
!21 = !{ptr @__param_ops_ifnum_to_use, !1, !"__param_ops_ifnum_to_use", i1 false, i1 false}
!22 = !{ptr @ipmi_ifnum, !23, !"ipmi_ifnum", i1 false, i1 false}
!23 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 44, i32 12}
!24 = distinct !{null, !25, !"ready", i1 false, i1 false}
!25 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 42, i32 12}
!26 = !{ptr @ipmi_user, !27, !"ipmi_user", i1 false, i1 false}
!27 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 43, i32 26}
!28 = !{ptr @old_poweroff_func, !29, !"old_poweroff_func", i1 false, i1 false}
!29 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 48, i32 15}
!30 = !{ptr @.str, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 572, i32 3}
!32 = !{ptr @.str.1, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ipmi_po_new_smi._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @ipmi_po_new_smi._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 594, i32 3}
!38 = !{ptr @ipmi_po_new_smi._entry.3, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ipmi_po_new_smi._entry_ptr.5, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 600, i32 3}
!42 = !{ptr @ipmi_po_new_smi._entry.6, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ipmi_po_new_smi._entry_ptr.8, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 621, i32 2}
!46 = !{ptr @ipmi_po_new_smi._entry.9, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ipmi_po_new_smi._entry_ptr.11, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 626, i32 2}
!50 = !{ptr @ipmi_po_new_smi._entry.12, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @ipmi_po_new_smi._entry_ptr.14, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @ipmi_poweroff_handler, !53, !"ipmi_poweroff_handler", i1 false, i1 false}
!53 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 117, i32 36}
!54 = !{ptr @init_completion.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../include/linux/completion.h", i32 87, i32 2}
!56 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @halt_smi_msg, !58, !"halt_smi_msg", i1 false, i1 false}
!58 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 97, i32 28}
!59 = !{ptr @dummy_count, !60, !"dummy_count", i1 false, i1 false}
!60 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 88, i32 17}
!61 = !{ptr @halt_recv_msg, !62, !"halt_recv_msg", i1 false, i1 false}
!62 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 100, i32 29}
!63 = !{ptr @mfg_id, !64, !"mfg_id", i1 false, i1 false}
!64 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 77, i32 21}
!65 = !{ptr @prod_id, !66, !"prod_id", i1 false, i1 false}
!66 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 78, i32 21}
!67 = !{ptr @capabilities, !68, !"capabilities", i1 false, i1 false}
!68 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 79, i32 22}
!69 = !{ptr @ipmi_version, !70, !"ipmi_version", i1 false, i1 false}
!70 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 80, i32 22}
!71 = !{ptr @.str.16, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 523, i32 21}
!73 = !{ptr @.str.17, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 526, i32 21}
!75 = !{ptr @.str.18, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 529, i32 21}
!77 = !{ptr @poweroff_functions, !78, !"poweroff_functions", i1 false, i1 false}
!78 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 522, i32 33}
!79 = !{ptr @.str.19, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 237, i32 2}
!81 = !{ptr @.str.20, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @ipmi_atca_detect._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @ipmi_atca_detect._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.22, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 240, i32 3}
!86 = !{ptr @ipmi_atca_detect._entry.21, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @ipmi_atca_detect._entry_ptr.23, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.24, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 196, i32 2}
!90 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @pps_poweroff_atca._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @pps_poweroff_atca._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.26, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 200, i32 18}
!95 = !{ptr @.str.28, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 206, i32 3}
!97 = !{ptr @pps_poweroff_atca._entry.27, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @pps_poweroff_atca._entry_ptr.29, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @atca_oem_poweroff_hook, !100, !"atca_oem_poweroff_hook", i1 false, i1 false}
!100 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 182, i32 15}
!101 = !{ptr @.str.30, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 260, i32 2}
!103 = !{ptr @.str.31, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @ipmi_poweroff_atca._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @ipmi_poweroff_atca._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.33, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 283, i32 3}
!108 = !{ptr @ipmi_poweroff_atca._entry.32, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @ipmi_poweroff_atca._entry_ptr.34, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.35, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 335, i32 2}
!112 = !{ptr @.str.36, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @ipmi_poweroff_cpi1._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @ipmi_poweroff_cpi1._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.37, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 483, i32 2}
!117 = !{ptr @.str.38, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @ipmi_poweroff_chassis._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @ipmi_poweroff_chassis._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.39, !116, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.40, !116, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.42, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 503, i32 4}
!124 = !{ptr @ipmi_poweroff_chassis._entry.41, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @ipmi_poweroff_chassis._entry_ptr.43, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.45, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 509, i32 3}
!128 = !{ptr @ipmi_poweroff_chassis._entry.44, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @ipmi_poweroff_chassis._entry_ptr.46, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @specific_poweroff_func, !131, !"specific_poweroff_func", i1 false, i1 false}
!131 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 45, i32 15}
!132 = !{ptr @ifnum_to_use, !133, !"ifnum_to_use", i1 false, i1 false}
!133 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 39, i32 12}
!134 = !{ptr @__param_str_poweroff_powercycle, !5, !"__param_str_poweroff_powercycle", i1 false, i1 false}
!135 = !{ptr @.str.47, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 690, i32 2}
!137 = !{ptr @.str.48, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @ipmi_poweroff_init._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @ipmi_poweroff_init._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.50, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 693, i32 3}
!142 = !{ptr @ipmi_poweroff_init._entry.49, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @ipmi_poweroff_init._entry_ptr.51, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.53, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 698, i32 3}
!146 = !{ptr @ipmi_poweroff_init._entry.52, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @ipmi_poweroff_init._entry_ptr.54, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.56, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 709, i32 3}
!150 = !{ptr @ipmi_poweroff_init._entry.55, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @ipmi_poweroff_init._entry_ptr.57, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.58, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 674, i32 16}
!154 = !{ptr @ipmi_root_table, !155, !"ipmi_root_table", i1 false, i1 false}
!155 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 673, i32 25}
!156 = !{ptr @.str.59, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 667, i32 16}
!158 = !{ptr @ipmi_dir_table, !159, !"ipmi_dir_table", i1 false, i1 false}
!159 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 666, i32 25}
!160 = !{ptr @.str.60, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 658, i32 16}
!162 = !{ptr @ipmi_table, !163, !"ipmi_table", i1 false, i1 false}
!163 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 657, i32 25}
!164 = !{ptr @ipmi_table_header, !165, !"ipmi_table_header", i1 false, i1 false}
!165 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 680, i32 33}
!166 = !{ptr @smi_watcher, !167, !"smi_watcher", i1 false, i1 false}
!167 = !{!"../drivers/char/ipmi/ipmi_poweroff.c", i32 647, i32 32}
!168 = !{i32 1, !"wchar_size", i32 2}
!169 = !{i32 1, !"min_enum_size", i32 4}
!170 = !{i32 8, !"branch-target-enforcement", i32 0}
!171 = !{i32 8, !"sign-return-address", i32 0}
!172 = !{i32 8, !"sign-return-address-all", i32 0}
!173 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!174 = !{i32 7, !"uwtable", i32 1}
!175 = !{i32 7, !"frame-pointer", i32 2}
!176 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!177 = !{!"auto-init"}
!178 = !{i64 2148359588, i64 2148359614, i64 2148359643, i64 2148359677, i64 2148359708, i64 2148359731}
!179 = !{ptr @pps_poweroff_atca}
!180 = !{i64 2154078497}
!181 = !{i64 2154078339}
