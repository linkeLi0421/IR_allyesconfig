; ModuleID = '/llk/IR_all_yes/drivers/mmc/core/sd.c_pt.bc'
source_filename = "../drivers/mmc/core/sd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
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
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sd_busy_data = type { ptr, ptr }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@mmc_sd_switch_hs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014%s: Problem switching card into high-speed mode!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mmc_sd_switch_hs\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/mmc/core/sd.c\00", [42 x i8] zeroinitializer }, align 32
@mmc_sd_switch_hs._entry_ptr = internal global ptr @mmc_sd_switch_hs._entry, section ".printk_index", align 4
@sd_std_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @sd_std_group, ptr null], [24 x i8] zeroinitializer }, align 32
@sd_type = dso_local global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr null, ptr @sd_std_groups, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mmc_sd_get_cid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: Skipping voltage switch\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mmc_sd_get_cid\00", [17 x i8] zeroinitializer }, align 32
@mmc_sd_get_cid._entry_ptr = internal global ptr @mmc_sd_get_cid._entry, section ".printk_index", align 4
@use_spi_crc = external dso_local local_unnamed_addr global i8, align 1
@mmc_sd_setup_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 975, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\014%s: host does not support reading read-only switch, assuming write-enable\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mmc_sd_setup_card\00", [46 x i8] zeroinitializer }, align 32
@mmc_sd_setup_card._entry_ptr = internal global ptr @mmc_sd_setup_card._entry, section ".printk_index", align 4
@mmc_sd_ops = internal constant { %struct.mmc_bus_ops, [44 x i8] } { %struct.mmc_bus_ops { ptr @mmc_sd_remove, ptr @mmc_sd_detect, ptr null, ptr @mmc_sd_suspend, ptr @mmc_sd_resume, ptr @mmc_sd_runtime_suspend, ptr @mmc_sd_runtime_resume, ptr @mmc_sd_alive, ptr @mmc_sd_suspend, ptr @mmc_sd_hw_reset, ptr null, ptr @sd_cache_enabled, ptr @sd_flush_cache }, [44 x i8] zeroinitializer }, align 32
@mmc_attach_sd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 1876, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: error %d whilst initialising SD card\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mmc_attach_sd\00", [18 x i8] zeroinitializer }, align 32
@mmc_attach_sd._entry_ptr = internal global ptr @mmc_attach_sd._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sd_std_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @sd_std_is_visible, ptr null, ptr @sd_std_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@sd_std_attrs = internal global { [24 x ptr], [32 x i8] } { [24 x ptr] [ptr @dev_attr_vendor, ptr @dev_attr_device, ptr @dev_attr_revision, ptr @dev_attr_info1, ptr @dev_attr_info2, ptr @dev_attr_info3, ptr @dev_attr_info4, ptr @dev_attr_cid, ptr @dev_attr_csd, ptr @dev_attr_scr, ptr @dev_attr_ssr, ptr @dev_attr_date, ptr @dev_attr_erase_size, ptr @dev_attr_preferred_erase_size, ptr @dev_attr_fwrev, ptr @dev_attr_hwrev, ptr @dev_attr_manfid, ptr @dev_attr_name, ptr @dev_attr_oemid, ptr @dev_attr_serial, ptr @dev_attr_ocr, ptr @dev_attr_rca, ptr @dev_attr_dsr, ptr null], [32 x i8] zeroinitializer }, align 32
@dev_attr_vendor = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_vendor_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_device = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_device_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_revision = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_revision_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_info1 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @info1_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_info2 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @info2_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_info3 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @info3_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_info4 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @info4_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vendor\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"revision\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%u.%u\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"info1\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"info2\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"info3\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"info4\00", [26 x i8] zeroinitializer }, align 32
@dev_attr_cid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_cid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_csd = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_csd_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_scr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_scr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ssr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_ssr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_date = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_date_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_erase_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_erase_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_preferred_erase_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_preferred_erase_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fwrev = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_fwrev_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hwrev = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_hwrev_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_manfid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_manfid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_oemid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_oemid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_serial = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_serial_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ocr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_ocr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rca = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_rca_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dsr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_dsr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cid\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%08x%08x%08x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"csd\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"scr\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%08x%08x\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ssr\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"date\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%02d/%04d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"erase_size\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"preferred_erase_size\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fwrev\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hwrev\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"manfid\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%06x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"oemid\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ocr\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rca\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dsr\00", [28 x i8] zeroinitializer }, align 32
@taac_exp = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 10, i32 100, i32 1000, i32 10000, i32 100000, i32 1000000, i32 10000000], [32 x i8] zeroinitializer }, align 32
@taac_mant = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 10, i32 12, i32 13, i32 15, i32 20, i32 25, i32 30, i32 35, i32 40, i32 45, i32 50, i32 55, i32 60, i32 70, i32 80], [32 x i8] zeroinitializer }, align 32
@tran_exp = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 10000, i32 100000, i32 1000000, i32 10000000, i32 0, i32 0, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@tran_mant = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\0A\0C\0D\0F\14\19\1E#(-27<FP", [16 x i8] zeroinitializer }, align 32
@mmc_decode_csd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: unrecognised CSD structure version %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mmc_decode_csd\00", [17 x i8] zeroinitializer }, align 32
@mmc_decode_csd._entry_ptr = internal global ptr @mmc_decode_csd._entry, section ".printk_index", align 4
@mmc_decode_scr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: unrecognised SCR structure version %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mmc_decode_scr\00", [17 x i8] zeroinitializer }, align 32
@mmc_decode_scr._entry_ptr = internal global ptr @mmc_decode_scr._entry, section ".printk_index", align 4
@mmc_decode_scr._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: invalid bus width\0A\00", [39 x i8] zeroinitializer }, align 32
@mmc_decode_scr._entry_ptr.49 = internal global ptr @mmc_decode_scr._entry.47, section ".printk_index", align 4
@mmc_read_ssr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: card lacks mandatory SD Status function\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mmc_read_ssr\00", [19 x i8] zeroinitializer }, align 32
@mmc_read_ssr._entry_ptr = internal global ptr @mmc_read_ssr._entry, section ".printk_index", align 4
@mmc_read_ssr._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: problem reading SD Status register\0A\00", [54 x i8] zeroinitializer }, align 32
@mmc_read_ssr._entry_ptr.54 = internal global ptr @mmc_read_ssr._entry.52, section ".printk_index", align 4
@sd_au_size = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 24576, i32 32768, i32 49152, i32 65536, i32 131072], [32 x i8] zeroinitializer }, align 32
@mmc_read_ssr._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.2, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: SD Status: Invalid Allocation Unit size\0A\00", [49 x i8] zeroinitializer }, align 32
@mmc_read_ssr._entry_ptr.57 = internal global ptr @mmc_read_ssr._entry.55, section ".printk_index", align 4
@mmc_read_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\014%s: card lacks mandatory switch function, performance might suffer\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mmc_read_switch\00", [16 x i8] zeroinitializer }, align 32
@mmc_read_switch._entry_ptr = internal global ptr @mmc_read_switch._entry, section ".printk_index", align 4
@mmc_read_switch._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s: problem reading Bus Speed modes\0A\00", [57 x i8] zeroinitializer }, align 32
@mmc_read_switch._entry_ptr.62 = internal global ptr @mmc_read_switch._entry.60, section ".printk_index", align 4
@sd_poweroff_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 1663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014%s: error %d writing Power Off Notify bit\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sd_poweroff_notify\00", [45 x i8] zeroinitializer }, align 32
@sd_poweroff_notify._entry_ptr = internal global ptr @sd_poweroff_notify._entry, section ".printk_index", align 4
@sd_busy_poweroff_notify_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 1637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014%s: error %d reading status reg of PM func\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sd_busy_poweroff_notify_cb\00", [37 x i8] zeroinitializer }, align 32
@sd_busy_poweroff_notify_cb._entry_ptr = internal global ptr @sd_busy_poweroff_notify_cb._entry, section ".printk_index", align 4
@mmc_sd_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 1768, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: error %d doing aggressive suspend\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mmc_sd_runtime_suspend\00", [41 x i8] zeroinitializer }, align 32
@mmc_sd_runtime_suspend._entry_ptr = internal global ptr @mmc_sd_runtime_suspend._entry, section ".printk_index", align 4
@mmc_sd_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 1783, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: error %d doing runtime resume\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mmc_sd_runtime_resume\00", [42 x i8] zeroinitializer }, align 32
@mmc_sd_runtime_resume._entry_ptr = internal global ptr @mmc_sd_runtime_resume._entry, section ".printk_index", align 4
@sd_flush_cache._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 1324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014%s: error %d writing Cache Flush bit\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sd_flush_cache\00", [17 x i8] zeroinitializer }, align 32
@sd_flush_cache._entry_ptr = internal global ptr @sd_flush_cache._entry, section ".printk_index", align 4
@sd_flush_cache._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.2, i32 1340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014%s: error %d reading Cache Flush bit\0A\00", [56 x i8] zeroinitializer }, align 32
@sd_flush_cache._entry_ptr.75 = internal global ptr @sd_flush_cache._entry.73, section ".printk_index", align 4
@mmc_sd_init_card.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.76, ptr @.str.77, ptr @.str.2, ptr @.str.78, i8 1, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc_core\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mmc_sd_init_card\00", [47 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Perhaps the card was replaced\0A\00", [61 x i8] zeroinitializer }, align 32
@mmc_sd_init_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.2, i32 1552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: Host Software Queue enabled\0A\00", [61 x i8] zeroinitializer }, align 32
@mmc_sd_init_card._entry_ptr = internal global ptr @mmc_sd_init_card._entry, section ".printk_index", align 4
@mmc_sd_init_card._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.77, ptr @.str.2, i32 1559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: Host failed to negotiate down from 3.3V\0A\00", [49 x i8] zeroinitializer }, align 32
@mmc_sd_init_card._entry_ptr.82 = internal global ptr @mmc_sd_init_card._entry.80, section ".printk_index", align 4
@mmc_sd_init_uhs_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014%s: ddr50 tuning failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mmc_sd_init_uhs_card\00", [43 x i8] zeroinitializer }, align 32
@mmc_sd_init_uhs_card._entry_ptr = internal global ptr @mmc_sd_init_uhs_card._entry, section ".printk_index", align 4
@sd_select_driver_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s: Problem setting drive strength!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sd_select_driver_type\00", [42 x i8] zeroinitializer }, align 32
@sd_select_driver_type._entry_ptr = internal global ptr @sd_select_driver_type._entry, section ".printk_index", align 4
@sd_set_current_limit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014%s: Problem setting current limit!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sd_set_current_limit\00", [43 x i8] zeroinitializer }, align 32
@sd_set_current_limit._entry_ptr = internal global ptr @sd_set_current_limit._entry, section ".printk_index", align 4
@sd_set_bus_speed_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.2, i32 514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s: Problem setting bus speed mode!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sd_set_bus_speed_mode\00", [42 x i8] zeroinitializer }, align 32
@sd_set_bus_speed_mode._entry_ptr = internal global ptr @sd_set_bus_speed_mode._entry, section ".printk_index", align 4
@sd_read_ext_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.2, i32 1255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014%s: error %d reading general info of SD ext reg\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_read_ext_regs\00", [47 x i8] zeroinitializer }, align 32
@sd_read_ext_regs._entry_ptr = internal global ptr @sd_read_ext_regs._entry, section ".printk_index", align 4
@sd_read_ext_regs._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.2, i32 1271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s: non-supported SD ext reg layout\0A\00", [57 x i8] zeroinitializer }, align 32
@sd_read_ext_regs._entry_ptr.95 = internal global ptr @sd_read_ext_regs._entry.93, section ".printk_index", align 4
@sd_read_ext_regs._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.92, ptr @.str.2, i32 1284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014%s: error %d parsing SD ext reg\0A\00", [61 x i8] zeroinitializer }, align 32
@sd_read_ext_regs._entry_ptr.98 = internal global ptr @sd_read_ext_regs._entry.96, section ".printk_index", align 4
@sd_parse_ext_reg_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.2, i32 1104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: error %d reading PM func of ext reg\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sd_parse_ext_reg_power\00", [41 x i8] zeroinitializer }, align 32
@sd_parse_ext_reg_power._entry_ptr = internal global ptr @sd_parse_ext_reg_power._entry, section ".printk_index", align 4
@sd_parse_ext_reg_perf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.2, i32 1145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014%s: error %d reading PERF func of ext reg\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sd_parse_ext_reg_perf\00", [42 x i8] zeroinitializer }, align 32
@sd_parse_ext_reg_perf._entry_ptr = internal global ptr @sd_parse_ext_reg_perf._entry, section ".printk_index", align 4
@sd_enable_cache._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.2, i32 1370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014%s: error %d writing Cache Enable bit\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sd_enable_cache\00", [16 x i8] zeroinitializer }, align 32
@sd_enable_cache._entry_ptr = internal global ptr @sd_enable_cache._entry, section ".printk_index", align 4
@switch.table.sd_set_bus_speed_mode = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 25000000, i32 50000000, i32 100000000, i32 208000000, i32 50000000], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 128, i64 131072, i64 262144, i64 1048576, i64 2097152]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.107 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967258, i64 4294967274, i64 4294967282]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967173]
@__sancov_gen_cov_switch_values.110 = internal global [7 x i64] [i64 5, i64 32, i64 128, i64 131072, i64 262144, i64 1048576, i64 2097152]
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 401, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [14 x i8] c"sd_std_groups\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 800, i32 1 }
@___asan_gen_.126 = private unnamed_addr constant [8 x i8] c"sd_type\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 802, i32 20 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 819, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 974, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant [11 x i8] c"mmc_sd_ops\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1794, i32 33 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1875, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [13 x i8] c"sd_std_group\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 796, i32 37 }
@___asan_gen_.162 = private unnamed_addr constant [13 x i8] c"sd_std_attrs\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 749, i32 26 }
@___asan_gen_.165 = private unnamed_addr constant [16 x i8] c"dev_attr_vendor\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [16 x i8] c"dev_attr_device\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [18 x i8] c"dev_attr_revision\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [15 x i8] c"dev_attr_info1\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [15 x i8] c"dev_attr_info2\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [15 x i8] c"dev_attr_info3\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [15 x i8] c"dev_attr_info4\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 727, i32 1 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 728, i32 1 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 729, i32 1 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 744, i32 1 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 745, i32 1 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 746, i32 1 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 747, i32 1 }
@___asan_gen_.216 = private unnamed_addr constant [13 x i8] c"dev_attr_cid\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [13 x i8] c"dev_attr_csd\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [13 x i8] c"dev_attr_scr\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [13 x i8] c"dev_attr_ssr\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [14 x i8] c"dev_attr_date\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [20 x i8] c"dev_attr_erase_size\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [30 x i8] c"dev_attr_preferred_erase_size\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [15 x i8] c"dev_attr_fwrev\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [15 x i8] c"dev_attr_hwrev\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [16 x i8] c"dev_attr_manfid\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [14 x i8] c"dev_attr_name\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [15 x i8] c"dev_attr_oemid\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [16 x i8] c"dev_attr_serial\00", align 1
@___asan_gen_.255 = private unnamed_addr constant [13 x i8] c"dev_attr_ocr\00", align 1
@___asan_gen_.258 = private unnamed_addr constant [13 x i8] c"dev_attr_rca\00", align 1
@___asan_gen_.261 = private unnamed_addr constant [13 x i8] c"dev_attr_dsr\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 685, i32 1 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 687, i32 1 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 689, i32 1 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 690, i32 1 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 698, i32 1 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 699, i32 1 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 700, i32 1 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 701, i32 1 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 702, i32 1 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 703, i32 1 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 704, i32 1 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 705, i32 1 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 706, i32 1 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 707, i32 1 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 708, i32 1 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 725, i32 8 }
@___asan_gen_.336 = private unnamed_addr constant [9 x i8] c"taac_exp\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 40, i32 27 }
@___asan_gen_.339 = private unnamed_addr constant [10 x i8] c"taac_mant\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 44, i32 27 }
@___asan_gen_.342 = private unnamed_addr constant [9 x i8] c"tran_exp\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 30, i32 27 }
@___asan_gen_.345 = private unnamed_addr constant [10 x i8] c"tran_mant\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 35, i32 28 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 189, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 213, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 242, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 261, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 271, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant [11 x i8] c"sd_au_size\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 49, i32 27 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 298, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 326, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 349, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1662, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1636, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1767, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1782, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1323, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1339, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1407, i32 4 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1551, i32 4 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1558, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 673, i32 4 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 432, i32 4 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 604, i32 4 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 513, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1254, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1270, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1283, i32 4 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1103, i32 3 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1144, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.564 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.565 = private constant [25 x i8] c"../drivers/mmc/core/sd.c\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1369, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant [35 x i8] c"switch.table.sd_set_bus_speed_mode\00", align 1
@llvm.compiler.used = appending global [183 x ptr] [ptr @mmc_attach_sd._entry, ptr @mmc_attach_sd._entry_ptr, ptr @mmc_decode_csd._entry, ptr @mmc_decode_csd._entry_ptr, ptr @mmc_decode_scr._entry, ptr @mmc_decode_scr._entry.47, ptr @mmc_decode_scr._entry_ptr, ptr @mmc_decode_scr._entry_ptr.49, ptr @mmc_read_ssr._entry, ptr @mmc_read_ssr._entry.52, ptr @mmc_read_ssr._entry.55, ptr @mmc_read_ssr._entry_ptr, ptr @mmc_read_ssr._entry_ptr.54, ptr @mmc_read_ssr._entry_ptr.57, ptr @mmc_read_switch._entry, ptr @mmc_read_switch._entry.60, ptr @mmc_read_switch._entry_ptr, ptr @mmc_read_switch._entry_ptr.62, ptr @mmc_sd_get_cid._entry, ptr @mmc_sd_get_cid._entry_ptr, ptr @mmc_sd_init_card._entry, ptr @mmc_sd_init_card._entry.80, ptr @mmc_sd_init_card._entry_ptr, ptr @mmc_sd_init_card._entry_ptr.82, ptr @mmc_sd_init_uhs_card._entry, ptr @mmc_sd_init_uhs_card._entry_ptr, ptr @mmc_sd_runtime_resume._entry, ptr @mmc_sd_runtime_resume._entry_ptr, ptr @mmc_sd_runtime_suspend._entry, ptr @mmc_sd_runtime_suspend._entry_ptr, ptr @mmc_sd_setup_card._entry, ptr @mmc_sd_setup_card._entry_ptr, ptr @mmc_sd_switch_hs._entry, ptr @mmc_sd_switch_hs._entry_ptr, ptr @sd_busy_poweroff_notify_cb._entry, ptr @sd_busy_poweroff_notify_cb._entry_ptr, ptr @sd_enable_cache._entry, ptr @sd_enable_cache._entry_ptr, ptr @sd_flush_cache._entry, ptr @sd_flush_cache._entry.73, ptr @sd_flush_cache._entry_ptr, ptr @sd_flush_cache._entry_ptr.75, ptr @sd_parse_ext_reg_perf._entry, ptr @sd_parse_ext_reg_perf._entry_ptr, ptr @sd_parse_ext_reg_power._entry, ptr @sd_parse_ext_reg_power._entry_ptr, ptr @sd_poweroff_notify._entry, ptr @sd_poweroff_notify._entry_ptr, ptr @sd_read_ext_regs._entry, ptr @sd_read_ext_regs._entry.93, ptr @sd_read_ext_regs._entry.96, ptr @sd_read_ext_regs._entry_ptr, ptr @sd_read_ext_regs._entry_ptr.95, ptr @sd_read_ext_regs._entry_ptr.98, ptr @sd_select_driver_type._entry, ptr @sd_select_driver_type._entry_ptr, ptr @sd_set_bus_speed_mode._entry, ptr @sd_set_bus_speed_mode._entry_ptr, ptr @sd_set_current_limit._entry, ptr @sd_set_current_limit._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @sd_std_groups, ptr @sd_type, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mmc_sd_ops, ptr @.str.7, ptr @.str.8, ptr @sd_std_group, ptr @sd_std_attrs, ptr @dev_attr_vendor, ptr @dev_attr_device, ptr @dev_attr_revision, ptr @dev_attr_info1, ptr @dev_attr_info2, ptr @dev_attr_info3, ptr @dev_attr_info4, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @dev_attr_cid, ptr @dev_attr_csd, ptr @dev_attr_scr, ptr @dev_attr_ssr, ptr @dev_attr_date, ptr @dev_attr_erase_size, ptr @dev_attr_preferred_erase_size, ptr @dev_attr_fwrev, ptr @dev_attr_hwrev, ptr @dev_attr_manfid, ptr @dev_attr_name, ptr @dev_attr_oemid, ptr @dev_attr_serial, ptr @dev_attr_ocr, ptr @dev_attr_rca, ptr @dev_attr_dsr, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @taac_exp, ptr @taac_mant, ptr @tran_exp, ptr @tran_mant, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @sd_au_size, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @switch.table.sd_set_bus_speed_mode], section "llvm.metadata"
@0 = internal global [153 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_sd_switch_hs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_std_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_sd_get_cid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_sd_setup_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_sd_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_attach_sd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_std_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_std_attrs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vendor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_device to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_revision to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_info1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_info2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_info3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_info4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_csd to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_scr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ssr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_date to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_erase_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_preferred_erase_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fwrev to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hwrev to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_manfid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_oemid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_serial to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ocr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rca to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dsr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taac_exp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taac_mant to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tran_exp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tran_mant to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_decode_csd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_decode_scr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_decode_scr._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_read_ssr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_read_ssr._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_au_size to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_read_ssr._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_read_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_read_switch._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_poweroff_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_busy_poweroff_notify_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_sd_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_sd_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_flush_cache._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_flush_cache._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_sd_init_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_sd_init_card._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_sd_init_uhs_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_select_driver_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_set_current_limit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_set_bus_speed_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_read_ext_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_read_ext_regs._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_read_ext_regs._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_parse_ext_reg_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_parse_ext_reg_perf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_enable_cache._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sd_set_bus_speed_mode to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mmc_decode_cid(ptr nocapture noundef %card) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %raw_cid = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 15
  %0 = ptrtoint ptr %raw_cid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %raw_cid, align 4
  %shr = lshr i32 %1, 24
  %cid = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19
  %2 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shr, ptr %cid, align 4
  %shr7 = lshr i32 %1, 8
  %conv = trunc i32 %shr7 to i16
  %oemid = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 4
  %3 = ptrtoint ptr %oemid to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %oemid, align 4
  %conv20 = trunc i32 %1 to i8
  %prod_name = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 1
  %4 = ptrtoint ptr %prod_name to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv20, ptr %prod_name, align 4
  %arrayidx28 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 15, i32 1
  %5 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx28, align 4
  %shr29 = lshr i32 %6, 24
  %conv32 = trunc i32 %shr29 to i8
  %arrayidx35 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 19, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv32, ptr %arrayidx35, align 1
  %shr42 = lshr i32 %6, 16
  %conv45 = trunc i32 %shr42 to i8
  %arrayidx48 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 19, i32 1, i32 2
  %8 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv45, ptr %arrayidx48, align 2
  %shr55 = lshr i32 %6, 8
  %conv58 = trunc i32 %shr55 to i8
  %arrayidx61 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 19, i32 1, i32 3
  %9 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv58, ptr %arrayidx61, align 1
  %conv71 = trunc i32 %6 to i8
  %arrayidx74 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 19, i32 1, i32 4
  %10 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv71, ptr %arrayidx74, align 4
  %arrayidx80 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 15, i32 2
  %11 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx80, align 4
  %shr81 = lshr i32 %12, 28
  %conv84 = trunc i32 %shr81 to i8
  %hwrev = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 6
  %13 = ptrtoint ptr %hwrev to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv84, ptr %hwrev, align 4
  %shr92 = lshr i32 %12, 24
  %14 = trunc i32 %shr92 to i8
  %conv95 = and i8 %14, 15
  %fwrev = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 7
  %15 = ptrtoint ptr %fwrev to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv95, ptr %fwrev, align 1
  %arrayidx102 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 15, i32 3
  %16 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx102, align 4
  %or = tail call i32 @llvm.fshl.i32(i32 %12, i32 %17, i32 8)
  %serial = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 3
  %18 = ptrtoint ptr %serial to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or, ptr %serial, align 4
  %shr114 = lshr i32 %17, 12
  %19 = trunc i32 %shr114 to i16
  %conv117 = and i16 %19, 255
  %year = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 5
  %shr125 = lshr i32 %17, 8
  %20 = trunc i32 %shr125 to i8
  %conv128 = and i8 %20, 15
  %month = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 8
  %21 = ptrtoint ptr %month to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv128, ptr %month, align 2
  %add = add nuw nsw i16 %conv117, 2000
  %22 = ptrtoint ptr %year to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %add, ptr %year, align 2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_sd_switch_hs(ptr noundef %card) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %scr = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 22
  %0 = ptrtoint ptr %scr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %scr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmdclass = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 2
  %2 = ptrtoint ptr %cmdclass to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cmdclass, align 2
  %4 = and i16 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %caps, align 32
  %and5 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %sw_caps = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 24
  %9 = ptrtoint ptr %sw_caps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sw_caps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp9 = icmp eq i32 %10, 0
  br i1 %cmp9, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 64) #15
  %tobool13.not = icmp eq ptr %call7.i, null
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %call16 = tail call i32 @mmc_sd_switch(ptr noundef %card, i32 noundef 1, i32 noundef 0, i8 noundef zeroext 1, ptr noundef nonnull %call7.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end19:                                         ; preds = %if.end15
  %arrayidx = getelementptr i8, ptr %call7.i, i32 16
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 8
  %14 = and i8 %13, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp22.not = icmp eq i8 %14, 1
  br i1 %cmp22.not, label %if.end19.out_crit_edge, label %do.end

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end:                                           ; preds = %if.end19
  %15 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %16, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %20, %if.end.i ], [ %18, %do.end.dev_name.exit_crit_edge ]
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %retval.0.i) #16
  br label %out

