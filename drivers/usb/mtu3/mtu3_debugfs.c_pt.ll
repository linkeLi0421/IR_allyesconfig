; ModuleID = '/llk/IR_all_yes/drivers/usb/mtu3/mtu3_debugfs.c_pt.bc'
source_filename = "../drivers/usb/mtu3/mtu3_debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.debugfs_reg32 = type { ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtu3_file_map = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ssusb_mtk = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, [4 x %struct.clk_bulk_data], %struct.otg_switch_mtk, i32, i8, i32, i32, i32, i32, ptr, i8, ptr, i32, i32 }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.otg_switch_mtk = type { ptr, ptr, %struct.notifier_block, %struct.work_struct, i32, i32, ptr, i8, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mtu3 = type { %struct.spinlock, ptr, ptr, ptr, ptr, i32, %struct.mtu3_fifo_info, %struct.mtu3_fifo_info, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, %struct.usb_gadget, ptr, %struct.mtu3_request, [6 x i8], i32, i32, i16, i8, i8, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mtu3_fifo_info = type { i32, i32, [4 x i32] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mtu3_request = type { %struct.usb_request, %struct.list_head, ptr, ptr, ptr, i32 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.mtu3_regset = type { [32 x i8], %struct.debugfs_regset32 }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.mtu3_ep = type { %struct.usb_ep, [12 x i8], ptr, i8, i8, i8, i16, i32, i32, i32, i32, ptr, %struct.list_head, %struct.mtu3_gpd_ring, ptr, ptr, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.mtu3_gpd_ring = type { i32, ptr, ptr, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.qmu_gpd = type { i32, i32, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.66, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.66 = type { %struct.list_head }
%union.anon.67 = type { %struct.hlist_node }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.81 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"regs\00", [27 x i8] zeroinitializer }, align 32
@mtu3_ippc_regs = internal constant { [13 x %struct.debugfs_reg32], [56 x i8] } { [13 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.9, i32 0 }, %struct.debugfs_reg32 { ptr @.str.10, i32 4 }, %struct.debugfs_reg32 { ptr @.str.11, i32 8 }, %struct.debugfs_reg32 { ptr @.str.12, i32 12 }, %struct.debugfs_reg32 { ptr @.str.13, i32 16 }, %struct.debugfs_reg32 { ptr @.str.14, i32 24 }, %struct.debugfs_reg32 { ptr @.str.15, i32 36 }, %struct.debugfs_reg32 { ptr @.str.16, i32 40 }, %struct.debugfs_reg32 { ptr @.str.17, i32 48 }, %struct.debugfs_reg32 { ptr @.str.18, i32 80 }, %struct.debugfs_reg32 { ptr @.str.19, i32 160 }, %struct.debugfs_reg32 { ptr @.str.20, i32 164 }, %struct.debugfs_reg32 { ptr @.str.21, i32 200 }], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reg-ippc\00", [23 x i8] zeroinitializer }, align 32
@mtu3_dev_regs = internal constant { [14 x %struct.debugfs_reg32], [48 x i8] } { [14 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.22, i32 0 }, %struct.debugfs_reg32 { ptr @.str.23, i32 4 }, %struct.debugfs_reg32 { ptr @.str.24, i32 128 }, %struct.debugfs_reg32 { ptr @.str.25, i32 132 }, %struct.debugfs_reg32 { ptr @.str.26, i32 256 }, %struct.debugfs_reg32 { ptr @.str.27, i32 264 }, %struct.debugfs_reg32 { ptr @.str.28, i32 1792 }, %struct.debugfs_reg32 { ptr @.str.29, i32 1796 }, %struct.debugfs_reg32 { ptr @.str.30, i32 1808 }, %struct.debugfs_reg32 { ptr @.str.31, i32 1812 }, %struct.debugfs_reg32 { ptr @.str.32, i32 3080 }, %struct.debugfs_reg32 { ptr @.str.33, i32 3084 }, %struct.debugfs_reg32 { ptr @.str.34, i32 3088 }, %struct.debugfs_reg32 { ptr @.str.35, i32 3204 }], [48 x i8] zeroinitializer }, align 32
@mtu3_csr_regs = internal constant { [15 x %struct.debugfs_reg32], [40 x i8] } { [15 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.36, i32 2048 }, %struct.debugfs_reg32 { ptr @.str.37, i32 2128 }, %struct.debugfs_reg32 { ptr @.str.38, i32 2132 }, %struct.debugfs_reg32 { ptr @.str.39, i32 5136 }, %struct.debugfs_reg32 { ptr @.str.40, i32 5148 }, %struct.debugfs_reg32 { ptr @.str.41, i32 5428 }, %struct.debugfs_reg32 { ptr @.str.42, i32 5436 }, %struct.debugfs_reg32 { ptr @.str.43, i32 5440 }, %struct.debugfs_reg32 { ptr @.str.44, i32 5488 }, %struct.debugfs_reg32 { ptr @.str.45, i32 9220 }, %struct.debugfs_reg32 { ptr @.str.46, i32 9228 }, %struct.debugfs_reg32 { ptr @.str.47, i32 9240 }, %struct.debugfs_reg32 { ptr @.str.48, i32 9244 }, %struct.debugfs_reg32 { ptr @.str.49, i32 9292 }, %struct.debugfs_reg32 { ptr @.str.50, i32 9312 }], [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"link-state\00", [21 x i8] zeroinitializer }, align 32
@mtu3_link_state_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mtu3_link_state_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep-used\00", [24 x i8] zeroinitializer }, align 32
@mtu3_ep_used_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mtu3_ep_used_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@ssusb_mode_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @ssusb_mode_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ssusb_mode_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@ssusb_vbus_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @ssusb_vbus_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ssusb_vbus_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@usb_debug_root = external dso_local local_unnamed_addr global ptr, align 4
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SSUSB_IP_PW_CTRL0\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SSUSB_IP_PW_CTRL1\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SSUSB_IP_PW_CTRL2\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SSUSB_IP_PW_CTRL3\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SSUSB_IP_PW_STS1\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SSUSB_OTG_STS\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SSUSB_IP_XHCI_CAP\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SSUSB_IP_DEV_CAP\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SSUSB_U3_CTRL_0P\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SSUSB_U2_CTRL_0P\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SSUSB_HW_ID\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SSUSB_HW_SUB_ID\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SSUSB_IP_SPARE0\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LV1ISR\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LV1IER\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EPISR\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EPIER\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EP0CSR\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RXCOUNT0\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"QISAR0\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"QIER0\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"QISAR1\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"QIER1\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CAP_EPNTXFFSZ\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CAP_EPNRXFFSZ\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CAP_EPINFO\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MISC_CTRL\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DEVICE_CONF\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DEV_LINK_INTR_ENABLE\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DEV_LINK_INTR\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LTSSM_CTRL\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"USB3_CONFIG\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LINK_STATE_MACHINE\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LTSSM_INTR_ENABLE\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LTSSM_INTR\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"U3U2_SWITCH_CTRL\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"POWER_MANAGEMENT\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DEVICE_CONTROL\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"COMMON_USB_INTR_ENABLE\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"COMMON_USB_INTR\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"USB20_MISC_CONTROL\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"USB20_OPSTATE\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"eps\00", [28 x i8] zeroinitializer }, align 32
@mtu3_ep_files = internal constant { [4 x %struct.mtu3_file_map], [32 x i8] } { [4 x %struct.mtu3_file_map] [%struct.mtu3_file_map { ptr @.str.67, ptr @mtu3_ep_info_show }, %struct.mtu3_file_map { ptr @.str.68, ptr @mtu3_fifo_show }, %struct.mtu3_file_map { ptr @.str.69, ptr @mtu3_qmu_ring_show }, %struct.mtu3_file_map { ptr @.str.70, ptr @mtu3_qmu_gpd_show }], [32 x i8] zeroinitializer }, align 32
@mtu3_ep_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mtu3_ep_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TCR0\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RCR0\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TCR1\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RCR1\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TCR2\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RCR2\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TQHIAR\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RQHIAR\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TQCSR\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RQCSR\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TQSAR\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RQSAR\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TQCPR\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RQCPR\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep-info\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fifo\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qmu-ring\00", [23 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qmu-gpd\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ep - type:%d, maxp:%d, slot:%d, flags:%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"fifo - seg_size:%d, addr:%d, size:%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"qmu-ring - dma:%pad, start:%p, end:%p, enq:%p, dep:%p\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"empty!\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"gpd.%03d -> %pad, %p: %08x %08x %08x %08x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"probe\00", [26 x i8] zeroinitializer }, align 32
@mtu3_prb_regs = internal constant { [6 x %struct.debugfs_reg32], [48 x i8] } { [6 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.77, i32 176 }, %struct.debugfs_reg32 { ptr @.str.78, i32 180 }, %struct.debugfs_reg32 { ptr @.str.79, i32 184 }, %struct.debugfs_reg32 { ptr @.str.80, i32 188 }, %struct.debugfs_reg32 { ptr @.str.81, i32 192 }, %struct.debugfs_reg32 { ptr @.str.82, i32 196 }], [48 x i8] zeroinitializer }, align 32
@mtu3_probe_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @mtu3_probe_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mtu3_probe_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"byte-sell\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"byte-selh\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"module-sel\00", [21 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sw-out\00", [25 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"0x%04x - 0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"opstate: %#x, ltssm: %#x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s - type: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"total used: %d eps\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@ssusb_mode_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.94, i32 461, ptr @.str.95, ptr @.str.96 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wrong or duplicated setting\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ssusb_mode_write\00", [47 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/usb/mtu3/mtu3_debugfs.c\00", [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ssusb_mode_write._entry_ptr = internal global ptr @ssusb_mode_write._entry, section ".printk_index", align 4
@.str.97 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"current mode: %s(%s drd)\0A(echo device/host)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"manual\00", [25 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@ssusb_vbus_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.94, i32 505, ptr @.str.95, ptr @.str.96 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wrong setting\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ssusb_vbus_write\00", [47 x i8] zeroinitializer }, align 32
@ssusb_vbus_write._entry_ptr = internal global ptr @ssusb_vbus_write._entry, section ".printk_index", align 4
@.str.102 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"vbus state: %s\0A(echo on/off)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 406, i32 32 }
@___asan_gen_.108 = private unnamed_addr constant [15 x i8] c"mtu3_ippc_regs\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 28, i32 35 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 410, i32 8 }
@___asan_gen_.114 = private unnamed_addr constant [14 x i8] c"mtu3_dev_regs\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 44, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant [14 x i8] c"mtu3_csr_regs\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 61, i32 35 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 424, i32 22 }
@___asan_gen_.123 = private unnamed_addr constant [21 x i8] c"mtu3_link_state_fops\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 121, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 426, i32 22 }
@___asan_gen_.129 = private unnamed_addr constant [18 x i8] c"mtu3_ep_used_fops\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 122, i32 1 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 526, i32 22 }
@___asan_gen_.135 = private unnamed_addr constant [16 x i8] c"ssusb_mode_fops\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 468, i32 37 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 527, i32 22 }
@___asan_gen_.141 = private unnamed_addr constant [16 x i8] c"ssusb_vbus_fops\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 514, i32 37 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 29, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 30, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 31, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 32, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 33, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 34, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 35, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 36, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 37, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 38, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 39, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 40, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 41, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 45, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 46, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 47, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 48, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 49, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 50, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 51, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 52, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 53, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 54, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 55, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 56, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 57, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 58, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 62, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 63, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 64, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 65, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 66, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 67, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 68, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 69, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 70, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 71, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 72, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 73, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 74, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 75, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 76, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 393, i32 31 }
@___asan_gen_.273 = private unnamed_addr constant [14 x i8] c"mtu3_ep_files\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 250, i32 35 }
@___asan_gen_.276 = private unnamed_addr constant [13 x i8] c"mtu3_ep_fops\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 273, i32 37 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 155, i32 22 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 155, i32 31 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 157, i32 22 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 157, i32 31 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 159, i32 22 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 159, i32 31 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 161, i32 22 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 161, i32 33 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 163, i32 22 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 163, i32 32 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 165, i32 22 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 165, i32 32 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 167, i32 22 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 167, i32 32 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 251, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 252, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 253, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 254, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 180, i32 17 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 194, i32 17 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 211, i32 6 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 233, i32 16 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 239, i32 18 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 357, i32 31 }
@___asan_gen_.351 = private unnamed_addr constant [14 x i8] c"mtu3_prb_regs\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 280, i32 35 }
@___asan_gen_.354 = private unnamed_addr constant [16 x i8] c"mtu3_probe_fops\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 342, i32 37 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 281, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 282, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 283, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 284, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 285, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 286, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 156, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 303, i32 17 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 84, i32 17 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 104, i32 19 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 114, i32 17 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 456, i32 20 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 458, i32 27 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 461, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 434, i32 17 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 436, i32 45 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 436, i32 56 }
@___asan_gen_.423 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 505, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 481, i32 17 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 482, i32 43 }
@___asan_gen_.438 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.439 = private constant [35 x i8] c"../drivers/usb/mtu3/mtu3_debugfs.c\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 482, i32 50 }
@llvm.compiler.used = appending global [114 x ptr] [ptr @ssusb_mode_write._entry, ptr @ssusb_mode_write._entry_ptr, ptr @ssusb_vbus_write._entry, ptr @ssusb_vbus_write._entry_ptr, ptr @.str, ptr @mtu3_ippc_regs, ptr @.str.1, ptr @mtu3_dev_regs, ptr @mtu3_csr_regs, ptr @.str.4, ptr @mtu3_link_state_fops, ptr @.str.5, ptr @mtu3_ep_used_fops, ptr @.str.6, ptr @ssusb_mode_fops, ptr @.str.7, ptr @ssusb_vbus_fops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @mtu3_ep_files, ptr @mtu3_ep_fops, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @mtu3_prb_regs, ptr @mtu3_probe_fops, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104], section "llvm.metadata"
@0 = internal global [112 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_ippc_regs to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_dev_regs to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_csr_regs to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_link_state_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_ep_used_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssusb_mode_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssusb_vbus_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_ep_files to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_ep_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_prb_regs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_probe_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssusb_mode_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssusb_vbus_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ssusb_dev_debugfs_init(ptr nocapture noundef readonly %ssusb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %u3d = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 1
  %0 = ptrtoint ptr %u3d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u3d, align 4
  %dbgfs_root = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 16
  %2 = ptrtoint ptr %dbgfs_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dbgfs_root, align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef %3) #8
  %ippc_base = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ippc_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ippc_base, align 8
  %dev.i = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 48, i32 noundef 3520) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.mtu3_debugfs_regset.exit_crit_edge, label %if.end.i

