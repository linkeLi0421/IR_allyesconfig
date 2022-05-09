; ModuleID = '/llk/IR_all_yes/drivers/scsi/sym53c8xx_2/sym_fw.c_pt.bc'
source_filename = "../drivers/scsi/sym53c8xx_2/sym_fw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sym_fw = type { ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sym_fw2a_scr = type { [14 x i32], [4 x i32], [4 x i32], [4 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [28 x i32], [10 x i32], [6 x i32], [4 x i32], [10 x i32], [20 x i32], [10 x i32], [6 x i32], [4 x i32], [6 x i32], [2 x i32], [10 x i32], [10 x i32], [6 x i32], [12 x i32], [14 x i32], [2 x i32], [4 x i32], [12 x i32], [8 x i32], [12 x i32], [2 x i32], [4 x i32], [2 x i32], [22 x i32], [20 x i32], [6 x i32], [16 x i32], [2 x i32], [4 x i32], [6 x i32], [192 x i32], [4 x i32], [192 x i32], [4 x i32], [12 x i32], [6 x i32], [6 x i32], [12 x i32], [6 x i32], [6 x i32] }
%struct.sym_fwa_ofs = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.sym_fw2b_scr = type { [2 x i32], [2 x i32], [16 x i32], [2 x i32], [12 x i32], [4 x i32], [4 x i32], [20 x i32], [6 x i32], [4 x i32], [8 x i32], [6 x i32], [4 x i32], [6 x i32], [4 x i32], [6 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [2 x i32], [22 x i32], [8 x i32], [16 x i32], [4 x i32], [4 x i32], [4 x i32], [6 x i32], [4 x i32], [4 x i32], [4 x i32], [6 x i32], [20 x i32], [4 x i32], [4 x i32], [12 x i32], [4 x i32], [14 x i32], [38 x i32], [4 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32] }
%struct.sym_fwb_ofs = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.sym_fw2z_scr = type { [6 x i32], [2 x i32] }
%struct.sym_fwz_ofs = type { i16, i16 }
%struct.sym_fw1a_scr = type { [11 x i32], [4 x i32], [5 x i32], [4 x i32], [4 x i32], [6 x i32], [5 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [28 x i32], [10 x i32], [6 x i32], [4 x i32], [11 x i32], [20 x i32], [11 x i32], [6 x i32], [5 x i32], [5 x i32], [2 x i32], [10 x i32], [10 x i32], [6 x i32], [8 x i32], [12 x i32], [5 x i32], [5 x i32], [2 x i32], [4 x i32], [5 x i32], [11 x i32], [7 x i32], [11 x i32], [5 x i32], [3 x i32], [2 x i32], [5 x i32], [2 x i32], [19 x i32], [6 x i32], [4 x i32], [25 x i32], [4 x i32], [7 x i32], [4 x i32], [8 x i32], [13 x i32], [2 x i32], [4 x i32], [7 x i32], [2 x i32], [4 x i32], [7 x i32], [4 x i32], [7 x i32], [192 x i32], [4 x i32], [192 x i32], [4 x i32], [12 x i32], [6 x i32], [7 x i32], [4 x i32], [4 x i32], [12 x i32], [6 x i32], [9 x i32] }
%struct.sym_fw1b_scr = type { [2 x i32], [16 x i32], [2 x i32], [12 x i32], [5 x i32], [5 x i32], [17 x i32], [4 x i32], [6 x i32], [4 x i32], [8 x i32], [6 x i32], [4 x i32], [6 x i32], [4 x i32], [6 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [3 x i32], [22 x i32], [8 x i32], [16 x i32], [4 x i32], [4 x i32], [4 x i32], [6 x i32], [4 x i32], [4 x i32], [4 x i32], [7 x i32], [4 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32] }
%struct.sym_fw1z_scr = type { [9 x i32], [2 x i32] }
%struct.sym_chip = type { i16, i16, ptr, i8, i8, i8, i8, i32 }
%struct.sym_hcb = type { %struct.sym_ccbh, %struct.sym_tcbh, %struct.sym_lcbh, %struct.sym_actscr, %struct.sym_actscr, %struct.sym_actscr, %struct.sym_actscr, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [16 x %struct.sym_tcb], ptr, i32, ptr, %struct.sym_shcb, i32, i32, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, %struct.sym_fwa_ba, %struct.sym_fwb_ba, %struct.sym_fwz_ba, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i16, i16, i16, ptr, i32, [8 x i8], [8 x i8], i32, i32, i8, i8, i8, ptr, %struct.sym_quehead, %struct.sym_quehead, %struct.sym_quehead, [4 x i8], %struct.sym_tblmove, %struct.sym_tblsel, i8, i8 }
%struct.sym_ccbh = type { %struct.sym_actscr, i32, i32, [4 x i8] }
%struct.sym_tcbh = type { i32, i32, i8, i8, i8, i8 }
%struct.sym_lcbh = type { i32, i32, i32 }
%struct.sym_actscr = type { i32, i32 }
%struct.sym_tcb = type { %struct.sym_tcbh, ptr, i32, ptr, ptr, %struct.sym_trans, %struct.sym_trans, ptr, i8, i8, i8, i8, i16, ptr }
%struct.sym_trans = type { i8, i8, i8, i8 }
%struct.sym_shcb = type { i32, [16 x i8], [8 x i8], ptr, ptr, ptr, %struct.timer_list, i32, i32, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sym_fwa_ba = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sym_fwb_ba = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sym_fwz_ba = type { i32, i32 }
%struct.sym_quehead = type { ptr, ptr }
%struct.sym_tblmove = type { i32, i32 }
%struct.sym_tblsel = type { i8, i8, i8, i8 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.83, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.83 = type { ptr }

@sym_fw2 = internal global { %struct.sym_fw, [48 x i8] } { %struct.sym_fw { ptr @.str.10, ptr @sym_fw2a_scr, i32 3024, ptr @sym_fw2a_ofs, ptr @sym_fw2b_scr, i32 1252, ptr @sym_fw2b_ofs, ptr @sym_fw2z_scr, i32 32, ptr @sym_fw2z_ofs, ptr @sym_fw2_setup, ptr @sym_fw2_patch }, [48 x i8] zeroinitializer }, align 32
@sym_fw1 = internal global { %struct.sym_fw, [48 x i8] } { %struct.sym_fw { ptr @.str.11, ptr @sym_fw1a_scr, i32 3388, ptr @sym_fw1a_ofs, ptr @sym_fw1b_scr, i32 884, ptr @sym_fw1b_ofs, ptr @sym_fw1z_scr, i32 44, ptr @sym_fw1z_ofs, ptr @sym_fw1_setup, ptr @sym_fw1_patch }, [48 x i8] zeroinitializer }, align 32
@sym_fw_bind_script._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: ERROR0 IN SCRIPT at %d.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sym_fw_bind_script\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/scsi/sym53c8xx_2/sym_fw.c\00", [62 x i8] zeroinitializer }, align 32
@sym_fw_bind_script._entry_ptr = internal global ptr @sym_fw_bind_script._entry, section ".printk_index", align 4
@sym_debug_flags = external dso_local local_unnamed_addr global i32, align 4
@sym_fw_bind_script._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%d:  <%x>\0A\00", [21 x i8] zeroinitializer }, align 32
@sym_fw_bind_script._entry_ptr.5 = internal global ptr @sym_fw_bind_script._entry.3, section ".printk_index", align 4
@sym_fw_bind_script._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: ERROR1 IN SCRIPT at %d.\0A\00", [35 x i8] zeroinitializer }, align 32
@sym_fw_bind_script._entry_ptr.8 = internal global ptr @sym_fw_bind_script._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"sym_fw_bind_script: weird relocation %x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LOAD/STORE-based\00", [47 x i8] zeroinitializer }, align 32
@sym_fw2a_scr = internal global { %struct.sym_fw2a_scr, [752 x i8] } { %struct.sym_fw2a_scr { [14 x i32] [i32 2080898560, i32 0, i32 1914306560, i32 0, i32 1913913344, i32 0, i32 -483131388, i32 -2147482404, i32 -1743982832, i32 7, i32 -485490684, i32 -2147482404, i32 -216268796, i32 4], [4 x i32] [i32 -501481468, i32 -2147482404, i32 -217055228, i32 0], [4 x i32] [i32 -216268796, i32 0, i32 -1878523904, i32 0], [4 x i32] [i32 1124073516, i32 1342178216, i32 -212074492, i32 16], [2 x i32] [i32 -1643970560, i32 2], [2 x i32] [i32 -217907199, i32 47], [2 x i32] [i32 503316480, i32 48], [2 x i32] [i32 -2113732608, i32 1342177536], [2 x i32] [i32 436207616, i32 64], [28 x i32] [i32 -2029322240, i32 1342177840, i32 -2146828288, i32 1342177816, i32 -2130051072, i32 1342177800, i32 -2096496640, i32 1342177888, i32 -2113273856, i32 1342177416, i32 -2046164992, i32 -2147483192, i32 -2071789568, i32 16, i32 201326593, i32 1073743208, i32 -2071265280, i32 -16, i32 -2055012352, i32 16, i32 218103809, i32 1073743208, i32 -2054488064, i32 -16, i32 -1744306176, i32 22, i32 -2146959360, i32 1342177424], [10 x i32] [i32 -2046099456, i32 -2147482968, i32 -2029322240, i32 1342177424, i32 1918697472, i32 0, i32 -1744044030, i32 5, i32 -2146959360, i32 1342177424], [6 x i32] [i32 1913454592, i32 0, i32 -2138243838, i32 -16, i32 -2146959360, i32 1342177280], [4 x i32] [i32 1610612800, i32 0, i32 -2146959360, i32 1342177424], [10 x i32] [i32 -233046012, i32 12, i32 1912733696, i32 0, i32 -2146632191, i32 1342177656, i32 -2096431104, i32 1342177888, i32 -2146959360, i32 1342177424], [20 x i32] [i32 2046951680, i32 0, i32 -1627193344, i32 9, i32 -2029846528, i32 1342177424, i32 251658241, i32 1073743196, i32 -1744568285, i32 9, i32 -2147221469, i32 1342177848, i32 1610612800, i32 0, i32 251658241, i32 1073743197, i32 1610612800, i32 0, i32 -2146959360, i32 1342177424], [10 x i32] [i32 -233046012, i32 12, i32 1912733696, i32 0, i32 -2146633976, i32 1342177776, i32 -2096431104, i32 1342177888, i32 -2146959360, i32 1342177424], [6 x i32] [i32 2046953472, i32 0, i32 -1744306176, i32 10, i32 -2146959360, i32 1342177424], [4 x i32] [i32 -216268796, i32 12, i32 -1878523904, i32 0], [6 x i32] [i32 2050755712, i32 0, i32 -216268796, i32 12, i32 -1878523904, i32 0], [2 x i32] [i32 251658241, i32 1073743196], [10 x i32] [i32 -2146697216, i32 1342177928, i32 -2146697212, i32 1342178160, i32 -2146697214, i32 1342178080, i32 -2146697213, i32 1342178128, i32 -2146959360, i32 -2147483560], [10 x i32] [i32 184549377, i32 1073743208, i32 1784545280, i32 0, i32 2019394560, i32 0, i32 -2029322240, i32 1342177840, i32 -2146959360, i32 1342177424], [6 x i32] [i32 2080538368, i32 0, i32 1610612808, i32 0, i32 1207959552, i32 0], [12 x i32] [i32 -228851708, i32 16, i32 -212074492, i32 16, i32 1918763008, i32 0, i32 -2013003776, i32 -2147482848, i32 1918828544, i32 0, i32 -2147168512, i32 1342178064], [14 x i32] [i32 -502267900, i32 -2147482420, i32 -485490684, i32 -2147482408, i32 -483131388, i32 -2147482420, i32 -231473148, i32 0, i32 -214695932, i32 4, i32 -1743257600, i32 0, i32 -499908604, i32 -2147482408], [2 x i32] [i32 -2146959360, i32 1342177280], [4 x i32] [i32 -483131388, i32 -2147482404, i32 -1744306176, i32 20], [12 x i32] [i32 1610612800, i32 0, i32 2053048320, i32 0, i32 -214695932, i32 12, i32 -231473148, i32 8, i32 -2029322240, i32 1342177840, i32 -2146959360, i32 1342177424], [8 x i32] [i32 1610612800, i32 0, i32 -214695932, i32 8, i32 -231473148, i32 12, i32 -2146959360, i32 1342177424], [12 x i32] [i32 2080538368, i32 0, i32 1610612808, i32 0, i32 1207959552, i32 0, i32 2019361536, i32 0, i32 -228851708, i32 16, i32 -2146959360, i32 1342177280], [2 x i32] [i32 2047279360, i32 0], [4 x i32] [i32 2014379776, i32 0, i32 -499908604, i32 -2147482404], [2 x i32] [i32 1342177280, i32 1342177280], [22 x i32] [i32 2080898560, i32 0, i32 1946849024, i32 0, i32 1778778112, i32 0, i32 -485490684, i32 -2147482400, i32 1762656256, i32 0, i32 2031091712, i32 0, i32 2081438720, i32 0, i32 -217055228, i32 0, i32 -1627193344, i32 11, i32 -217907199, i32 11, i32 -217776127, i32 9], [20 x i32] [i32 -205783039, i32 8, i32 251658241, i32 1073743196, i32 -2146680704, i32 1342178408, i32 -1744535680, i32 12, i32 -217055228, i32 0, i32 1762656256, i32 0, i32 2031091712, i32 0, i32 2081487872, i32 0, i32 -217055228, i32 0, i32 -2138570752, i32 8], [6 x i32] [i32 -217055228, i32 4, i32 -216268796, i32 0, i32 -1878523904, i32 0], [16 x i32] [i32 1610612800, i32 0, i32 251658242, i32 1073743196, i32 -217055228, i32 8, i32 1901068288, i32 0, i32 1813052416, i32 0, i32 -217055228, i32 0, i32 -216268796, i32 4, i32 -1878523904, i32 0], [2 x i32] [i32 1610612800, i32 0], [4 x i32] [i32 -212074492, i32 16, i32 -2146959360, i32 1342177424], [6 x i32] [i32 -217055228, i32 4, i32 -216268796, i32 4, i32 -1878523904, i32 0], [192 x i32] zeroinitializer, [4 x i32] [i32 -2012741632, i32 1342177616, i32 -2146959360, i32 -2147483160], [192 x i32] zeroinitializer, [4 x i32] [i32 -2012741632, i32 1342177736, i32 -2146959360, i32 -2147483160], [12 x i32] [i32 1918828544, i32 0, i32 -2130509824, i32 1342180160, i32 -2147172544, i32 -2147483160, i32 2053046528, i32 0, i32 285212672, i32 20, i32 -2146959360, i32 1342180184], [6 x i32] [i32 -2146648256, i32 -2147483160, i32 2053046528, i32 0, i32 268435456, i32 20], [6 x i32] [i32 2086665728, i32 0, i32 -216268796, i32 28, i32 -1878523904, i32 0], [12 x i32] [i32 1918828544, i32 0, i32 -2130509824, i32 1342180256, i32 -2147172544, i32 -2147483160, i32 2053046784, i32 0, i32 285212672, i32 32, i32 -2146959360, i32 1342180280], [6 x i32] [i32 -2146648256, i32 -2147483160, i32 2053046784, i32 0, i32 268435456, i32 32], [6 x i32] [i32 2086665472, i32 0, i32 -216268796, i32 40, i32 -1878523904, i32 0] }, [752 x i8] zeroinitializer }, align 32
@sym_fw2a_ofs = internal global { %struct.sym_fwa_ofs, [48 x i8] } { %struct.sym_fwa_ofs { i16 0, i16 56, i16 72, i16 88, i16 104, i16 120, i16 144, i16 296, i16 320, i16 784, i16 720, i16 776, i16 928, i16 936, i16 952, i16 1152, i16 1216, i16 1240, i16 1264, i16 2032, i16 2048, i16 2816, i16 2832, i16 2928 }, [48 x i8] zeroinitializer }, align 32
@sym_fw2b_scr = internal global { %struct.sym_fw2b_scr, [316 x i8] } { %struct.sym_fw2b_scr { [2 x i32] [i32 -2146959360, i32 1342177576], [2 x i32] [i32 -2146959360, i32 -2147483160], [16 x i32] [i32 1124074904, i32 1342178232, i32 -2038235136, i32 -8, i32 -1744306176, i32 14, i32 2080538368, i32 0, i32 503316480, i32 1424, i32 1610612808, i32 0, i32 1207959552, i32 0, i32 -1744306176, i32 17], [2 x i32] [i32 -2146959360, i32 1342177280], [12 x i32] [i32 -2146697215, i32 -2147483480, i32 -2146693376, i32 -2147483512, i32 -2146693360, i32 -2147483512, i32 -2147217632, i32 -2147483496, i32 1610612800, i32 0, i32 251658241, i32 1073743197], [4 x i32] [i32 -214695932, i32 0, i32 -1744306176, i32 3], [4 x i32] [i32 -214695932, i32 0, i32 -1744306176, i32 4], [20 x i32] [i32 1610612800, i32 0, i32 251658241, i32 1073743197, i32 -2146697216, i32 -2147483496, i32 1781792768, i32 0, i32 2114516992, i32 0, i32 -2144862208, i32 -2147483496, i32 -231473151, i32 56, i32 1610612800, i32 0, i32 520093696, i32 56, i32 -2146959360, i32 -2147483512], [6 x i32] [i32 -1744306176, i32 8, i32 1476395016, i32 0, i32 -2146959360, i32 1342177600], [4 x i32] [i32 -1744306176, i32 8, i32 1476395016, i32 0], [8 x i32] [i32 1610612800, i32 0, i32 -2029846528, i32 1342177424, i32 251658241, i32 1073743208, i32 -2146959360, i32 -2147483360], [6 x i32] [i32 1476395016, i32 0, i32 1610612800, i32 0, i32 -2046623744, i32 -2147483208], [4 x i32] [i32 234881028, i32 1073743188, i32 -2146959360, i32 -2147483176], [6 x i32] [i32 1476395016, i32 0, i32 1610612800, i32 0, i32 -2046623744, i32 -2147483208], [4 x i32] [i32 234881029, i32 1073743188, i32 -2146959360, i32 -2147483176], [6 x i32] [i32 1476395016, i32 0, i32 1610612800, i32 0, i32 -2046623744, i32 -2147483208], [4 x i32] [i32 234881032, i32 1073743188, i32 -2146959360, i32 -2147483176], [4 x i32] [i32 -1744306176, i32 6, i32 -2146959360, i32 1342177424], [4 x i32] [i32 234881025, i32 1073743188, i32 -2046099456, i32 -2147483192], [4 x i32] [i32 -1744306176, i32 19, i32 -2146959360, i32 1342177424], [2 x i32] [i32 -483131388, i32 -2147482424], [22 x i32] [i32 -2138898432, i32 16, i32 1, i32 1073743208, i32 -2146959360, i32 -2147483064, i32 1912733696, i32 0, i32 -2138767871, i32 16, i32 2046951680, i32 0, i32 -2146959360, i32 -2147483064, i32 -2121596928, i32 16, i32 -1744306176, i32 21, i32 -2146959360, i32 1342177424, i32 16777217, i32 1073743208], [8 x i32] [i32 2117337344, i32 0, i32 2134179840, i32 0, i32 2134245376, i32 0, i32 -2146959360, i32 -2147483152], [16 x i32] [i32 1476395016, i32 0, i32 1610612800, i32 0, i32 2080538368, i32 0, i32 234881025, i32 1073743188, i32 1610612808, i32 0, i32 1207959552, i32 0, i32 -1744306176, i32 18, i32 -2146959360, i32 1342177280], [4 x i32] [i32 1476395016, i32 0, i32 -2146959360, i32 1342177400], [4 x i32] [i32 1610612744, i32 0, i32 -2146959360, i32 1342177408], [4 x i32] [i32 1476395016, i32 0, i32 -2146959360, i32 1342177408], [6 x i32] [i32 285212672, i32 72, i32 -2012741632, i32 1342177616, i32 -2146959360, i32 -2147483160], [4 x i32] [i32 -1744306176, i32 13, i32 -2146959360, i32 -2147483032], [4 x i32] [i32 -1744306176, i32 15, i32 -2146959360, i32 -2147483032], [4 x i32] [i32 -1744306176, i32 16, i32 -2146959360, i32 -2147483032], [6 x i32] [i32 -483131388, i32 -2147482404, i32 -1744568316, i32 1, i32 -1878523904, i32 0], [20 x i32] [i32 1918828544, i32 0, i32 -2146634752, i32 -2147482744, i32 -2138769656, i32 8, i32 2064122880, i32 0, i32 -2146632704, i32 -2147482744, i32 -2138767871, i32 16, i32 -204210172, i32 28, i32 -2146959360, i32 -2147482728, i32 -204210172, i32 40, i32 -2146959360, i32 -2147482728], [4 x i32] [i32 2119436416, i32 0, i32 2136277120, i32 0], [4 x i32] [i32 1818227712, i32 0, i32 -2146632956, i32 -2147482648], [12 x i32] [i32 -220987388, i32 28, i32 1912733696, i32 0, i32 -2012414463, i32 -2147482592, i32 -221773820, i32 20, i32 -221511676, i32 24, i32 -472645628, i32 -2147482416], [4 x i32] [i32 -220987388, i32 12, i32 -2146959360, i32 1342177424], [14 x i32] [i32 -220987388, i32 40, i32 1912733696, i32 0, i32 -2012414463, i32 -2147482592, i32 -221773820, i32 32, i32 -221511676, i32 36, i32 -472645628, i32 -2147482412, i32 -2146959360, i32 -2147482664], [38 x i32] [i32 -221511676, i32 84, i32 2118910336, i32 0, i32 2135752832, i32 0, i32 2135818368, i32 0, i32 2135883904, i32 0, i32 -483131388, i32 -2147482424, i32 2050228480, i32 0, i32 1917517952, i32 0, i32 1781989376, i32 0, i32 -231473148, i32 80, i32 -2122121216, i32 0, i32 285212672, i32 80, i32 1917321344, i32 0, i32 -1878786048, i32 0, i32 1917386880, i32 0, i32 -1878786048, i32 0, i32 1917452416, i32 0, i32 -1878786048, i32 0, i32 -2146959360, i32 -2147482664], [4 x i32] [i32 285212672, i32 80, i32 -2146959360, i32 1342177424], [1 x i32] [i32 -267390961], [1 x i32] [i32 -267390961], [1 x i32] [i32 -267390961], [1 x i32] [i32 -267390961], [1 x i32] [i32 -267390961], [1 x i32] [i32 -267390961], [1 x i32] [i32 -267390961] }, [316 x i8] zeroinitializer }, align 32
@sym_fw2b_ofs = internal global { %struct.sym_fwb_ofs, [54 x i8] } { %struct.sym_fwb_ofs { i16 8, i16 16, i16 80, i16 248, i16 272, i16 320, i16 344, i16 360, i16 384, i16 400, i16 424, i16 440, i16 696, i16 712, i16 728, i16 752, i16 768, i16 784, i16 1208, i16 0, i16 824 }, [54 x i8] zeroinitializer }, align 32
@sym_fw2z_scr = internal global { %struct.sym_fw2z_scr, [32 x i8] } { %struct.sym_fw2z_scr { [6 x i32] [i32 -214695932, i32 1384, i32 -233046012, i32 1384, i32 -216268796, i32 1384], [2 x i32] [i32 -1744306176, i32 99] }, [32 x i8] zeroinitializer }, align 32
@sym_fw2z_ofs = internal global { %struct.sym_fwz_ofs, [28 x i8] } { %struct.sym_fwz_ofs { i16 0, i16 24 }, [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"NCR-generic\00", [20 x i8] zeroinitializer }, align 32
@sym_fw1a_scr = internal global { %struct.sym_fw1a_scr, [836 x i8] } { %struct.sym_fw1a_scr { [11 x i32] [i32 2080898560, i32 0, i32 1914306560, i32 0, i32 1913913344, i32 0, i32 -1056964604, i32 -2147482772, i32 1610612788, i32 -1743982832, i32 7], [4 x i32] [i32 -1056964604, i32 1610612788, i32 1342177340, i32 -1056964600], [5 x i32] [i32 0, i32 -2147482776, i32 -1056964604, i32 -2147482776, i32 1610612752], [4 x i32] [i32 -1056964604, i32 1610612752, i32 1342177376, i32 -1056964604], [4 x i32] [i32 0, i32 1610612764, i32 -1878523904, i32 0], [6 x i32] [i32 1124073516, i32 1342178324, i32 -1056964604, i32 1610612752, i32 1342177416, i32 -1056964588], [5 x i32] [i32 0, i32 1073741824, i32 -1056964604, i32 1073741840, i32 1610612828], [2 x i32] [i32 -1643970560, i32 2], [2 x i32] [i32 503316480, i32 48], [2 x i32] [i32 -2113732608, i32 1342177580], [2 x i32] [i32 436207616, i32 64], [28 x i32] [i32 -2029322240, i32 1342177892, i32 -2146828288, i32 1342177872, i32 -2130051072, i32 1342177852, i32 -2096496640, i32 1342177940, i32 -2113273856, i32 1342177460, i32 -2046164992, i32 -2147483188, i32 -2071789568, i32 16, i32 201326593, i32 1073743208, i32 -2071265280, i32 -16, i32 -2055012352, i32 16, i32 218103809, i32 1073743208, i32 -2054488064, i32 -16, i32 -1744306176, i32 22, i32 -2146959360, i32 1342177468], [10 x i32] [i32 -2046099456, i32 -2147482960, i32 -2029322240, i32 1342177468, i32 1918697472, i32 0, i32 -1744044030, i32 5, i32 -2146959360, i32 1342177468], [6 x i32] [i32 1913454592, i32 0, i32 -2138243838, i32 -16, i32 -2146959360, i32 1342177280], [4 x i32] [i32 1610612800, i32 0, i32 -2146959360, i32 1342177468], [11 x i32] [i32 -1056964604, i32 1610612764, i32 1073741836, i32 1912733696, i32 0, i32 -2146632191, i32 1342177704, i32 -2096431104, i32 1342177940, i32 -2146959360, i32 1342177468], [20 x i32] [i32 2046951680, i32 0, i32 -1627193344, i32 9, i32 -2029846528, i32 1342177468, i32 251658241, i32 1073743196, i32 -1744568285, i32 9, i32 -2147221469, i32 1342177900, i32 1610612800, i32 0, i32 251658241, i32 1073743197, i32 1610612800, i32 0, i32 -2146959360, i32 1342177468], [11 x i32] [i32 -1056964604, i32 1610612764, i32 1073741836, i32 1912733696, i32 0, i32 -2146633976, i32 1342177828, i32 -2096431104, i32 1342177940, i32 -2146959360, i32 1342177468], [6 x i32] [i32 2046953472, i32 0, i32 -1744306176, i32 10, i32 -2146959360, i32 1342177468], [5 x i32] [i32 -1056964604, i32 1073741836, i32 1610612764, i32 -1878523904, i32 0], [5 x i32] [i32 -1056964604, i32 1073741836, i32 1610612764, i32 -1878523904, i32 0], [2 x i32] [i32 251658241, i32 1073743196], [10 x i32] [i32 -2146697216, i32 1342177980, i32 -2146697212, i32 1342178240, i32 -2146697214, i32 1342178168, i32 -2146697213, i32 1342178212, i32 -2146959360, i32 -2147483568], [10 x i32] [i32 184549377, i32 1073743208, i32 1784545280, i32 0, i32 2019394560, i32 0, i32 -2029322240, i32 1342177892, i32 -2146959360, i32 1342177468], [6 x i32] [i32 2080538368, i32 0, i32 1610612808, i32 0, i32 1207959552, i32 0], [8 x i32] [i32 -1056964604, i32 1610612828, i32 1073741840, i32 -1056964604, i32 1610612752, i32 1342178036, i32 -1056964588, i32 1073741824], [12 x i32] [i32 0, i32 -1056964604, i32 1073741840, i32 1610612828, i32 1918763008, i32 0, i32 -2013003776, i32 -2147482840, i32 1918828544, i32 0, i32 -2147168512, i32 1342178148], [5 x i32] [i32 -1056964604, i32 -2147482780, i32 1342178104, i32 -1056964604, i32 1610612752], [5 x i32] [i32 0, i32 -1056964604, i32 -2147482780, i32 1342178124, i32 -1056964600], [2 x i32] [i32 0, i32 -2147482784], [4 x i32] [i32 -1743257600, i32 0, i32 -2146959360, i32 1342177280], [5 x i32] [i32 -1056964604, i32 -2147482772, i32 1610612788, i32 -1744306176, i32 20], [11 x i32] [i32 1610612800, i32 0, i32 2053048320, i32 0, i32 -1056964604, i32 1073741836, i32 1073741832, i32 -2029322240, i32 1342177892, i32 -2146959360, i32 1342177468], [7 x i32] [i32 1610612800, i32 0, i32 -1056964604, i32 1073741832, i32 1073741836, i32 -2146959360, i32 1342177468], [11 x i32] [i32 2080538368, i32 0, i32 1610612808, i32 0, i32 1207959552, i32 0, i32 2019361536, i32 0, i32 -1056964604, i32 1610612828, i32 1073741840], [5 x i32] [i32 -1056964604, i32 1610612752, i32 1342178304, i32 -1056964588, i32 1073741824], [3 x i32] [i32 0, i32 -2146959360, i32 1342177280], [2 x i32] [i32 2047279360, i32 0], [5 x i32] [i32 2014379776, i32 0, i32 -1056964604, i32 1610612788, i32 -2147482772], [2 x i32] [i32 1342177280, i32 1342177280], [19 x i32] [i32 2080898560, i32 0, i32 1946849024, i32 0, i32 1778778112, i32 0, i32 -1056964604, i32 -2147482768, i32 1610612752, i32 1762656256, i32 0, i32 2031091712, i32 0, i32 2081438720, i32 0, i32 -1056964604, i32 1610612752, i32 1342178428, i32 -1056964604], [6 x i32] [i32 0, i32 1610612752, i32 -1056964604, i32 1610612752, i32 1342178452, i32 -1056964596], [4 x i32] [i32 0, i32 1073741844, i32 -1627193344, i32 11], [25 x i32] [i32 -1056964607, i32 1073741855, i32 1610612739, i32 -1056964607, i32 1073741853, i32 1610612741, i32 251658241, i32 1073743196, i32 -2146680704, i32 1342178584, i32 -1744535680, i32 12, i32 -1056964604, i32 1073741844, i32 1610612752, i32 1762656256, i32 0, i32 2031091712, i32 0, i32 2081487872, i32 0, i32 -1056964604, i32 1610612752, i32 1342178568, i32 -1056964604], [4 x i32] [i32 0, i32 1610612752, i32 -2138570752, i32 12], [7 x i32] [i32 -1056964604, i32 1073741848, i32 1610612752, i32 -1056964604, i32 1610612752, i32 1342178612, i32 -1056964604], [4 x i32] [i32 0, i32 1610612764, i32 -1878523904, i32 0], [8 x i32] [i32 1610612800, i32 0, i32 251658242, i32 1073743196, i32 -1056964604, i32 1610612752, i32 1342178660, i32 -1056964596], [13 x i32] [i32 0, i32 1073741856, i32 -1056964604, i32 1073741864, i32 1610612752, i32 1901068288, i32 0, i32 1813052416, i32 0, i32 -1056964604, i32 1610612752, i32 1342178712, i32 -1056964604], [2 x i32] [i32 0, i32 1610612752], [4 x i32] [i32 -1056964604, i32 1610612752, i32 1342178736, i32 -1056964600], [7 x i32] [i32 0, i32 -2147482792, i32 -1056964604, i32 -2147482788, i32 1610612764, i32 -1878523904, i32 0], [2 x i32] [i32 1610612800, i32 0], [4 x i32] [i32 -1056964604, i32 1610612752, i32 1342178788, i32 -1056964588], [7 x i32] [i32 0, i32 1073741824, i32 -1056964604, i32 1073741840, i32 1610612828, i32 -2146959360, i32 1342177468], [4 x i32] [i32 -1056964604, i32 1610612752, i32 1342178832, i32 -1056964596], [7 x i32] [i32 0, i32 1073741856, i32 -1056964604, i32 1073741860, i32 1610612752, i32 -2146959360, i32 1342178720], [192 x i32] zeroinitializer, [4 x i32] [i32 -2012741632, i32 1342177660, i32 -2146959360, i32 -2147483156], [192 x i32] zeroinitializer, [4 x i32] [i32 -2012741632, i32 1342177784, i32 -2146959360, i32 -2147483156], [12 x i32] [i32 1918828544, i32 0, i32 -2130509824, i32 1342180476, i32 -2147172544, i32 -2147483156, i32 2053046528, i32 0, i32 285212672, i32 20, i32 -2146959360, i32 1342180500], [6 x i32] [i32 -2146648256, i32 -2147483156, i32 2053046528, i32 0, i32 268435456, i32 20], [7 x i32] [i32 2086665728, i32 0, i32 -1056964604, i32 1610612752, i32 1610612788, i32 2117344256, i32 0], [4 x i32] [i32 -1056964604, i32 1610612788, i32 1342180544, i32 -1056964604], [4 x i32] [i32 0, i32 1610612764, i32 -1878523904, i32 0], [12 x i32] [i32 1918828544, i32 0, i32 -2130509824, i32 1342180608, i32 -2147172544, i32 -2147483156, i32 2053046784, i32 0, i32 285212672, i32 32, i32 -2146959360, i32 1342180632], [6 x i32] [i32 -2146648256, i32 -2147483156, i32 2053046784, i32 0, i32 268435456, i32 32], [9 x i32] [i32 2086665472, i32 0, i32 -1056964604, i32 1610612752, i32 1610612788, i32 2117347328, i32 0, i32 -2146959360, i32 1342180528] }, [836 x i8] zeroinitializer }, align 32
@sym_fw1a_ofs = internal global { %struct.sym_fwa_ofs, [48 x i8] } { %struct.sym_fwa_ofs { i16 0, i16 44, i16 80, i16 112, i16 156, i16 164, i16 188, i16 340, i16 364, i16 868, i16 804, i16 852, i16 1036, i16 1044, i16 1064, i16 1348, i16 1484, i16 1536, i16 1580, i16 2348, i16 2364, i16 3132, i16 3148, i16 3280 }, [48 x i8] zeroinitializer }, align 32
@sym_fw1b_scr = internal global { %struct.sym_fw1b_scr, [204 x i8] } { %struct.sym_fw1b_scr { [2 x i32] [i32 -2146959360, i32 -2147483156], [16 x i32] [i32 1124074904, i32 1342178344, i32 -2038235136, i32 -8, i32 -1744306176, i32 14, i32 2080538368, i32 0, i32 503316480, i32 1424, i32 1610612808, i32 0, i32 1207959552, i32 0, i32 -1744306176, i32 17], [2 x i32] [i32 -2146959360, i32 1342177280], [12 x i32] [i32 -2146697215, i32 -2147483480, i32 -2146693376, i32 -2147483520, i32 -2146693360, i32 -2147483520, i32 -2147217632, i32 -2147483500, i32 1610612800, i32 0, i32 251658241, i32 1073743197], [5 x i32] [i32 -1056964604, i32 1073743208, i32 1610612788, i32 -1744306176, i32 3], [5 x i32] [i32 -1056964604, i32 1073743208, i32 1610612788, i32 -1744306176, i32 4], [17 x i32] [i32 1610612800, i32 0, i32 251658241, i32 1073743197, i32 -2146697216, i32 -2147483500, i32 1781792768, i32 0, i32 2114516992, i32 0, i32 -2144862208, i32 -2147483500, i32 -1056964607, i32 1610612788, i32 -2147483412, i32 1610612800, i32 0], [4 x i32] [i32 251658240, i32 1073743198, i32 -2146959360, i32 -2147483520], [6 x i32] [i32 -1744306176, i32 8, i32 1476395016, i32 0, i32 -2146959360, i32 1342177644], [4 x i32] [i32 -1744306176, i32 8, i32 1476395016, i32 0], [8 x i32] [i32 1610612800, i32 0, i32 -2029846528, i32 1342177468, i32 251658241, i32 1073743208, i32 -2146959360, i32 -2147483356], [6 x i32] [i32 1476395016, i32 0, i32 1610612800, i32 0, i32 -2046623744, i32 -2147483204], [4 x i32] [i32 234881028, i32 1073743188, i32 -2146959360, i32 -2147483172], [6 x i32] [i32 1476395016, i32 0, i32 1610612800, i32 0, i32 -2046623744, i32 -2147483204], [4 x i32] [i32 234881029, i32 1073743188, i32 -2146959360, i32 -2147483172], [6 x i32] [i32 1476395016, i32 0, i32 1610612800, i32 0, i32 -2046623744, i32 -2147483204], [4 x i32] [i32 234881032, i32 1073743188, i32 -2146959360, i32 -2147483172], [4 x i32] [i32 -1744306176, i32 6, i32 -2146959360, i32 1342177468], [4 x i32] [i32 234881025, i32 1073743188, i32 -2046099456, i32 -2147483188], [4 x i32] [i32 -1744306176, i32 19, i32 -2146959360, i32 1342177468], [3 x i32] [i32 -1056964604, i32 -2147482796, i32 1610612788], [22 x i32] [i32 -2138898432, i32 16, i32 1, i32 1073743208, i32 -2146959360, i32 -2147483056, i32 1912733696, i32 0, i32 -2138767871, i32 16, i32 2046951680, i32 0, i32 -2146959360, i32 -2147483056, i32 -2121596928, i32 16, i32 -1744306176, i32 21, i32 -2146959360, i32 1342177468, i32 16777217, i32 1073743208], [8 x i32] [i32 2117337344, i32 0, i32 2134179840, i32 0, i32 2134245376, i32 0, i32 -2146959360, i32 -2147483144], [16 x i32] [i32 1476395016, i32 0, i32 1610612800, i32 0, i32 2080538368, i32 0, i32 234881025, i32 1073743188, i32 1610612808, i32 0, i32 1207959552, i32 0, i32 -1744306176, i32 18, i32 -2146959360, i32 1342177280], [4 x i32] [i32 1476395016, i32 0, i32 -2146959360, i32 1342177444], [4 x i32] [i32 1610612744, i32 0, i32 -2146959360, i32 1342177452], [4 x i32] [i32 1476395016, i32 0, i32 -2146959360, i32 1342177452], [6 x i32] [i32 285212672, i32 72, i32 -2012741632, i32 1342177660, i32 -2146959360, i32 -2147483156], [4 x i32] [i32 -1744306176, i32 13, i32 -2146959360, i32 -2147483024], [4 x i32] [i32 -1744306176, i32 15, i32 -2146959360, i32 -2147483024], [4 x i32] [i32 -1744306176, i32 16, i32 -2146959360, i32 -2147483024], [7 x i32] [i32 -1056964604, i32 -2147482772, i32 1610612788, i32 -1744568316, i32 1, i32 -1878523904, i32 0], [4 x i32] [i32 285212672, i32 80, i32 -2146959360, i32 1342177468], [1 x i32] [i32 -267390961], [1 x i32] [i32 -267390961], [1 x i32] [i32 -267390961], [1 x i32] [i32 -267390961], [1 x i32] [i32 -267390961], [1 x i32] [i32 -267390961], [1 x i32] [i32 -267390961], [1 x i32] [i32 -267390961] }, [204 x i8] zeroinitializer }, align 32
@sym_fw1b_ofs = internal global { %struct.sym_fwb_ofs, [54 x i8] } { %struct.sym_fwb_ofs { i16 0, i16 8, i16 72, i16 252, i16 276, i16 324, i16 348, i16 364, i16 388, i16 404, i16 428, i16 444, i16 704, i16 720, i16 736, i16 760, i16 776, i16 792, i16 836, i16 0, i16 0 }, [54 x i8] zeroinitializer }, align 32
@sym_fw1z_scr = internal global { %struct.sym_fw1z_scr, [52 x i8] } { %struct.sym_fw1z_scr { [9 x i32] [i32 -1056964604, i32 1073743208, i32 1610612788, i32 -1056964604, i32 1610612764, i32 1073743208, i32 -1056964604, i32 1073743208, i32 1610612764], [2 x i32] [i32 -1744306176, i32 99] }, [52 x i8] zeroinitializer }, align 32
@sym_fw1z_ofs = internal global { %struct.sym_fwz_ofs, [28 x i8] } { %struct.sym_fwz_ofs { i16 0, i16 36 }, [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4027576335]
@__sancov_gen_cov_switch_values.12 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 4, i64 5, i64 6, i64 7, i64 8, i64 12, i64 14]
@__sancov_gen_cov_switch_values.13 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1073741824, i64 1342177280, i64 1610612736, i64 2147483648]
@___asan_gen_.14 = private unnamed_addr constant [8 x i8] c"sym_fw2\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 327, i32 22 }
@___asan_gen_.17 = private unnamed_addr constant [8 x i8] c"sym_fw1\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 325, i32 22 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 368, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 384, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 411, i32 5 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 529, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 327, i32 32 }
@___asan_gen_.50 = private unnamed_addr constant [13 x i8] c"sym_fw2a_scr\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 200, i32 27 }
@___asan_gen_.53 = private unnamed_addr constant [13 x i8] c"sym_fw2a_ofs\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 68, i32 27 }
@___asan_gen_.56 = private unnamed_addr constant [13 x i8] c"sym_fw2b_scr\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 1190, i32 27 }
@___asan_gen_.59 = private unnamed_addr constant [13 x i8] c"sym_fw2b_ofs\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 71, i32 27 }
@___asan_gen_.62 = private unnamed_addr constant [13 x i8] c"sym_fw2z_scr\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [38 x i8] c"../drivers/scsi/sym53c8xx_2/sym_fw2.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 1838, i32 27 }
@___asan_gen_.65 = private unnamed_addr constant [13 x i8] c"sym_fw2z_ofs\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 76, i32 27 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 325, i32 32 }
@___asan_gen_.71 = private unnamed_addr constant [13 x i8] c"sym_fw1a_scr\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 207, i32 27 }
@___asan_gen_.74 = private unnamed_addr constant [13 x i8] c"sym_fw1a_ofs\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 47, i32 27 }
@___asan_gen_.77 = private unnamed_addr constant [13 x i8] c"sym_fw1b_scr\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1318, i32 27 }
@___asan_gen_.80 = private unnamed_addr constant [13 x i8] c"sym_fw1b_ofs\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 50, i32 27 }
@___asan_gen_.83 = private unnamed_addr constant [13 x i8] c"sym_fw1z_scr\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [38 x i8] c"../drivers/scsi/sym53c8xx_2/sym_fw1.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1750, i32 27 }
@___asan_gen_.86 = private unnamed_addr constant [13 x i8] c"sym_fw1z_ofs\00", align 1
@___asan_gen_.87 = private constant [37 x i8] c"../drivers/scsi/sym53c8xx_2/sym_fw.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 53, i32 27 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @sym_fw_bind_script._entry, ptr @sym_fw_bind_script._entry.3, ptr @sym_fw_bind_script._entry.6, ptr @sym_fw_bind_script._entry_ptr, ptr @sym_fw_bind_script._entry_ptr.5, ptr @sym_fw_bind_script._entry_ptr.8, ptr @sym_fw2, ptr @sym_fw1, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @sym_fw2a_scr, ptr @sym_fw2a_ofs, ptr @sym_fw2b_scr, ptr @sym_fw2b_ofs, ptr @sym_fw2z_scr, ptr @sym_fw2z_ofs, ptr @.str.11, ptr @sym_fw1a_scr, ptr @sym_fw1a_ofs, ptr @sym_fw1b_scr, ptr @sym_fw1b_ofs, ptr @sym_fw1z_scr, ptr @sym_fw1z_ofs], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_fw2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_fw1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_fw_bind_script._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_fw_bind_script._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_fw_bind_script._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_fw2a_scr to i32), i32 3024, i32 3776, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_fw2a_ofs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_fw2b_scr to i32), i32 1252, i32 1568, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_fw2b_ofs to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_fw2z_scr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_fw2z_ofs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_fw1a_scr to i32), i32 3388, i32 4224, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_fw1a_ofs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_fw1b_scr to i32), i32 884, i32 1088, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_fw1b_ofs to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_fw1z_scr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_fw1z_ofs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @sym_find_firmware(ptr nocapture noundef readonly %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.sym_chip, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and2 = and i32 %1, 537399296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %sym_fw1. = select i1 %tobool3.not, ptr @sym_fw1, ptr null
  %retval.0 = select i1 %tobool.not, ptr %sym_fw1., ptr @sym_fw2
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sym_fw_bind_script(ptr noundef %np, ptr noundef %start, i32 noundef %len) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %len, 4
  %add.ptr = getelementptr i32, ptr %start, i32 %div
  %cmp152 = icmp ugt ptr %add.ptr, %start
  br i1 %cmp152, label %while.body.lr.ph, label %entry.while.end94_crit_edge

entry.while.end94_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end94

while.body.lr.ph:                                 ; preds = %entry
  %inst_name = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 42, i32 1
  %sub.ptr.rhs.cast = ptrtoint ptr %start to i32
  %features50 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 60
  %hcb_ba = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 13
  %scriptb_ba = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 49
  %scripta_ba = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 48
  %mmio_ba = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 43
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %cur.0153 = phi ptr [ %start, %while.body.lr.ph ], [ %cur.0.be, %while.cond.backedge.while.body_crit_edge ]
  %0 = ptrtoint ptr %cur.0153 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur.0153, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.end5 [
    i32 0, label %do.end
    i32 -267390961, label %if.then3
  ]

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %sub.ptr.lhs.cast = ptrtoint ptr %cur.0153 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 2
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %inst_name, i32 noundef %sub.ptr.div) #10
  %incdec.ptr = getelementptr i32, ptr %cur.0153, i32 1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %sw.epilog92.while.cond.backedge_crit_edge, %if.then69, %if.then3, %do.end
  %cur.0.be = phi ptr [ %incdec.ptr, %do.end ], [ %incdec.ptr4, %if.then3 ], [ %incdec.ptr70, %if.then69 ], [ %cur.1, %sw.epilog92.while.cond.backedge_crit_edge ]
  %cmp = icmp ult ptr %cur.0.be, %add.ptr
  br i1 %cmp, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end94_crit_edge

while.cond.backedge.while.end94_crit_edge:        ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end94

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.then3:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr4 = getelementptr i32, ptr %cur.0153, i32 1
  %3 = ptrtoint ptr %cur.0153 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %cur.0153, align 4
  br label %while.cond.backedge

if.end5:                                          ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sym_debug_flags to i32))
  %4 = load i32, ptr @sym_debug_flags, align 4
  %and = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5.if.end16_crit_edge, label %do.end9