out:                                              ; preds = %dev_name.exit, %if.end19.out_crit_edge, %if.end15.out_crit_edge
  %err.0 = phi i32 [ %call16, %if.end15.out_crit_edge ], [ 0, %dev_name.exit ], [ 1, %if.end19.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_sd_switch(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_sd_get_cid(ptr noundef %host, i32 noundef %ocr, ptr noundef %cid, ptr noundef %rocr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %vdd.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 1
  %max_current_330.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 13
  %max_current_300.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 14
  %max_current_180.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 15
  %tobool24.not = icmp eq ptr %rocr, null
  br label %try_again

try_again:                                        ; preds = %try_again.backedge, %entry
  %ocr.addr.0 = phi i32 [ %ocr, %entry ], [ %10, %try_again.backedge ]
  %retries.0 = phi i32 [ 10, %entry ], [ %retries.0.be, %try_again.backedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.0)
  %tobool.not = icmp eq i32 %retries.0, 0
  br i1 %tobool.not, label %if.then, label %try_again.if.end_crit_edge

try_again.if.end_crit_edge:                       ; preds = %try_again
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %try_again
  %and = and i32 %ocr.addr.0, -16777217
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %if.then.dev_name.exit_crit_edge ]
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %retval.0.i) #16
  br label %if.end

if.end:                                           ; preds = %dev_name.exit, %try_again.if.end_crit_edge
  %ocr.addr.1 = phi i32 [ %ocr.addr.0, %try_again.if.end_crit_edge ], [ %and, %dev_name.exit ]
  %call2 = tail call i32 @mmc_go_idle(ptr noundef %host) #12
  %call3 = tail call i32 @mmc_send_if_cond(ptr noundef %host, i32 noundef %ocr.addr.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %or = or i32 %ocr.addr.1, 1073741824
  %spec.select = select i1 %tobool4.not, i32 %or, i32 %ocr.addr.1
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %land.lhs.true

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps.i, align 32
  %and.i = and i32 %5, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i66 = icmp eq i32 %and.i, 0
  %and2.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool9.not71 = icmp eq i32 %and2.i, 0
  %tobool9.not = or i1 %tobool.not.i66, %tobool9.not71
  %or11 = or i32 %spec.select, 16777216
  %spec.select64 = select i1 %tobool9.not, i32 %spec.select, i32 %or11
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %if.end.if.end12_crit_edge
  %ocr.addr.3 = phi i32 [ %spec.select, %if.end.if.end12_crit_edge ], [ %spec.select64, %land.lhs.true ]
  %6 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vdd.i, align 4
  %conv.i = zext i16 %7 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %8 = zext i32 %shl.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shl.i, label %if.end12.sd_get_host_max_current.exit.thread_crit_edge [
    i32 128, label %if.end12.sd_get_host_max_current.exit_crit_edge
    i32 131072, label %if.end12.sw.bb1.i_crit_edge
    i32 262144, label %if.end12.sw.bb1.i_crit_edge78
    i32 1048576, label %if.end12.sw.bb2.i_crit_edge
    i32 2097152, label %if.end12.sw.bb2.i_crit_edge79
  ]

if.end12.sw.bb2.i_crit_edge79:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i

if.end12.sw.bb2.i_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i

if.end12.sw.bb1.i_crit_edge78:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i

if.end12.sw.bb1.i_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i

if.end12.sd_get_host_max_current.exit_crit_edge:  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %sd_get_host_max_current.exit

if.end12.sd_get_host_max_current.exit.thread_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %sd_get_host_max_current.exit.thread

sw.bb1.i:                                         ; preds = %if.end12.sw.bb1.i_crit_edge, %if.end12.sw.bb1.i_crit_edge78
  br label %sd_get_host_max_current.exit

sw.bb2.i:                                         ; preds = %if.end12.sw.bb2.i_crit_edge, %if.end12.sw.bb2.i_crit_edge79
  br label %sd_get_host_max_current.exit

sd_get_host_max_current.exit:                     ; preds = %sw.bb2.i, %sw.bb1.i, %if.end12.sd_get_host_max_current.exit_crit_edge
  %max_current.0.i.in = phi ptr [ %max_current_330.i, %sw.bb2.i ], [ %max_current_300.i, %sw.bb1.i ], [ %max_current_180.i, %if.end12.sd_get_host_max_current.exit_crit_edge ]
  %9 = ptrtoint ptr %max_current.0.i.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %max_current.0.i = load i32, ptr %max_current.0.i.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 150, i32 %max_current.0.i)
  %cmp = icmp ugt i32 %max_current.0.i, 150
  %or15 = or i32 %ocr.addr.3, 268435456
  %spec.select70 = select i1 %cmp, i32 %or15, i32 %ocr.addr.3
  br label %sd_get_host_max_current.exit.thread

sd_get_host_max_current.exit.thread:              ; preds = %sd_get_host_max_current.exit, %if.end12.sd_get_host_max_current.exit.thread_crit_edge
  %10 = phi i32 [ %ocr.addr.3, %if.end12.sd_get_host_max_current.exit.thread_crit_edge ], [ %spec.select70, %sd_get_host_max_current.exit ]
  %call17 = tail call i32 @mmc_send_app_op_cond(ptr noundef %host, i32 noundef %10, ptr noundef %rocr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %sd_get_host_max_current.exit.thread.cleanup_crit_edge

sd_get_host_max_current.exit.thread.cleanup_crit_edge: ; preds = %sd_get_host_max_current.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20:                                         ; preds = %sd_get_host_max_current.exit.thread
  %11 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %caps.i, align 32
  %and21 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp ne i32 %and21, 0
  %or.cond = or i1 %tobool24.not, %tobool22.not
  br i1 %or.cond, label %if.end20.if.end36_crit_edge, label %land.lhs.true25

if.end20.if.end36_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

land.lhs.true25:                                  ; preds = %if.end20
  %13 = ptrtoint ptr %rocr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rocr, align 4
  %and26 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %land.lhs.true25.if.end36_crit_edge, label %if.then28

land.lhs.true25.if.end36_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then28:                                        ; preds = %land.lhs.true25
  %call29 = tail call i32 @mmc_set_uhs_voltage(ptr noundef %host, i32 noundef %ocr) #12
  %15 = zext i32 %call29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %call29, label %if.then28.try_again.backedge_crit_edge [
    i32 -11, label %if.then31
    i32 0, label %if.then28.if.end36_crit_edge
  ]

if.then28.if.end36_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then28.try_again.backedge_crit_edge:           ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %try_again.backedge

if.then31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  %dec = add i32 %retries.0, -1
  br label %try_again.backedge

try_again.backedge:                               ; preds = %if.then31, %if.then28.try_again.backedge_crit_edge
  %retries.0.be = phi i32 [ %dec, %if.then31 ], [ 0, %if.then28.try_again.backedge_crit_edge ]
  br label %try_again

if.end36:                                         ; preds = %if.then28.if.end36_crit_edge, %land.lhs.true25.if.end36_crit_edge, %if.end20.if.end36_crit_edge
  %call37 = tail call i32 @mmc_send_cid(ptr noundef %host, ptr noundef %cid) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %sd_get_host_max_current.exit.thread.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %if.end36 ], [ %call17, %sd_get_host_max_current.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_go_idle(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_if_cond(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_app_op_cond(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_set_uhs_voltage(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_cid(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_sd_get_csd(ptr noundef %card) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %raw_csd = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 16
  %call = tail call i32 @mmc_send_csd(ptr noundef %card, ptr noundef %raw_csd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %raw_csd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %raw_csd, align 4
  %shr.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %shr.i, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb222.i
  ]

sw.bb.i:                                          ; preds = %if.end
  %shr8.i = lshr i32 %1, 19
  %and10.i = and i32 %shr8.i, 15
  %shr17.i = lshr i32 %1, 16
  %and19.i = and i32 %shr17.i, 7
  %arrayidx20.i = getelementptr [8 x i32], ptr @taac_exp, i32 0, i32 %and19.i
  %3 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx20.i, align 4
  %arrayidx21.i = getelementptr [16 x i32], ptr @taac_mant, i32 0, i32 %and10.i
  %5 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx21.i, align 4
  %mul.i = mul i32 %6, %4
  %add.i = add i32 %mul.i, 9
  %div.i = udiv i32 %add.i, 10
  %taac_ns.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 4
  %7 = ptrtoint ptr %taac_ns.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div.i, ptr %taac_ns.i, align 4
  %8 = trunc i32 %1 to i16
  %9 = lshr i16 %8, 8
  %conv.i = mul nuw nsw i16 %9, 100
  %taac_clks.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 3
  %10 = ptrtoint ptr %taac_clks.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %taac_clks.i, align 4
  %shr38.i = lshr i32 %1, 3
  %and40.i = and i32 %shr38.i, 15
  %and49.i = and i32 %1, 7
  %arrayidx50.i = getelementptr [8 x i32], ptr @tran_exp, i32 0, i32 %and49.i
  %11 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx50.i, align 4
  %arrayidx51.i = getelementptr [16 x i8], ptr @tran_mant, i32 0, i32 %and40.i
  %13 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx51.i, align 1
  %conv52.i = zext i8 %14 to i32
  %mul53.i = mul i32 %12, %conv52.i
  %max_dtr.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 7
  %15 = ptrtoint ptr %max_dtr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul53.i, ptr %max_dtr.i, align 4
  %arrayidx59.i = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 16, i32 1
  %16 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx59.i, align 4
  %shr60.i = lshr i32 %17, 20
  %conv63.i = trunc i32 %shr60.i to i16
  %cmdclass.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 2
  %18 = ptrtoint ptr %cmdclass.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv63.i, ptr %cmdclass.i, align 2
  %arrayidx69.i = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 16, i32 2
  %19 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx69.i, align 4
  %shr70.i = lshr i32 %20, 15
  %and72.i = and i32 %shr70.i, 7
  %or.i = tail call i32 @llvm.fshl.i32(i32 %17, i32 %20, i32 2) #12
  %and82.i = and i32 %or.i, 4095
  %add83.i = add nuw nsw i32 %and82.i, 1
  %add84.i = add nuw nsw i32 %and72.i, 2
  %shl85.i = shl nuw nsw i32 %add83.i, %add84.i
  %capacity.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 11
  %21 = ptrtoint ptr %capacity.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shl85.i, ptr %capacity.i, align 4
  %shr92.i = lshr i32 %17, 16
  %and94.i = and i32 %shr92.i, 15
  %read_blkbits.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 9
  %22 = ptrtoint ptr %read_blkbits.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and94.i, ptr %read_blkbits.i, align 4
  %read_partial.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 12
  %23 = ptrtoint ptr %read_partial.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i = load i8, ptr %read_partial.i, align 4
  %sh.diff.i = lshr i32 %17, 8
  %tr.sh.diff.i = trunc i32 %sh.diff.i to i8
  %bf.shl.i = and i8 %tr.sh.diff.i, -128
  %bf.clear.i = and i8 %bf.load.i, 7
  %sh.diff416.i = lshr i32 %17, 10
  %tr.sh.diff417.i = trunc i32 %sh.diff416.i to i8
  %bf.shl115.i = and i8 %tr.sh.diff417.i, 16
  %sh.diff418.i = lshr i32 %17, 7
  %tr.sh.diff419.i = trunc i32 %sh.diff418.i to i8
  %bf.shl130.i = and i8 %tr.sh.diff419.i, 64
  %sh.diff420.i = lshr i32 %17, 9
  %tr.sh.diff421.i = trunc i32 %sh.diff420.i to i8
  %bf.shl145.i = and i8 %tr.sh.diff421.i, 8
  %bf.set.i = or i8 %bf.shl115.i, %bf.shl.i
  %bf.set117.i = or i8 %bf.set.i, %bf.shl130.i
  %bf.set132.i = or i8 %bf.set117.i, %bf.shl145.i
  %bf.set147.i = or i8 %bf.set132.i, %bf.clear.i
  %arrayidx154.i = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 16, i32 3
  %24 = ptrtoint ptr %arrayidx154.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx154.i, align 4
  %shr155.i = lshr i32 %25, 26
  %and157.i = and i32 %shr155.i, 7
  %r2w_factor.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 6
  %26 = ptrtoint ptr %r2w_factor.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and157.i, ptr %r2w_factor.i, align 4
  %shr164.i = lshr i32 %25, 22
  %and166.i = and i32 %shr164.i, 15
  %write_blkbits.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 10
  %27 = ptrtoint ptr %write_blkbits.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and166.i, ptr %write_blkbits.i, align 4
  %sh.diff422.i = lshr i32 %25, 16
  %tr.sh.diff423.i = trunc i32 %sh.diff422.i to i8
  %bf.shl178.i = and i8 %tr.sh.diff423.i, 32
  %bf.set180.i = or i8 %bf.set147.i, %bf.shl178.i
  store i8 %bf.set180.i, ptr %read_partial.i, align 4
  %28 = and i32 %20, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  %erase_size.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 8
  %29 = ptrtoint ptr %erase_size.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %erase_size.i, align 4
  br label %if.end208.i

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and166.i)
  %cmp.i = icmp ugt i32 %and166.i, 8
  br i1 %cmp.i, label %if.then193.i, label %if.else.i.if.end208.i_crit_edge

if.else.i.if.end208.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end208.i

if.then193.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %shr200.i = lshr i32 %20, 7
  %and202.i = and i32 %shr200.i, 127
  %add203.i = add nuw nsw i32 %and202.i, 1
  %erase_size204.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 8
  %sub.i = add nsw i32 %and166.i, -9
  %shl207.i = shl nuw nsw i32 %add203.i, %sub.i
  %30 = ptrtoint ptr %erase_size204.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shl207.i, ptr %erase_size204.i, align 4
  br label %if.end208.i

if.end208.i:                                      ; preds = %if.then193.i, %if.else.i.if.end208.i_crit_edge, %if.then.i
  %31 = and i32 %25, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool218.not.i = icmp eq i32 %31, 0
  br i1 %tobool218.not.i, label %if.end208.i.sw.epilog.i_crit_edge, label %if.then219.i

if.end208.i.sw.epilog.i_crit_edge:                ; preds = %if.end208.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

if.then219.i:                                     ; preds = %if.end208.i
  call void @__sanitizer_cov_trace_pc() #14
  %state.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 5
  br label %sw.epilog.sink.split.i

sw.bb222.i:                                       ; preds = %if.end
  %state223.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 5
  %32 = ptrtoint ptr %state223.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %state223.i, align 4
  %or224.i = or i32 %33, 4
  store i32 %or224.i, ptr %state223.i, align 4
  %taac_ns225.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 4
  %34 = ptrtoint ptr %taac_ns225.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %taac_ns225.i, align 4
  %taac_clks226.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 3
  %35 = ptrtoint ptr %taac_clks226.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %taac_clks226.i, align 4
  %shr233.i = lshr i32 %1, 3
  %and235.i = and i32 %shr233.i, 15
  %and244.i = and i32 %1, 7
  %arrayidx245.i = getelementptr [8 x i32], ptr @tran_exp, i32 0, i32 %and244.i
  %36 = ptrtoint ptr %arrayidx245.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx245.i, align 4
  %arrayidx246.i = getelementptr [16 x i8], ptr @tran_mant, i32 0, i32 %and235.i
  %38 = ptrtoint ptr %arrayidx246.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx246.i, align 1
  %conv247.i = zext i8 %39 to i32
  %mul248.i = mul i32 %37, %conv247.i
  %max_dtr249.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 7
  %40 = ptrtoint ptr %max_dtr249.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul248.i, ptr %max_dtr249.i, align 4
  %arrayidx255.i = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 16, i32 1
  %41 = ptrtoint ptr %arrayidx255.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx255.i, align 4
  %shr256.i = lshr i32 %42, 20
  %conv259.i = trunc i32 %shr256.i to i16
  %cmdclass260.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 2
  %43 = ptrtoint ptr %cmdclass260.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv259.i, ptr %cmdclass260.i, align 2
  %arrayidx266.i = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 16, i32 2
  %44 = ptrtoint ptr %arrayidx266.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx266.i, align 4
  %or270.i = tail call i32 @llvm.fshl.i32(i32 %42, i32 %45, i32 16) #12
  %and272.i = and i32 %or270.i, 4194303
  %c_size.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 5
  %46 = ptrtoint ptr %c_size.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and272.i, ptr %c_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65534, i32 %and272.i)
  %cmp274.i = icmp ugt i32 %and272.i, 65534
  br i1 %cmp274.i, label %if.then276.i, label %sw.bb222.i.if.end279.i_crit_edge

sw.bb222.i.if.end279.i_crit_edge:                 ; preds = %sw.bb222.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end279.i

if.then276.i:                                     ; preds = %sw.bb222.i
  call void @__sanitizer_cov_trace_pc() #14
  %or278.i = or i32 %33, 12
  %47 = ptrtoint ptr %state223.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or278.i, ptr %state223.i, align 4
  br label %if.end279.i

if.end279.i:                                      ; preds = %if.then276.i, %sw.bb222.i.if.end279.i_crit_edge
  %add292.i = shl i32 %or270.i, 10
  %shl293.i = add i32 %add292.i, 1024
  %capacity294.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 11
  %48 = ptrtoint ptr %capacity294.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %shl293.i, ptr %capacity294.i, align 4
  %read_blkbits295.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 9
  %49 = ptrtoint ptr %read_blkbits295.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 9, ptr %read_blkbits295.i, align 4
  %read_partial296.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 12
  %50 = ptrtoint ptr %read_partial296.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load297.i = load i8, ptr %read_partial296.i, align 4
  %r2w_factor308.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 6
  %51 = ptrtoint ptr %r2w_factor308.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 4, ptr %r2w_factor308.i, align 4
  %write_blkbits309.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 10
  %52 = ptrtoint ptr %write_blkbits309.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 9, ptr %write_blkbits309.i, align 4
  %bf.clear312.i = and i8 %bf.load297.i, 15
  store i8 %bf.clear312.i, ptr %read_partial296.i, align 4
  %erase_size314.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 8
  %53 = ptrtoint ptr %erase_size314.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %erase_size314.i, align 4
  %arrayidx320.i = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 16, i32 3
  %54 = ptrtoint ptr %arrayidx320.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx320.i, align 4
  %56 = and i32 %55, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool324.not.i = icmp eq i32 %56, 0
  br i1 %tobool324.not.i, label %if.end279.i.sw.epilog.i_crit_edge, label %if.end279.i.sw.epilog.sink.split.i_crit_edge

if.end279.i.sw.epilog.sink.split.i_crit_edge:     ; preds = %if.end279.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split.i

if.end279.i.sw.epilog.i_crit_edge:                ; preds = %if.end279.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end
  %57 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %card, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %58, i32 0, i32 1, i32 3
  %59 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %60, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %58, i32 0, i32 1
  %61 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %62, %if.end.i.i ], [ %60, %do.end.i.dev_name.exit.i_crit_edge ]
  %call330.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %retval.0.i.i, i32 noundef %shr.i) #16
  br label %cleanup

sw.epilog.sink.split.i:                           ; preds = %if.end279.i.sw.epilog.sink.split.i_crit_edge, %if.then219.i
  %state223.sink424.i = phi ptr [ %state.i, %if.then219.i ], [ %state223.i, %if.end279.i.sw.epilog.sink.split.i_crit_edge ]
  %63 = ptrtoint ptr %state223.sink424.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %state223.sink424.i, align 4
  %or327.i = or i32 %64, 2
  store i32 %or327.i, ptr %state223.sink424.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %if.end279.i.sw.epilog.i_crit_edge, %if.end208.i.sw.epilog.i_crit_edge
  %erase_size331.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 8
  %65 = ptrtoint ptr %erase_size331.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %erase_size331.i, align 4
  %erase_size332.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 9
  %67 = ptrtoint ptr %erase_size332.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %erase_size332.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.i, %dev_name.exit.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %dev_name.exit.i ], [ 0, %sw.epilog.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_csd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_sd_setup_card(ptr noundef %host, ptr noundef %card, i1 noundef zeroext %reinit) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %reinit, label %if.end15, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @mmc_app_send_scr(ptr noundef %card) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  %raw_scr.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 17
  %0 = ptrtoint ptr %raw_scr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %raw_scr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %1)
  %cmp.not.i = icmp ult i32 %1, 268435456
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  %shr.i = lshr i32 %1, 28
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %do.end.i.dev_name.exit.i_crit_edge ]
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %retval.0.i.i, i32 noundef %shr.i) #16
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %scr1.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 22
  %shr15.i = lshr i32 %1, 24
  %8 = trunc i32 %shr15.i to i8
  %9 = ptrtoint ptr %scr1.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %scr1.i, align 1
  %shr24.i = lshr i32 %1, 16
  %10 = trunc i32 %shr24.i to i8
  %conv27.i = and i8 %10, 15
  %bus_widths.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 22, i32 4
  %11 = ptrtoint ptr %bus_widths.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv27.i, ptr %bus_widths.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp30.i = icmp eq i8 %8, 2
  br i1 %cmp30.i, label %if.then32.i, label %if.end.i.if.end43.i_crit_edge

if.end.i.if.end43.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43.i