entry.mtu3_debugfs_regset.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtu3_debugfs_regset.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = call ptr @memcpy(ptr %call.i.i, ptr @.str.1, i32 9)
  %regset3.i = getelementptr inbounds %struct.mtu3_regset, ptr %call.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %regset3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mtu3_ippc_regs, ptr %regset3.i, align 4
  %nregs5.i = getelementptr inbounds %struct.mtu3_regset, ptr %call.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %nregs5.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 13, ptr %nregs5.i, align 4
  %base6.i = getelementptr inbounds %struct.mtu3_regset, ptr %call.i.i, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %base6.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %5, ptr %base6.i, align 4
  tail call void @debugfs_create_regset32(ptr noundef nonnull %call.i.i, i16 noundef zeroext 292, ptr noundef %call, ptr noundef %regset3.i) #8
  br label %mtu3_debugfs_regset.exit

mtu3_debugfs_regset.exit:                         ; preds = %if.end.i, %entry.mtu3_debugfs_regset.exit_crit_edge
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mac_base, align 4
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 8
  %call.i.i21 = tail call noalias ptr @devm_kmalloc(ptr noundef %15, i32 noundef 48, i32 noundef 3520) #8
  %tobool.not.i22 = icmp eq ptr %call.i.i21, null
  br i1 %tobool.not.i22, label %mtu3_debugfs_regset.exit.mtu3_debugfs_regset.exit28_crit_edge, label %if.end.i27