if.end5.if.end16_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

do.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %sub.ptr.lhs.cast11 = ptrtoint ptr %cur.0153 to i32
  %sub.ptr.sub13 = sub i32 %sub.ptr.lhs.cast11, %sub.ptr.rhs.cast
  %sub.ptr.div14 = ashr exact i32 %sub.ptr.sub13, 2
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %sub.ptr.div14, i32 noundef %1) #10
  br label %if.end16

if.end16:                                         ; preds = %do.end9, %if.end5.if.end16_crit_edge
  %shr = lshr i32 %1, 28
  %5 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %shr, label %if.end16.if.then69_crit_edge [
    i32 7, label %if.end16.sw.epilog_crit_edge
    i32 14, label %if.end16.sw.epilog_crit_edge160
    i32 12, label %sw.bb18
    i32 0, label %sw.bb43
    i32 1, label %sw.bb49
    i32 8, label %sw.bb56
    i32 4, label %if.end16.sw.epilog_crit_edge161
    i32 5, label %if.end16.sw.epilog_crit_edge162
    i32 6, label %if.end16.sw.epilog_crit_edge163
  ]

if.end16.sw.epilog_crit_edge163:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end16.sw.epilog_crit_edge162:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end16.sw.epilog_crit_edge161:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end16.sw.epilog_crit_edge160:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end16.if.then69_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then69