if.then32.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %shr39.i = lshr i32 %1, 15
  %12 = trunc i32 %shr39.i to i8
  %conv42.i = and i8 %12, 1
  %sda_spec3.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 22, i32 1
  %13 = ptrtoint ptr %sda_spec3.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv42.i, ptr %sda_spec3.i, align 1
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then32.i, %if.end.i.if.end43.i_crit_edge
  %sda_spec344.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 22, i32 1
  %14 = ptrtoint ptr %sda_spec344.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sda_spec344.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.end43.i.if.end66.i_crit_edge, label %if.then45.i

if.end43.i.if.end66.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66.i

if.then45.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  %shr52.i = lshr i32 %1, 10
  %16 = trunc i32 %shr52.i to i8
  %conv55.i = and i8 %16, 1
  %sda_spec4.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 22, i32 2
  %17 = ptrtoint ptr %sda_spec4.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv55.i, ptr %sda_spec4.i, align 1
  %shr62.i = lshr i32 %1, 6
  %18 = trunc i32 %shr62.i to i8
  %conv65.i = and i8 %18, 15
  %sda_specx.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 22, i32 3
  %19 = ptrtoint ptr %sda_specx.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv65.i, ptr %sda_specx.i, align 1
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then45.i, %if.end43.i.if.end66.i_crit_edge
  %20 = shl i32 %1, 8
  %sext.i = ashr i32 %20, 31
  %spec.select.i = trunc i32 %sext.i to i8
  %21 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 14
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %spec.select.i, ptr %21, align 8
  %sda_spec480.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 22, i32 2
  %23 = ptrtoint ptr %sda_spec480.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sda_spec480.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool81.not.i = icmp ne i8 %24, 0
  %tobool.not.not.i = xor i1 %tobool.not.i, true
  %brmerge.i = select i1 %tobool81.not.i, i1 true, i1 %tobool.not.not.i
  br i1 %brmerge.i, label %if.end109.sink.split.i, label %if.end66.i.if.end109.i_crit_edge

if.end66.i.if.end109.i_crit_edge:                 ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109.i

if.end109.sink.split.i:                           ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #14
  %.mux.i = select i1 %tobool81.not.i, i8 15, i8 3
  %25 = trunc i32 %1 to i8
  %conv106.i = and i8 %.mux.i, %25
  %cmds107.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 22, i32 5
  %26 = ptrtoint ptr %cmds107.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv106.i, ptr %cmds107.i, align 1
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.end109.sink.split.i, %if.end66.i.if.end109.i_crit_edge
  %27 = and i32 %1, 327680
  call void @__sanitizer_cov_trace_const_cmp4(i32 327680, i32 %27)
  %.not.i = icmp eq i32 %27, 327680
  br i1 %.not.i, label %if.end6, label %do.end121.i

do.end121.i:                                      ; preds = %if.end109.i
  %28 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card, align 8
  %init_name.i157.i = getelementptr inbounds %struct.mmc_host, ptr %29, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %init_name.i157.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i157.i, align 8
  %tobool.not.i158.i = icmp eq ptr %31, null
  br i1 %tobool.not.i158.i, label %if.end.i159.i, label %do.end121.i.dev_name.exit161.i_crit_edge

do.end121.i.dev_name.exit161.i_crit_edge:         ; preds = %do.end121.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit161.i

if.end.i159.i:                                    ; preds = %do.end121.i
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev124.i = getelementptr inbounds %struct.mmc_host, ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %class_dev124.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %class_dev124.i, align 4
  br label %dev_name.exit161.i

dev_name.exit161.i:                               ; preds = %if.end.i159.i, %do.end121.i.dev_name.exit161.i_crit_edge
  %retval.0.i160.i = phi ptr [ %33, %if.end.i159.i ], [ %31, %do.end121.i.dev_name.exit161.i_crit_edge ]
  %call126.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %retval.0.i160.i) #16
  br label %cleanup

if.end6:                                          ; preds = %if.end109.i
  %cmdclass.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 2
  %34 = ptrtoint ptr %cmdclass.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %cmdclass.i, align 2
  %36 = and i16 %35, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool.not.i56 = icmp eq i16 %36, 0
  br i1 %tobool.not.i56, label %do.end.i59, label %if.end.i64

do.end.i59:                                       ; preds = %if.end6
  %37 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %card, align 8
  %init_name.i.i57 = getelementptr inbounds %struct.mmc_host, ptr %38, i32 0, i32 1, i32 3
  %39 = ptrtoint ptr %init_name.i.i57 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i.i57, align 8
  %tobool.not.i.i58 = icmp eq ptr %40, null
  br i1 %tobool.not.i.i58, label %if.end.i.i61, label %do.end.i59.dev_name.exit.i63_crit_edge

do.end.i59.dev_name.exit.i63_crit_edge:           ; preds = %do.end.i59
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i63

if.end.i.i61:                                     ; preds = %do.end.i59
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev.i60 = getelementptr inbounds %struct.mmc_host, ptr %38, i32 0, i32 1
  %41 = ptrtoint ptr %class_dev.i60 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %class_dev.i60, align 4
  br label %dev_name.exit.i63

dev_name.exit.i63:                                ; preds = %if.end.i.i61, %do.end.i59.dev_name.exit.i63_crit_edge
  %retval.0.i.i62 = phi ptr [ %42, %if.end.i.i61 ], [ %40, %do.end.i59.dev_name.exit.i63_crit_edge ]
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %retval.0.i.i62) #16
  br label %if.end10

if.end.i64:                                       ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %43 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3264, i32 noundef 64) #15
  %tobool3.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not.i, label %if.end.i64.cleanup_crit_edge, label %if.end5.i

if.end.i64.cleanup_crit_edge:                     ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i64
  %call6.i = tail call i32 @mmc_app_sd_status(ptr noundef %card, ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %for.body.preheader.i, label %do.end11.i

for.body.preheader.i:                             ; preds = %if.end5.i
  %uglygep.i = getelementptr i8, ptr %card, i32 1028
  %44 = call ptr @memcpy(ptr %uglygep.i, ptr %call7.i.i, i32 64)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  %arrayidx22.i = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 18, i32 2
  %45 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx22.i, align 4
  %shr.i65 = lshr i32 %46, 12
  %and24.i = and i32 %shr.i65, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %for.body.preheader.i.if.end82.i_crit_edge, label %if.then26.i

for.body.preheader.i.if.end82.i_crit_edge:        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82.i

do.end11.i:                                       ; preds = %if.end5.i
  %47 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %card, align 8
  %init_name.i137.i = getelementptr inbounds %struct.mmc_host, ptr %48, i32 0, i32 1, i32 3
  %49 = ptrtoint ptr %init_name.i137.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %init_name.i137.i, align 8
  %tobool.not.i138.i = icmp eq ptr %50, null
  br i1 %tobool.not.i138.i, label %if.end.i139.i, label %do.end11.i.dev_name.exit141.i_crit_edge

do.end11.i.dev_name.exit141.i_crit_edge:          ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit141.i

if.end.i139.i:                                    ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev14.i = getelementptr inbounds %struct.mmc_host, ptr %48, i32 0, i32 1
  %51 = ptrtoint ptr %class_dev14.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %class_dev14.i, align 4
  br label %dev_name.exit141.i

dev_name.exit141.i:                               ; preds = %if.end.i139.i, %do.end11.i.dev_name.exit141.i_crit_edge
  %retval.0.i140.i = phi ptr [ %52, %if.end.i139.i ], [ %50, %do.end11.i.dev_name.exit141.i_crit_edge ]
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %retval.0.i140.i) #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %if.end10

if.then26.i:                                      ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and24.i)
  %cmp27.i = icmp ult i32 %and24.i, 10
  br i1 %cmp27.i, label %if.then26.i.if.then31.i_crit_edge, label %lor.lhs.false.i

if.then26.i.if.then31.i_crit_edge:                ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then31.i

lor.lhs.false.i:                                  ; preds = %if.then26.i
  %53 = ptrtoint ptr %sda_spec344.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %sda_spec344.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool30.not.i = icmp eq i8 %54, 0
  br i1 %tobool30.not.i, label %do.end75.i, label %lor.lhs.false.i.if.then31.i_crit_edge

lor.lhs.false.i.if.then31.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then31.i

if.then31.i:                                      ; preds = %lor.lhs.false.i.if.then31.i_crit_edge, %if.then26.i.if.then31.i_crit_edge
  %arrayidx32.i = getelementptr [16 x i32], ptr @sd_au_size, i32 0, i32 %and24.i
  %55 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx32.i, align 4
  %ssr.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 23
  %57 = ptrtoint ptr %ssr.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %ssr.i, align 8
  %arrayidx40.i = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 18, i32 3
  %58 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx40.i, align 4
  %or.i = tail call i32 @llvm.fshl.i32(i32 %46, i32 %59, i32 8) #12
  %and45.i = and i32 %or.i, 65535
  %shr53.i = lshr i32 %59, 18
  %and55.i = and i32 %shr53.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool56.not.i = icmp eq i32 %and45.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool57.not.i = icmp eq i32 %and55.i, 0
  %or.cond.i = select i1 %tobool56.not.i, i1 true, i1 %tobool57.not.i
  br i1 %or.cond.i, label %if.then31.i.if.end82.i_crit_edge, label %if.then58.i

if.then31.i.if.end82.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82.i

if.then58.i:                                      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #14
  %shr66.i = lshr i32 %59, 16
  %and68.i = and i32 %shr66.i, 3
  %60 = trunc i32 %and55.i to i16
  %div.lhs.trunc.i = mul nuw i16 %60, 1000
  %div.rhs.trunc.i = trunc i32 %or.i to i16
  %div147.i = udiv i16 %div.lhs.trunc.i, %div.rhs.trunc.i
  %div.zext.i = zext i16 %div147.i to i32
  %erase_timeout.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 23, i32 1
  %61 = ptrtoint ptr %erase_timeout.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %div.zext.i, ptr %erase_timeout.i, align 4
  %mul70.i = mul nuw nsw i32 %and68.i, 1000
  %erase_offset.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 23, i32 2
  %62 = ptrtoint ptr %erase_offset.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %mul70.i, ptr %erase_offset.i, align 8
  br label %if.end82.i

do.end75.i:                                       ; preds = %lor.lhs.false.i
  %63 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %card, align 8
  %init_name.i142.i = getelementptr inbounds %struct.mmc_host, ptr %64, i32 0, i32 1, i32 3
  %65 = ptrtoint ptr %init_name.i142.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %init_name.i142.i, align 8
  %tobool.not.i143.i = icmp eq ptr %66, null
  br i1 %tobool.not.i143.i, label %if.end.i144.i, label %do.end75.i.dev_name.exit146.i_crit_edge

do.end75.i.dev_name.exit146.i_crit_edge:          ; preds = %do.end75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit146.i

if.end.i144.i:                                    ; preds = %do.end75.i
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev78.i = getelementptr inbounds %struct.mmc_host, ptr %64, i32 0, i32 1
  %67 = ptrtoint ptr %class_dev78.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %class_dev78.i, align 4
  br label %dev_name.exit146.i

dev_name.exit146.i:                               ; preds = %if.end.i144.i, %do.end75.i.dev_name.exit146.i_crit_edge
  %retval.0.i145.i = phi ptr [ %68, %if.end.i144.i ], [ %66, %do.end75.i.dev_name.exit146.i_crit_edge ]
  %call80.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %retval.0.i145.i) #16
  br label %if.end82.i

if.end82.i:                                       ; preds = %dev_name.exit146.i, %if.then58.i, %if.then31.i.if.end82.i_crit_edge, %for.body.preheader.i.if.end82.i_crit_edge
  %sda_specx.i67 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 22, i32 3
  %69 = ptrtoint ptr %sda_specx.i67 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %sda_specx.i67, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool98.not.i = icmp eq i8 %70, 0
  br i1 %tobool98.not.i, label %if.end82.i.land.end.i_crit_edge, label %land.rhs.i

if.end82.i.land.end.i_crit_edge:                  ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.rhs.i:                                       ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx84.i = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 18, i32 6
  %71 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx84.i, align 4
  %shr92.i = lshr i32 %72, 25
  %conv95.i = and i32 %shr92.i, 1
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.end82.i.land.end.i_crit_edge
  %73 = phi i32 [ 0, %if.end82.i.land.end.i_crit_edge ], [ %conv95.i, %land.rhs.i ]
  %erase_arg.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 13
  %74 = ptrtoint ptr %erase_arg.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %erase_arg.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %land.end.i, %dev_name.exit141.i, %dev_name.exit.i63
  tail call void @mmc_init_erase(ptr noundef %card) #12
  %call11 = tail call fastcc i32 @mmc_read_switch(ptr noundef %card)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end15.thread, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %entry
  %caps = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %75 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %caps, align 32
  %and = and i32 %76, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end15.cleanup_crit_edge, label %if.end15.if.then17_crit_edge

if.end15.if.then17_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15.thread:                                  ; preds = %if.end10
  %caps79 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %77 = ptrtoint ptr %caps79 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %caps79, align 32
  %and80 = and i32 %78, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool16.not81 = icmp eq i32 %and80, 0
  br i1 %tobool16.not81, label %if.end15.thread.if.then25_crit_edge, label %if.end15.thread.if.then17_crit_edge

if.end15.thread.if.then17_crit_edge:              ; preds = %if.end15.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

if.end15.thread.if.then25_crit_edge:              ; preds = %if.end15.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25

if.then17:                                        ; preds = %if.end15.thread.if.then17_crit_edge, %if.end15.if.then17_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @use_spi_crc to i32))
  %79 = load i8, ptr @use_spi_crc, align 1, !range !256
  %80 = zext i8 %79 to i32
  %call19 = tail call i32 @mmc_spi_set_crc(ptr noundef %host, i32 noundef %80) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp ne i32 %call19, 0
  %brmerge = or i1 %tobool20.not, %reinit
  br i1 %brmerge, label %if.then17.cleanup_crit_edge, label %if.then17.if.then25_crit_edge

if.then17.if.then25_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then25:                                        ; preds = %if.then17.if.then25_crit_edge, %if.end15.thread.if.then25_crit_edge
  %caps2.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 17
  %81 = ptrtoint ptr %caps2.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %caps2.i, align 4
  %and.i = and i32 %82, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i69 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i69, label %if.end.i70, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i70:                                       ; preds = %if.then25
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 3
  %83 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ops.i, align 4
  %get_ro.i = getelementptr inbounds %struct.mmc_host_ops, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %get_ro.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %get_ro.i, align 4
  %tobool1.not.i = icmp eq ptr %86, null
  br i1 %tobool1.not.i, label %if.end.i70.do.end_crit_edge, label %mmc_sd_get_ro.exit

if.end.i70.do.end_crit_edge:                      ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

mmc_sd_get_ro.exit:                               ; preds = %if.end.i70
  %call.i = tail call i32 %86(ptr noundef %host) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %mmc_sd_get_ro.exit.do.end_crit_edge, label %if.else

mmc_sd_get_ro.exit.do.end_crit_edge:              ; preds = %mmc_sd_get_ro.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %mmc_sd_get_ro.exit.do.end_crit_edge, %if.end.i70.do.end_crit_edge
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %87 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i72 = icmp eq ptr %88, null
  br i1 %tobool.not.i72, label %if.end.i73, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i73:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %89 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i73, %do.end.dev_name.exit_crit_edge
  %retval.0.i74 = phi ptr [ %90, %if.end.i73 ], [ %88, %do.end.dev_name.exit_crit_edge ]
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %retval.0.i74) #16
  br label %cleanup

if.else:                                          ; preds = %mmc_sd_get_ro.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp31.not = icmp eq i32 %call.i, 0
  br i1 %cmp31.not, label %if.else.cleanup_crit_edge, label %if.then33

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %state = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 5
  %91 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %state, align 4
  %or = or i32 %92, 2
  store i32 %or, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.else.cleanup_crit_edge, %dev_name.exit, %if.then25.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.i64.cleanup_crit_edge, %dev_name.exit161.i, %dev_name.exit.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ %call19, %if.then17.cleanup_crit_edge ], [ 0, %dev_name.exit ], [ 0, %if.then33 ], [ 0, %if.else.cleanup_crit_edge ], [ -12, %if.end.i64.cleanup_crit_edge ], [ -22, %dev_name.exit.i ], [ -22, %dev_name.exit161.i ], [ 0, %if.then25.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_app_send_scr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_init_erase(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_read_switch(ptr noundef %card) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %scr = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 22
  %0 = ptrtoint ptr %scr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %scr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmdclass = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 2
  %2 = ptrtoint ptr %cmdclass to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cmdclass, align 2
  %4 = and i16 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %if.end.i ], [ %8, %do.end.dev_name.exit_crit_edge ]
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %retval.0.i) #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 64) #15
  %tobool7.not = icmp eq ptr %call7.i, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @mmc_sd_switch(ptr noundef %card, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull %call7.i) #12
  %12 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %call10, label %if.end9.out_crit_edge [
    i32 0, label %if.end30
    i32 -22, label %if.end9.do.end24_crit_edge
    i32 -38, label %if.end9.do.end24_crit_edge77
    i32 -14, label %if.end9.do.end24_crit_edge78
  ]

if.end9.do.end24_crit_edge78:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end24

if.end9.do.end24_crit_edge77:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end24

if.end9.do.end24_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end24

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end24:                                         ; preds = %if.end9.do.end24_crit_edge, %if.end9.do.end24_crit_edge77, %if.end9.do.end24_crit_edge78
  %13 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card, align 8
  %init_name.i72 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %init_name.i72 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i72, align 8
  %tobool.not.i73 = icmp eq ptr %16, null
  br i1 %tobool.not.i73, label %if.end.i74, label %do.end24.dev_name.exit76_crit_edge

do.end24.dev_name.exit76_crit_edge:               ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit76

if.end.i74:                                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev27 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %class_dev27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %class_dev27, align 4
  br label %dev_name.exit76

dev_name.exit76:                                  ; preds = %if.end.i74, %do.end24.dev_name.exit76_crit_edge
  %retval.0.i75 = phi ptr [ %18, %if.end.i74 ], [ %16, %do.end24.dev_name.exit76_crit_edge ]
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %retval.0.i75) #16
  br label %out

if.end30:                                         ; preds = %if.end9
  %arrayidx = getelementptr i8, ptr %call7.i, i32 13
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %21 = and i8 %20, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool33.not = icmp eq i8 %21, 0
  br i1 %tobool33.not, label %if.end30.if.end35_crit_edge, label %if.then34

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %sw_caps = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 24
  %22 = ptrtoint ptr %sw_caps to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 50000000, ptr %sw_caps, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end30.if.end35_crit_edge
  %sda_spec3 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 22, i32 1
  %23 = ptrtoint ptr %sda_spec3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sda_spec3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool37.not = icmp eq i8 %24, 0
  br i1 %tobool37.not, label %if.end35.out_crit_edge, label %if.then38

if.end35.out_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %conv40 = zext i8 %20 to i32
  %sd3_bus_mode = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 24, i32 2
  %25 = ptrtoint ptr %sd3_bus_mode to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv40, ptr %sd3_bus_mode, align 4
  %arrayidx42 = getelementptr i8, ptr %call7.i, i32 9
  %26 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %27 to i32
  %sd3_drv_type = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 24, i32 3
  %28 = ptrtoint ptr %sd3_drv_type to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv43, ptr %sd3_drv_type, align 4
  %arrayidx45 = getelementptr i8, ptr %call7.i, i32 7
  %29 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %30 to i32
  %arrayidx47 = getelementptr i8, ptr %call7.i, i32 6
  %31 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx47, align 2
  %conv48 = zext i8 %32 to i32
  %shl = shl nuw nsw i32 %conv48, 8
  %or = or i32 %shl, %conv46
  %sd3_curr_limit = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 24, i32 4
  %33 = ptrtoint ptr %sd3_curr_limit to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or, ptr %sd3_curr_limit, align 4
  br label %out

out:                                              ; preds = %if.then38, %if.end35.out_crit_edge, %dev_name.exit76, %if.end9.out_crit_edge
  %err.0 = phi i32 [ 0, %dev_name.exit76 ], [ 0, %if.then38 ], [ 0, %if.end35.out_crit_edge ], [ %call10, %if.end9.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end5.cleanup_crit_edge, %dev_name.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %dev_name.exit ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_spi_set_crc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mmc_sd_get_max_clock(ptr nocapture noundef readonly %card) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  %timing.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 7
  %2 = ptrtoint ptr %timing.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %timing.i, align 4
  %4 = add i8 %3, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %4)
  %5 = icmp ult i8 %4, -2
  %sw_caps = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 24
  %max_dtr4 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 7
  %max_dtr.0.in = select i1 %5, ptr %max_dtr4, ptr %sw_caps
  %6 = ptrtoint ptr %max_dtr.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %max_dtr.0 = load i32, ptr %max_dtr.0.in, align 4
  ret i32 %max_dtr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_attach_sd(ptr noundef %host) local_unnamed_addr #2 align 64 {
entry:
  %ocr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ocr) #12
  %0 = ptrtoint ptr %ocr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ocr, align 4, !annotation !257
  %claimed = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 29
  %1 = ptrtoint ptr %claimed to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %claimed, align 8
  %2 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !258

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1816, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call = call i32 @mmc_send_app_op_cond(ptr noundef %host, i32 noundef 0, ptr noundef nonnull %ocr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool21.not = icmp eq i32 %call, 0
  br i1 %tobool21.not, label %if.end23, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %if.end
  call void @mmc_attach_bus(ptr noundef %host, ptr noundef nonnull @mmc_sd_ops) #12
  %ocr_avail_sd = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 10
  %3 = ptrtoint ptr %ocr_avail_sd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ocr_avail_sd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool24.not = icmp eq i32 %4, 0
  br i1 %tobool24.not, label %if.end23.if.end27_crit_edge, label %if.then25

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %ocr_avail = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 8
  %5 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ocr_avail, align 64
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end23.if.end27_crit_edge
  %caps = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %6 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %caps, align 32
  %and = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.end27.if.end35_crit_edge, label %if.then29

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then29:                                        ; preds = %if.end27
  %call30 = call i32 @mmc_go_idle(ptr noundef %host) #12
  %call31 = call i32 @mmc_spi_read_ocr(ptr noundef %host, i32 noundef 0, ptr noundef nonnull %ocr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then29.if.end35_crit_edge, label %if.then29.err51_crit_edge

if.then29.err51_crit_edge:                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %err51

if.then29.if.end35_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.end35:                                         ; preds = %if.then29.if.end35_crit_edge, %if.end27.if.end35_crit_edge
  %8 = ptrtoint ptr %ocr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ocr, align 4
  %and36 = and i32 %9, -32768
  store i32 %and36, ptr %ocr, align 4
  %call37 = call i32 @mmc_select_voltage(ptr noundef %host, i32 noundef %and36) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end35.err51_crit_edge, label %if.end40

if.end35.err51_crit_edge:                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %err51

if.end40:                                         ; preds = %if.end35
  %call41 = call fastcc i32 @mmc_sd_init_card(ptr noundef %host, i32 noundef %call37, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end40.err51_crit_edge

if.end40.err51_crit_edge:                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %err51

if.end44:                                         ; preds = %if.end40
  call void @mmc_release_host(ptr noundef %host) #12
  %card = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %call45 = call i32 @mmc_add_card(ptr noundef %11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %remove_card

if.end48:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = call i32 @__mmc_claim_host(ptr noundef %host, ptr noundef null, ptr noundef null) #12
  br label %cleanup

remove_card:                                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  call void @mmc_remove_card(ptr noundef %13) #12
  %14 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %card, align 4
  %call.i86 = call i32 @__mmc_claim_host(ptr noundef %host, ptr noundef null, ptr noundef null) #12
  br label %err51

err51:                                            ; preds = %remove_card, %if.end40.err51_crit_edge, %if.end35.err51_crit_edge, %if.then29.err51_crit_edge
  %err.0 = phi i32 [ %call31, %if.then29.err51_crit_edge ], [ %call41, %if.end40.err51_crit_edge ], [ %call45, %remove_card ], [ -22, %if.end35.err51_crit_edge ]
  call void @mmc_detach_bus(ptr noundef %host) #12
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %err51.dev_name.exit_crit_edge

err51.dev_name.exit_crit_edge:                    ; preds = %err51
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %err51
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %17 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %err51.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %18, %if.end.i ], [ %16, %err51.dev_name.exit_crit_edge ]
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %retval.0.i, i32 noundef %err.0) #16
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %if.end48, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %dev_name.exit ], [ 0, %if.end48 ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ocr) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_attach_bus(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_spi_read_ocr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_select_voltage(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_sd_init_card(ptr noundef %host, i32 noundef %ocr, ptr noundef %oldcard) unnamed_addr #2 align 64 {
entry:
  %cid = alloca [4 x i32], align 4
  %rocr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cid) #12
  %0 = call ptr @memset(ptr %cid, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rocr) #12
  %1 = ptrtoint ptr %rocr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %rocr, align 4
  %claimed = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 29
  %2 = ptrtoint ptr %claimed to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %claimed, align 8
  %3 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !258

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1399, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call398 = call i32 @mmc_sd_get_cid(ptr noundef %host, i32 noundef %ocr, ptr noundef nonnull %cid, ptr noundef nonnull %rocr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call398)
  %tobool21.not399 = icmp eq i32 %call398, 0
  br i1 %tobool21.not399, label %if.end23.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23.lr.ph:                                   ; preds = %if.end
  %tobool24 = icmp ne ptr %oldcard, null
  %raw_cid = getelementptr inbounds %struct.mmc_card, ptr %oldcard, i32 0, i32 15
  %ops = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 3
  %caps = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %dsr_req = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 60
  %signal_voltage = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 8
  br label %if.end23

if.end23:                                         ; preds = %if.end128.if.end23_crit_edge, %if.end23.lr.ph
  %v18_fixup_failed.0.off0400 = phi i1 [ false, %if.end23.lr.ph ], [ true, %if.end128.if.end23_crit_edge ]
  br i1 %tobool24, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end23
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %cid, ptr noundef dereferenceable(16) %raw_cid, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp.not = icmp eq i32 %bcmp, 0
  br i1 %cmp.not, label %if.then25.if.end55_crit_edge, label %do.body30

if.then25.if.end55_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

do.body30:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_sd_init_card.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_sd_init_card, %if.then40)) #12
          to label %cleanup [label %if.then40], !srcloc !259