mtu3_debugfs_regset.exit.mtu3_debugfs_regset.exit28_crit_edge: ; preds = %mtu3_debugfs_regset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtu3_debugfs_regset.exit28

if.end.i27:                                       ; preds = %mtu3_debugfs_regset.exit
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %call.i.i21 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 8243108137627121152, ptr %call.i.i21, align 1
  %regset3.i24 = getelementptr inbounds %struct.mtu3_regset, ptr %call.i.i21, i32 0, i32 1
  %17 = ptrtoint ptr %regset3.i24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mtu3_dev_regs, ptr %regset3.i24, align 4
  %nregs5.i25 = getelementptr inbounds %struct.mtu3_regset, ptr %call.i.i21, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %nregs5.i25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 14, ptr %nregs5.i25, align 4
  %base6.i26 = getelementptr inbounds %struct.mtu3_regset, ptr %call.i.i21, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %base6.i26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %13, ptr %base6.i26, align 4
  tail call void @debugfs_create_regset32(ptr noundef nonnull %call.i.i21, i16 noundef zeroext 292, ptr noundef %call, ptr noundef %regset3.i24) #8
  br label %mtu3_debugfs_regset.exit28

mtu3_debugfs_regset.exit28:                       ; preds = %if.end.i27, %mtu3_debugfs_regset.exit.mtu3_debugfs_regset.exit28_crit_edge
  %20 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mac_base, align 4
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 8
  %call.i.i30 = tail call noalias ptr @devm_kmalloc(ptr noundef %23, i32 noundef 48, i32 noundef 3520) #8
  %tobool.not.i31 = icmp eq ptr %call.i.i30, null
  br i1 %tobool.not.i31, label %mtu3_debugfs_regset.exit28.mtu3_debugfs_regset.exit37_crit_edge, label %if.end.i36

mtu3_debugfs_regset.exit28.mtu3_debugfs_regset.exit37_crit_edge: ; preds = %mtu3_debugfs_regset.exit28
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtu3_debugfs_regset.exit37

if.end.i36:                                       ; preds = %mtu3_debugfs_regset.exit28
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %call.i.i30 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 8243108137611260416, ptr %call.i.i30, align 1
  %regset3.i33 = getelementptr inbounds %struct.mtu3_regset, ptr %call.i.i30, i32 0, i32 1
  %25 = ptrtoint ptr %regset3.i33 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mtu3_csr_regs, ptr %regset3.i33, align 4
  %nregs5.i34 = getelementptr inbounds %struct.mtu3_regset, ptr %call.i.i30, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %nregs5.i34 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 15, ptr %nregs5.i34, align 4
  %base6.i35 = getelementptr inbounds %struct.mtu3_regset, ptr %call.i.i30, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %base6.i35 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %21, ptr %base6.i35, align 4
  tail call void @debugfs_create_regset32(ptr noundef nonnull %call.i.i30, i16 noundef zeroext 292, ptr noundef %call, ptr noundef %regset3.i33) #8
  br label %mtu3_debugfs_regset.exit37

mtu3_debugfs_regset.exit37:                       ; preds = %if.end.i36, %mtu3_debugfs_regset.exit28.mtu3_debugfs_regset.exit37_crit_edge
  %ssusb1.i = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %ssusb1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ssusb1.i, align 4
  %dbgfs_root.i = getelementptr inbounds %struct.ssusb_mtk, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %dbgfs_root.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dbgfs_root.i, align 4
  %call.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.51, ptr noundef %31) #8
  %num_eps.i = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 12
  %32 = ptrtoint ptr %num_eps.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_eps.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp10.i = icmp sgt i32 %33, 1
  br i1 %cmp10.i, label %for.body.lr.ph.i, label %mtu3_debugfs_regset.exit37.mtu3_debugfs_create_ep_dirs.exit_crit_edge

mtu3_debugfs_regset.exit37.mtu3_debugfs_create_ep_dirs.exit_crit_edge: ; preds = %mtu3_debugfs_regset.exit37
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtu3_debugfs_create_ep_dirs.exit

for.body.lr.ph.i:                                 ; preds = %mtu3_debugfs_regset.exit37
  %in_eps.i = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 9
  %out_eps.i = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %34 = ptrtoint ptr %in_eps.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %in_eps.i, align 4
  %add.ptr.i = getelementptr %struct.mtu3_ep, ptr %35, i32 %i.011.i
  tail call fastcc void @mtu3_debugfs_create_ep_dir(ptr noundef %add.ptr.i, ptr noundef %call.i) #8
  %36 = ptrtoint ptr %out_eps.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %out_eps.i, align 8
  %add.ptr2.i = getelementptr %struct.mtu3_ep, ptr %37, i32 %i.011.i
  tail call fastcc void @mtu3_debugfs_create_ep_dir(ptr noundef %add.ptr2.i, ptr noundef %call.i) #8
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %38 = ptrtoint ptr %num_eps.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_eps.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %39
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.mtu3_debugfs_create_ep_dirs.exit_crit_edge

for.body.i.mtu3_debugfs_create_ep_dirs.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtu3_debugfs_create_ep_dirs.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

mtu3_debugfs_create_ep_dirs.exit:                 ; preds = %for.body.i.mtu3_debugfs_create_ep_dirs.exit_crit_edge, %mtu3_debugfs_regset.exit37.mtu3_debugfs_create_ep_dirs.exit_crit_edge
  %40 = ptrtoint ptr %ssusb1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ssusb1.i, align 4
  %dbgfs_root.i39 = getelementptr inbounds %struct.ssusb_mtk, ptr %41, i32 0, i32 16
  %42 = ptrtoint ptr %dbgfs_root.i39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dbgfs_root.i39, align 4
  %call.i40 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.76, ptr noundef %43) #8
  %call2.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.77, i16 noundef zeroext 420, ptr noundef %call.i40, ptr noundef %1, ptr noundef nonnull @mtu3_probe_fops) #8
  %call2.1.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.78, i16 noundef zeroext 420, ptr noundef %call.i40, ptr noundef %1, ptr noundef nonnull @mtu3_probe_fops) #8
  %call2.2.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.79, i16 noundef zeroext 420, ptr noundef %call.i40, ptr noundef %1, ptr noundef nonnull @mtu3_probe_fops) #8
  %call2.3.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.80, i16 noundef zeroext 420, ptr noundef %call.i40, ptr noundef %1, ptr noundef nonnull @mtu3_probe_fops) #8
  %call2.4.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.81, i16 noundef zeroext 420, ptr noundef %call.i40, ptr noundef %1, ptr noundef nonnull @mtu3_probe_fops) #8
  %call2.5.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.82, i16 noundef zeroext 420, ptr noundef %call.i40, ptr noundef %1, ptr noundef nonnull @mtu3_probe_fops) #8
  %44 = ptrtoint ptr %ippc_base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ippc_base, align 8
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 8
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %47, i32 noundef 48, i32 noundef 3520) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %mtu3_debugfs_create_ep_dirs.exit.mtu3_debugfs_create_prb_files.exit_crit_edge, label %if.end.i.i