sw.bb18:                                          ; preds = %if.end16
  %arrayidx = getelementptr i32, ptr %cur.0153, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %arrayidx19 = getelementptr i32, ptr %cur.0153, i32 2
  %8 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx19, align 4
  %xor = xor i32 %9, %7
  %and20 = and i32 %xor, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %sw.bb18.if.end35_crit_edge, label %do.end25

sw.bb18.if.end35_crit_edge:                       ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

do.end25:                                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  %sub.ptr.lhs.cast30 = ptrtoint ptr %cur.0153 to i32
  %sub.ptr.sub32 = sub i32 %sub.ptr.lhs.cast30, %sub.ptr.rhs.cast
  %sub.ptr.div33 = ashr exact i32 %sub.ptr.sub32, 2
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %inst_name, i32 noundef %sub.ptr.div33) #10
  br label %if.end35

if.end35:                                         ; preds = %do.end25, %sw.bb18.if.end35_crit_edge
  %and36 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.sw.epilog_crit_edge, label %land.lhs.true

if.end35.sw.epilog_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true:                                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %features50 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %features50, align 4
  %and38 = and i32 %11, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %and41 = and i32 %1, -16777217
  %spec.select = select i1 %tobool39.not, i32 %and41, i32 %1
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %features50 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %features50, align 4
  %and45 = shl i32 %13, 26
  %14 = and i32 %and45, 134217728
  %15 = xor i32 %14, 134217728
  %16 = or i32 %15, %1
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %features50 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %features50, align 4
  %and51 = shl i32 %18, 26
  %19 = and i32 %and51, 134217728
  %20 = xor i32 %19, 134217728
  %21 = or i32 %20, %1
  br label %if.then69