if.then40:                                        ; preds = %do.body30
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then40.dev_name.exit_crit_edge

if.then40.dev_name.exit_crit_edge:                ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %6 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then40.dev_name.exit_crit_edge
  %retval.0.i313 = phi ptr [ %7, %if.end.i ], [ %5, %if.then40.dev_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_sd_init_card.__UNIQUE_ID_ddebug268, ptr noundef nonnull @.str.78, ptr noundef %retval.0.i313) #12
  br label %cleanup

if.else:                                          ; preds = %if.end23
  %call46 = call ptr @mmc_alloc_card(ptr noundef %host, ptr noundef nonnull @sd_type) #12
  %cmp.i = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %call46 to i32
  br label %cleanup

if.end50:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %ocr51 = getelementptr inbounds %struct.mmc_card, ptr %call46, i32 0, i32 2
  %9 = ptrtoint ptr %ocr51 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %ocr, ptr %ocr51, align 8
  %type = getelementptr inbounds %struct.mmc_card, ptr %call46, i32 0, i32 4
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %type, align 8
  %raw_cid52 = getelementptr inbounds %struct.mmc_card, ptr %call46, i32 0, i32 15
  %11 = call ptr @memcpy(ptr %raw_cid52, ptr %cid, i32 16)
  br label %if.end55

if.end55:                                         ; preds = %if.end50, %if.then25.if.end55_crit_edge
  %card.0 = phi ptr [ %call46, %if.end50 ], [ %oldcard, %if.then25.if.end55_crit_edge ]
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %init_card = getelementptr inbounds %struct.mmc_host_ops, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %init_card to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_card, align 4
  %tobool56.not = icmp eq ptr %15, null
  br i1 %tobool56.not, label %if.end55.if.end60_crit_edge, label %if.then57

if.end55.if.end60_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.then57:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  call void %15(ptr noundef %host, ptr noundef %card.0) #12
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.end55.if.end60_crit_edge
  %16 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %caps, align 32
  %and = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool61.not = icmp eq i32 %and, 0
  br i1 %tobool61.not, label %if.then62, label %if.end60.if.end67_crit_edge

if.end60.if.end67_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.then62:                                        ; preds = %if.end60
  %rca = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 3
  %call63 = call i32 @mmc_send_relative_addr(ptr noundef %host, ptr noundef %rca) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then62.if.end67_crit_edge, label %if.then62.free_card_crit_edge

if.then62.free_card_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_card

if.then62.if.end67_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.end67:                                         ; preds = %if.then62.if.end67_crit_edge, %if.end60.if.end67_crit_edge
  br i1 %tobool24, label %if.end67.if.end74_crit_edge, label %if.then69

if.end67.if.end74_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.then69:                                        ; preds = %if.end67
  %call70 = call i32 @mmc_sd_get_csd(ptr noundef %card.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.then69.if.then221_crit_edge

if.then69.if.then221_crit_edge:                   ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then221

if.end73:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #14
  %raw_cid.i = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 15
  %18 = ptrtoint ptr %raw_cid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %raw_cid.i, align 4
  %shr.i = lshr i32 %19, 24
  %cid.i = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 19
  %20 = ptrtoint ptr %cid.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr.i, ptr %cid.i, align 4
  %shr7.i = lshr i32 %19, 8
  %conv.i = trunc i32 %shr7.i to i16
  %oemid.i = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 19, i32 4
  %21 = ptrtoint ptr %oemid.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i, ptr %oemid.i, align 4
  %conv20.i = trunc i32 %19 to i8
  %prod_name.i = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 19, i32 1
  %22 = ptrtoint ptr %prod_name.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv20.i, ptr %prod_name.i, align 4
  %arrayidx28.i = getelementptr %struct.mmc_card, ptr %card.0, i32 0, i32 15, i32 1
  %23 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx28.i, align 4
  %shr29.i = lshr i32 %24, 24
  %conv32.i = trunc i32 %shr29.i to i8
  %arrayidx35.i = getelementptr %struct.mmc_card, ptr %card.0, i32 0, i32 19, i32 1, i32 1
  %25 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv32.i, ptr %arrayidx35.i, align 1
  %shr42.i = lshr i32 %24, 16
  %conv45.i = trunc i32 %shr42.i to i8
  %arrayidx48.i = getelementptr %struct.mmc_card, ptr %card.0, i32 0, i32 19, i32 1, i32 2
  %26 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv45.i, ptr %arrayidx48.i, align 2
  %shr55.i = lshr i32 %24, 8
  %conv58.i = trunc i32 %shr55.i to i8
  %arrayidx61.i = getelementptr %struct.mmc_card, ptr %card.0, i32 0, i32 19, i32 1, i32 3
  %27 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv58.i, ptr %arrayidx61.i, align 1
  %conv71.i = trunc i32 %24 to i8
  %arrayidx74.i = getelementptr %struct.mmc_card, ptr %card.0, i32 0, i32 19, i32 1, i32 4
  %28 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv71.i, ptr %arrayidx74.i, align 4
  %arrayidx80.i = getelementptr %struct.mmc_card, ptr %card.0, i32 0, i32 15, i32 2
  %29 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx80.i, align 4
  %shr81.i = lshr i32 %30, 28
  %conv84.i = trunc i32 %shr81.i to i8
  %hwrev.i = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 19, i32 6
  %31 = ptrtoint ptr %hwrev.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv84.i, ptr %hwrev.i, align 4
  %shr92.i = lshr i32 %30, 24
  %32 = trunc i32 %shr92.i to i8
  %conv95.i = and i8 %32, 15
  %fwrev.i = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 19, i32 7
  %33 = ptrtoint ptr %fwrev.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv95.i, ptr %fwrev.i, align 1
  %arrayidx102.i = getelementptr %struct.mmc_card, ptr %card.0, i32 0, i32 15, i32 3
  %34 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx102.i, align 4
  %or.i = call i32 @llvm.fshl.i32(i32 %30, i32 %35, i32 8) #12
  %serial.i = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 19, i32 3
  %36 = ptrtoint ptr %serial.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or.i, ptr %serial.i, align 4
  %shr114.i = lshr i32 %35, 12
  %37 = trunc i32 %shr114.i to i16
  %conv117.i = and i16 %37, 255
  %year.i = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 19, i32 5
  %shr125.i = lshr i32 %35, 8
  %38 = trunc i32 %shr125.i to i8
  %conv128.i = and i8 %38, 15
  %month.i = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 19, i32 8
  %39 = ptrtoint ptr %month.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv128.i, ptr %month.i, align 2
  %add.i = add nuw nsw i16 %conv117.i, 2000
  %40 = ptrtoint ptr %year.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %add.i, ptr %year.i, align 2
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.end67.if.end74_crit_edge
  %dsr_imp = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 20, i32 12
  %41 = ptrtoint ptr %dsr_imp to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load75 = load i8, ptr %dsr_imp, align 8
  %42 = and i8 %bf.load75, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool79.not = icmp eq i8 %42, 0
  br i1 %tobool79.not, label %if.end74.if.end83_crit_edge, label %land.lhs.true

if.end74.if.end83_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

land.lhs.true:                                    ; preds = %if.end74
  %43 = ptrtoint ptr %dsr_req to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dsr_req, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool80.not = icmp eq i32 %44, 0
  br i1 %tobool80.not, label %land.lhs.true.if.end83_crit_edge, label %if.then81

land.lhs.true.if.end83_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.then81:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call82 = call i32 @mmc_set_dsr(ptr noundef %host) #12
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %land.lhs.true.if.end83_crit_edge, %if.end74.if.end83_crit_edge
  %45 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %caps, align 32
  %and85 = and i32 %46, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.then87, label %if.end83.if.end92_crit_edge

if.end83.if.end92_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end92

if.then87:                                        ; preds = %if.end83
  %call88 = call i32 @mmc_select_card(ptr noundef %card.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.then87.if.end92_crit_edge, label %if.then87.free_card_crit_edge

if.then87.free_card_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_card

if.then87.if.end92_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end92

if.end92:                                         ; preds = %if.then87.if.end92_crit_edge, %if.end83.if.end92_crit_edge
  %call94 = call i32 @mmc_sd_setup_card(ptr noundef %host, ptr noundef %card.0, i1 noundef zeroext %tobool24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.end92.free_card_crit_edge

if.end92.free_card_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_card

if.end97:                                         ; preds = %if.end92
  br i1 %v18_fixup_failed.0.off0400, label %if.end97.if.end131_crit_edge, label %land.lhs.true99

if.end97.if.end131_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end131

land.lhs.true99:                                  ; preds = %if.end97
  %47 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %caps, align 32
  %and101 = and i32 %48, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %land.lhs.true103, label %land.lhs.true99.if.end131_crit_edge

land.lhs.true99.if.end131_crit_edge:              ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end131

land.lhs.true103:                                 ; preds = %land.lhs.true99
  %and.i = and i32 %48, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i314 = icmp eq i32 %and.i, 0
  %and2.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool105.not374 = icmp eq i32 %and2.i, 0
  %tobool105.not = or i1 %tobool.not.i314, %tobool105.not374
  br i1 %tobool105.not, label %land.lhs.true103.if.end131_crit_edge, label %land.lhs.true106

land.lhs.true103.if.end131_crit_edge:             ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end131

land.lhs.true106:                                 ; preds = %land.lhs.true103
  %sd3_bus_mode.i = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 24, i32 2
  %49 = ptrtoint ptr %sd3_bus_mode.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sd3_bus_mode.i, align 4
  %and.i315 = and i32 %50, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i315)
  %tobool.i.not = icmp eq i32 %and.i315, 0
  br i1 %tobool.i.not, label %land.lhs.true106.if.end131_crit_edge, label %land.lhs.true108

land.lhs.true106.if.end131_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end131

land.lhs.true108:                                 ; preds = %land.lhs.true106
  %51 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %signal_voltage, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %52)
  %cmp109.not = icmp eq i8 %52, 1
  br i1 %cmp109.not, label %land.lhs.true108.if.end131_crit_edge, label %if.then111

land.lhs.true108.if.end131_crit_edge:             ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end131

if.then111:                                       ; preds = %land.lhs.true108
  br i1 %tobool24, label %if.then113, label %if.then111.if.end118_crit_edge

if.then111.if.end118_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

if.then113:                                       ; preds = %if.then111
  %call114 = call fastcc i32 @mmc_read_switch(ptr noundef %card.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.then113.if.end118_crit_edge, label %if.then113.cleanup_crit_edge

if.then113.cleanup_crit_edge:                     ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then113.if.end118_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

if.end118:                                        ; preds = %if.then113.if.end118_crit_edge, %if.then111.if.end118_crit_edge
  %53 = ptrtoint ptr %sd3_bus_mode.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sd3_bus_mode.i, align 4
  %and.i317 = and i32 %54, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i317)
  %tobool.i318.not = icmp eq i32 %and.i317, 0
  br i1 %tobool.i318.not, label %if.end118.if.end131_crit_edge, label %if.then120

if.end118.if.end131_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end131

if.then120:                                       ; preds = %if.end118
  %call121 = call i32 @mmc_host_set_uhs_voltage(ptr noundef %host) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %lor.lhs.false, label %if.then120.if.then125_crit_edge

if.then120.if.then125_crit_edge:                  ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then125

lor.lhs.false:                                    ; preds = %if.then120
  %call123 = call fastcc i32 @mmc_sd_init_uhs_card(ptr noundef %card.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %lor.lhs.false.done_crit_edge, label %lor.lhs.false.if.then125_crit_edge

lor.lhs.false.if.then125_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then125

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.then125:                                       ; preds = %lor.lhs.false.if.then125_crit_edge, %if.then120.if.then125_crit_edge
  call void @mmc_power_cycle(ptr noundef %host, i32 noundef %ocr) #12
  br i1 %tobool24, label %if.then125.if.end128_crit_edge, label %if.then127

if.then125.if.end128_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end128

if.then127:                                       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #14
  call void @mmc_remove_card(ptr noundef %card.0) #12
  br label %if.end128

if.end128:                                        ; preds = %if.then127, %if.then125.if.end128_crit_edge
  %call = call i32 @mmc_sd_get_cid(ptr noundef %host, i32 noundef %ocr, ptr noundef nonnull %cid, ptr noundef nonnull %rocr)
  %tobool21.not = icmp eq i32 %call, 0
  br i1 %tobool21.not, label %if.end128.if.end23_crit_edge, label %if.end128.cleanup_crit_edge

if.end128.cleanup_crit_edge:                      ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end128.if.end23_crit_edge:                     ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.end131:                                        ; preds = %if.end118.if.end131_crit_edge, %land.lhs.true108.if.end131_crit_edge, %land.lhs.true106.if.end131_crit_edge, %land.lhs.true103.if.end131_crit_edge, %land.lhs.true99.if.end131_crit_edge, %if.end97.if.end131_crit_edge
  %55 = ptrtoint ptr %rocr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rocr, align 4
  %and132 = and i32 %56, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %if.end131.if.else142_crit_edge, label %land.lhs.true134

if.end131.if.else142_crit_edge:                   ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else142

land.lhs.true134:                                 ; preds = %if.end131
  %57 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %caps, align 32
  %and.i320 = and i32 %58, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i320)
  %tobool.not.i321 = icmp eq i32 %and.i320, 0
  %and2.i322 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i322)
  %tobool136.not373 = icmp eq i32 %and2.i322, 0
  %tobool136.not = or i1 %tobool.not.i321, %tobool136.not373
  br i1 %tobool136.not, label %land.lhs.true134.if.else142_crit_edge, label %if.then137

land.lhs.true134.if.else142_crit_edge:            ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else142

if.then137:                                       ; preds = %land.lhs.true134
  %call138 = call fastcc i32 @mmc_sd_init_uhs_card(ptr noundef %card.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.then137.if.end167_crit_edge, label %if.then137.free_card_crit_edge

if.then137.free_card_crit_edge:                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_card

if.then137.if.end167_crit_edge:                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end167

if.else142:                                       ; preds = %land.lhs.true134.if.else142_crit_edge, %if.end131.if.else142_crit_edge
  %call143 = call i32 @mmc_sd_switch_hs(ptr noundef %card.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %cmp144 = icmp sgt i32 %call143, 0
  br i1 %cmp144, label %if.then146, label %if.else148

if.then146:                                       ; preds = %if.else142
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %card.0 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %card.0, align 8
  call void @mmc_set_timing(ptr noundef %60, i32 noundef 2) #12
  br label %if.end152

if.else148:                                       ; preds = %if.else142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool149.not = icmp eq i32 %call143, 0
  br i1 %tobool149.not, label %if.else148.if.end152_crit_edge, label %if.else148.free_card_crit_edge

if.else148.free_card_crit_edge:                   ; preds = %if.else148
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_card

if.else148.if.end152_crit_edge:                   ; preds = %if.else148
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152

if.end152:                                        ; preds = %if.else148.if.end152_crit_edge, %if.then146
  %61 = ptrtoint ptr %card.0 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %card.0, align 8
  %timing.i.i = getelementptr inbounds %struct.mmc_host, ptr %62, i32 0, i32 28, i32 7
  %63 = ptrtoint ptr %timing.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %timing.i.i, align 4
  %65 = add i8 %64, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %65)
  %66 = icmp ult i8 %65, -2
  %sw_caps.i = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 24
  %max_dtr4.i = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 20, i32 7
  %max_dtr.0.in.i = select i1 %66, ptr %max_dtr4.i, ptr %sw_caps.i
  %67 = ptrtoint ptr %max_dtr.0.in.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %max_dtr.0.i = load i32, ptr %max_dtr.0.in.i, align 4
  call void @mmc_set_clock(ptr noundef %host, i32 noundef %max_dtr.0.i) #12
  %68 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %caps, align 32
  %and155 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %if.end152.if.end167_crit_edge, label %land.lhs.true157

if.end152.if.end167_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end167

land.lhs.true157:                                 ; preds = %if.end152
  %bus_widths = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 22, i32 4
  %70 = ptrtoint ptr %bus_widths to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %bus_widths, align 4
  %72 = and i8 %71, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool160.not = icmp eq i8 %72, 0
  br i1 %tobool160.not, label %land.lhs.true157.if.end167_crit_edge, label %if.then161

land.lhs.true157.if.end167_crit_edge:             ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end167

if.then161:                                       ; preds = %land.lhs.true157
  %call162 = call i32 @mmc_app_set_bus_width(ptr noundef %card.0, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %if.end165, label %if.then161.free_card_crit_edge

if.then161.free_card_crit_edge:                   ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_card

if.end165:                                        ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #14
  call void @mmc_set_bus_width(ptr noundef %host, i32 noundef 2) #12
  br label %if.end167

if.end167:                                        ; preds = %if.end165, %land.lhs.true157.if.end167_crit_edge, %if.end152.if.end167_crit_edge, %if.then137.if.end167_crit_edge
  br i1 %tobool24, label %if.end167.if.end174_crit_edge, label %if.then169

if.end167.if.end174_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end174

if.then169:                                       ; preds = %if.end167
  %73 = ptrtoint ptr %card.0 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %card.0, align 8
  %caps.i324 = getelementptr inbounds %struct.mmc_host, ptr %74, i32 0, i32 16
  %75 = ptrtoint ptr %caps.i324 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %caps.i324, align 32
  %and.i325 = and i32 %76, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i325)
  %tobool.not.i326 = icmp eq i32 %and.i325, 0
  br i1 %tobool.not.i326, label %if.end.i327, label %if.then169.if.end174_crit_edge

if.then169.if.end174_crit_edge:                   ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end174

if.end.i327:                                      ; preds = %if.then169
  %cmds.i = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 22, i32 5
  %77 = ptrtoint ptr %cmds.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %cmds.i, align 1
  %79 = and i8 %78, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool2.not.i = icmp eq i8 %79, 0
  br i1 %tobool2.not.i, label %if.end.i327.if.end174_crit_edge, label %if.end4.i

if.end.i327.if.end174_crit_edge:                  ; preds = %if.end.i327
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end174

if.end4.i:                                        ; preds = %if.end.i327
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %80 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %80, i32 noundef 3520, i32 noundef 512) #15
  %tobool5.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool5.not.i, label %if.end4.i.if.then221_crit_edge, label %if.end7.i

if.end4.i.if.then221_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then221

if.end7.i:                                        ; preds = %if.end4.i
  %81 = ptrtoint ptr %card.0 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %card.0, align 8
  %call.i.i = call i32 @mmc_send_adtc_data(ptr noundef %card.0, ptr noundef %82, i32 noundef 48, i32 noundef 511, ptr noundef nonnull %call7.i.i.i, i32 noundef 512) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool9.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool9.not.i, label %if.end14.i, label %do.end.i

do.end.i:                                         ; preds = %if.end7.i
  %83 = ptrtoint ptr %card.0 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %card.0, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %84, i32 0, i32 1, i32 3
  %85 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %86, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %84, i32 0, i32 1
  %87 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %88, %if.end.i.i ], [ %86, %do.end.i.dev_name.exit.i_crit_edge ]
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %retval.0.i.i, i32 noundef %call.i.i) #16
  br label %sd_read_ext_regs.exit

if.end14.i:                                       ; preds = %if.end7.i
  %89 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %rev.0.copyload.i = load i16, ptr %call7.i.i.i, align 8
  %arrayidx16.i = getelementptr i8, ptr %call7.i.i.i, i32 4
  %90 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rev.0.copyload.i)
  %cmp.not.i = icmp eq i16 %rev.0.copyload.i, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end14.i.do.end25.i_crit_edge

if.end14.i.do.end25.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25.i

lor.lhs.false.i:                                  ; preds = %if.end14.i
  %arrayidx15.i = getelementptr i8, ptr %call7.i.i.i, i32 2
  %92 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %len.0.copyload.i = load i16, ptr %arrayidx15.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %len.0.copyload.i)
  %cmp20.i = icmp ugt i16 %len.0.copyload.i, 512
  br i1 %cmp20.i, label %lor.lhs.false.i.do.end25.i_crit_edge, label %for.cond.preheader.i

lor.lhs.false.i.do.end25.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25.i

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %conv32.i328 = zext i8 %91 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %cmp3397.not.i = icmp eq i8 %91, 0
  br i1 %cmp3397.not.i, label %for.cond.preheader.i.sd_read_ext_regs.exit.thread361_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.sd_read_ext_regs.exit.thread361_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sd_read_ext_regs.exit.thread361

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %ext_perf.i.i.i = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 26
  %rev.i76.i.i = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 26, i32 3
  %feature_support.i78.i.i = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 26, i32 5
  %page61.i.i.i = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 26, i32 1
  %offset63.i.i.i = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 26, i32 2
  %ext_power.i.i.i = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 25
  %rev.i.i.i = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 25, i32 3
  %feature_support.i.i.i = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 25, i32 5
  %page42.i.i.i = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 25, i32 1
  %offset44.i.i.i = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 25, i32 2
  br label %for.body.i