mtu3_debugfs_create_ep_dirs.exit.mtu3_debugfs_create_prb_files.exit_crit_edge: ; preds = %mtu3_debugfs_create_ep_dirs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtu3_debugfs_create_prb_files.exit

if.end.i.i:                                       ; preds = %mtu3_debugfs_create_ep_dirs.exit
  call void @__sanitizer_cov_trace_pc() #10
  %48 = call ptr @memcpy(ptr %call.i.i.i, ptr @.str, i32 5)
  %regset3.i.i = getelementptr inbounds %struct.mtu3_regset, ptr %call.i.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %regset3.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @mtu3_prb_regs, ptr %regset3.i.i, align 4
  %nregs5.i.i = getelementptr inbounds %struct.mtu3_regset, ptr %call.i.i.i, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %nregs5.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 6, ptr %nregs5.i.i, align 4
  %base6.i.i = getelementptr inbounds %struct.mtu3_regset, ptr %call.i.i.i, i32 0, i32 1, i32 2
  %51 = ptrtoint ptr %base6.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %45, ptr %base6.i.i, align 4
  tail call void @debugfs_create_regset32(ptr noundef nonnull %call.i.i.i, i16 noundef zeroext 292, ptr noundef %call.i40, ptr noundef %regset3.i.i) #8
  br label %mtu3_debugfs_create_prb_files.exit

mtu3_debugfs_create_prb_files.exit:               ; preds = %if.end.i.i, %mtu3_debugfs_create_ep_dirs.exit.mtu3_debugfs_create_prb_files.exit_crit_edge
  %52 = ptrtoint ptr %dbgfs_root to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dbgfs_root, align 4
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef %53, ptr noundef %1, ptr noundef nonnull @mtu3_link_state_fops) #8
  %54 = ptrtoint ptr %dbgfs_root to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dbgfs_root, align 4
  %call5 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 292, ptr noundef %55, ptr noundef %1, ptr noundef nonnull @mtu3_ep_used_fops) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ssusb_dr_debugfs_init(ptr noundef %ssusb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dbgfs_root = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 16
  %0 = ptrtoint ptr %dbgfs_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbgfs_root, align 4
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 420, ptr noundef %1, ptr noundef %ssusb, ptr noundef nonnull @ssusb_mode_fops) #8
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 420, ptr noundef %1, ptr noundef %ssusb, ptr noundef nonnull @ssusb_vbus_fops) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ssusb_debugfs_create_root(ptr nocapture noundef %ssusb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ssusb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ssusb, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usb_debug_root to i32))
  %6 = load ptr, ptr @usb_debug_root, align 4
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i, ptr noundef %6) #8
  %dbgfs_root = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 16
  %7 = ptrtoint ptr %dbgfs_root to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %dbgfs_root, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ssusb_debugfs_remove_root(ptr nocapture noundef %ssusb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dbgfs_root = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 16
  %0 = ptrtoint ptr %dbgfs_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbgfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %1) #8
  %2 = ptrtoint ptr %dbgfs_root to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %dbgfs_root, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_regset32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtu3_debugfs_create_ep_dir(ptr noundef %mep, ptr noundef %parent) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 1
  %call = tail call ptr @debugfs_create_dir(ptr noundef %name, ptr noundef %parent) #8
  %mtu = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 2
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtu, align 4
  %epnum1.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 3
  %2 = ptrtoint ptr %epnum1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %epnum1.i, align 4
  %is_in.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 5
  %4 = ptrtoint ptr %is_in.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_in.i, align 2
  %dev.i = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 56, i32 noundef 3520) #8
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %entry.mtu3_debugfs_ep_regset.exit_crit_edge, label %if.end.i

entry.mtu3_debugfs_ep_regset.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtu3_debugfs_ep_regset.exit

if.end.i:                                         ; preds = %entry
  %conv.i = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not.i = icmp eq i8 %5, 0
  %cond.i = select i1 %tobool3.not.i, ptr @.str.53, ptr @.str.52
  %8 = ptrtoint ptr %call5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cond.i, ptr %call5.i.i.i, align 4
  %sub5.i = shl nuw nsw i32 %conv.i, 4
  %cond11.i = select i1 %tobool3.not.i, ptr @.str.55, ptr @.str.54
  %cond8.v.i = select i1 %tobool3.not.i, i32 512, i32 256
  %cond8.i = add nuw nsw i32 %cond8.v.i, %sub5.i
  %offset.i = getelementptr inbounds %struct.debugfs_reg32, ptr %call5.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond8.i, ptr %offset.i, align 4
  %arrayidx12.i = getelementptr %struct.debugfs_reg32, ptr %call5.i.i.i, i32 1
  %10 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cond11.i, ptr %arrayidx12.i, align 4
  %cond28.i = select i1 %tobool3.not.i, ptr @.str.57, ptr @.str.56
  %cond24.v.i = select i1 %tobool3.not.i, i32 516, i32 260
  %cond24.i = add nuw nsw i32 %cond24.v.i, %sub5.i
  %offset26.i = getelementptr %struct.debugfs_reg32, ptr %call5.i.i.i, i32 1, i32 1
  %11 = ptrtoint ptr %offset26.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond24.i, ptr %offset26.i, align 4
  %arrayidx29.i = getelementptr %struct.debugfs_reg32, ptr %call5.i.i.i, i32 2
  %12 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cond28.i, ptr %arrayidx29.i, align 4
  %cond45.i = select i1 %tobool3.not.i, ptr @.str.59, ptr @.str.58
  %cond41.v.i = select i1 %tobool3.not.i, i32 520, i32 264
  %cond41.i = add nuw nsw i32 %cond41.v.i, %sub5.i
  %offset43.i = getelementptr %struct.debugfs_reg32, ptr %call5.i.i.i, i32 2, i32 1
  %13 = ptrtoint ptr %offset43.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond41.i, ptr %offset43.i, align 4
  %arrayidx46.i = getelementptr %struct.debugfs_reg32, ptr %call5.i.i.i, i32 3
  %14 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cond45.i, ptr %arrayidx46.i, align 4
  %sub54.i = shl nuw nsw i32 %conv.i, 2
  %cond62.i = select i1 %tobool3.not.i, ptr @.str.61, ptr @.str.60
  %cond58.v.i = select i1 %tobool3.not.i, i32 1216, i32 1152
  %cond58.i = add nuw nsw i32 %cond58.v.i, %sub54.i
  %offset60.i = getelementptr %struct.debugfs_reg32, ptr %call5.i.i.i, i32 3, i32 1
  %15 = ptrtoint ptr %offset60.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond58.i, ptr %offset60.i, align 4
  %arrayidx63.i = getelementptr %struct.debugfs_reg32, ptr %call5.i.i.i, i32 4
  %16 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %cond62.i, ptr %arrayidx63.i, align 4
  %cond79.i = select i1 %tobool3.not.i, ptr @.str.63, ptr @.str.62
  %cond75.v.i = select i1 %tobool3.not.i, i32 1536, i32 1280
  %cond75.i = add nuw nsw i32 %cond75.v.i, %sub5.i
  %offset77.i = getelementptr %struct.debugfs_reg32, ptr %call5.i.i.i, i32 4, i32 1
  %17 = ptrtoint ptr %offset77.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond75.i, ptr %offset77.i, align 4
  %arrayidx80.i = getelementptr %struct.debugfs_reg32, ptr %call5.i.i.i, i32 5
  %18 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cond79.i, ptr %arrayidx80.i, align 4
  %cond96.i = select i1 %tobool3.not.i, ptr @.str.65, ptr @.str.64
  %cond92.v.i = select i1 %tobool3.not.i, i32 1540, i32 1284
  %cond92.i = add nuw nsw i32 %cond92.v.i, %sub5.i
  %offset94.i = getelementptr %struct.debugfs_reg32, ptr %call5.i.i.i, i32 5, i32 1
  %19 = ptrtoint ptr %offset94.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond92.i, ptr %offset94.i, align 4
  %arrayidx97.i = getelementptr %struct.debugfs_reg32, ptr %call5.i.i.i, i32 6
  %20 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %cond96.i, ptr %arrayidx97.i, align 4
  %cond109.v.i = select i1 %tobool3.not.i, i32 1544, i32 1288
  %cond109.i = add nuw nsw i32 %cond109.v.i, %sub5.i
  %offset111.i = getelementptr %struct.debugfs_reg32, ptr %call5.i.i.i, i32 6, i32 1
  %21 = ptrtoint ptr %offset111.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond109.i, ptr %offset111.i, align 4
  %mac_base.i = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %mac_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mac_base.i, align 4
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 8
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %25, i32 noundef 48, i32 noundef 3520) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.mtu3_debugfs_ep_regset.exit_crit_edge, label %if.end.i.i