sw.bb56:                                          ; preds = %if.end16
  %and57 = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.else, label %sw.bb56.if.then69_crit_edge

sw.bb56.if.then69_crit_edge:                      ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then69

if.else:                                          ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #9
  %and60 = and i32 %1, -130023424
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2143289344, i32 %and60)
  %cmp61 = icmp eq i32 %and60, -2143289344
  %. = select i1 %cmp61, i32 2, i32 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %sw.bb43, %land.lhs.true, %if.end35.sw.epilog_crit_edge, %if.end16.sw.epilog_crit_edge, %if.end16.sw.epilog_crit_edge160, %if.end16.sw.epilog_crit_edge161, %if.end16.sw.epilog_crit_edge162, %if.end16.sw.epilog_crit_edge163
  %relocs.0 = phi i32 [ 2, %if.end35.sw.epilog_crit_edge ], [ 1, %sw.bb43 ], [ 2, %land.lhs.true ], [ %., %if.else ], [ 1, %if.end16.sw.epilog_crit_edge ], [ 1, %if.end16.sw.epilog_crit_edge160 ], [ 1, %if.end16.sw.epilog_crit_edge161 ], [ 1, %if.end16.sw.epilog_crit_edge162 ], [ 1, %if.end16.sw.epilog_crit_edge163 ]
  %opcode.2 = phi i32 [ %1, %if.end35.sw.epilog_crit_edge ], [ %16, %sw.bb43 ], [ %spec.select, %land.lhs.true ], [ %1, %if.else ], [ %1, %if.end16.sw.epilog_crit_edge ], [ %1, %if.end16.sw.epilog_crit_edge160 ], [ %1, %if.end16.sw.epilog_crit_edge161 ], [ %1, %if.end16.sw.epilog_crit_edge162 ], [ %1, %if.end16.sw.epilog_crit_edge163 ]
  %22 = tail call i32 @llvm.bswap.i32(i32 %opcode.2)
  %23 = ptrtoint ptr %cur.0153 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %cur.0153, align 4
  %cur.1148 = getelementptr i32, ptr %cur.0153, i32 1
  br label %while.body74