do.end25.i:                                       ; preds = %lor.lhs.false.i.do.end25.i_crit_edge, %if.end14.i.do.end25.i_crit_edge
  %93 = ptrtoint ptr %card.0 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %card.0, align 8
  %init_name.i70.i = getelementptr inbounds %struct.mmc_host, ptr %94, i32 0, i32 1, i32 3
  %95 = ptrtoint ptr %init_name.i70.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %init_name.i70.i, align 8
  %tobool.not.i71.i = icmp eq ptr %96, null
  br i1 %tobool.not.i71.i, label %if.end.i72.i, label %do.end25.i.dev_name.exit74.i_crit_edge

do.end25.i.dev_name.exit74.i_crit_edge:           ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit74.i

if.end.i72.i:                                     ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev28.i = getelementptr inbounds %struct.mmc_host, ptr %94, i32 0, i32 1
  %97 = ptrtoint ptr %class_dev28.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %class_dev28.i, align 4
  br label %dev_name.exit74.i

dev_name.exit74.i:                                ; preds = %if.end.i72.i, %do.end25.i.dev_name.exit74.i_crit_edge
  %retval.0.i73.i = phi ptr [ %98, %if.end.i72.i ], [ %96, %do.end25.i.dev_name.exit74.i_crit_edge ]
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %retval.0.i73.i) #16
  br label %sd_read_ext_regs.exit.thread361

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.099.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %next_ext_addr.098.i = phi i16 [ 16, %for.body.lr.ph.i ], [ %100, %for.inc.i.for.body.i_crit_edge ]
  %conv.i.i = zext i16 %next_ext_addr.098.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 464, i16 %next_ext_addr.098.i)
  %cmp.i.i = icmp ugt i16 %next_ext_addr.098.i, 464
  br i1 %cmp.i.i, label %for.body.i.do.end40.i_crit_edge, label %if.end.i75.i

for.body.i.do.end40.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end40.i

if.end.i75.i:                                     ; preds = %for.body.i
  %add3.i.i = add nuw nsw i32 %conv.i.i, 40
  %arrayidx4.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add3.i.i
  %99 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 2)
  %100 = load i16, ptr %arrayidx4.i.i, align 1
  %add6.i.i = add nuw nsw i32 %conv.i.i, 42
  %arrayidx7.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add6.i.i
  %101 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %102)
  %cmp9.not.i.i = icmp eq i8 %102, 1
  br i1 %cmp9.not.i.i, label %if.end12.i.i, label %if.end.i75.i.for.inc.i_crit_edge

if.end.i75.i.for.inc.i_crit_edge:                 ; preds = %if.end.i75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end12.i.i:                                     ; preds = %if.end.i75.i
  %arrayidx.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %conv.i.i
  %103 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 2)
  %sfc.0.copyload.i.i = load i16, ptr %arrayidx.i.i, align 1
  %add14.i.i = add nuw nsw i32 %conv.i.i, 44
  %arrayidx15.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add14.i.i
  %104 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %reg_addr.0.copyload.i.i = load i32, ptr %arrayidx15.i.i, align 1
  %105 = trunc i32 %reg_addr.0.copyload.i.i to i16
  %conv16.i.i = and i16 %105, 511
  %shr.i.i = lshr i32 %reg_addr.0.copyload.i.i, 9
  %conv18.i.i = trunc i32 %shr.i.i to i8
  %shr19.i.i = lshr i32 %reg_addr.0.copyload.i.i, 18
  %106 = trunc i32 %shr19.i.i to i8
  %conv21.i.i = and i8 %106, 15
  %107 = zext i16 %sfc.0.copyload.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.108)
  switch i16 %sfc.0.copyload.i.i, label %if.end12.i.i.for.inc.i_crit_edge [
    i16 1, label %if.then25.i.i
    i16 2, label %if.then30.i.i
  ]

if.end12.i.i.for.inc.i_crit_edge:                 ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then25.i.i:                                    ; preds = %if.end12.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %108 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %108, i32 noundef 3520, i32 noundef 512) #15
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then25.i.i.do.end40.i_crit_edge, label %if.end.i.i.i

if.then25.i.i.do.end40.i_crit_edge:               ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end40.i

if.end.i.i.i:                                     ; preds = %if.then25.i.i
  %conv.i.i.i.i = zext i8 %conv21.i.i to i32
  %shl.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i, 27
  %conv1.i.i.i.i = shl i32 %shr.i.i, 18
  %shl2.i.i.i.i = and i32 %conv1.i.i.i.i, 66846720
  %or.i.i.i.i = or i32 %shl.i.i.i.i, %shl2.i.i.i.i
  %conv3.i.i.i.i = zext i16 %conv16.i.i to i32
  %shl4.i.i.i.i = shl nuw nsw i32 %conv3.i.i.i.i, 9
  %or5.i.i.i.i = or i32 %or.i.i.i.i, %shl4.i.i.i.i
  %or7.i.i.i.i = or i32 %or5.i.i.i.i, 511
  %109 = ptrtoint ptr %card.0 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %card.0, align 8
  %call.i.i.i.i = call i32 @mmc_send_adtc_data(ptr noundef %card.0, ptr noundef %110, i32 noundef 48, i32 noundef %or7.i.i.i.i, ptr noundef nonnull %call7.i.i.i.i.i, i32 noundef 512) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end6.i.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  %111 = ptrtoint ptr %card.0 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %card.0, align 8
  %init_name.i.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %112, i32 0, i32 1, i32 3
  %113 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %114, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %do.end.i.i.i.dev_name.exit.i.i.i_crit_edge

do.end.i.i.i.dev_name.exit.i.i.i_crit_edge:       ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %112, i32 0, i32 1
  %115 = ptrtoint ptr %class_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %class_dev.i.i.i, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %do.end.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %116, %if.end.i.i.i.i ], [ %114, %do.end.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  %call5.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %retval.0.i.i.i.i, i32 noundef %call.i.i.i.i) #16
  br label %sd_parse_ext_reg.exit.i

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  %117 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %call7.i.i.i.i.i, align 8
  %119 = and i8 %118, 15
  %120 = ptrtoint ptr %rev.i.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %rev.i.i.i, align 4
  %arrayidx8.i.i.i = getelementptr i8, ptr %call7.i.i.i.i.i, i32 1
  %121 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx8.i.i.i, align 1
  %123 = and i8 %122, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool11.not.i.i.i = icmp eq i8 %123, 0
  br i1 %tobool11.not.i.i.i, label %if.end6.i.i.i.if.end16.i.i.i_crit_edge, label %if.then12.i.i.i

if.end6.i.i.i.if.end16.i.i.i_crit_edge:           ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i.i.i

if.then12.i.i.i:                                  ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %124 = ptrtoint ptr %feature_support.i.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %feature_support.i.i.i, align 2
  %126 = or i8 %125, 1
  store i8 %126, ptr %feature_support.i.i.i, align 2
  br label %if.end16.i.i.i

if.end16.i.i.i:                                   ; preds = %if.then12.i.i.i, %if.end6.i.i.i.if.end16.i.i.i_crit_edge
  %127 = and i8 %122, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool20.not.i.i.i = icmp eq i8 %127, 0
  br i1 %tobool20.not.i.i.i, label %if.end16.i.i.i.if.end27.i.i.i_crit_edge, label %if.then21.i.i.i

if.end16.i.i.i.if.end27.i.i.i_crit_edge:          ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i.i.i

if.then21.i.i.i:                                  ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %128 = ptrtoint ptr %feature_support.i.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %feature_support.i.i.i, align 2
  %130 = or i8 %129, 2
  store i8 %130, ptr %feature_support.i.i.i, align 2
  br label %if.end27.i.i.i

if.end27.i.i.i:                                   ; preds = %if.then21.i.i.i, %if.end16.i.i.i.if.end27.i.i.i_crit_edge
  %131 = and i8 %122, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool31.not.i.i.i = icmp eq i8 %131, 0
  br i1 %tobool31.not.i.i.i, label %if.end27.i.i.i.sd_parse_ext_reg.exit.thread93.i_crit_edge, label %if.end27.i.i.i.sd_parse_ext_reg.exit.thread93.sink.split.i_crit_edge

if.end27.i.i.i.sd_parse_ext_reg.exit.thread93.sink.split.i_crit_edge: ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sd_parse_ext_reg.exit.thread93.sink.split.i

if.end27.i.i.i.sd_parse_ext_reg.exit.thread93.i_crit_edge: ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sd_parse_ext_reg.exit.thread93.i

if.then30.i.i:                                    ; preds = %if.end12.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %132 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i54.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %132, i32 noundef 3520, i32 noundef 512) #15
  %tobool.not.i55.i.i = icmp eq ptr %call7.i.i.i54.i.i, null
  br i1 %tobool.not.i55.i.i, label %if.then30.i.i.do.end40.i_crit_edge, label %if.end.i67.i.i

if.then30.i.i.do.end40.i_crit_edge:               ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end40.i

if.end.i67.i.i:                                   ; preds = %if.then30.i.i
  %conv.i.i56.i.i = zext i8 %conv21.i.i to i32
  %shl.i.i57.i.i = shl nuw nsw i32 %conv.i.i56.i.i, 27
  %conv1.i.i58.i.i = shl i32 %shr.i.i, 18
  %shl2.i.i59.i.i = and i32 %conv1.i.i58.i.i, 66846720
  %or.i.i60.i.i = or i32 %shl.i.i57.i.i, %shl2.i.i59.i.i
  %conv3.i.i61.i.i = zext i16 %conv16.i.i to i32
  %shl4.i.i62.i.i = shl nuw nsw i32 %conv3.i.i61.i.i, 9
  %or5.i.i63.i.i = or i32 %or.i.i60.i.i, %shl4.i.i62.i.i
  %or7.i.i64.i.i = or i32 %or5.i.i63.i.i, 511
  %133 = ptrtoint ptr %card.0 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %card.0, align 8
  %call.i.i65.i.i = call i32 @mmc_send_adtc_data(ptr noundef %card.0, ptr noundef %134, i32 noundef 48, i32 noundef %or7.i.i64.i.i, ptr noundef nonnull %call7.i.i.i54.i.i, i32 noundef 512) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i65.i.i)
  %tobool2.not.i66.i.i = icmp eq i32 %call.i.i65.i.i, 0
  br i1 %tobool2.not.i66.i.i, label %if.end6.i77.i.i, label %do.end.i70.i.i

do.end.i70.i.i:                                   ; preds = %if.end.i67.i.i
  %135 = ptrtoint ptr %card.0 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %card.0, align 8
  %init_name.i.i68.i.i = getelementptr inbounds %struct.mmc_host, ptr %136, i32 0, i32 1, i32 3
  %137 = ptrtoint ptr %init_name.i.i68.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %init_name.i.i68.i.i, align 8
  %tobool.not.i.i69.i.i = icmp eq ptr %138, null
  br i1 %tobool.not.i.i69.i.i, label %if.end.i.i72.i.i, label %do.end.i70.i.i.dev_name.exit.i75.i.i_crit_edge

do.end.i70.i.i.dev_name.exit.i75.i.i_crit_edge:   ; preds = %do.end.i70.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i75.i.i

if.end.i.i72.i.i:                                 ; preds = %do.end.i70.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev.i71.i.i = getelementptr inbounds %struct.mmc_host, ptr %136, i32 0, i32 1
  %139 = ptrtoint ptr %class_dev.i71.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %class_dev.i71.i.i, align 4
  br label %dev_name.exit.i75.i.i

dev_name.exit.i75.i.i:                            ; preds = %if.end.i.i72.i.i, %do.end.i70.i.i.dev_name.exit.i75.i.i_crit_edge
  %retval.0.i.i73.i.i = phi ptr [ %140, %if.end.i.i72.i.i ], [ %138, %do.end.i70.i.i.dev_name.exit.i75.i.i_crit_edge ]
  %call5.i74.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %retval.0.i.i73.i.i, i32 noundef %call.i.i65.i.i) #16
  br label %sd_parse_ext_reg.exit.i

if.end6.i77.i.i:                                  ; preds = %if.end.i67.i.i
  %141 = ptrtoint ptr %call7.i.i.i54.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %call7.i.i.i54.i.i, align 8
  %143 = ptrtoint ptr %rev.i76.i.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %rev.i76.i.i, align 4
  %arrayidx7.i.i.i = getelementptr i8, ptr %call7.i.i.i54.i.i, i32 1
  %144 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx7.i.i.i, align 1
  %146 = and i8 %145, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool8.not.i.i.i = icmp eq i8 %146, 0
  br i1 %tobool8.not.i.i.i, label %if.end6.i77.i.i.if.end13.i.i.i_crit_edge, label %if.then9.i.i.i

if.end6.i77.i.i.if.end13.i.i.i_crit_edge:         ; preds = %if.end6.i77.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i.i

if.then9.i.i.i:                                   ; preds = %if.end6.i77.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %147 = ptrtoint ptr %feature_support.i78.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %feature_support.i78.i.i, align 2
  %149 = or i8 %148, 1
  store i8 %149, ptr %feature_support.i78.i.i, align 2
  br label %if.end13.i.i.i

if.end13.i.i.i:                                   ; preds = %if.then9.i.i.i, %if.end6.i77.i.i.if.end13.i.i.i_crit_edge
  %arrayidx14.i.i.i = getelementptr i8, ptr %call7.i.i.i54.i.i, i32 2
  %150 = ptrtoint ptr %arrayidx14.i.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx14.i.i.i, align 2
  %152 = and i8 %151, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool17.not.i.i.i = icmp eq i8 %152, 0
  br i1 %tobool17.not.i.i.i, label %if.end13.i.i.i.if.end24.i.i.i_crit_edge, label %if.then18.i.i.i

if.end13.i.i.i.if.end24.i.i.i_crit_edge:          ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i.i.i

if.then18.i.i.i:                                  ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %153 = ptrtoint ptr %feature_support.i78.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %feature_support.i78.i.i, align 2
  %155 = or i8 %154, 2
  store i8 %155, ptr %feature_support.i78.i.i, align 2
  br label %if.end24.i.i.i

if.end24.i.i.i:                                   ; preds = %if.then18.i.i.i, %if.end13.i.i.i.if.end24.i.i.i_crit_edge
  %156 = and i8 %151, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool28.not.i.i.i = icmp eq i8 %156, 0
  br i1 %tobool28.not.i.i.i, label %if.end24.i.i.i.if.end35.i.i.i_crit_edge, label %if.then29.i.i.i

if.end24.i.i.i.if.end35.i.i.i_crit_edge:          ; preds = %if.end24.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i.i.i

if.then29.i.i.i:                                  ; preds = %if.end24.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %157 = ptrtoint ptr %feature_support.i78.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %feature_support.i78.i.i, align 2
  %159 = or i8 %158, 4
  store i8 %159, ptr %feature_support.i78.i.i, align 2
  br label %if.end35.i.i.i

if.end35.i.i.i:                                   ; preds = %if.then29.i.i.i, %if.end24.i.i.i.if.end35.i.i.i_crit_edge
  %arrayidx36.i.i.i = getelementptr i8, ptr %call7.i.i.i54.i.i, i32 4
  %160 = ptrtoint ptr %arrayidx36.i.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx36.i.i.i, align 4
  %162 = and i8 %161, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool39.not.i.i.i = icmp eq i8 %162, 0
  br i1 %tobool39.not.i.i.i, label %if.end35.i.i.i.if.end46.i.i.i_crit_edge, label %if.then40.i.i.i

if.end35.i.i.i.if.end46.i.i.i_crit_edge:          ; preds = %if.end35.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46.i.i.i

if.then40.i.i.i:                                  ; preds = %if.end35.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %163 = ptrtoint ptr %feature_support.i78.i.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %feature_support.i78.i.i, align 2
  %165 = or i8 %164, 8
  store i8 %165, ptr %feature_support.i78.i.i, align 2
  br label %if.end46.i.i.i

if.end46.i.i.i:                                   ; preds = %if.then40.i.i.i, %if.end35.i.i.i.if.end46.i.i.i_crit_edge
  %arrayidx47.i.i.i = getelementptr i8, ptr %call7.i.i.i54.i.i, i32 6
  %166 = ptrtoint ptr %arrayidx47.i.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx47.i.i.i, align 2
  %168 = and i8 %167, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool50.not.i.i.i = icmp eq i8 %168, 0
  br i1 %tobool50.not.i.i.i, label %if.end46.i.i.i.sd_parse_ext_reg.exit.thread93.i_crit_edge, label %if.end46.i.i.i.sd_parse_ext_reg.exit.thread93.sink.split.i_crit_edge

if.end46.i.i.i.sd_parse_ext_reg.exit.thread93.sink.split.i_crit_edge: ; preds = %if.end46.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sd_parse_ext_reg.exit.thread93.sink.split.i

if.end46.i.i.i.sd_parse_ext_reg.exit.thread93.i_crit_edge: ; preds = %if.end46.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sd_parse_ext_reg.exit.thread93.i

sd_parse_ext_reg.exit.thread93.sink.split.i:      ; preds = %if.end46.i.i.i.sd_parse_ext_reg.exit.thread93.sink.split.i_crit_edge, %if.end27.i.i.i.sd_parse_ext_reg.exit.thread93.sink.split.i_crit_edge
  %feature_support.i78.i.sink102.i = phi ptr [ %feature_support.i.i.i, %if.end27.i.i.i.sd_parse_ext_reg.exit.thread93.sink.split.i_crit_edge ], [ %feature_support.i78.i.i, %if.end46.i.i.i.sd_parse_ext_reg.exit.thread93.sink.split.i_crit_edge ]
  %.sink101.i = phi i8 [ 4, %if.end27.i.i.i.sd_parse_ext_reg.exit.thread93.sink.split.i_crit_edge ], [ 16, %if.end46.i.i.i.sd_parse_ext_reg.exit.thread93.sink.split.i_crit_edge ]
  %ext_power.i.i.sink.ph.i = phi ptr [ %ext_power.i.i.i, %if.end27.i.i.i.sd_parse_ext_reg.exit.thread93.sink.split.i_crit_edge ], [ %ext_perf.i.i.i, %if.end46.i.i.i.sd_parse_ext_reg.exit.thread93.sink.split.i_crit_edge ]
  %page42.i.i.sink.ph.i = phi ptr [ %page42.i.i.i, %if.end27.i.i.i.sd_parse_ext_reg.exit.thread93.sink.split.i_crit_edge ], [ %page61.i.i.i, %if.end46.i.i.i.sd_parse_ext_reg.exit.thread93.sink.split.i_crit_edge ]
  %offset44.i.i.sink.ph.i = phi ptr [ %offset44.i.i.i, %if.end27.i.i.i.sd_parse_ext_reg.exit.thread93.sink.split.i_crit_edge ], [ %offset63.i.i.i, %if.end46.i.i.i.sd_parse_ext_reg.exit.thread93.sink.split.i_crit_edge ]
  %call7.i.i.i54.sink.i.ph.ph.i = phi ptr [ %call7.i.i.i.i.i, %if.end27.i.i.i.sd_parse_ext_reg.exit.thread93.sink.split.i_crit_edge ], [ %call7.i.i.i54.i.i, %if.end46.i.i.i.sd_parse_ext_reg.exit.thread93.sink.split.i_crit_edge ]
  %169 = ptrtoint ptr %feature_support.i78.i.sink102.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %feature_support.i78.i.sink102.i, align 2
  %171 = or i8 %170, %.sink101.i
  store i8 %171, ptr %feature_support.i78.i.sink102.i, align 2
  br label %sd_parse_ext_reg.exit.thread93.i

sd_parse_ext_reg.exit.thread93.i:                 ; preds = %sd_parse_ext_reg.exit.thread93.sink.split.i, %if.end46.i.i.i.sd_parse_ext_reg.exit.thread93.i_crit_edge, %if.end27.i.i.i.sd_parse_ext_reg.exit.thread93.i_crit_edge
  %ext_power.i.i.sink.i = phi ptr [ %ext_power.i.i.i, %if.end27.i.i.i.sd_parse_ext_reg.exit.thread93.i_crit_edge ], [ %ext_perf.i.i.i, %if.end46.i.i.i.sd_parse_ext_reg.exit.thread93.i_crit_edge ], [ %ext_power.i.i.sink.ph.i, %sd_parse_ext_reg.exit.thread93.sink.split.i ]
  %page42.i.i.sink.i = phi ptr [ %page42.i.i.i, %if.end27.i.i.i.sd_parse_ext_reg.exit.thread93.i_crit_edge ], [ %page61.i.i.i, %if.end46.i.i.i.sd_parse_ext_reg.exit.thread93.i_crit_edge ], [ %page42.i.i.sink.ph.i, %sd_parse_ext_reg.exit.thread93.sink.split.i ]
  %offset44.i.i.sink.i = phi ptr [ %offset44.i.i.i, %if.end27.i.i.i.sd_parse_ext_reg.exit.thread93.i_crit_edge ], [ %offset63.i.i.i, %if.end46.i.i.i.sd_parse_ext_reg.exit.thread93.i_crit_edge ], [ %offset44.i.i.sink.ph.i, %sd_parse_ext_reg.exit.thread93.sink.split.i ]
  %call7.i.i.i54.sink.i.ph.i = phi ptr [ %call7.i.i.i.i.i, %if.end27.i.i.i.sd_parse_ext_reg.exit.thread93.i_crit_edge ], [ %call7.i.i.i54.i.i, %if.end46.i.i.i.sd_parse_ext_reg.exit.thread93.i_crit_edge ], [ %call7.i.i.i54.sink.i.ph.ph.i, %sd_parse_ext_reg.exit.thread93.sink.split.i ]
  %172 = ptrtoint ptr %ext_power.i.i.sink.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %conv21.i.i, ptr %ext_power.i.i.sink.i, align 8
  %173 = ptrtoint ptr %page42.i.i.sink.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %conv18.i.i, ptr %page42.i.i.sink.i, align 1
  %174 = ptrtoint ptr %offset44.i.i.sink.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %conv16.i.i, ptr %offset44.i.i.sink.i, align 2
  call void @kfree(ptr noundef nonnull %call7.i.i.i54.sink.i.ph.i) #12
  br label %for.inc.i

sd_parse_ext_reg.exit.i:                          ; preds = %dev_name.exit.i75.i.i, %dev_name.exit.i.i.i
  %call7.i.i.i54.sink.i.i = phi ptr [ %call7.i.i.i.i.i, %dev_name.exit.i.i.i ], [ %call7.i.i.i54.i.i, %dev_name.exit.i75.i.i ]
  %retval.0.ph.i.i = phi i32 [ %call.i.i.i.i, %dev_name.exit.i.i.i ], [ %call.i.i65.i.i, %dev_name.exit.i75.i.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i54.sink.i.i) #12
  br label %do.end40.i

do.end40.i:                                       ; preds = %sd_parse_ext_reg.exit.i, %if.then30.i.i.do.end40.i_crit_edge, %if.then25.i.i.do.end40.i_crit_edge, %for.body.i.do.end40.i_crit_edge
  %retval.0.i7685.i = phi i32 [ %retval.0.ph.i.i, %sd_parse_ext_reg.exit.i ], [ -12, %if.then30.i.i.do.end40.i_crit_edge ], [ -12, %if.then25.i.i.do.end40.i_crit_edge ], [ -14, %for.body.i.do.end40.i_crit_edge ]
  %175 = ptrtoint ptr %card.0 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %card.0, align 8
  %init_name.i77.i = getelementptr inbounds %struct.mmc_host, ptr %176, i32 0, i32 1, i32 3
  %177 = ptrtoint ptr %init_name.i77.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %init_name.i77.i, align 8
  %tobool.not.i78.i = icmp eq ptr %178, null
  br i1 %tobool.not.i78.i, label %if.end.i79.i, label %do.end40.i.dev_name.exit81.i_crit_edge