if.end.i.mtu3_debugfs_ep_regset.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtu3_debugfs_ep_regset.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 7309392164573115136, ptr %call.i.i.i, align 1
  %regset3.i.i = getelementptr inbounds %struct.mtu3_regset, ptr %call.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %regset3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call5.i.i.i, ptr %regset3.i.i, align 4
  %nregs5.i.i = getelementptr inbounds %struct.mtu3_regset, ptr %call.i.i.i, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %nregs5.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 7, ptr %nregs5.i.i, align 4
  %base6.i.i = getelementptr inbounds %struct.mtu3_regset, ptr %call.i.i.i, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %base6.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %23, ptr %base6.i.i, align 4
  tail call void @debugfs_create_regset32(ptr noundef nonnull %call.i.i.i, i16 noundef zeroext 292, ptr noundef %call, ptr noundef %regset3.i.i) #8
  br label %mtu3_debugfs_ep_regset.exit

mtu3_debugfs_ep_regset.exit:                      ; preds = %if.end.i.i, %if.end.i.mtu3_debugfs_ep_regset.exit_crit_edge, %entry.mtu3_debugfs_ep_regset.exit_crit_edge
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.67, i16 noundef zeroext 292, ptr noundef %call, ptr noundef %mep, ptr noundef nonnull @mtu3_ep_fops) #8
  %call2.1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.68, i16 noundef zeroext 292, ptr noundef %call, ptr noundef %mep, ptr noundef nonnull @mtu3_ep_fops) #8
  %call2.2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.69, i16 noundef zeroext 292, ptr noundef %call, ptr noundef %mep, ptr noundef nonnull @mtu3_ep_fops) #8
  %call2.3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.70, i16 noundef zeroext 292, ptr noundef %call, ptr noundef %mep, ptr noundef nonnull @mtu3_ep_fops) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_ep_info_show(ptr noundef %sf, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %mtu1 = getelementptr inbounds %struct.mtu3_ep, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mtu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mtu1, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %type = getelementptr inbounds %struct.mtu3_ep, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 1
  %conv6 = zext i8 %5 to i32
  %maxp = getelementptr inbounds %struct.mtu3_ep, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %maxp to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %maxp, align 4
  %conv7 = zext i16 %7 to i32
  %slot = getelementptr inbounds %struct.mtu3_ep, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %slot, align 4
  %flags8 = getelementptr inbounds %struct.mtu3_ep, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags8, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.71, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %9, i32 noundef %11) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_fifo_show(ptr noundef %sf, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %mtu1 = getelementptr inbounds %struct.mtu3_ep, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mtu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mtu1, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %fifo_seg_size = getelementptr inbounds %struct.mtu3_ep, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %fifo_seg_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fifo_seg_size, align 4
  %fifo_addr = getelementptr inbounds %struct.mtu3_ep, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %fifo_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fifo_addr, align 4
  %fifo_size = getelementptr inbounds %struct.mtu3_ep, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fifo_size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.72, i32 noundef %5, i32 noundef %7, i32 noundef %9) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_qmu_ring_show(ptr noundef %sf, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %mtu1 = getelementptr inbounds %struct.mtu3_ep, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mtu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mtu1, align 4
  %gpd_ring = getelementptr inbounds %struct.mtu3_ep, ptr %1, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %start = getelementptr inbounds %struct.mtu3_ep, ptr %1, i32 0, i32 13, i32 1
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %start, align 4
  %end = getelementptr inbounds %struct.mtu3_ep, ptr %1, i32 0, i32 13, i32 2
  %6 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end, align 4
  %enqueue = getelementptr inbounds %struct.mtu3_ep, ptr %1, i32 0, i32 13, i32 3
  %8 = ptrtoint ptr %enqueue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enqueue, align 4
  %dequeue = getelementptr inbounds %struct.mtu3_ep, ptr %1, i32 0, i32 13, i32 4
  %10 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dequeue, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.73, ptr noundef %gpd_ring, ptr noundef %5, ptr noundef %7, ptr noundef %9, ptr noundef %11) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_qmu_gpd_show(ptr noundef %sf, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %mtu1 = getelementptr inbounds %struct.mtu3_ep, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mtu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mtu1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma) #8
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %dma, align 4, !annotation !242
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %gpd_ring = getelementptr inbounds %struct.mtu3_ep, ptr %1, i32 0, i32 13
  %start = getelementptr inbounds %struct.mtu3_ep, ptr %1, i32 0, i32 13, i32 1
  %5 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %start, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %flags6 = getelementptr inbounds %struct.mtu3_ep, ptr %1, i32 0, i32 16
  %7 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags6, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.for.body_crit_edge

lor.lhs.false.for.body_crit_edge:                 ; preds = %lor.lhs.false
  br label %for.body

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.74) #8
  br label %out

for.body:                                         ; preds = %for.body.for.body_crit_edge, %lor.lhs.false.for.body_crit_edge
  %i.028 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %lor.lhs.false.for.body_crit_edge ]
  %gpd.027 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %6, %lor.lhs.false.for.body_crit_edge ]
  %9 = ptrtoint ptr %gpd_ring to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gpd_ring, align 4
  %mul = shl i32 %i.028, 4
  %add = add i32 %10, %mul
  %11 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %dma, align 4
  %12 = ptrtoint ptr %gpd.027 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %gpd.027, align 1
  %next_gpd = getelementptr inbounds %struct.qmu_gpd, ptr %gpd.027, i32 0, i32 1
  %14 = ptrtoint ptr %next_gpd to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %next_gpd, align 1
  %buffer = getelementptr inbounds %struct.qmu_gpd, ptr %gpd.027, i32 0, i32 2
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %buffer, align 1
  %dw3_info = getelementptr inbounds %struct.qmu_gpd, ptr %gpd.027, i32 0, i32 3
  %18 = ptrtoint ptr %dw3_info to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %dw3_info, align 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.75, i32 noundef %i.028, ptr noundef nonnull %dma, ptr noundef %gpd.027, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #8
  %inc = add nuw nsw i32 %i.028, 1
  %incdec.ptr = getelementptr %struct.qmu_gpd, ptr %gpd.027, i32 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.body.out_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %for.body.out_crit_edge, %if.then
  call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_ep_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %and.i.i = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.file_dentry.exit_crit_edge, label %if.then.i.i, !prof !243