if.then69:                                        ; preds = %sw.bb56.if.then69_crit_edge, %sw.bb49, %if.end16.if.then69_crit_edge
  %opcode.2.ph = phi i32 [ %1, %if.end16.if.then69_crit_edge ], [ %1, %sw.bb56.if.then69_crit_edge ], [ %21, %sw.bb49 ]
  %24 = tail call i32 @llvm.bswap.i32(i32 %opcode.2.ph)
  %incdec.ptr67145 = getelementptr i32, ptr %cur.0153, i32 1
  %25 = ptrtoint ptr %cur.0153 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %cur.0153, align 4
  %26 = ptrtoint ptr %incdec.ptr67145 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %incdec.ptr67145, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %incdec.ptr67145 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %incdec.ptr67145, align 4
  %incdec.ptr70 = getelementptr i32, ptr %cur.0153, i32 2
  br label %while.cond.backedge

while.body74:                                     ; preds = %sw.epilog92.while.body74_crit_edge, %sw.epilog
  %dec151.in = phi i32 [ %relocs.0, %sw.epilog ], [ %dec151, %sw.epilog92.while.body74_crit_edge ]
  %cur.1150 = phi ptr [ %cur.1148, %sw.epilog ], [ %cur.1, %sw.epilog92.while.body74_crit_edge ]
  %dec151 = add i32 %dec151.in, -1
  %30 = ptrtoint ptr %cur.1150 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cur.1150, align 4
  %and75 = and i32 %31, -268435456
  %32 = zext i32 %and75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %and75, label %while.body74.sw.default91_crit_edge [
    i32 1610612736, label %while.body74.sw.epilog92.sink.split_crit_edge
    i32 1342177280, label %sw.bb78
    i32 -2147483648, label %sw.bb81
    i32 1073741824, label %sw.bb84
    i32 0, label %sw.bb87
  ]

while.body74.sw.epilog92.sink.split_crit_edge:    ; preds = %while.body74
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog92.sink.split

while.body74.sw.default91_crit_edge:              ; preds = %while.body74
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default91

sw.bb78:                                          ; preds = %while.body74
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog92.sink.split

sw.bb81:                                          ; preds = %while.body74
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog92.sink.split

sw.bb84:                                          ; preds = %while.body74
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog92.sink.split

sw.bb87:                                          ; preds = %while.body74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp88 = icmp eq i32 %31, 0
  br i1 %cmp88, label %sw.bb87.sw.epilog92_crit_edge, label %sw.bb87.sw.default91_crit_edge

sw.bb87.sw.default91_crit_edge:                   ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default91

sw.bb87.sw.epilog92_crit_edge:                    ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog92

sw.default91:                                     ; preds = %sw.bb87.sw.default91_crit_edge, %while.body74.sw.default91_crit_edge
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.9, i32 noundef %31) #11
  unreachable

sw.epilog92.sink.split:                           ; preds = %sw.bb84, %sw.bb81, %sw.bb78, %while.body74.sw.epilog92.sink.split_crit_edge
  %hcb_ba.sink = phi ptr [ %hcb_ba, %sw.bb84 ], [ %scriptb_ba, %sw.bb81 ], [ %scripta_ba, %sw.bb78 ], [ %mmio_ba, %while.body74.sw.epilog92.sink.split_crit_edge ]
  %and85 = and i32 %31, 268435455
  %33 = ptrtoint ptr %hcb_ba.sink to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hcb_ba.sink, align 4
  %add86 = add i32 %34, %and85
  br label %sw.epilog92