do.end40.i.dev_name.exit81.i_crit_edge:           ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit81.i

if.end.i79.i:                                     ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev43.i = getelementptr inbounds %struct.mmc_host, ptr %176, i32 0, i32 1
  %179 = ptrtoint ptr %class_dev43.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %class_dev43.i, align 4
  br label %dev_name.exit81.i

dev_name.exit81.i:                                ; preds = %if.end.i79.i, %do.end40.i.dev_name.exit81.i_crit_edge
  %retval.0.i80.i = phi ptr [ %180, %if.end.i79.i ], [ %178, %do.end40.i.dev_name.exit81.i_crit_edge ]
  %call45.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %retval.0.i80.i, i32 noundef %retval.0.i7685.i) #16
  br label %sd_read_ext_regs.exit

for.inc.i:                                        ; preds = %sd_parse_ext_reg.exit.thread93.i, %if.end12.i.i.for.inc.i_crit_edge, %if.end.i75.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.099.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv32.i328
  br i1 %exitcond.not.i, label %for.inc.i.sd_read_ext_regs.exit.thread361_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.sd_read_ext_regs.exit.thread361_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sd_read_ext_regs.exit.thread361

sd_read_ext_regs.exit.thread361:                  ; preds = %for.inc.i.sd_read_ext_regs.exit.thread361_crit_edge, %dev_name.exit74.i, %for.cond.preheader.i.sd_read_ext_regs.exit.thread361_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %if.end174

sd_read_ext_regs.exit:                            ; preds = %dev_name.exit81.i, %dev_name.exit.i
  %err.1.i = phi i32 [ %call.i.i, %dev_name.exit.i ], [ %retval.0.i7685.i, %dev_name.exit81.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %free_card

if.end174:                                        ; preds = %sd_read_ext_regs.exit.thread361, %if.end.i327.if.end174_crit_edge, %if.then169.if.end174_crit_edge, %if.end167.if.end174_crit_edge
  %feature_support = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 26, i32 5
  %181 = ptrtoint ptr %feature_support to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %feature_support, align 2
  %183 = and i8 %182, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool177.not = icmp eq i8 %183, 0
  br i1 %tobool177.not, label %if.end174.if.end183_crit_edge, label %if.then178

if.end174.if.end183_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end183

if.then178:                                       ; preds = %if.end174
  %feature_enabled.i = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 26, i32 4
  %184 = ptrtoint ptr %feature_enabled.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %feature_enabled.i, align 1
  %186 = and i8 %185, -9
  store i8 %186, ptr %feature_enabled.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %187 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i330 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %187, i32 noundef 3520, i32 noundef 512) #15
  %tobool.not.i331 = icmp eq ptr %call7.i.i.i330, null
  br i1 %tobool.not.i331, label %if.then178.free_card_crit_edge, label %if.end.i333

if.then178.free_card_crit_edge:                   ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_card

if.end.i333:                                      ; preds = %if.then178
  %ext_perf.i = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 26
  %188 = ptrtoint ptr %ext_perf.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %ext_perf.i, align 8
  %page.i = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 26, i32 1
  %190 = ptrtoint ptr %page.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %page.i, align 1
  %offset.i = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 26, i32 2
  %192 = ptrtoint ptr %offset.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %offset.i, align 2
  %add.i332 = add i16 %193, 260
  %call7.i = call fastcc i32 @sd_write_ext_reg(ptr noundef %card.0, i8 noundef zeroext %189, i8 noundef zeroext %191, i16 noundef zeroext %add.i332) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end12.i, label %do.end.i336

do.end.i336:                                      ; preds = %if.end.i333
  %194 = ptrtoint ptr %card.0 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %card.0, align 8
  %init_name.i.i334 = getelementptr inbounds %struct.mmc_host, ptr %195, i32 0, i32 1, i32 3
  %196 = ptrtoint ptr %init_name.i.i334 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %init_name.i.i334, align 8
  %tobool.not.i.i335 = icmp eq ptr %197, null
  br i1 %tobool.not.i.i335, label %if.end.i.i338, label %do.end.i336.dev_name.exit.i340_crit_edge

do.end.i336.dev_name.exit.i340_crit_edge:         ; preds = %do.end.i336
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i340

if.end.i.i338:                                    ; preds = %do.end.i336
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev.i337 = getelementptr inbounds %struct.mmc_host, ptr %195, i32 0, i32 1
  %198 = ptrtoint ptr %class_dev.i337 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %class_dev.i337, align 4
  br label %dev_name.exit.i340

dev_name.exit.i340:                               ; preds = %if.end.i.i338, %do.end.i336.dev_name.exit.i340_crit_edge
  %retval.0.i.i339 = phi ptr [ %199, %if.end.i.i338 ], [ %197, %do.end.i336.dev_name.exit.i340_crit_edge ]
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %retval.0.i.i339, i32 noundef %call7.i) #16
  br label %sd_enable_cache.exit.thread366

if.end12.i:                                       ; preds = %if.end.i333
  %call13.i341 = call i32 @mmc_poll_for_busy(ptr noundef %card.0, i32 noundef 1000, i1 noundef zeroext false, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i341)
  %tobool14.not.i = icmp eq i32 %call13.i341, 0
  br i1 %tobool14.not.i, label %sd_enable_cache.exit, label %if.end12.i.sd_enable_cache.exit.thread366_crit_edge

if.end12.i.sd_enable_cache.exit.thread366_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sd_enable_cache.exit.thread366

sd_enable_cache.exit.thread366:                   ; preds = %if.end12.i.sd_enable_cache.exit.thread366_crit_edge, %dev_name.exit.i340
  %err.0.i.ph = phi i32 [ %call13.i341, %if.end12.i.sd_enable_cache.exit.thread366_crit_edge ], [ %call7.i, %dev_name.exit.i340 ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i330) #12
  br label %free_card

sd_enable_cache.exit:                             ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %200 = ptrtoint ptr %feature_enabled.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %feature_enabled.i, align 1
  %202 = or i8 %201, 8
  store i8 %202, ptr %feature_enabled.i, align 1
  call void @kfree(ptr noundef nonnull %call7.i.i.i330) #12
  br label %if.end183

if.end183:                                        ; preds = %sd_enable_cache.exit, %if.end174.if.end183_crit_edge
  %cqe_ops = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 62
  %203 = ptrtoint ptr %cqe_ops to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %cqe_ops, align 8
  %tobool184.not = icmp eq ptr %204, null
  br i1 %tobool184.not, label %if.end183.if.end201_crit_edge, label %land.lhs.true185

if.end183.if.end201_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end201

land.lhs.true185:                                 ; preds = %if.end183
  %cqe_enabled = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 65
  %205 = ptrtoint ptr %cqe_enabled to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %cqe_enabled, align 4, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %tobool186.not = icmp eq i8 %206, 0
  br i1 %tobool186.not, label %if.then187, label %land.lhs.true185.if.end201_crit_edge

land.lhs.true185.if.end201_crit_edge:             ; preds = %land.lhs.true185
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end201

if.then187:                                       ; preds = %land.lhs.true185
  %207 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %204, align 4
  %call189 = call i32 %208(ptr noundef %host, ptr noundef %card.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %if.then191, label %if.then187.if.end201_crit_edge

if.then187.if.end201_crit_edge:                   ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end201

if.then191:                                       ; preds = %if.then187
  %209 = ptrtoint ptr %cqe_enabled to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 1, ptr %cqe_enabled, align 4
  %hsq_enabled = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 68
  %210 = ptrtoint ptr %hsq_enabled to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 1, ptr %hsq_enabled, align 16
  %init_name.i344 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %211 = ptrtoint ptr %init_name.i344 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %init_name.i344, align 8
  %tobool.not.i345 = icmp eq ptr %212, null
  br i1 %tobool.not.i345, label %if.end.i346, label %if.then191.dev_name.exit348_crit_edge

if.then191.dev_name.exit348_crit_edge:            ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit348

if.end.i346:                                      ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev197 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %213 = ptrtoint ptr %class_dev197 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %class_dev197, align 4
  br label %dev_name.exit348

dev_name.exit348:                                 ; preds = %if.end.i346, %if.then191.dev_name.exit348_crit_edge
  %retval.0.i347 = phi ptr [ %214, %if.end.i346 ], [ %212, %if.then191.dev_name.exit348_crit_edge ]
  %call199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %retval.0.i347) #16
  br label %if.end201

if.end201:                                        ; preds = %dev_name.exit348, %if.then187.if.end201_crit_edge, %land.lhs.true185.if.end201_crit_edge, %if.end183.if.end201_crit_edge
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 17
  %215 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %caps2, align 4
  %and202 = and i32 %216, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and202)
  %tobool203.not = icmp eq i32 %and202, 0
  br i1 %tobool203.not, label %if.end201.done_crit_edge, label %land.lhs.true204

if.end201.done_crit_edge:                         ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

land.lhs.true204:                                 ; preds = %if.end201
  %217 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %signal_voltage, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %cmp208 = icmp eq i8 %218, 0
  br i1 %cmp208, label %do.end213, label %land.lhs.true204.done_crit_edge

land.lhs.true204.done_crit_edge:                  ; preds = %land.lhs.true204
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

do.end213:                                        ; preds = %land.lhs.true204
  %init_name.i349 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %219 = ptrtoint ptr %init_name.i349 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %init_name.i349, align 8
  %tobool.not.i350 = icmp eq ptr %220, null
  br i1 %tobool.not.i350, label %if.end.i351, label %do.end213.dev_name.exit353_crit_edge

do.end213.dev_name.exit353_crit_edge:             ; preds = %do.end213
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit353

if.end.i351:                                      ; preds = %do.end213
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev215 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %221 = ptrtoint ptr %class_dev215 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %class_dev215, align 4
  br label %dev_name.exit353

dev_name.exit353:                                 ; preds = %if.end.i351, %do.end213.dev_name.exit353_crit_edge
  %retval.0.i352 = phi ptr [ %222, %if.end.i351 ], [ %220, %do.end213.dev_name.exit353_crit_edge ]
  %call217 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %retval.0.i352) #16
  br label %free_card

done:                                             ; preds = %land.lhs.true204.done_crit_edge, %if.end201.done_crit_edge, %lor.lhs.false.done_crit_edge
  %card219 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %223 = ptrtoint ptr %card219 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %card.0, ptr %card219, align 4
  br label %cleanup

free_card:                                        ; preds = %dev_name.exit353, %sd_enable_cache.exit.thread366, %if.then178.free_card_crit_edge, %sd_read_ext_regs.exit, %if.then161.free_card_crit_edge, %if.else148.free_card_crit_edge, %if.then137.free_card_crit_edge, %if.end92.free_card_crit_edge, %if.then87.free_card_crit_edge, %if.then62.free_card_crit_edge
  %err.0 = phi i32 [ %call138, %if.then137.free_card_crit_edge ], [ -22, %dev_name.exit353 ], [ %err.1.i, %sd_read_ext_regs.exit ], [ %call162, %if.then161.free_card_crit_edge ], [ %call143, %if.else148.free_card_crit_edge ], [ %err.0.i.ph, %sd_enable_cache.exit.thread366 ], [ -12, %if.then178.free_card_crit_edge ], [ %call63, %if.then62.free_card_crit_edge ], [ %call88, %if.then87.free_card_crit_edge ], [ %call94, %if.end92.free_card_crit_edge ]
  br i1 %tobool24, label %free_card.cleanup_crit_edge, label %free_card.if.then221_crit_edge

free_card.if.then221_crit_edge:                   ; preds = %free_card
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then221