entry.file_dentry.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %file_dentry.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i.i, align 8
  %d_op.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %d_op.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_op.i.i, align 8
  %d_real.i.i = getelementptr inbounds %struct.dentry_operations, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %d_real.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_real.i.i, align 16
  %call.i.i = tail call ptr %9(ptr noundef %1, ptr noundef %5) #8
  br label %file_dentry.exit

file_dentry.exit:                                 ; preds = %if.then.i.i, %entry.file_dentry.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call.i.i, %if.then.i.i ], [ %1, %entry.file_dentry.exit_crit_edge ]
  %d_iname = getelementptr inbounds %struct.dentry, ptr %retval.0.i.i, i32 0, i32 6
  %call1 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.67, ptr noundef %d_iname) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %file_dentry.exit.for.end_crit_edge, label %for.cond

file_dentry.exit.for.end_crit_edge:               ; preds = %file_dentry.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond:                                         ; preds = %file_dentry.exit
  %call1.1 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.68, ptr noundef %d_iname) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %cmp2.1 = icmp eq i32 %call1.1, 0
  br i1 %cmp2.1, label %for.cond.for.end_crit_edge, label %for.cond.1

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  %call1.2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.69, ptr noundef %d_iname) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %cmp2.2 = icmp eq i32 %call1.2, 0
  %spec.select = select i1 %cmp2.2, i32 2, i32 3
  br label %for.end

for.end:                                          ; preds = %for.cond.1, %for.cond.for.end_crit_edge, %file_dentry.exit.for.end_crit_edge
  %i.08.lcssa = phi i32 [ 0, %file_dentry.exit.for.end_crit_edge ], [ 1, %for.cond.for.end_crit_edge ], [ %spec.select, %for.cond.1 ]
  %show = getelementptr [4 x %struct.mtu3_file_map], ptr @mtu3_ep_files, i32 0, i32 %i.08.lcssa, i32 1
  %10 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %show, align 4
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %12 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_private, align 4
  %call3 = tail call i32 @single_open(ptr noundef %file, ptr noundef %11, ptr noundef %13) #8
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_probe_write(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %and.i.i = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.file_dentry.exit_crit_edge, label %if.then.i.i26, !prof !243

entry.file_dentry.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %file_dentry.exit

if.then.i.i26:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i.i, align 8
  %d_op.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %d_op.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_op.i.i, align 8
  %d_real.i.i = getelementptr inbounds %struct.dentry_operations, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %d_real.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_real.i.i, align 16
  %call.i.i25 = tail call ptr %9(ptr noundef %1, ptr noundef %5) #8
  br label %file_dentry.exit

file_dentry.exit:                                 ; preds = %if.then.i.i26, %entry.file_dentry.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call.i.i25, %if.then.i.i26 ], [ %1, %entry.file_dentry.exit_crit_edge ]
  %d_iname = getelementptr inbounds %struct.dentry, ptr %retval.0.i.i, i32 0, i32 6
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #8
  %14 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %val, align 4, !annotation !242
  %16 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %16, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.85, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %file_dentry.exit.if.end.i.i_crit_edge, label %land.lhs.true.i.i

file_dentry.exit.if.end.i.i_crit_edge:            ; preds = %file_dentry.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %file_dentry.exit
  %17 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ubuf, i32 %16, i32 -1226833920) #12, !srcloc !244
  %asmresult.i.i = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !243

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %16) #8
  %18 = call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 4
  %20 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !245
  %and.i.i.i.i = and i32 %20, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !246
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !247
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %ubuf, i32 noundef %16) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #8, !srcloc !246
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !247
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %file_dentry.exit.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %16, %file_dentry.exit.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %16, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !243

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %16, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %21 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call.i = call i32 @kstrtouint(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %for.body.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %call8 = call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.77, ptr noundef %d_iname) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %for.body.preheader.for.end_crit_edge, label %for.cond

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond:                                         ; preds = %for.body.preheader
  %call8.1 = call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.78, ptr noundef %d_iname) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1)
  %cmp9.1 = icmp eq i32 %call8.1, 0
  br i1 %cmp9.1, label %for.cond.for.end_crit_edge, label %for.cond.1

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  %call8.2 = call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.79, ptr noundef %d_iname) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2)
  %cmp9.2 = icmp eq i32 %call8.2, 0
  br i1 %cmp9.2, label %for.cond.1.for.end_crit_edge, label %for.cond.2

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  %call8.3 = call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.80, ptr noundef %d_iname) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.3)
  %cmp9.3 = icmp eq i32 %call8.3, 0
  br i1 %cmp9.3, label %for.cond.2.for.end_crit_edge, label %for.cond.3

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.3:                                       ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  %call8.4 = call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.81, ptr noundef %d_iname) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.4)
  %cmp9.4 = icmp eq i32 %call8.4, 0
  %spec.select = select i1 %cmp9.4, i32 4, i32 5
  br label %for.end

for.end:                                          ; preds = %for.cond.3, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.for.end_crit_edge, %for.body.preheader.for.end_crit_edge
  %i.029.lcssa = phi i32 [ 0, %for.body.preheader.for.end_crit_edge ], [ 1, %for.cond.for.end_crit_edge ], [ 2, %for.cond.1.for.end_crit_edge ], [ 3, %for.cond.2.for.end_crit_edge ], [ %spec.select, %for.cond.3 ]
  %ippc_base = getelementptr inbounds %struct.mtu3, ptr %13, i32 0, i32 4
  %22 = ptrtoint ptr %ippc_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ippc_base, align 8
  %offset = getelementptr [6 x %struct.debugfs_reg32], ptr @mtu3_prb_regs, i32 0, i32 %i.029.lcssa, i32 1
  %24 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset, align 4
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !248
  call void @arm_heavy_mb() #8
  %28 = call i32 @llvm.bswap.i32(i32 %27) #8
  %add.ptr.i = getelementptr i8, ptr %23, i32 %25
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %28) #8, !srcloc !249
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %for.end ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_probe_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mtu3_probe_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_probe_show(ptr noundef %sf, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %dentry.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %and.i.i = and i32 %5, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.file_dentry.exit_crit_edge, label %if.then.i.i, !prof !243

entry.file_dentry.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %file_dentry.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i.i, align 8
  %d_op.i.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %d_op.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_op.i.i, align 8
  %d_real.i.i = getelementptr inbounds %struct.dentry_operations, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %d_real.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_real.i.i, align 16
  %call.i.i = tail call ptr %11(ptr noundef %3, ptr noundef %7) #8
  br label %file_dentry.exit

file_dentry.exit:                                 ; preds = %if.then.i.i, %entry.file_dentry.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call.i.i, %if.then.i.i ], [ %3, %entry.file_dentry.exit_crit_edge ]
  %d_iname = getelementptr inbounds %struct.dentry, ptr %retval.0.i.i, i32 0, i32 6
  %private = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %12 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private, align 8
  %call1 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.77, ptr noundef %d_iname) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %file_dentry.exit.for.end_crit_edge, label %for.cond