sw.epilog92:                                      ; preds = %sw.epilog92.sink.split, %sw.bb87.sw.epilog92_crit_edge
  %new.0 = phi i32 [ 0, %sw.bb87.sw.epilog92_crit_edge ], [ %add86, %sw.epilog92.sink.split ]
  %35 = tail call i32 @llvm.bswap.i32(i32 %new.0)
  %36 = ptrtoint ptr %cur.1150 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %cur.1150, align 4
  %cur.1 = getelementptr i32, ptr %cur.1150, i32 1
  %tobool73.not = icmp eq i32 %dec151, 0
  br i1 %tobool73.not, label %sw.epilog92.while.cond.backedge_crit_edge, label %sw.epilog92.while.body74_crit_edge

sw.epilog92.while.body74_crit_edge:               ; preds = %sw.epilog92
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body74

sw.epilog92.while.cond.backedge_crit_edge:        ; preds = %sw.epilog92
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

while.end94:                                      ; preds = %while.cond.backedge.while.end94_crit_edge, %entry.while.end94_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sym_fw2_setup(ptr nocapture noundef %np, ptr nocapture noundef readonly %fw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %scripta01 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 45
  %0 = ptrtoint ptr %scripta01 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scripta01, align 4
  %data_in = getelementptr inbounds %struct.sym_fw2a_scr, ptr %1, i32 0, i32 40
  %data_out = getelementptr inbounds %struct.sym_fw2a_scr, ptr %1, i32 0, i32 42
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.011.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %out.addr.010.i = phi ptr [ %data_out, %entry ], [ %incdec.ptr3.i, %for.body.i.for.body.i_crit_edge ]
  %in.addr.09.i = phi ptr [ %data_in, %entry ], [ %incdec.ptr1.i, %for.body.i.for.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i32, ptr %in.addr.09.i, i32 1
  %2 = ptrtoint ptr %in.addr.09.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 285212672, ptr %in.addr.09.i, align 4
  %3 = shl i32 %i.011.i, 3
  %4 = add nuw nsw i32 %3, 88
  %incdec.ptr1.i = getelementptr i32, ptr %in.addr.09.i, i32 2
  %5 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %incdec.ptr.i, align 4
  %incdec.ptr2.i = getelementptr i32, ptr %out.addr.010.i, i32 1
  %6 = ptrtoint ptr %out.addr.010.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 268435456, ptr %out.addr.010.i, align 4
  %incdec.ptr3.i = getelementptr i32, ptr %out.addr.010.i, i32 2
  %7 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %incdec.ptr2.i, align 4
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 96
  br i1 %exitcond.not.i, label %sym_fw_fill_data.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

sym_fw_fill_data.exit:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sym_fw_setup_bus_addresses(ptr noundef %np, ptr noundef %fw)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sym_fw2_patch(ptr nocapture noundef readonly %shost) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %pdev1 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %2 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata.i, align 4
  %scripta02 = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 45
  %4 = ptrtoint ptr %scripta02 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scripta02, align 4
  %scriptb03 = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 46
  %6 = ptrtoint ptr %scriptb03 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scriptb03, align 4
  %features = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 60
  %8 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %features, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %idle = getelementptr inbounds %struct.sym_fw2a_scr, ptr %5, i32 0, i32 30
  %10 = ptrtoint ptr %idle to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 128, ptr %idle, align 4
  %reselected = getelementptr inbounds %struct.sym_fw2a_scr, ptr %5, i32 0, i32 33
  %11 = ptrtoint ptr %reselected to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 128, ptr %reselected, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 128, ptr %5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %squeue_ba = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 75
  %13 = ptrtoint ptr %squeue_ba to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %squeue_ba, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %startpos = getelementptr inbounds %struct.sym_fw2b_scr, ptr %7, i32 0, i32 45
  %16 = ptrtoint ptr %startpos to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %startpos, align 4
  %dqueue_ba = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 80
  %17 = ptrtoint ptr %dqueue_ba to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dqueue_ba, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %done_pos = getelementptr inbounds %struct.sym_fw2b_scr, ptr %7, i32 0, i32 44
  %20 = ptrtoint ptr %done_pos to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %done_pos, align 4
  %targtbl_ba = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 40
  %21 = ptrtoint ptr %targtbl_ba to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %targtbl_ba, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %targtbl = getelementptr inbounds %struct.sym_fw2b_scr, ptr %7, i32 0, i32 46
  %24 = ptrtoint ptr %targtbl to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %targtbl, align 4
  %25 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %features, align 4
  %and10 = and i32 %26, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %resel_scntl4 = getelementptr inbounds %struct.sym_fw2a_scr, ptr %5, i32 0, i32 34
  %27 = ptrtoint ptr %resel_scntl4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 128, ptr %resel_scntl4, align 4
  %arrayidx15 = getelementptr %struct.sym_fw2a_scr, ptr %5, i32 0, i32 34, i32 1
  %28 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end.if.end16_crit_edge
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %29 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %30)
  %cmp = icmp eq i16 %30, 33
  br i1 %cmp, label %land.lhs.true, label %if.end16.if.then24_crit_edge

if.end16.if.then24_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

land.lhs.true:                                    ; preds = %if.end16
  %revision = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 12
  %31 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp19 = icmp eq i8 %32, 0
  br i1 %cmp19, label %land.lhs.true21, label %land.lhs.true.if.then24_crit_edge

land.lhs.true.if.then24_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

land.lhs.true21:                                  ; preds = %land.lhs.true
  %pciclk_khz = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 73
  %33 = ptrtoint ptr %pciclk_khz to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pciclk_khz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60000, i32 %34)
  %cmp22 = icmp ult i32 %34, 60000
  br i1 %cmp22, label %land.lhs.true21.if.end28_crit_edge, label %land.lhs.true21.if.then24_crit_edge

land.lhs.true21.if.then24_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

land.lhs.true21.if.end28_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then24:                                        ; preds = %land.lhs.true21.if.then24_crit_edge, %land.lhs.true.if.then24_crit_edge, %if.end16.if.then24_crit_edge
  %datao_phase = getelementptr inbounds %struct.sym_fw2a_scr, ptr %5, i32 0, i32 18
  %35 = ptrtoint ptr %datao_phase to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 128, ptr %datao_phase, align 4
  %arrayidx27 = getelementptr %struct.sym_fw2a_scr, ptr %5, i32 0, i32 18, i32 1
  %36 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %arrayidx27, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %land.lhs.true21.if.end28_crit_edge
  %37 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %38)
  %cmp31 = icmp eq i16 %38, 32
  br i1 %cmp31, label %if.end28.if.end37_crit_edge, label %if.then33