free_card.cleanup_crit_edge:                      ; preds = %free_card
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then221:                                       ; preds = %free_card.if.then221_crit_edge, %if.end4.i.if.then221_crit_edge, %if.then69.if.then221_crit_edge
  %err.0370 = phi i32 [ %err.0, %free_card.if.then221_crit_edge ], [ -12, %if.end4.i.if.then221_crit_edge ], [ %call70, %if.then69.if.then221_crit_edge ]
  call void @mmc_remove_card(ptr noundef %card.0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then221, %free_card.cleanup_crit_edge, %done, %if.end128.cleanup_crit_edge, %if.then113.cleanup_crit_edge, %if.then48, %dev_name.exit, %do.body30, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %done ], [ %8, %if.then48 ], [ -2, %dev_name.exit ], [ %err.0370, %if.then221 ], [ %err.0, %free_card.cleanup_crit_edge ], [ -2, %do.body30 ], [ %call398, %if.end.cleanup_crit_edge ], [ %call, %if.end128.cleanup_crit_edge ], [ %call114, %if.then113.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rocr) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cid) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_release_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_card(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_card(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_detach_bus(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @sd_std_is_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %attr, i32 noundef %index) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %attr, @dev_attr_vendor
  %cmp1 = icmp eq ptr %attr, @dev_attr_device
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq ptr %attr, @dev_attr_revision
  %or.cond21 = or i1 %cmp3, %or.cond
  %cmp5 = icmp eq ptr %attr, @dev_attr_info1
  %or.cond22 = or i1 %cmp5, %or.cond21
  %cmp7 = icmp eq ptr %attr, @dev_attr_info2
  %or.cond23 = or i1 %cmp7, %or.cond22
  %cmp9 = icmp eq ptr %attr, @dev_attr_info3
  %or.cond24 = or i1 %cmp9, %or.cond23
  %cmp11 = icmp eq ptr %attr, @dev_attr_info4
  %or.cond25 = or i1 %cmp11, %or.cond24
  br i1 %or.cond25, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr i8, ptr %kobj, i32 936
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp12.not = icmp eq i32 %1, 3
  br i1 %cmp12.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i16 [ %3, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_vendor_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cis = getelementptr i8, ptr %dev, i32 1404
  %0 = ptrtoint ptr %cis to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cis, align 4
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_device_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr i8, ptr %dev, i32 1406
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device, align 2
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_revision_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %major_rev = getelementptr i8, ptr %dev, i32 1448
  %0 = ptrtoint ptr %major_rev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %major_rev, align 8
  %conv = zext i8 %1 to i32
  %minor_rev = getelementptr i8, ptr %dev, i32 1449
  %2 = ptrtoint ptr %minor_rev to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %minor_rev, align 1
  %conv1 = zext i8 %3 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.13, i32 noundef %conv, i32 noundef %conv1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @info1_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_info = getelementptr i8, ptr %dev, i32 1452
  %0 = ptrtoint ptr %num_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %info = getelementptr i8, ptr %dev, i32 1456
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -61, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @info2_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_info = getelementptr i8, ptr %dev, i32 1452
  %0 = ptrtoint ptr %num_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %info = getelementptr i8, ptr %dev, i32 1456
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -61, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @info3_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_info = getelementptr i8, ptr %dev, i32 1452
  %0 = ptrtoint ptr %num_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ult i32 %1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %info = getelementptr i8, ptr %dev, i32 1456
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -61, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @info4_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_info = getelementptr i8, ptr %dev, i32 1452
  %0 = ptrtoint ptr %num_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ult i32 %1, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %info = getelementptr i8, ptr %dev, i32 1456
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -61, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_cid_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %raw_cid = getelementptr i8, ptr %dev, i32 980
  %0 = ptrtoint ptr %raw_cid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %raw_cid, align 4
  %arrayidx2 = getelementptr i8, ptr %dev, i32 984
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr i8, ptr %dev, i32 988
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr i8, ptr %dev, i32 992
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_csd_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %raw_csd = getelementptr i8, ptr %dev, i32 996
  %0 = ptrtoint ptr %raw_csd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %raw_csd, align 4
  %arrayidx2 = getelementptr i8, ptr %dev, i32 1000
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr i8, ptr %dev, i32 1004
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr i8, ptr %dev, i32 1008
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_scr_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %raw_scr = getelementptr i8, ptr %dev, i32 1012
  %0 = ptrtoint ptr %raw_scr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %raw_scr, align 4
  %arrayidx2 = getelementptr i8, ptr %dev, i32 1016
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.23, i32 noundef %1, i32 noundef %3)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_ssr_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %raw_ssr = getelementptr i8, ptr %dev, i32 1020
  %0 = ptrtoint ptr %raw_ssr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %raw_ssr, align 4
  %arrayidx2 = getelementptr i8, ptr %dev, i32 1024
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr i8, ptr %dev, i32 1028
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr i8, ptr %dev, i32 1032
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr i8, ptr %dev, i32 1036
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr i8, ptr %dev, i32 1040
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr i8, ptr %dev, i32 1044
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx12, align 4
  %arrayidx14 = getelementptr i8, ptr %dev, i32 1048
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx14, align 4
  %arrayidx16 = getelementptr i8, ptr %dev, i32 1052
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx16, align 4
  %arrayidx18 = getelementptr i8, ptr %dev, i32 1056
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx18, align 4
  %arrayidx20 = getelementptr i8, ptr %dev, i32 1060
  %20 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx20, align 4
  %arrayidx22 = getelementptr i8, ptr %dev, i32 1064
  %22 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx22, align 4
  %arrayidx24 = getelementptr i8, ptr %dev, i32 1068
  %24 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx24, align 4
  %arrayidx26 = getelementptr i8, ptr %dev, i32 1072
  %26 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx26, align 4
  %arrayidx28 = getelementptr i8, ptr %dev, i32 1076
  %28 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx28, align 4
  %arrayidx30 = getelementptr i8, ptr %dev, i32 1080
  %30 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx30, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_date_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %month = getelementptr i8, ptr %dev, i32 1110
  %0 = ptrtoint ptr %month to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %month, align 2
  %conv = zext i8 %1 to i32
  %year = getelementptr i8, ptr %dev, i32 1106
  %2 = ptrtoint ptr %year to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %year, align 2
  %conv2 = zext i16 %3 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %conv, i32 noundef %conv2)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_erase_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %erase_size = getelementptr i8, ptr %dev, i32 956
  %0 = ptrtoint ptr %erase_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %erase_size, align 4
  %shl = shl i32 %1, 9
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.29, i32 noundef %shl)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_preferred_erase_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pref_erase = getelementptr i8, ptr %dev, i32 964
  %0 = ptrtoint ptr %pref_erase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pref_erase, align 4
  %shl = shl i32 %1, 9
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.29, i32 noundef %shl)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_fwrev_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fwrev = getelementptr i8, ptr %dev, i32 1109
  %0 = ptrtoint ptr %fwrev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fwrev, align 1
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.32, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_hwrev_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hwrev = getelementptr i8, ptr %dev, i32 1108
  %0 = ptrtoint ptr %hwrev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hwrev, align 4
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.32, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_manfid_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cid = getelementptr i8, ptr %dev, i32 1084
  %0 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cid, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.35, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_name_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %prod_name = getelementptr i8, ptr %dev, i32 1088
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, ptr noundef %prod_name)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_oemid_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %oemid = getelementptr i8, ptr %dev, i32 1104
  %0 = ptrtoint ptr %oemid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %oemid, align 4
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_serial_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %serial = getelementptr i8, ptr %dev, i32 1100
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %serial, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.39, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_ocr_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ocr = getelementptr i8, ptr %dev, i32 928
  %0 = ptrtoint ptr %ocr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ocr, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.39, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_rca_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rca = getelementptr i8, ptr %dev, i32 932
  %0 = ptrtoint ptr %rca to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rca, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_dsr_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %dsr_imp = getelementptr i8, ptr %dev, i32 1152
  %2 = ptrtoint ptr %dsr_imp to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %dsr_imp, align 8
  %3 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %dsr_req = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 60
  %4 = ptrtoint ptr %dsr_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dsr_req, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %dsr = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 61
  %6 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dsr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.sink = phi i32 [ %7, %if.then ], [ 1028, %land.lhs.true.cleanup_crit_edge ], [ 1028, %entry.cleanup_crit_edge ]
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.32, i32 noundef %.sink)
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_app_sd_status(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_sd_remove(ptr nocapture noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  tail call void @mmc_remove_card(ptr noundef %1) #12
  %2 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %card, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_sd_detect(ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  tail call void @mmc_get_card(ptr noundef %1, ptr noundef null) #12
  %call = tail call i32 @_mmc_detect_card_removed(ptr noundef %host) #12
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  tail call void @mmc_put_card(ptr noundef %3, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  tail call void @mmc_remove_card(ptr noundef %5) #12
  %6 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %card, align 4
  %call.i = tail call i32 @__mmc_claim_host(ptr noundef %host, ptr noundef null, ptr noundef null) #12
  tail call void @mmc_detach_bus(ptr noundef %host) #12
  tail call void @mmc_power_off(ptr noundef %host) #12
  tail call void @mmc_release_host(ptr noundef %host) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_sd_suspend(ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_mmc_sd_suspend(ptr noundef %host)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %card = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 1
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #12
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %dev2 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 1
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev2, i32 noundef 2) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_sd_resume(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 1
  tail call void @pm_runtime_enable(ptr noundef %dev) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_sd_runtime_suspend(ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %caps, align 32
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @_mmc_sd_suspend(ptr noundef %host)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %4 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %do.end.dev_name.exit_crit_edge ]
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %retval.0.i, i32 noundef %call) #16
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %dev_name.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_sd_runtime_resume(ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @__mmc_claim_host(ptr noundef %host, ptr noundef null, ptr noundef null) #12
  %card.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %0 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card.i, align 4
  %state.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  %and.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %_mmc_sd_resume.exit.thread, label %_mmc_sd_resume.exit

_mmc_sd_resume.exit.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mmc_release_host(ptr noundef %host) #12
  br label %if.end

_mmc_sd_resume.exit:                              ; preds = %entry
  %ocr.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ocr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ocr.i, align 8
  tail call void @mmc_power_up(ptr noundef %host, i32 noundef %5) #12
  %6 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card.i, align 4
  %ocr3.i = getelementptr inbounds %struct.mmc_card, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ocr3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ocr3.i, align 8
  %call.i = tail call fastcc i32 @mmc_sd_init_card(ptr noundef %host, i32 noundef %9, ptr noundef %7) #12
  %10 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card.i, align 4
  %state6.i = getelementptr inbounds %struct.mmc_card, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %state6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state6.i, align 4
  %and7.i = and i32 %13, -33
  store i32 %and7.i, ptr %state6.i, align 4
  tail call void @mmc_release_host(ptr noundef %host) #12
  %14 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %call.i, label %do.end [
    i32 0, label %_mmc_sd_resume.exit.if.end_crit_edge
    i32 -123, label %_mmc_sd_resume.exit.if.end_crit_edge9
  ]

_mmc_sd_resume.exit.if.end_crit_edge9:            ; preds = %_mmc_sd_resume.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

_mmc_sd_resume.exit.if.end_crit_edge:             ; preds = %_mmc_sd_resume.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %_mmc_sd_resume.exit
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i6 = icmp eq ptr %16, null
  br i1 %tobool.not.i6, label %if.end.i7, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i7:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %17 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i7, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %18, %if.end.i7 ], [ %16, %do.end.dev_name.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %retval.0.i, i32 noundef %call.i) #16
  br label %if.end

if.end:                                           ; preds = %dev_name.exit, %_mmc_sd_resume.exit.if.end_crit_edge, %_mmc_sd_resume.exit.if.end_crit_edge9, %_mmc_sd_resume.exit.thread
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_sd_alive(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %call = tail call i32 @mmc_send_status(ptr noundef %1, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_sd_hw_reset(ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %ocr = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ocr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ocr, align 8
  tail call void @mmc_power_cycle(ptr noundef %host, i32 noundef %3) #12
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %ocr2 = getelementptr inbounds %struct.mmc_card, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ocr2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ocr2, align 8
  %call = tail call fastcc i32 @mmc_sd_init_card(ptr noundef %host, i32 noundef %7, ptr noundef %5)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sd_cache_enabled(ptr nocapture noundef readonly %host) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %feature_enabled = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 26, i32 4
  %2 = ptrtoint ptr %feature_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %feature_enabled, align 1
  %4 = and i8 %3, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool = icmp ne i8 %4, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_flush_cache(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %feature_enabled.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 26, i32 4
  %2 = ptrtoint ptr %feature_enabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %feature_enabled.i, align 1
  %4 = and i8 %3, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.i.not = icmp eq i8 %4, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 512) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %ext_perf = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 26
  %6 = ptrtoint ptr %ext_perf to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ext_perf, align 8
  %page7 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 26, i32 1
  %8 = ptrtoint ptr %page7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %page7, align 1
  %offset9 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 26, i32 2
  %10 = ptrtoint ptr %offset9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %offset9, align 2
  %add = add i16 %11, 261
  %call11 = tail call fastcc i32 @sd_write_ext_reg(ptr noundef %1, i8 noundef zeroext %7, i8 noundef zeroext %9, i16 noundef zeroext %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end16, label %do.end

do.end:                                           ; preds = %if.end4
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %14 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %15, %if.end.i ], [ %13, %do.end.dev_name.exit_crit_edge ]
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %retval.0.i, i32 noundef %call11) #16
  br label %out

if.end16:                                         ; preds = %if.end4
  %call17 = tail call i32 @mmc_poll_for_busy(ptr noundef %1, i32 noundef 1000, i1 noundef zeroext false, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.out_crit_edge

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end20:                                         ; preds = %if.end16
  %conv.i = zext i8 %7 to i32
  %shl.i = shl i32 %conv.i, 27
  %conv1.i = zext i8 %9 to i32
  %shl2.i = shl nuw nsw i32 %conv1.i, 18
  %or.i = or i32 %shl2.i, %shl.i
  %conv3.i = zext i16 %add to i32
  %shl4.i = shl nuw nsw i32 %conv3.i, 9
  %or5.i = or i32 %or.i, %shl4.i
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @mmc_send_adtc_data(ptr noundef %1, ptr noundef %17, i32 noundef 48, i32 noundef %or5.i, ptr noundef nonnull %call7.i.i, i32 noundef 512) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool22.not = icmp eq i32 %call.i, 0
  br i1 %tobool22.not, label %if.end31, label %do.end26

do.end26:                                         ; preds = %if.end20
  %init_name.i60 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %init_name.i60 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i60, align 8
  %tobool.not.i61 = icmp eq ptr %19, null
  br i1 %tobool.not.i61, label %if.end.i62, label %do.end26.dev_name.exit64_crit_edge

do.end26.dev_name.exit64_crit_edge:               ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit64

if.end.i62:                                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev28 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %20 = ptrtoint ptr %class_dev28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %class_dev28, align 4
  br label %dev_name.exit64

dev_name.exit64:                                  ; preds = %if.end.i62, %do.end26.dev_name.exit64_crit_edge
  %retval.0.i63 = phi ptr [ %21, %if.end.i62 ], [ %19, %do.end26.dev_name.exit64_crit_edge ]
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %retval.0.i63, i32 noundef %call.i) #16
  br label %out

if.end31:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %call7.i.i, align 8
  %24 = and i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool33.not = icmp eq i8 %24, 0
  %spec.select = select i1 %tobool33.not, i32 0, i32 -110
  br label %out

out:                                              ; preds = %if.end31, %dev_name.exit64, %if.end16.out_crit_edge, %dev_name.exit
  %err.0 = phi i32 [ %call11, %dev_name.exit ], [ %call17, %if.end16.out_crit_edge ], [ %call.i, %dev_name.exit64 ], [ %spec.select, %if.end31 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_get_card(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_mmc_detect_card_removed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_put_card(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_power_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_mmc_sd_suspend(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  %cb_data.i = alloca %struct.sd_busy_data, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %call.i = tail call i32 @__mmc_claim_host(ptr noundef %host, ptr noundef null, ptr noundef null) #12
  %state = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %feature_support.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 25, i32 5
  %4 = ptrtoint ptr %feature_support.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %feature_support.i, align 2
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cb_data.i) #12
  %7 = ptrtoint ptr %cb_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %cb_data.i, align 4, !annotation !257
  %8 = getelementptr inbounds %struct.sd_busy_data, ptr %cb_data.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %8, align 4, !annotation !257
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 512) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then3.sd_poweroff_notify.exit_crit_edge, label %if.end.i

if.then3.sd_poweroff_notify.exit_crit_edge:       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %sd_poweroff_notify.exit

if.end.i:                                         ; preds = %if.then3
  %ext_power.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 25
  %11 = ptrtoint ptr %ext_power.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ext_power.i, align 8
  %page.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 25, i32 1
  %13 = ptrtoint ptr %page.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %page.i, align 1
  %offset.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 25, i32 2
  %15 = ptrtoint ptr %offset.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %offset.i, align 2
  %add.i = add i16 %16, 2
  %call4.i = tail call fastcc i32 @sd_write_ext_reg(ptr noundef %1, i8 noundef zeroext %12, i8 noundef zeroext %14, i16 noundef zeroext %add.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end9.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %18, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %22, %if.end.i.i ], [ %20, %do.end.i.dev_name.exit.i_crit_edge ]
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %retval.0.i.i, i32 noundef %call4.i) #16
  br label %out.i

if.end9.i:                                        ; preds = %if.end.i
  %call10.i = tail call i32 @mmc_poll_for_busy(ptr noundef %1, i32 noundef 1000, i1 noundef zeroext false, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end9.i.out.i_crit_edge

if.end9.i.out.i_crit_edge:                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end13.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %cb_data.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %1, ptr %cb_data.i, align 4
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i.i, ptr %8, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %call17.i = call i32 @__mmc_poll_for_busy(ptr noundef %26, i32 noundef 0, i32 noundef 1000, ptr noundef nonnull @sd_busy_poweroff_notify_cb, ptr noundef nonnull %cb_data.i) #12
  br label %out.i

out.i:                                            ; preds = %if.end13.i, %if.end9.i.out.i_crit_edge, %dev_name.exit.i
  %err.0.i = phi i32 [ %call4.i, %dev_name.exit.i ], [ %call10.i, %if.end9.i.out.i_crit_edge ], [ %call17.i, %if.end13.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %sd_poweroff_notify.exit

sd_poweroff_notify.exit:                          ; preds = %out.i, %if.then3.sd_poweroff_notify.exit_crit_edge
  %retval.0.i = phi i32 [ %err.0.i, %out.i ], [ -12, %if.then3.sd_poweroff_notify.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cb_data.i) #12
  br label %if.end10

if.else:                                          ; preds = %if.end
  %caps = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %27 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %caps, align 32
  %and5 = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then7, label %if.else.if.then12_crit_edge

if.else.if.then12_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call i32 @mmc_deselect_cards(ptr noundef %host) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %sd_poweroff_notify.exit
  %err.0 = phi i32 [ %retval.0.i, %sd_poweroff_notify.exit ], [ %call8, %if.then7 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool11.not = icmp eq i32 %err.0, 0
  br i1 %tobool11.not, label %if.end10.if.then12_crit_edge, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end10.if.then12_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

if.then12:                                        ; preds = %if.end10.if.then12_crit_edge, %if.else.if.then12_crit_edge
  call void @mmc_power_off(ptr noundef %host) #12
  %29 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state, align 4
  %or = or i32 %30, 32
  store i32 %or, ptr %state, align 4
  br label %out

out:                                              ; preds = %if.then12, %if.end10.out_crit_edge, %entry.out_crit_edge
  %err.1 = phi i32 [ 0, %entry.out_crit_edge ], [ %err.0, %if.end10.out_crit_edge ], [ 0, %if.then12 ]
  call void @mmc_release_host(ptr noundef %host) #12
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_deselect_cards(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_write_ext_reg(ptr noundef %card, i8 noundef zeroext %fno, i8 noundef zeroext %page, i16 noundef zeroext %offset) unnamed_addr #2 align 64 {
entry:
  %mrq = alloca %struct.mmc_request, align 4
  %cmd = alloca %struct.mmc_command, align 4
  %data = alloca %struct.mmc_data, align 4
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %mrq) #12
  %2 = call ptr @memset(ptr %mrq, i32 0, i32 156)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #12
  %3 = call ptr @memset(ptr %cmd, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %data) #12
  %4 = call ptr @memset(ptr %data, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #12
  %5 = call ptr @memset(ptr %sg, i32 255, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 512) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd2 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %7 = ptrtoint ptr %cmd2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cmd, ptr %cmd2, align 4
  %data3 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %8 = ptrtoint ptr %data3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %data, ptr %data3, align 4
  %conv = zext i8 %fno to i32
  %shl = shl i32 %conv, 27
  %conv4 = zext i8 %page to i32
  %shl5 = shl nuw nsw i32 %conv4, 18
  %or = or i32 %shl5, %shl
  %conv6 = zext i16 %offset to i32
  %shl7 = shl nuw nsw i32 %conv6, 9
  %or8 = or i32 %or, %shl7
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %9 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or8, ptr %arg, align 4
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %call7.i.i, align 8
  %flags = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 256, ptr %flags, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 2
  %12 = ptrtoint ptr %blksz to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 512, ptr %blksz, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 3
  %13 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %blocks, align 4
  %sg9 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %14 = ptrtoint ptr %sg9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %sg, ptr %sg9, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 10
  %15 = ptrtoint ptr %sg_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %sg_len, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef nonnull %call7.i.i, i32 noundef 512) #12
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 49, ptr %cmd, align 4
  %flags10 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %17 = ptrtoint ptr %flags10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 53, ptr %flags10, align 4
  call void @mmc_set_data_timeout(ptr noundef nonnull %data, ptr noundef %card) #12
  call void @mmc_wait_for_req(ptr noundef %1, ptr noundef nonnull %mrq) #12
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  %error = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %18 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool11.not = icmp eq i32 %19, 0
  br i1 %tobool11.not, label %if.end14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %error15 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 5
  %20 = ptrtoint ptr %error15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %error15, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %19, %if.end.cleanup_crit_edge ], [ %21, %if.end14 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %data) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #12
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %mrq) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_poll_for_busy(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmc_poll_for_busy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_busy_poweroff_notify_cb(ptr nocapture noundef readonly %cb_data, ptr nocapture noundef writeonly %busy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb_data, align 4
  %ext_power = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %ext_power to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ext_power, align 8
  %page = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 25, i32 1
  %4 = ptrtoint ptr %page to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %page, align 1
  %offset = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 25, i32 2
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %offset, align 2
  %add = add i16 %7, 1
  %reg_buf = getelementptr inbounds %struct.sd_busy_data, ptr %cb_data, i32 0, i32 1
  %8 = ptrtoint ptr %reg_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_buf, align 4
  %conv.i = zext i8 %3 to i32
  %shl.i = shl i32 %conv.i, 27
  %conv1.i = zext i8 %5 to i32
  %shl2.i = shl nuw nsw i32 %conv1.i, 18
  %or.i = or i32 %shl2.i, %shl.i
  %conv3.i = zext i16 %add to i32
  %shl4.i = shl nuw nsw i32 %conv3.i, 9
  %or5.i = or i32 %or.i, %shl4.i
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @mmc_send_adtc_data(ptr noundef %1, ptr noundef %11, i32 noundef 48, i32 noundef %or5.i, ptr noundef %9, i32 noundef 512) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %13, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %17, %if.end.i ], [ %15, %do.end.dev_name.exit_crit_edge ]
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %retval.0.i, i32 noundef %call.i) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %reg_buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_buf, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %busy, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dev_name.exit
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_data_timeout(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_wait_for_req(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_adtc_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_power_up(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_status(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_power_cycle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_card(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_relative_addr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_set_dsr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_select_card(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_host_set_uhs_voltage(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_sd_init_uhs_card(ptr noundef %card) unnamed_addr #2 align 64 {
entry:
  %drv_type.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdclass = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 2
  %0 = ptrtoint ptr %cmdclass to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cmdclass, align 2
  %2 = and i16 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 64) #15
  %tobool1.not = icmp eq ptr %call7.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @mmc_app_set_bus_width(ptr noundef %card, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end7:                                          ; preds = %if.end3
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 8
  tail call void @mmc_set_bus_width(ptr noundef %5, i32 noundef 2) #12
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 8
  %caps.i.i = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %caps.i.i, align 32
  %and.i.i = and i32 %9, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and2.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not75.i = icmp eq i32 %and2.i.i, 0
  %tobool.not.i = or i1 %tobool.not.i.i, %tobool.not75.i
  br i1 %tobool.not.i, label %if.end7.if.end58.sink.split.i_crit_edge, label %if.end.i

if.end7.if.end58.sink.split.i_crit_edge:          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58.sink.split.i

if.end.i:                                         ; preds = %if.end7
  %and.i = and i32 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.else.i_crit_edge, label %land.lhs.true.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %sd3_bus_mode.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 24, i32 2
  %10 = ptrtoint ptr %sd3_bus_mode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sd3_bus_mode.i, align 4
  %and3.i = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.if.end58.sink.split.i_crit_edge

land.lhs.true.i.if.end58.sink.split.i_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58.sink.split.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %and9.i = and i32 %9, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.else.i.if.else18.i_crit_edge, label %land.lhs.true11.i

if.else.i.if.else18.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else18.i

land.lhs.true11.i:                                ; preds = %if.else.i
  %sd3_bus_mode13.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 24, i32 2
  %12 = ptrtoint ptr %sd3_bus_mode13.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sd3_bus_mode13.i, align 4
  %and14.i = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %land.lhs.true11.i.if.else18.i_crit_edge, label %land.lhs.true11.i.if.end58.sink.split.i_crit_edge

land.lhs.true11.i.if.end58.sink.split.i_crit_edge: ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58.sink.split.i

land.lhs.true11.i.if.else18.i_crit_edge:          ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else18.i

if.else18.i:                                      ; preds = %land.lhs.true11.i.if.else18.i_crit_edge, %if.else.i.if.else18.i_crit_edge
  %and21.i = and i32 %9, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.else18.i.if.else30.i_crit_edge, label %land.lhs.true23.i

if.else18.i.if.else30.i_crit_edge:                ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else30.i

land.lhs.true23.i:                                ; preds = %if.else18.i
  %sd3_bus_mode25.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 24, i32 2
  %14 = ptrtoint ptr %sd3_bus_mode25.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sd3_bus_mode25.i, align 4
  %and26.i = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true23.i.if.else30.i_crit_edge, label %land.lhs.true23.i.if.end58.sink.split.i_crit_edge

land.lhs.true23.i.if.end58.sink.split.i_crit_edge: ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58.sink.split.i

land.lhs.true23.i.if.else30.i_crit_edge:          ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else30.i

if.else30.i:                                      ; preds = %land.lhs.true23.i.if.else30.i_crit_edge, %if.else18.i.if.else30.i_crit_edge
  %and33.i = and i32 %9, 917504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.else30.i.if.else42.i_crit_edge, label %land.lhs.true35.i

if.else30.i.if.else42.i_crit_edge:                ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else42.i

land.lhs.true35.i:                                ; preds = %if.else30.i
  %sd3_bus_mode37.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 24, i32 2
  %16 = ptrtoint ptr %sd3_bus_mode37.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sd3_bus_mode37.i, align 4
  %and38.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %land.lhs.true35.i.if.else42.i_crit_edge, label %land.lhs.true35.i.if.end58.sink.split.i_crit_edge

land.lhs.true35.i.if.end58.sink.split.i_crit_edge: ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58.sink.split.i

land.lhs.true35.i.if.else42.i_crit_edge:          ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else42.i

if.else42.i:                                      ; preds = %land.lhs.true35.i.if.else42.i_crit_edge, %if.else30.i.if.else42.i_crit_edge
  %and45.i = and i32 %9, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.else42.i.sd_update_bus_speed_mode.exit_crit_edge, label %land.lhs.true47.i

if.else42.i.sd_update_bus_speed_mode.exit_crit_edge: ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sd_update_bus_speed_mode.exit

land.lhs.true47.i:                                ; preds = %if.else42.i
  %sd3_bus_mode49.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 24, i32 2
  %18 = ptrtoint ptr %sd3_bus_mode49.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sd3_bus_mode49.i, align 4
  %and50.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  br i1 %tobool51.not.i, label %land.lhs.true47.i.sd_update_bus_speed_mode.exit_crit_edge, label %land.lhs.true47.i.if.end58.sink.split.i_crit_edge

land.lhs.true47.i.if.end58.sink.split.i_crit_edge: ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58.sink.split.i

land.lhs.true47.i.sd_update_bus_speed_mode.exit_crit_edge: ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sd_update_bus_speed_mode.exit

if.end58.sink.split.i:                            ; preds = %land.lhs.true47.i.if.end58.sink.split.i_crit_edge, %land.lhs.true35.i.if.end58.sink.split.i_crit_edge, %land.lhs.true23.i.if.end58.sink.split.i_crit_edge, %land.lhs.true11.i.if.end58.sink.split.i_crit_edge, %land.lhs.true.i.if.end58.sink.split.i_crit_edge, %if.end7.if.end58.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 0, %if.end7.if.end58.sink.split.i_crit_edge ], [ 3, %land.lhs.true.i.if.end58.sink.split.i_crit_edge ], [ 4, %land.lhs.true11.i.if.end58.sink.split.i_crit_edge ], [ 2, %land.lhs.true23.i.if.end58.sink.split.i_crit_edge ], [ 1, %land.lhs.true35.i.if.end58.sink.split.i_crit_edge ], [ 0, %land.lhs.true47.i.if.end58.sink.split.i_crit_edge ]
  %sd_bus_speed17.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 38
  %20 = ptrtoint ptr %sd_bus_speed17.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink.i, ptr %sd_bus_speed17.i, align 8
  br label %sd_update_bus_speed_mode.exit

sd_update_bus_speed_mode.exit:                    ; preds = %if.end58.sink.split.i, %land.lhs.true47.i.sd_update_bus_speed_mode.exit_crit_edge, %if.else42.i.sd_update_bus_speed_mode.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %drv_type.i) #12
  %21 = ptrtoint ptr %drv_type.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %drv_type.i, align 4, !annotation !257
  %drive_strength1.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 40
  %22 = ptrtoint ptr %drive_strength1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %drive_strength1.i, align 8
  %sd3_drv_type.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 24, i32 3
  %23 = ptrtoint ptr %sd3_drv_type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sd3_drv_type.i, align 4
  %or.i = or i32 %24, 1
  %uhs_max_dtr.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 24, i32 1
  %25 = ptrtoint ptr %uhs_max_dtr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %uhs_max_dtr.i, align 4
  %call.i = call i32 @mmc_select_drive_strength(ptr noundef %card, i32 noundef %26, i32 noundef %or.i, ptr noundef nonnull %drv_type.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i78 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i78, label %sd_update_bus_speed_mode.exit.if.end13.i_crit_edge, label %if.then.i

sd_update_bus_speed_mode.exit.if.end13.i_crit_edge: ; preds = %sd_update_bus_speed_mode.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.then.i:                                        ; preds = %sd_update_bus_speed_mode.exit
  %conv.i = trunc i32 %call.i to i8
  %call3.i = call i32 @mmc_sd_switch(ptr noundef %card, i32 noundef 1, i32 noundef 2, i8 noundef zeroext %conv.i, ptr noundef nonnull %call7.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i79 = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i79, label %if.end.i81, label %sd_select_driver_type.exit

if.end.i81:                                       ; preds = %if.then.i
  %arrayidx.i = getelementptr i8, ptr %call7.i, i32 15
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i, align 1
  %29 = and i8 %28, 15
  %and.i80 = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %and.i80)
  %cmp.not.i = icmp eq i32 %call.i, %and.i80
  br i1 %cmp.not.i, label %if.end11.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i81
  %30 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %card, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %31, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i82 = icmp eq ptr %33, null
  br i1 %tobool.not.i.i82, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %35, %if.end.i.i ], [ %33, %do.end.i.dev_name.exit.i_crit_edge ]
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %retval.0.i.i) #16
  br label %if.end11

if.end11.i:                                       ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %drive_strength1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call.i, ptr %drive_strength1.i, align 8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end11.i, %sd_update_bus_speed_mode.exit.if.end13.i_crit_edge
  %37 = ptrtoint ptr %drv_type.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %drv_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool14.not.i = icmp eq i32 %38, 0
  br i1 %tobool14.not.i, label %if.end13.i.if.end11_crit_edge, label %if.then15.i

if.end13.i.if.end11_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %card, align 8
  call void @mmc_set_driver_type(ptr noundef %40, i32 noundef %38) #12
  br label %if.end11

sd_select_driver_type.exit:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %drv_type.i) #12
  br label %out

if.end11:                                         ; preds = %if.then15.i, %if.end13.i.if.end11_crit_edge, %dev_name.exit.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %drv_type.i) #12
  %sd_bus_speed.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 38
  %41 = ptrtoint ptr %sd_bus_speed.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sd_bus_speed.i, align 8
  %.off.i = add i32 %42, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %if.end.i83, label %if.end11.if.end15_crit_edge

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.end.i83:                                       ; preds = %if.end11
  %43 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %card, align 8
  %vdd.i.i = getelementptr inbounds %struct.mmc_host, ptr %44, i32 0, i32 28, i32 1
  %45 = ptrtoint ptr %vdd.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vdd.i.i, align 4
  %conv.i.i = zext i16 %46 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %47 = zext i32 %shl.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %shl.i.i, label %if.end.i83.if.end15_crit_edge [
    i32 128, label %sw.bb.i.i
    i32 131072, label %if.end.i83.sw.bb1.i.i_crit_edge
    i32 262144, label %if.end.i83.sw.bb1.i.i_crit_edge108
    i32 1048576, label %if.end.i83.sw.bb2.i.i_crit_edge
    i32 2097152, label %if.end.i83.sw.bb2.i.i_crit_edge109
  ]

if.end.i83.sw.bb2.i.i_crit_edge109:               ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i.i

if.end.i83.sw.bb2.i.i_crit_edge:                  ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i.i

if.end.i83.sw.bb1.i.i_crit_edge108:               ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i.i

if.end.i83.sw.bb1.i.i_crit_edge:                  ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i.i

if.end.i83.if.end15_crit_edge:                    ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

sw.bb.i.i:                                        ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #14
  %max_current_180.i.i = getelementptr inbounds %struct.mmc_host, ptr %44, i32 0, i32 15
  br label %sd_get_host_max_current.exit.i

sw.bb1.i.i:                                       ; preds = %if.end.i83.sw.bb1.i.i_crit_edge, %if.end.i83.sw.bb1.i.i_crit_edge108
  %max_current_300.i.i = getelementptr inbounds %struct.mmc_host, ptr %44, i32 0, i32 14
  br label %sd_get_host_max_current.exit.i

sw.bb2.i.i:                                       ; preds = %if.end.i83.sw.bb2.i.i_crit_edge, %if.end.i83.sw.bb2.i.i_crit_edge109
  %max_current_330.i.i = getelementptr inbounds %struct.mmc_host, ptr %44, i32 0, i32 13
  br label %sd_get_host_max_current.exit.i

sd_get_host_max_current.exit.i:                   ; preds = %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %max_current.0.i.in.i = phi ptr [ %max_current_330.i.i, %sw.bb2.i.i ], [ %max_current_300.i.i, %sw.bb1.i.i ], [ %max_current_180.i.i, %sw.bb.i.i ]
  %48 = ptrtoint ptr %max_current.0.i.in.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %max_current.0.i.i = load i32, ptr %max_current.0.i.in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 799, i32 %max_current.0.i.i)
  %cmp6.i = icmp ugt i32 %max_current.0.i.i, 799
  br i1 %cmp6.i, label %land.lhs.true7.i, label %if.else.i86

land.lhs.true7.i:                                 ; preds = %sd_get_host_max_current.exit.i
  %sd3_curr_limit.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 24, i32 4
  %49 = ptrtoint ptr %sd3_curr_limit.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sd3_curr_limit.i, align 4
  %and.i84 = and i32 %50, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84)
  %tobool.not.i85 = icmp eq i32 %and.i84, 0
  br i1 %tobool.not.i85, label %land.lhs.true7.i.land.lhs.true10.i_crit_edge, label %land.lhs.true7.i.if.then37.i_crit_edge

land.lhs.true7.i.if.then37.i_crit_edge:           ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then37.i

land.lhs.true7.i.land.lhs.true10.i_crit_edge:     ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true10.i

if.else.i86:                                      ; preds = %sd_get_host_max_current.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 599, i32 %max_current.0.i.i)
  %cmp9.i = icmp ugt i32 %max_current.0.i.i, 599
  br i1 %cmp9.i, label %if.else.i86.land.lhs.true10.i_crit_edge, label %if.else16.i

if.else.i86.land.lhs.true10.i_crit_edge:          ; preds = %if.else.i86
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true10.i

land.lhs.true10.i:                                ; preds = %if.else.i86.land.lhs.true10.i_crit_edge, %land.lhs.true7.i.land.lhs.true10.i_crit_edge
  %sd3_curr_limit12.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 24, i32 4
  %51 = ptrtoint ptr %sd3_curr_limit12.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sd3_curr_limit12.i, align 4
  %and13.i = and i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i87 = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i87, label %land.lhs.true10.i.land.lhs.true18.i_crit_edge, label %land.lhs.true10.i.if.then37.i_crit_edge

land.lhs.true10.i.if.then37.i_crit_edge:          ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then37.i

land.lhs.true10.i.land.lhs.true18.i_crit_edge:    ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true18.i

if.else16.i:                                      ; preds = %if.else.i86
  call void @__sanitizer_cov_trace_const_cmp4(i32 399, i32 %max_current.0.i.i)
  %cmp17.i = icmp ugt i32 %max_current.0.i.i, 399
  br i1 %cmp17.i, label %if.else16.i.land.lhs.true18.i_crit_edge, label %if.else24.i

if.else16.i.land.lhs.true18.i_crit_edge:          ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true18.i

land.lhs.true18.i:                                ; preds = %if.else16.i.land.lhs.true18.i_crit_edge, %land.lhs.true10.i.land.lhs.true18.i_crit_edge
  %sd3_curr_limit20.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 24, i32 4
  %53 = ptrtoint ptr %sd3_curr_limit20.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sd3_curr_limit20.i, align 4
  %and21.i88 = and i32 %54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i88)
  %tobool22.not.i89 = icmp eq i32 %and21.i88, 0
  br i1 %tobool22.not.i89, label %land.lhs.true18.i.if.end35.i_crit_edge, label %land.lhs.true18.i.if.then37.i_crit_edge

land.lhs.true18.i.if.then37.i_crit_edge:          ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then37.i

land.lhs.true18.i.if.end35.i_crit_edge:           ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

if.else24.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 199, i32 %max_current.0.i.i)
  %cmp25.i = icmp ugt i32 %max_current.0.i.i, 199
  br i1 %cmp25.i, label %if.else24.i.if.end35.i_crit_edge, label %if.else24.i.if.end15_crit_edge

if.else24.i.if.end15_crit_edge:                   ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.else24.i.if.end35.i_crit_edge:                 ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.else24.i.if.end35.i_crit_edge, %land.lhs.true18.i.if.end35.i_crit_edge
  %sd3_curr_limit28.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 24, i32 4
  %55 = ptrtoint ptr %sd3_curr_limit28.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sd3_curr_limit28.i, align 4
  %and29.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end35.i.if.end15_crit_edge, label %if.end35.i.if.then37.i_crit_edge

if.end35.i.if.then37.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then37.i

if.end35.i.if.end15_crit_edge:                    ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then37.i:                                      ; preds = %if.end35.i.if.then37.i_crit_edge, %land.lhs.true18.i.if.then37.i_crit_edge, %land.lhs.true10.i.if.then37.i_crit_edge, %land.lhs.true7.i.if.then37.i_crit_edge
  %current_limit.095.i = phi i32 [ 0, %if.end35.i.if.then37.i_crit_edge ], [ 1, %land.lhs.true18.i.if.then37.i_crit_edge ], [ 2, %land.lhs.true10.i.if.then37.i_crit_edge ], [ 3, %land.lhs.true7.i.if.then37.i_crit_edge ]
  %conv.i90 = trunc i32 %current_limit.095.i to i8
  %call38.i = call i32 @mmc_sd_switch(ptr noundef %card, i32 noundef 1, i32 noundef 3, i8 noundef zeroext %conv.i90, ptr noundef nonnull %call7.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i91 = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i91, label %if.end41.i, label %if.then37.i.out_crit_edge

if.then37.i.out_crit_edge:                        ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end41.i:                                       ; preds = %if.then37.i
  %arrayidx.i92 = getelementptr i8, ptr %call7.i, i32 15
  %57 = ptrtoint ptr %arrayidx.i92 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i92, align 1
  %59 = lshr i8 %58, 4
  %60 = zext i8 %59 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %current_limit.095.i, i32 %60)
  %cmp44.not.i = icmp eq i32 %current_limit.095.i, %60
  br i1 %cmp44.not.i, label %if.end41.i.if.end15_crit_edge, label %do.end.i95

if.end41.i.if.end15_crit_edge:                    ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

do.end.i95:                                       ; preds = %if.end41.i
  %61 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %card, align 8
  %init_name.i.i93 = getelementptr inbounds %struct.mmc_host, ptr %62, i32 0, i32 1, i32 3
  %63 = ptrtoint ptr %init_name.i.i93 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %init_name.i.i93, align 8
  %tobool.not.i.i94 = icmp eq ptr %64, null
  br i1 %tobool.not.i.i94, label %if.end.i.i97, label %do.end.i95.dev_name.exit.i99_crit_edge

do.end.i95.dev_name.exit.i99_crit_edge:           ; preds = %do.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i99

if.end.i.i97:                                     ; preds = %do.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev.i96 = getelementptr inbounds %struct.mmc_host, ptr %62, i32 0, i32 1
  %65 = ptrtoint ptr %class_dev.i96 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %class_dev.i96, align 4
  br label %dev_name.exit.i99

dev_name.exit.i99:                                ; preds = %if.end.i.i97, %do.end.i95.dev_name.exit.i99_crit_edge
  %retval.0.i.i98 = phi ptr [ %66, %if.end.i.i97 ], [ %64, %do.end.i95.dev_name.exit.i99_crit_edge ]
  %call49.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %retval.0.i.i98) #16
  br label %if.end15

if.end15:                                         ; preds = %dev_name.exit.i99, %if.end41.i.if.end15_crit_edge, %if.end35.i.if.end15_crit_edge, %if.else24.i.if.end15_crit_edge, %if.end.i83.if.end15_crit_edge, %if.end11.if.end15_crit_edge
  %call16 = call fastcc i32 @sd_set_bus_speed_mode(ptr noundef %card, ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end19:                                         ; preds = %if.end15
  %67 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %card, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %68, i32 0, i32 16
  %69 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %caps, align 32
  %and21 = and i32 %70, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %land.lhs.true, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true:                                    ; preds = %if.end19
  %timing = getelementptr inbounds %struct.mmc_host, ptr %68, i32 0, i32 28, i32 7
  %71 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %timing, align 4
  %.off = add i8 %72, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %if.then39, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then39:                                        ; preds = %land.lhs.true
  %call40 = call i32 @mmc_execute_tuning(ptr noundef %card) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then39.out_crit_edge, label %land.lhs.true42

if.then39.out_crit_edge:                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true42:                                  ; preds = %if.then39
  %73 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %card, align 8
  %timing45 = getelementptr inbounds %struct.mmc_host, ptr %74, i32 0, i32 28, i32 7
  %75 = ptrtoint ptr %timing45 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %timing45, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %76)
  %cmp47 = icmp eq i8 %76, 7
  br i1 %cmp47, label %do.end, label %land.lhs.true42.out_crit_edge

land.lhs.true42.out_crit_edge:                    ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end:                                           ; preds = %land.lhs.true42
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %74, i32 0, i32 1, i32 3
  %77 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i101 = icmp eq ptr %78, null
  br i1 %tobool.not.i101, label %if.end.i102, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i102:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %74, i32 0, i32 1
  %79 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i102, %do.end.dev_name.exit_crit_edge
  %retval.0.i103 = phi ptr [ %80, %if.end.i102 ], [ %78, %do.end.dev_name.exit_crit_edge ]
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %retval.0.i103) #16
  br label %out

out:                                              ; preds = %dev_name.exit, %land.lhs.true42.out_crit_edge, %if.then39.out_crit_edge, %land.lhs.true.out_crit_edge, %if.end19.out_crit_edge, %if.end15.out_crit_edge, %if.then37.i.out_crit_edge, %sd_select_driver_type.exit, %if.end3.out_crit_edge
  %err.0 = phi i32 [ %call4, %if.end3.out_crit_edge ], [ %call3.i, %sd_select_driver_type.exit ], [ %call16, %if.end15.out_crit_edge ], [ 0, %if.end19.out_crit_edge ], [ 0, %dev_name.exit ], [ %call40, %land.lhs.true42.out_crit_edge ], [ 0, %if.then39.out_crit_edge ], [ 0, %land.lhs.true.out_crit_edge ], [ %call38.i, %if.then37.i.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_timing(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_clock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_app_set_bus_width(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_bus_width(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_set_bus_speed_mode(ptr noundef %card, ptr noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_bus_speed = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 38
  %0 = ptrtoint ptr %sd_bus_speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sd_bus_speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %2 = icmp ult i32 %1, 5
  br i1 %2, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.sd_set_bus_speed_mode, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.offset = add i32 %1, 3
  %uhs_max_dtr12 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 24, i32 1
  %4 = ptrtoint ptr %uhs_max_dtr12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %switch.load, ptr %uhs_max_dtr12, align 4
  %conv = trunc i32 %1 to i8
  %call = tail call i32 @mmc_sd_switch(ptr noundef %card, i32 noundef 1, i32 noundef 0, i8 noundef zeroext %conv, ptr noundef %status) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  %arrayidx = getelementptr i8, ptr %status, i32 16
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = and i8 %6, 15
  %and = zext i8 %7 to i32
  %8 = ptrtoint ptr %sd_bus_speed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sd_bus_speed, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %and)
  %cmp.not = icmp eq i32 %9, %and
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 8
  br i1 %cmp.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.end
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %15, %if.end.i ], [ %13, %do.end.dev_name.exit_crit_edge ]
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %retval.0.i) #16
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mmc_set_timing(ptr noundef %11, i32 noundef %switch.offset) #12
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 8
  %uhs_max_dtr23 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 24, i32 1
  %18 = ptrtoint ptr %uhs_max_dtr23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %uhs_max_dtr23, align 4
  tail call void @mmc_set_clock(ptr noundef %17, i32 noundef %19) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else, %dev_name.exit, %switch.lookup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %switch.lookup.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %dev_name.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_execute_tuning(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_select_drive_strength(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_driver_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmc_claim_host(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !27, !29, !30, !31, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !47, !48, !50, !51, !53, !55, !56, !57, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !81, !82, !83, !85, !86, !88, !89, !90, !92, !93, !95, !96, !98, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !113, !114, !116, !118, !120, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !148, !149, !150, !151, !153, !154, !155, !157, !159, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171, !172, !174, !175, !176, !177, !179, !180, !181, !182, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !204, !206, !207, !208, !209, !211, !212, !213, !214, !216, !217, !218, !219, !221, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !237, !239, !240, !241, !242, !244, !245, !246}
!llvm.module.flags = !{!247, !248, !249, !250, !251, !252, !253, !254}
!llvm.ident = !{!255}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mmc/core/sd.c", i32 401, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mmc_sd_switch_hs._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mmc_sd_switch_hs._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @sd_type, !7, !"sd_type", i1 false, i1 false}
!7 = !{!"../drivers/mmc/core/sd.c", i32 802, i32 20}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mmc/core/sd.c", i32 819, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mmc_sd_get_cid._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @mmc_sd_get_cid._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/mmc/core/sd.c", i32 974, i32 4}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mmc_sd_setup_card._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @mmc_sd_setup_card._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mmc/core/sd.c", i32 1875, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @mmc_attach_sd._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @mmc_attach_sd._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @sd_std_groups, !24, !"sd_std_groups", i1 false, i1 false}
!24 = !{!"../drivers/mmc/core/sd.c", i32 800, i32 1}
!25 = !{ptr @sd_std_group, !26, !"sd_std_group", i1 false, i1 false}
!26 = !{!"../drivers/mmc/core/sd.c", i32 796, i32 37}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mmc/core/sd.c", i32 727, i32 1}
!29 = !{ptr @dev_attr_vendor, !28, !"dev_attr_vendor", i1 false, i1 false}
!30 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mmc/core/sd.c", i32 728, i32 1}
!33 = !{ptr @dev_attr_device, !32, !"dev_attr_device", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mmc/core/sd.c", i32 729, i32 1}
!36 = !{ptr @dev_attr_revision, !35, !"dev_attr_revision", i1 false, i1 false}
!37 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mmc/core/sd.c", i32 744, i32 1}
!40 = !{ptr @dev_attr_info1, !39, !"dev_attr_info1", i1 false, i1 false}
!41 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mmc/core/sd.c", i32 745, i32 1}
!44 = !{ptr @dev_attr_info2, !43, !"dev_attr_info2", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mmc/core/sd.c", i32 746, i32 1}
!47 = !{ptr @dev_attr_info3, !46, !"dev_attr_info3", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mmc/core/sd.c", i32 747, i32 1}
!50 = !{ptr @dev_attr_info4, !49, !"dev_attr_info4", i1 false, i1 false}
!51 = !{ptr @sd_std_attrs, !52, !"sd_std_attrs", i1 false, i1 false}
!52 = !{!"../drivers/mmc/core/sd.c", i32 749, i32 26}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mmc/core/sd.c", i32 685, i32 1}
!55 = !{ptr @dev_attr_cid, !54, !"dev_attr_cid", i1 false, i1 false}
!56 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mmc/core/sd.c", i32 687, i32 1}
!59 = !{ptr @dev_attr_csd, !58, !"dev_attr_csd", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mmc/core/sd.c", i32 689, i32 1}
!62 = !{ptr @dev_attr_scr, !61, !"dev_attr_scr", i1 false, i1 false}
!63 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mmc/core/sd.c", i32 690, i32 1}
!66 = !{ptr @dev_attr_ssr, !65, !"dev_attr_ssr", i1 false, i1 false}
!67 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mmc/core/sd.c", i32 698, i32 1}
!70 = !{ptr @dev_attr_date, !69, !"dev_attr_date", i1 false, i1 false}
!71 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mmc/core/sd.c", i32 699, i32 1}
!74 = !{ptr @dev_attr_erase_size, !73, !"dev_attr_erase_size", i1 false, i1 false}
!75 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mmc/core/sd.c", i32 700, i32 1}
!78 = !{ptr @dev_attr_preferred_erase_size, !77, !"dev_attr_preferred_erase_size", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mmc/core/sd.c", i32 701, i32 1}
!81 = !{ptr @dev_attr_fwrev, !80, !"dev_attr_fwrev", i1 false, i1 false}
!82 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mmc/core/sd.c", i32 702, i32 1}
!85 = !{ptr @dev_attr_hwrev, !84, !"dev_attr_hwrev", i1 false, i1 false}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mmc/core/sd.c", i32 703, i32 1}
!88 = !{ptr @dev_attr_manfid, !87, !"dev_attr_manfid", i1 false, i1 false}
!89 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mmc/core/sd.c", i32 704, i32 1}
!92 = !{ptr @dev_attr_name, !91, !"dev_attr_name", i1 false, i1 false}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mmc/core/sd.c", i32 705, i32 1}
!95 = !{ptr @dev_attr_oemid, !94, !"dev_attr_oemid", i1 false, i1 false}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mmc/core/sd.c", i32 706, i32 1}
!98 = !{ptr @dev_attr_serial, !97, !"dev_attr_serial", i1 false, i1 false}
!99 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mmc/core/sd.c", i32 707, i32 1}
!102 = !{ptr @dev_attr_ocr, !101, !"dev_attr_ocr", i1 false, i1 false}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mmc/core/sd.c", i32 708, i32 1}
!105 = !{ptr @dev_attr_rca, !104, !"dev_attr_rca", i1 false, i1 false}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/mmc/core/sd.c", i32 725, i32 8}
!108 = !{ptr @dev_attr_dsr, !107, !"dev_attr_dsr", i1 false, i1 false}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mmc/core/sd.c", i32 189, i32 3}
!111 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @mmc_decode_csd._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @mmc_decode_csd._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @taac_exp, !115, !"taac_exp", i1 false, i1 false}
!115 = !{!"../drivers/mmc/core/sd.c", i32 40, i32 27}
!116 = !{ptr @taac_mant, !117, !"taac_mant", i1 false, i1 false}
!117 = !{!"../drivers/mmc/core/sd.c", i32 44, i32 27}
!118 = !{ptr @tran_exp, !119, !"tran_exp", i1 false, i1 false}
!119 = !{!"../drivers/mmc/core/sd.c", i32 30, i32 27}
!120 = !{ptr @tran_mant, !121, !"tran_mant", i1 false, i1 false}
!121 = !{!"../drivers/mmc/core/sd.c", i32 35, i32 28}
!122 = !{ptr @.str.45, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/mmc/core/sd.c", i32 213, i32 3}
!124 = !{ptr @.str.46, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @mmc_decode_scr._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @mmc_decode_scr._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.48, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/mmc/core/sd.c", i32 242, i32 3}
!129 = !{ptr @mmc_decode_scr._entry.47, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @mmc_decode_scr._entry_ptr.49, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.50, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/mmc/core/sd.c", i32 261, i32 3}
!133 = !{ptr @.str.51, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @mmc_read_ssr._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @mmc_read_ssr._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.53, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/mmc/core/sd.c", i32 271, i32 3}
!138 = !{ptr @mmc_read_ssr._entry.52, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @mmc_read_ssr._entry_ptr.54, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.56, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/mmc/core/sd.c", i32 298, i32 4}
!142 = !{ptr @mmc_read_ssr._entry.55, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @mmc_read_ssr._entry_ptr.57, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @sd_au_size, !145, !"sd_au_size", i1 false, i1 false}
!145 = !{!"../drivers/mmc/core/sd.c", i32 49, i32 27}
!146 = !{ptr @.str.58, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/mmc/core/sd.c", i32 326, i32 3}
!148 = !{ptr @.str.59, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @mmc_read_switch._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @mmc_read_switch._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.61, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/mmc/core/sd.c", i32 349, i32 3}
!153 = !{ptr @mmc_read_switch._entry.60, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @mmc_read_switch._entry_ptr.62, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @mmc_sd_ops, !156, !"mmc_sd_ops", i1 false, i1 false}
!156 = !{!"../drivers/mmc/core/sd.c", i32 1794, i32 33}
!157 = !{ptr @.str.63, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/mmc/core/sd.c", i32 1662, i32 3}
!159 = !{ptr @.str.64, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @sd_poweroff_notify._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @sd_poweroff_notify._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.65, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/mmc/core/sd.c", i32 1636, i32 3}
!164 = !{ptr @.str.66, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @sd_busy_poweroff_notify_cb._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @sd_busy_poweroff_notify_cb._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.67, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/mmc/core/sd.c", i32 1767, i32 3}
!169 = !{ptr @.str.68, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @mmc_sd_runtime_suspend._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @mmc_sd_runtime_suspend._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.69, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/mmc/core/sd.c", i32 1782, i32 3}
!174 = !{ptr @.str.70, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @mmc_sd_runtime_resume._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @mmc_sd_runtime_resume._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.71, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/mmc/core/sd.c", i32 1323, i32 3}
!179 = !{ptr @.str.72, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @sd_flush_cache._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @sd_flush_cache._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.74, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/mmc/core/sd.c", i32 1339, i32 3}
!184 = !{ptr @sd_flush_cache._entry.73, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @sd_flush_cache._entry_ptr.75, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.76, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/mmc/core/sd.c", i32 1407, i32 4}
!188 = !{ptr @.str.77, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.78, !187, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @mmc_sd_init_card.__UNIQUE_ID_ddebug268, !187, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!191 = !{ptr @.str.79, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/mmc/core/sd.c", i32 1551, i32 4}
!193 = !{ptr @mmc_sd_init_card._entry, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @mmc_sd_init_card._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.81, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/mmc/core/sd.c", i32 1558, i32 3}
!197 = !{ptr @mmc_sd_init_card._entry.80, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @mmc_sd_init_card._entry_ptr.82, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.83, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/mmc/core/sd.c", i32 673, i32 4}
!201 = !{ptr @.str.84, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @mmc_sd_init_uhs_card._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @mmc_sd_init_uhs_card._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.85, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/mmc/core/sd.c", i32 432, i32 4}
!206 = !{ptr @.str.86, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @sd_select_driver_type._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @sd_select_driver_type._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.87, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/mmc/core/sd.c", i32 604, i32 4}
!211 = !{ptr @.str.88, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @sd_set_current_limit._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @sd_set_current_limit._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.89, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/mmc/core/sd.c", i32 513, i32 3}
!216 = !{ptr @.str.90, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @sd_set_bus_speed_mode._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @sd_set_bus_speed_mode._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.91, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/mmc/core/sd.c", i32 1254, i32 3}
!221 = !{ptr @.str.92, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @sd_read_ext_regs._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @sd_read_ext_regs._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.94, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/mmc/core/sd.c", i32 1270, i32 3}
!226 = !{ptr @sd_read_ext_regs._entry.93, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @sd_read_ext_regs._entry_ptr.95, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.97, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/mmc/core/sd.c", i32 1283, i32 4}
!230 = !{ptr @sd_read_ext_regs._entry.96, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @sd_read_ext_regs._entry_ptr.98, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.99, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/mmc/core/sd.c", i32 1103, i32 3}
!234 = !{ptr @.str.100, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @sd_parse_ext_reg_power._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @sd_parse_ext_reg_power._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.101, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/mmc/core/sd.c", i32 1144, i32 3}
!239 = !{ptr @.str.102, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @sd_parse_ext_reg_perf._entry, !238, !"_entry", i1 false, i1 false}
!241 = !{ptr @sd_parse_ext_reg_perf._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.103, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/mmc/core/sd.c", i32 1369, i32 3}
!244 = !{ptr @.str.104, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @sd_enable_cache._entry, !243, !"_entry", i1 false, i1 false}
!246 = !{ptr @sd_enable_cache._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!247 = !{i32 1, !"wchar_size", i32 2}
!248 = !{i32 1, !"min_enum_size", i32 4}
!249 = !{i32 8, !"branch-target-enforcement", i32 0}
!250 = !{i32 8, !"sign-return-address", i32 0}
!251 = !{i32 8, !"sign-return-address-all", i32 0}
!252 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!253 = !{i32 7, !"uwtable", i32 1}
!254 = !{i32 7, !"frame-pointer", i32 2}
!255 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!256 = !{i8 0, i8 2}
!257 = !{!"auto-init"}
!258 = !{!"branch_weights", i32 1, i32 2000}
!259 = !{i64 2148256066, i64 2148256071, i64 2148256084, i64 2148256128, i64 2148256162, i64 2148256183}