file_dentry.exit.for.end_crit_edge:               ; preds = %file_dentry.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond:                                         ; preds = %file_dentry.exit
  %call1.1 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.78, ptr noundef %d_iname) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %cmp2.1 = icmp eq i32 %call1.1, 0
  br i1 %cmp2.1, label %for.cond.for.end_crit_edge, label %for.cond.1

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  %call1.2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.79, ptr noundef %d_iname) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %cmp2.2 = icmp eq i32 %call1.2, 0
  br i1 %cmp2.2, label %for.cond.1.for.end_crit_edge, label %for.cond.2

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  %call1.3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.80, ptr noundef %d_iname) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3)
  %cmp2.3 = icmp eq i32 %call1.3, 0
  br i1 %cmp2.3, label %for.cond.2.for.end_crit_edge, label %for.cond.3

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.3:                                       ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  %call1.4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.81, ptr noundef %d_iname) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.4)
  %cmp2.4 = icmp eq i32 %call1.4, 0
  %spec.select = select i1 %cmp2.4, i32 4, i32 5
  br label %for.end

for.end:                                          ; preds = %for.cond.3, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.for.end_crit_edge, %file_dentry.exit.for.end_crit_edge
  %i.011.lcssa = phi i32 [ 0, %file_dentry.exit.for.end_crit_edge ], [ 1, %for.cond.for.end_crit_edge ], [ 2, %for.cond.1.for.end_crit_edge ], [ 3, %for.cond.2.for.end_crit_edge ], [ %spec.select, %for.cond.3 ]
  %offset = getelementptr [6 x %struct.debugfs_reg32], ptr @mtu3_prb_regs, i32 0, i32 %i.011.lcssa, i32 1
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset, align 4
  %ippc_base = getelementptr inbounds %struct.mtu3, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %ippc_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ippc_base, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 %15
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !250
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !251
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.86, i32 noundef %15, i32 noundef %19) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_link_state_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mtu3_link_state_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_link_state_show(ptr noundef %sf, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_base, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 9312
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !250
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !251
  %add.ptr.i4 = getelementptr i8, ptr %3, i32 5428
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #8, !srcloc !250
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !251
  %and = and i32 %7, 31
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.87, i32 noundef %5, i32 noundef %and) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_ep_used_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mtu3_ep_used_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_ep_used_show(ptr noundef %sf, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %num_eps = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %num_eps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_eps, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp539 = icmp sgt i32 %3, 0
  br i1 %cmp539, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %in_eps = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 9
  %out_eps = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.041 = phi i32 [ 0, %for.body.lr.ph ], [ %inc20, %for.inc.for.body_crit_edge ]
  %used.040 = phi i32 [ 0, %for.body.lr.ph ], [ %used.2, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %in_eps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_eps, align 4
  %flags7 = getelementptr %struct.mtu3_ep, ptr %5, i32 %i.041, i32 16
  %6 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags7, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr %struct.mtu3_ep, ptr %5, i32 %i.041, i32 1
  %type = getelementptr %struct.mtu3_ep, ptr %5, i32 %i.041, i32 4
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type, align 1
  %conv8 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.88, ptr noundef %name, i32 noundef %conv8) #8
  %inc = add i32 %used.040, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %used.1 = phi i32 [ %inc, %if.then ], [ %used.040, %for.body.if.end_crit_edge ]
  %10 = ptrtoint ptr %out_eps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %out_eps, align 8
  %flags10 = getelementptr %struct.mtu3_ep, ptr %11, i32 %i.041, i32 16
  %12 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags10, align 4
  %and11 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end.for.inc_crit_edge, label %if.then13

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %name14 = getelementptr %struct.mtu3_ep, ptr %11, i32 %i.041, i32 1
  %type16 = getelementptr %struct.mtu3_ep, ptr %11, i32 %i.041, i32 4
  %14 = ptrtoint ptr %type16 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %type16, align 1
  %conv17 = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.88, ptr noundef %name14, i32 noundef %conv17) #8
  %inc18 = add i32 %used.1, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %if.end.for.inc_crit_edge
  %used.2 = phi i32 [ %inc18, %if.then13 ], [ %used.1, %if.end.for.inc_crit_edge ]
  %inc20 = add nuw nsw i32 %i.041, 1
  %16 = ptrtoint ptr %num_eps to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_eps, align 8
  %cmp5 = icmp slt i32 %inc20, %17
  br i1 %cmp5, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %used.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %used.2, %for.inc.for.end_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.89, i32 noundef %used.0.lcssa) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssusb_mode_write(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #8
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 15)
  %5 = call ptr @memset(ptr %buf, i32 255, i32 16)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %4, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.85, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %6 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ubuf, i32 %4, i32 -1226833920) #12, !srcloc !244
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !243

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %4) #8
  %7 = call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !245
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !246
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !247
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %ubuf, i32 noundef %4) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #8, !srcloc !246
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !247
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %4, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %4, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !243

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %4, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %buf, ptr noundef nonnull dereferenceable(4) @.str.90, i32 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool2.not = icmp eq i32 %bcmp, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %is_host = getelementptr inbounds %struct.ssusb_mtk, ptr %3, i32 0, i32 11
  %11 = ptrtoint ptr %is_host to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_host, align 4, !range !252
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool3.not = icmp eq i8 %12, 0
  br i1 %tobool3.not, label %if.then4, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void @ssusb_mode_switch(ptr noundef %3, i32 noundef 1) #8
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %bcmp24 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %buf, ptr noundef nonnull dereferenceable(6) @.str.91, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp24)
  %tobool7.not = icmp eq i32 %bcmp24, 0
  br i1 %tobool7.not, label %land.lhs.true8, label %if.else.do.end_crit_edge

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true8:                                   ; preds = %if.else
  %is_host9 = getelementptr inbounds %struct.ssusb_mtk, ptr %3, i32 0, i32 11
  %13 = ptrtoint ptr %is_host9 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_host9, align 4, !range !252
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool10.not = icmp eq i8 %14, 0
  br i1 %tobool10.not, label %land.lhs.true8.do.end_crit_edge, label %if.then11