if.end28.if.end37_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %sel_done = getelementptr inbounds %struct.sym_fw2a_scr, ptr %5, i32 0, i32 5
  %39 = ptrtoint ptr %sel_done to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 128, ptr %sel_done, align 4
  %arrayidx36 = getelementptr %struct.sym_fw2a_scr, ptr %5, i32 0, i32 5, i32 1
  %40 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %arrayidx36, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.end28.if.end37_crit_edge
  %scripta_ba = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 48
  %41 = ptrtoint ptr %scripta_ba to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %scripta_ba, align 4
  %add = add i32 %42, 2832
  %43 = tail call i32 @llvm.bswap.i32(i32 %add)
  %pm0_data_addr = getelementptr inbounds %struct.sym_fw2b_scr, ptr %7, i32 0, i32 42
  %44 = ptrtoint ptr %pm0_data_addr to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %pm0_data_addr, align 4
  %45 = ptrtoint ptr %scripta_ba to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %scripta_ba, align 4
  %add40 = add i32 %46, 2928
  %47 = tail call i32 @llvm.bswap.i32(i32 %add40)
  %pm1_data_addr = getelementptr inbounds %struct.sym_fw2b_scr, ptr %7, i32 0, i32 43
  %48 = ptrtoint ptr %pm1_data_addr to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %pm1_data_addr, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sym_fw_setup_bus_addresses(ptr nocapture noundef %np, ptr nocapture noundef readonly %fw) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %a_ofs = getelementptr inbounds %struct.sym_fw, ptr %fw, i32 0, i32 3
  %0 = ptrtoint ptr %a_ofs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a_ofs, align 4
  %fwa_bas = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54
  %scripta_ba = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 48
  %2 = ptrtoint ptr %scripta_ba to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scripta_ba, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 2
  %conv = zext i16 %5 to i32
  %add = add i32 %3, %conv
  %6 = ptrtoint ptr %fwa_bas to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %fwa_bas, align 4
  %arrayidx.1 = getelementptr i16, ptr %1, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx.1, align 2
  %conv.1 = zext i16 %8 to i32
  %add.1 = add i32 %3, %conv.1
  %arrayidx1.1 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 1
  %9 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add.1, ptr %arrayidx1.1, align 4
  %arrayidx.2 = getelementptr i16, ptr %1, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.2, align 2
  %conv.2 = zext i16 %11 to i32
  %add.2 = add i32 %3, %conv.2
  %arrayidx1.2 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 2
  %12 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add.2, ptr %arrayidx1.2, align 4
  %arrayidx.3 = getelementptr i16, ptr %1, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx.3, align 2
  %conv.3 = zext i16 %14 to i32
  %add.3 = add i32 %3, %conv.3
  %arrayidx1.3 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 3
  %15 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add.3, ptr %arrayidx1.3, align 4
  %arrayidx.4 = getelementptr i16, ptr %1, i32 4
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.4, align 2
  %conv.4 = zext i16 %17 to i32
  %add.4 = add i32 %3, %conv.4
  %arrayidx1.4 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 4
  %18 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add.4, ptr %arrayidx1.4, align 4
  %arrayidx.5 = getelementptr i16, ptr %1, i32 5
  %19 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx.5, align 2
  %conv.5 = zext i16 %20 to i32
  %add.5 = add i32 %3, %conv.5
  %arrayidx1.5 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 5
  %21 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add.5, ptr %arrayidx1.5, align 4
  %arrayidx.6 = getelementptr i16, ptr %1, i32 6
  %22 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.6, align 2
  %conv.6 = zext i16 %23 to i32
  %add.6 = add i32 %3, %conv.6
  %arrayidx1.6 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 6
  %24 = ptrtoint ptr %arrayidx1.6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add.6, ptr %arrayidx1.6, align 4
  %arrayidx.7 = getelementptr i16, ptr %1, i32 7
  %25 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx.7, align 2
  %conv.7 = zext i16 %26 to i32
  %add.7 = add i32 %3, %conv.7
  %arrayidx1.7 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 7
  %27 = ptrtoint ptr %arrayidx1.7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add.7, ptr %arrayidx1.7, align 4
  %arrayidx.8 = getelementptr i16, ptr %1, i32 8
  %28 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.8, align 2
  %conv.8 = zext i16 %29 to i32
  %add.8 = add i32 %3, %conv.8
  %arrayidx1.8 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 8
  %30 = ptrtoint ptr %arrayidx1.8 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add.8, ptr %arrayidx1.8, align 4
  %arrayidx.9 = getelementptr i16, ptr %1, i32 9
  %31 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx.9, align 2
  %conv.9 = zext i16 %32 to i32
  %add.9 = add i32 %3, %conv.9
  %arrayidx1.9 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 9
  %33 = ptrtoint ptr %arrayidx1.9 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add.9, ptr %arrayidx1.9, align 4
  %arrayidx.10 = getelementptr i16, ptr %1, i32 10
  %34 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx.10, align 2
  %conv.10 = zext i16 %35 to i32
  %add.10 = add i32 %3, %conv.10
  %arrayidx1.10 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 10
  %36 = ptrtoint ptr %arrayidx1.10 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add.10, ptr %arrayidx1.10, align 4
  %arrayidx.11 = getelementptr i16, ptr %1, i32 11
  %37 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx.11, align 2
  %conv.11 = zext i16 %38 to i32
  %add.11 = add i32 %3, %conv.11
  %arrayidx1.11 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 11
  %39 = ptrtoint ptr %arrayidx1.11 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add.11, ptr %arrayidx1.11, align 4
  %arrayidx.12 = getelementptr i16, ptr %1, i32 12
  %40 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.12, align 2
  %conv.12 = zext i16 %41 to i32
  %add.12 = add i32 %3, %conv.12
  %arrayidx1.12 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 12
  %42 = ptrtoint ptr %arrayidx1.12 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add.12, ptr %arrayidx1.12, align 4
  %arrayidx.13 = getelementptr i16, ptr %1, i32 13
  %43 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx.13, align 2
  %conv.13 = zext i16 %44 to i32
  %add.13 = add i32 %3, %conv.13
  %arrayidx1.13 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 13
  %45 = ptrtoint ptr %arrayidx1.13 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add.13, ptr %arrayidx1.13, align 4
  %arrayidx.14 = getelementptr i16, ptr %1, i32 14
  %46 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx.14, align 2
  %conv.14 = zext i16 %47 to i32
  %add.14 = add i32 %3, %conv.14
  %arrayidx1.14 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 14
  %48 = ptrtoint ptr %arrayidx1.14 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add.14, ptr %arrayidx1.14, align 4
  %arrayidx.15 = getelementptr i16, ptr %1, i32 15
  %49 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx.15, align 2
  %conv.15 = zext i16 %50 to i32
  %add.15 = add i32 %3, %conv.15
  %arrayidx1.15 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 15
  %51 = ptrtoint ptr %arrayidx1.15 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add.15, ptr %arrayidx1.15, align 4
  %arrayidx.16 = getelementptr i16, ptr %1, i32 16
  %52 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx.16, align 2
  %conv.16 = zext i16 %53 to i32
  %add.16 = add i32 %3, %conv.16
  %arrayidx1.16 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 16
  %54 = ptrtoint ptr %arrayidx1.16 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add.16, ptr %arrayidx1.16, align 4
  %55 = load i32, ptr %scripta_ba, align 4
  %arrayidx.17 = getelementptr i16, ptr %1, i32 17
  %56 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx.17, align 2
  %conv.17 = zext i16 %57 to i32
  %add.17 = add i32 %55, %conv.17
  %arrayidx1.17 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 17
  %58 = ptrtoint ptr %arrayidx1.17 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add.17, ptr %arrayidx1.17, align 4
  %arrayidx.18 = getelementptr i16, ptr %1, i32 18
  %59 = ptrtoint ptr %arrayidx.18 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx.18, align 2
  %conv.18 = zext i16 %60 to i32
  %add.18 = add i32 %55, %conv.18
  %arrayidx1.18 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 18
  %61 = ptrtoint ptr %arrayidx1.18 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add.18, ptr %arrayidx1.18, align 4
  %arrayidx.19 = getelementptr i16, ptr %1, i32 19
  %62 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx.19, align 2
  %conv.19 = zext i16 %63 to i32
  %add.19 = add i32 %55, %conv.19
  %arrayidx1.19 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 19
  %64 = ptrtoint ptr %arrayidx1.19 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add.19, ptr %arrayidx1.19, align 4
  %arrayidx.20 = getelementptr i16, ptr %1, i32 20
  %65 = ptrtoint ptr %arrayidx.20 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx.20, align 2
  %conv.20 = zext i16 %66 to i32
  %add.20 = add i32 %55, %conv.20
  %arrayidx1.20 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 20
  %67 = ptrtoint ptr %arrayidx1.20 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %add.20, ptr %arrayidx1.20, align 4
  %arrayidx.21 = getelementptr i16, ptr %1, i32 21
  %68 = ptrtoint ptr %arrayidx.21 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx.21, align 2
  %conv.21 = zext i16 %69 to i32
  %add.21 = add i32 %55, %conv.21
  %arrayidx1.21 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 21
  %70 = ptrtoint ptr %arrayidx1.21 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %add.21, ptr %arrayidx1.21, align 4
  %arrayidx.22 = getelementptr i16, ptr %1, i32 22
  %71 = ptrtoint ptr %arrayidx.22 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %arrayidx.22, align 2
  %conv.22 = zext i16 %72 to i32
  %add.22 = add i32 %55, %conv.22
  %arrayidx1.22 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 22
  %73 = ptrtoint ptr %arrayidx1.22 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %add.22, ptr %arrayidx1.22, align 4
  %arrayidx.23 = getelementptr i16, ptr %1, i32 23
  %74 = ptrtoint ptr %arrayidx.23 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx.23, align 2
  %conv.23 = zext i16 %75 to i32
  %add.23 = add i32 %55, %conv.23
  %arrayidx1.23 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 23
  %76 = ptrtoint ptr %arrayidx1.23 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add.23, ptr %arrayidx1.23, align 4
  %b_ofs = getelementptr inbounds %struct.sym_fw, ptr %fw, i32 0, i32 6
  %77 = ptrtoint ptr %b_ofs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %b_ofs, align 4
  %fwb_bas = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 55
  %scriptb_ba = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 49
  %79 = ptrtoint ptr %scriptb_ba to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %scriptb_ba, align 4
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %78, align 2
  %conv7 = zext i16 %82 to i32
  %add8 = add i32 %80, %conv7
  %83 = ptrtoint ptr %fwb_bas to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %add8, ptr %fwb_bas, align 4
  %arrayidx6.1 = getelementptr i16, ptr %78, i32 1
  %84 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx6.1, align 2
  %conv7.1 = zext i16 %85 to i32
  %add8.1 = add i32 %80, %conv7.1
  %arrayidx9.1 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 1
  %86 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %add8.1, ptr %arrayidx9.1, align 4
  %arrayidx6.2 = getelementptr i16, ptr %78, i32 2
  %87 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %arrayidx6.2, align 2
  %conv7.2 = zext i16 %88 to i32
  %add8.2 = add i32 %80, %conv7.2
  %arrayidx9.2 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 2
  %89 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %add8.2, ptr %arrayidx9.2, align 4
  %arrayidx6.3 = getelementptr i16, ptr %78, i32 3
  %90 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx6.3, align 2
  %conv7.3 = zext i16 %91 to i32
  %add8.3 = add i32 %80, %conv7.3
  %arrayidx9.3 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 3
  %92 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %add8.3, ptr %arrayidx9.3, align 4
  %arrayidx6.4 = getelementptr i16, ptr %78, i32 4
  %93 = ptrtoint ptr %arrayidx6.4 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx6.4, align 2
  %conv7.4 = zext i16 %94 to i32
  %add8.4 = add i32 %80, %conv7.4
  %arrayidx9.4 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 4
  %95 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %add8.4, ptr %arrayidx9.4, align 4
  %arrayidx6.5 = getelementptr i16, ptr %78, i32 5
  %96 = ptrtoint ptr %arrayidx6.5 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %arrayidx6.5, align 2
  %conv7.5 = zext i16 %97 to i32
  %add8.5 = add i32 %80, %conv7.5
  %arrayidx9.5 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 5
  %98 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %add8.5, ptr %arrayidx9.5, align 4
  %arrayidx6.6 = getelementptr i16, ptr %78, i32 6
  %99 = ptrtoint ptr %arrayidx6.6 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %arrayidx6.6, align 2
  %conv7.6 = zext i16 %100 to i32
  %add8.6 = add i32 %80, %conv7.6
  %arrayidx9.6 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 6
  %101 = ptrtoint ptr %arrayidx9.6 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %add8.6, ptr %arrayidx9.6, align 4
  %arrayidx6.7 = getelementptr i16, ptr %78, i32 7
  %102 = ptrtoint ptr %arrayidx6.7 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %arrayidx6.7, align 2
  %conv7.7 = zext i16 %103 to i32
  %add8.7 = add i32 %80, %conv7.7
  %arrayidx9.7 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 7
  %104 = ptrtoint ptr %arrayidx9.7 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %add8.7, ptr %arrayidx9.7, align 4
  %arrayidx6.8 = getelementptr i16, ptr %78, i32 8
  %105 = ptrtoint ptr %arrayidx6.8 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %arrayidx6.8, align 2
  %conv7.8 = zext i16 %106 to i32
  %add8.8 = add i32 %80, %conv7.8
  %arrayidx9.8 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 8
  %107 = ptrtoint ptr %arrayidx9.8 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %add8.8, ptr %arrayidx9.8, align 4
  %arrayidx6.9 = getelementptr i16, ptr %78, i32 9
  %108 = ptrtoint ptr %arrayidx6.9 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %arrayidx6.9, align 2
  %conv7.9 = zext i16 %109 to i32
  %add8.9 = add i32 %80, %conv7.9
  %arrayidx9.9 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 9
  %110 = ptrtoint ptr %arrayidx9.9 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %add8.9, ptr %arrayidx9.9, align 4
  %arrayidx6.10 = getelementptr i16, ptr %78, i32 10
  %111 = ptrtoint ptr %arrayidx6.10 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %arrayidx6.10, align 2
  %conv7.10 = zext i16 %112 to i32
  %add8.10 = add i32 %80, %conv7.10
  %arrayidx9.10 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 10
  %113 = ptrtoint ptr %arrayidx9.10 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %add8.10, ptr %arrayidx9.10, align 4
  %arrayidx6.11 = getelementptr i16, ptr %78, i32 11
  %114 = ptrtoint ptr %arrayidx6.11 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %arrayidx6.11, align 2
  %conv7.11 = zext i16 %115 to i32
  %add8.11 = add i32 %80, %conv7.11
  %arrayidx9.11 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 11
  %116 = ptrtoint ptr %arrayidx9.11 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %add8.11, ptr %arrayidx9.11, align 4
  %arrayidx6.12 = getelementptr i16, ptr %78, i32 12
  %117 = ptrtoint ptr %arrayidx6.12 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %arrayidx6.12, align 2
  %conv7.12 = zext i16 %118 to i32
  %add8.12 = add i32 %80, %conv7.12
  %arrayidx9.12 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 12
  %119 = ptrtoint ptr %arrayidx9.12 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %add8.12, ptr %arrayidx9.12, align 4
  %arrayidx6.13 = getelementptr i16, ptr %78, i32 13
  %120 = ptrtoint ptr %arrayidx6.13 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %arrayidx6.13, align 2
  %conv7.13 = zext i16 %121 to i32
  %add8.13 = add i32 %80, %conv7.13
  %arrayidx9.13 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 13
  %122 = ptrtoint ptr %arrayidx9.13 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %add8.13, ptr %arrayidx9.13, align 4
  %arrayidx6.14 = getelementptr i16, ptr %78, i32 14
  %123 = ptrtoint ptr %arrayidx6.14 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %arrayidx6.14, align 2
  %conv7.14 = zext i16 %124 to i32
  %add8.14 = add i32 %80, %conv7.14
  %arrayidx9.14 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 14
  %125 = ptrtoint ptr %arrayidx9.14 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %add8.14, ptr %arrayidx9.14, align 4
  %arrayidx6.15 = getelementptr i16, ptr %78, i32 15
  %126 = ptrtoint ptr %arrayidx6.15 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %arrayidx6.15, align 2
  %conv7.15 = zext i16 %127 to i32
  %add8.15 = add i32 %80, %conv7.15
  %arrayidx9.15 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 15
  %128 = ptrtoint ptr %arrayidx9.15 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %add8.15, ptr %arrayidx9.15, align 4
  %arrayidx6.16 = getelementptr i16, ptr %78, i32 16
  %129 = ptrtoint ptr %arrayidx6.16 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %arrayidx6.16, align 2
  %conv7.16 = zext i16 %130 to i32
  %add8.16 = add i32 %80, %conv7.16
  %arrayidx9.16 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 16
  %131 = ptrtoint ptr %arrayidx9.16 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %add8.16, ptr %arrayidx9.16, align 4
  %132 = load i32, ptr %scriptb_ba, align 4
  %arrayidx6.17 = getelementptr i16, ptr %78, i32 17
  %133 = ptrtoint ptr %arrayidx6.17 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %arrayidx6.17, align 2
  %conv7.17 = zext i16 %134 to i32
  %add8.17 = add i32 %132, %conv7.17
  %arrayidx9.17 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 17
  %135 = ptrtoint ptr %arrayidx9.17 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %add8.17, ptr %arrayidx9.17, align 4
  %arrayidx6.18 = getelementptr i16, ptr %78, i32 18
  %136 = ptrtoint ptr %arrayidx6.18 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %arrayidx6.18, align 2
  %conv7.18 = zext i16 %137 to i32
  %add8.18 = add i32 %132, %conv7.18
  %arrayidx9.18 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 18
  %138 = ptrtoint ptr %arrayidx9.18 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %add8.18, ptr %arrayidx9.18, align 4
  %arrayidx6.19 = getelementptr i16, ptr %78, i32 19
  %139 = ptrtoint ptr %arrayidx6.19 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %arrayidx6.19, align 2
  %conv7.19 = zext i16 %140 to i32
  %add8.19 = add i32 %132, %conv7.19
  %arrayidx9.19 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 19
  %141 = ptrtoint ptr %arrayidx9.19 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %add8.19, ptr %arrayidx9.19, align 4
  %arrayidx6.20 = getelementptr i16, ptr %78, i32 20
  %142 = ptrtoint ptr %arrayidx6.20 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %arrayidx6.20, align 2
  %conv7.20 = zext i16 %143 to i32
  %add8.20 = add i32 %132, %conv7.20
  %arrayidx9.20 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 20
  %144 = ptrtoint ptr %arrayidx9.20 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %add8.20, ptr %arrayidx9.20, align 4
  %z_ofs = getelementptr inbounds %struct.sym_fw, ptr %fw, i32 0, i32 9
  %145 = ptrtoint ptr %z_ofs to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %z_ofs, align 4
  %fwz_bas = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 56
  %scriptz_ba = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 50
  %147 = ptrtoint ptr %scriptz_ba to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %scriptz_ba, align 4
  %149 = ptrtoint ptr %146 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %146, align 2
  %conv18 = zext i16 %150 to i32
  %add19 = add i32 %148, %conv18
  %151 = ptrtoint ptr %fwz_bas to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %add19, ptr %fwz_bas, align 4
  %arrayidx17.1 = getelementptr i16, ptr %146, i32 1
  %152 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %arrayidx17.1, align 2
  %conv18.1 = zext i16 %153 to i32
  %add19.1 = add i32 %148, %conv18.1
  %arrayidx20.1 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 56, i32 1
  %154 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %add19.1, ptr %arrayidx20.1, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sym_fw1_setup(ptr nocapture noundef %np, ptr nocapture noundef readonly %fw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %scripta01 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 45
  %0 = ptrtoint ptr %scripta01 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scripta01, align 4
  %data_in = getelementptr inbounds %struct.sym_fw1a_scr, ptr %1, i32 0, i32 57
  %data_out = getelementptr inbounds %struct.sym_fw1a_scr, ptr %1, i32 0, i32 59
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.011.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %out.addr.010.i = phi ptr [ %data_out, %entry ], [ %incdec.ptr3.i, %for.body.i.for.body.i_crit_edge ]
  %in.addr.09.i = phi ptr [ %data_in, %entry ], [ %incdec.ptr1.i, %for.body.i.for.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i32, ptr %in.addr.09.i, i32 1
  %2 = ptrtoint ptr %in.addr.09.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 285212672, ptr %in.addr.09.i, align 4
  %3 = shl i32 %i.011.i, 3
  %4 = add nuw nsw i32 %3, 88
  %incdec.ptr1.i = getelementptr i32, ptr %in.addr.09.i, i32 2
  %5 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %incdec.ptr.i, align 4
  %incdec.ptr2.i = getelementptr i32, ptr %out.addr.010.i, i32 1
  %6 = ptrtoint ptr %out.addr.010.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 268435456, ptr %out.addr.010.i, align 4
  %incdec.ptr3.i = getelementptr i32, ptr %out.addr.010.i, i32 2
  %7 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %incdec.ptr2.i, align 4
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 96
  br i1 %exitcond.not.i, label %sym_fw_fill_data.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

sym_fw_fill_data.exit:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sym_fw_setup_bus_addresses(ptr noundef %np, ptr noundef %fw)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sym_fw1_patch(ptr nocapture noundef readonly %shost) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  %scriptb02 = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %scriptb02 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scriptb02, align 4
  %features = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 60
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %features, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %scripta01 = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 45
  %6 = ptrtoint ptr %scripta01 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scripta01, align 4
  %idle = getelementptr inbounds %struct.sym_fw1a_scr, ptr %7, i32 0, i32 37
  %8 = ptrtoint ptr %idle to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 128, ptr %idle, align 4
  %reselected = getelementptr inbounds %struct.sym_fw1a_scr, ptr %7, i32 0, i32 40
  %9 = ptrtoint ptr %reselected to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 128, ptr %reselected, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 128, ptr %7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %squeue_ba = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 75
  %11 = ptrtoint ptr %squeue_ba to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %squeue_ba, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %startpos = getelementptr inbounds %struct.sym_fw1b_scr, ptr %3, i32 0, i32 39
  %14 = ptrtoint ptr %startpos to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %startpos, align 4
  %dqueue_ba = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 80
  %15 = ptrtoint ptr %dqueue_ba to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dqueue_ba, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %done_pos = getelementptr inbounds %struct.sym_fw1b_scr, ptr %3, i32 0, i32 37
  %18 = ptrtoint ptr %done_pos to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %done_pos, align 4
  %targtbl_ba = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 40
  %19 = ptrtoint ptr %targtbl_ba to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %targtbl_ba, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %targtbl = getelementptr inbounds %struct.sym_fw1b_scr, ptr %3, i32 0, i32 40
  %22 = ptrtoint ptr %targtbl to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %targtbl, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/sym53c8xx_2/sym_fw.c", i32 368, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @sym_fw_bind_script._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @sym_fw_bind_script._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/sym53c8xx_2/sym_fw.c", i32 384, i32 4}
!8 = !{ptr @sym_fw_bind_script._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @sym_fw_bind_script._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/sym53c8xx_2/sym_fw.c", i32 411, i32 5}
!12 = !{ptr @sym_fw_bind_script._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @sym_fw_bind_script._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/sym53c8xx_2/sym_fw.c", i32 529, i32 11}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/sym53c8xx_2/sym_fw.c", i32 327, i32 32}
!18 = !{ptr @sym_fw2, !19, !"sym_fw2", i1 false, i1 false}
!19 = !{!"../drivers/scsi/sym53c8xx_2/sym_fw.c", i32 327, i32 22}
!20 = !{ptr @sym_fw2a_scr, !21, !"sym_fw2a_scr", i1 false, i1 false}
!21 = !{!"../drivers/scsi/sym53c8xx_2/sym_fw2.h", i32 200, i32 27}
!22 = !{ptr @sym_fw2a_ofs, !23, !"sym_fw2a_ofs", i1 false, i1 false}
!23 = !{!"../drivers/scsi/sym53c8xx_2/sym_fw.c", i32 68, i32 27}
!24 = !{ptr @sym_fw2b_scr, !25, !"sym_fw2b_scr", i1 false, i1 false}
!25 = !{!"../drivers/scsi/sym53c8xx_2/sym_fw2.h", i32 1190, i32 27}
!26 = !{ptr @sym_fw2b_ofs, !27, !"sym_fw2b_ofs", i1 false, i1 false}
!27 = !{!"../drivers/scsi/sym53c8xx_2/sym_fw.c", i32 71, i32 27}
!28 = !{ptr @sym_fw2z_scr, !29, !"sym_fw2z_scr", i1 false, i1 false}
!29 = !{!"../drivers/scsi/sym53c8xx_2/sym_fw2.h", i32 1838, i32 27}
!30 = !{ptr @sym_fw2z_ofs, !31, !"sym_fw2z_ofs", i1 false, i1 false}
!31 = !{!"../drivers/scsi/sym53c8xx_2/sym_fw.c", i32 76, i32 27}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/sym53c8xx_2/sym_fw.c", i32 325, i32 32}
!34 = !{ptr @sym_fw1, !35, !"sym_fw1", i1 false, i1 false}
!35 = !{!"../drivers/scsi/sym53c8xx_2/sym_fw.c", i32 325, i32 22}
!36 = !{ptr @sym_fw1a_scr, !37, !"sym_fw1a_scr", i1 false, i1 false}
!37 = !{!"../drivers/scsi/sym53c8xx_2/sym_fw1.h", i32 207, i32 27}
!38 = !{ptr @sym_fw1a_ofs, !39, !"sym_fw1a_ofs", i1 false, i1 false}
!39 = !{!"../drivers/scsi/sym53c8xx_2/sym_fw.c", i32 47, i32 27}
!40 = !{ptr @sym_fw1b_scr, !41, !"sym_fw1b_scr", i1 false, i1 false}
!41 = !{!"../drivers/scsi/sym53c8xx_2/sym_fw1.h", i32 1318, i32 27}
!42 = !{ptr @sym_fw1b_ofs, !43, !"sym_fw1b_ofs", i1 false, i1 false}
!43 = !{!"../drivers/scsi/sym53c8xx_2/sym_fw.c", i32 50, i32 27}
!44 = !{ptr @sym_fw1z_scr, !45, !"sym_fw1z_scr", i1 false, i1 false}
!45 = !{!"../drivers/scsi/sym53c8xx_2/sym_fw1.h", i32 1750, i32 27}
!46 = !{ptr @sym_fw1z_ofs, !47, !"sym_fw1z_ofs", i1 false, i1 false}
!47 = !{!"../drivers/scsi/sym53c8xx_2/sym_fw.c", i32 53, i32 27}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