land.lhs.true8.do.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then11:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  call void @ssusb_mode_switch(ptr noundef %3, i32 noundef 0) #8
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true8.do.end_crit_edge, %if.else.do.end_crit_edge
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.92) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then11, %if.then4, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %do.end ], [ %count, %if.then11 ], [ %count, %if.then4 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssusb_mode_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @ssusb_mode_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssusb_mode_switch(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssusb_mode_show(ptr noundef %sf, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %is_host = getelementptr inbounds %struct.ssusb_mtk, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %is_host to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_host, align 4, !range !252
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, ptr @.str.91, ptr @.str.90
  %manual_drd_enabled = getelementptr inbounds %struct.ssusb_mtk, ptr %1, i32 0, i32 9, i32 9
  %4 = ptrtoint ptr %manual_drd_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %manual_drd_enabled, align 2, !range !252
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  %cond2 = select i1 %tobool1.not, ptr @.str.99, ptr @.str.98
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.97, ptr noundef nonnull %cond, ptr noundef nonnull %cond2) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssusb_vbus_write(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [16 x i8], align 1
  %enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %otg_switch = getelementptr inbounds %struct.ssusb_mtk, ptr %3, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #8
  %4 = call ptr @memset(ptr %buf, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable) #8
  %5 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %enable, align 1, !annotation !242
  %6 = tail call i32 @llvm.umin.i32(i32 %count, i32 15)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %6, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.85, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %7 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ubuf, i32 %6, i32 -1226833920) #12, !srcloc !244
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !243

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %6) #8
  %8 = call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !245
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !246
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !247
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %ubuf, i32 noundef %6) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #8, !srcloc !246
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !247
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %6, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %6, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !243

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %6, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call1 = call i32 @kstrtobool(ptr noundef nonnull %buf, ptr noundef nonnull %enable) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.100) #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enable, align 1, !range !252
  %16 = zext i8 %15 to i32
  %call6 = call i32 @ssusb_set_vbus(ptr noundef %otg_switch, i32 noundef %16) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %do.end ], [ %count, %if.end4 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssusb_vbus_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @ssusb_vbus_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssusb_set_vbus(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssusb_vbus_show(ptr noundef %sf, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %otg_switch = getelementptr inbounds %struct.ssusb_mtk, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %otg_switch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %otg_switch, align 4
  %call = tail call i32 @regulator_is_enabled(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, ptr @.str.104, ptr @.str.103
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.102, ptr noundef nonnull %cond) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { nounwind readnone }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !208, !209, !210, !211, !212, !213, !215, !217, !219, !221, !223, !224, !225, !226, !228, !230}
!llvm.named.register.sp = !{!232}
!llvm.module.flags = !{!233, !234, !235, !236, !237, !238, !239, !240}
!llvm.ident = !{!241}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 406, i32 32}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 410, i32 8}
!4 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 414, i32 8}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 418, i32 8}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 424, i32 22}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 426, i32 22}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 526, i32 22}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 527, i32 22}
!16 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 135, i32 23}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 29, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 30, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 31, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 32, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 33, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 34, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 35, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 36, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 37, i32 2}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 38, i32 2}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 39, i32 2}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 40, i32 2}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 41, i32 2}
!44 = !{ptr @mtu3_ippc_regs, !45, !"mtu3_ippc_regs", i1 false, i1 false}
!45 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 28, i32 35}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 45, i32 2}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 46, i32 2}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 47, i32 2}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 48, i32 2}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 49, i32 2}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 50, i32 2}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 51, i32 2}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 52, i32 2}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 53, i32 2}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 54, i32 2}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 55, i32 2}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 56, i32 2}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 57, i32 2}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 58, i32 2}
!74 = !{ptr @mtu3_dev_regs, !75, !"mtu3_dev_regs", i1 false, i1 false}
!75 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 44, i32 35}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 62, i32 2}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 63, i32 2}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 64, i32 2}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 65, i32 2}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 66, i32 2}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 67, i32 2}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 68, i32 2}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 69, i32 2}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 70, i32 2}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 71, i32 2}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 72, i32 2}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 73, i32 2}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 74, i32 2}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 75, i32 2}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 76, i32 2}
!106 = !{ptr @mtu3_csr_regs, !107, !"mtu3_csr_regs", i1 false, i1 false}
!107 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 61, i32 35}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 393, i32 31}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 155, i32 22}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 155, i32 31}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 157, i32 22}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 157, i32 31}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 159, i32 22}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 159, i32 31}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 161, i32 22}
!124 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 161, i32 33}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 163, i32 22}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 163, i32 32}
!130 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 165, i32 22}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 165, i32 32}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 167, i32 22}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 167, i32 32}
!138 = distinct !{null, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 170, i32 51}
!140 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 251, i32 3}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 252, i32 3}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 253, i32 3}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 254, i32 3}
!148 = !{ptr @mtu3_ep_files, !149, !"mtu3_ep_files", i1 false, i1 false}
!149 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 250, i32 35}
!150 = !{ptr @.str.71, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 180, i32 17}
!152 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 194, i32 17}
!154 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 211, i32 6}
!156 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 233, i32 16}
!158 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 239, i32 18}
!160 = !{ptr @mtu3_ep_fops, !161, !"mtu3_ep_fops", i1 false, i1 false}
!161 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 273, i32 37}
!162 = !{ptr @.str.76, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 357, i32 31}
!164 = !{ptr @.str.77, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 281, i32 2}
!166 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 282, i32 2}
!168 = !{ptr @.str.79, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 283, i32 2}
!170 = !{ptr @.str.80, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 284, i32 2}
!172 = !{ptr @.str.81, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 285, i32 2}
!174 = !{ptr @.str.82, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 286, i32 2}
!176 = !{ptr @mtu3_prb_regs, !177, !"mtu3_prb_regs", i1 false, i1 false}
!177 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 280, i32 35}
!178 = !{ptr @mtu3_probe_fops, !179, !"mtu3_probe_fops", i1 false, i1 false}
!179 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 342, i32 37}
!180 = distinct !{null, !181, !"__already_done", i1 false, i1 false}
!181 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!182 = distinct !{null, !181, !"<string literal>", i1 false, i1 false}
!183 = distinct !{null, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!185 = !{ptr @.str.85, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!187 = !{ptr @.str.86, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 303, i32 17}
!189 = !{ptr @mtu3_link_state_fops, !190, !"mtu3_link_state_fops", i1 false, i1 false}
!190 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 121, i32 1}
!191 = !{ptr @.str.87, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 84, i32 17}
!193 = !{ptr @mtu3_ep_used_fops, !194, !"mtu3_ep_used_fops", i1 false, i1 false}
!194 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 122, i32 1}
!195 = !{ptr @.str.88, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 104, i32 19}
!197 = !{ptr @.str.89, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 114, i32 17}
!199 = !{ptr @ssusb_mode_fops, !200, !"ssusb_mode_fops", i1 false, i1 false}
!200 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 468, i32 37}
!201 = !{ptr @.str.90, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 456, i32 20}
!203 = !{ptr @.str.91, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 458, i32 27}
!205 = !{ptr @.str.92, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 461, i32 3}
!207 = !{ptr @.str.93, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.94, !206, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.95, !206, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.96, !206, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @ssusb_mode_write._entry, !206, !"_entry", i1 false, i1 false}
!212 = !{ptr @ssusb_mode_write._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.97, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 434, i32 17}
!215 = !{ptr @.str.98, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 436, i32 45}
!217 = !{ptr @.str.99, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 436, i32 56}
!219 = !{ptr @ssusb_vbus_fops, !220, !"ssusb_vbus_fops", i1 false, i1 false}
!220 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 514, i32 37}
!221 = !{ptr @.str.100, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 505, i32 3}
!223 = !{ptr @.str.101, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @ssusb_vbus_write._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @ssusb_vbus_write._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.102, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 481, i32 17}
!228 = !{ptr @.str.103, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 482, i32 43}
!230 = !{ptr @.str.104, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/usb/mtu3/mtu3_debugfs.c", i32 482, i32 50}
!232 = !{!"sp"}
!233 = !{i32 1, !"wchar_size", i32 2}
!234 = !{i32 1, !"min_enum_size", i32 4}
!235 = !{i32 8, !"branch-target-enforcement", i32 0}
!236 = !{i32 8, !"sign-return-address", i32 0}
!237 = !{i32 8, !"sign-return-address-all", i32 0}
!238 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!239 = !{i32 7, !"uwtable", i32 1}
!240 = !{i32 7, !"frame-pointer", i32 2}
!241 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!242 = !{!"auto-init"}
!243 = !{!"branch_weights", i32 2000, i32 1}
!244 = !{i64 2150509806, i64 2150509831}
!245 = !{i64 3005361}
!246 = !{i64 3005558}
!247 = !{i64 2150490791}
!248 = !{i64 2155336562}
!249 = !{i64 6253757}
!250 = !{i64 6254175}
!251 = !{i64 2155337375}
!252 = !{i8 0, i8 2}
