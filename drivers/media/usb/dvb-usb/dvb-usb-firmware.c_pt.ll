; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/dvb-usb-firmware.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/dvb-usb-firmware.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+usb_cypress_load_firmware\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_cypress_load_firmware\09\09\09\09"
module asm "\09.long\09__crc_usb_cypress_load_firmware\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_cypress_load_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_cypress_load_firmware\22\09\09\09\09\09"
module asm "__kstrtabns_usb_cypress_load_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dvb_usb_get_hexline\22, \22a\22\09"
module asm "\09.weak\09__crc_dvb_usb_get_hexline\09\09\09\09"
module asm "\09.long\09__crc_dvb_usb_get_hexline\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_usb_get_hexline:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_usb_get_hexline\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_usb_get_hexline:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.usb_cypress_controller = type { i32, ptr, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.hexline = type { i8, i32, i8, [255 x i8], i8 }
%struct.dvb_usb_device_properties = type { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, [12 x %struct.dvb_usb_device_description] }
%struct.dvb_usb_adapter_properties = type { i32, ptr, i32, [3 x %struct.dvb_usb_adapter_fe_properties] }
%struct.dvb_usb_adapter_fe_properties = type { i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.usb_data_stream_properties, i32 }
%struct.usb_data_stream_properties = type { i32, i32, i32, %union.anon.131 }
%union.anon.131 = type { %struct.anon.133 }
%struct.anon.133 = type { i32, i32, i32 }
%struct.anon.134 = type { i32, %struct.dvb_rc_legacy, %struct.dvb_rc }
%struct.dvb_rc_legacy = type { ptr, i32, ptr, i32 }
%struct.dvb_rc = type { ptr, i64, i64, i32, ptr, ptr, ptr, i32, i8, i32 }
%struct.dvb_usb_device_description = type { ptr, [15 x ptr], [15 x ptr] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@cypress = internal constant { [4 x %struct.usb_cypress_controller], [48 x i8] } { [4 x %struct.usb_cypress_controller] [%struct.usb_cypress_controller { i32 0, ptr @.str.23, i16 0 }, %struct.usb_cypress_controller { i32 1, ptr @.str.24, i16 32658 }, %struct.usb_cypress_controller { i32 2, ptr @.str.25, i16 32658 }, %struct.usb_cypress_controller { i32 3, ptr @.str.26, i16 -6656 }], [48 x i8] zeroinitializer }, align 32
@usb_cypress_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013dvb-usb: could not stop the USB controller CPU.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"usb_cypress_load_firmware\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/usb/dvb-usb/dvb-usb-firmware.c\00", [51 x i8] zeroinitializer }, align 32
@usb_cypress_load_firmware._entry_ptr = internal global ptr @usb_cypress_load_firmware._entry, section ".printk_index", align 4
@dvb_usb_debug = external dso_local local_unnamed_addr global i32, align 4
@usb_cypress_load_firmware._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"writing to address 0x%04x (buffer: 0x%02x %02x)\0A\00", [47 x i8] zeroinitializer }, align 32
@usb_cypress_load_firmware._entry_ptr.5 = internal global ptr @usb_cypress_load_firmware._entry.3, section ".printk_index", align 4
@usb_cypress_load_firmware._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013dvb-usb: error while transferring firmware (transferred size: %d, block size: %d)\0A\00", [43 x i8] zeroinitializer }, align 32
@usb_cypress_load_firmware._entry_ptr.8 = internal global ptr @usb_cypress_load_firmware._entry.6, section ".printk_index", align 4
@usb_cypress_load_firmware._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013dvb-usb: firmware download failed at %d with %d\0A\00", [45 x i8] zeroinitializer }, align 32
@usb_cypress_load_firmware._entry_ptr.11 = internal global ptr @usb_cypress_load_firmware._entry.9, section ".printk_index", align 4
@usb_cypress_load_firmware._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013dvb-usb: could not restart the USB controller CPU.\0A\00", [42 x i8] zeroinitializer }, align 32
@usb_cypress_load_firmware._entry_ptr.14 = internal global ptr @usb_cypress_load_firmware._entry.12, section ".printk_index", align 4
@__kstrtab_usb_cypress_load_firmware = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_cypress_load_firmware = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_cypress_load_firmware = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_cypress_load_firmware to i32), ptr @__kstrtab_usb_cypress_load_firmware, ptr @__kstrtabns_usb_cypress_load_firmware }, section "___ksymtab+usb_cypress_load_firmware", align 4
@dvb_usb_download_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [131 x i8], [61 x i8] } { [131 x i8] c"\013dvb-usb: did not find the firmware file '%s' (status %d). You can use <kernel_dir>/scripts/get_dvb_firmware to get the firmware\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dvb_usb_download_firmware\00", [38 x i8] zeroinitializer }, align 32
@dvb_usb_download_firmware._entry_ptr = internal global ptr @dvb_usb_download_firmware._entry, section ".printk_index", align 4
@dvb_usb_download_firmware._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016dvb-usb: downloading firmware from file '%s'\0A\00", [48 x i8] zeroinitializer }, align 32
@dvb_usb_download_firmware._entry_ptr.19 = internal global ptr @dvb_usb_download_firmware._entry.17, section ".printk_index", align 4
@dvb_usb_download_firmware._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [121 x i8], [39 x i8] } { [121 x i8] c"\013dvb-usb: BUG: driver didn't specified a download_firmware-callback, although it claims to have a DEVICE_SPECIFIC one.\0A\00", [39 x i8] zeroinitializer }, align 32
@dvb_usb_download_firmware._entry_ptr.22 = internal global ptr @dvb_usb_download_firmware._entry.20, section ".printk_index", align 4
@__kstrtab_dvb_usb_get_hexline = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_usb_get_hexline = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_usb_get_hexline = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_usb_get_hexline to i32), ptr @__kstrtab_dvb_usb_get_hexline, ptr @__kstrtabns_dvb_usb_get_hexline }, section "___ksymtab+dvb_usb_get_hexline", align 4
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Device specific\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Cypress AN2135\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Cypress AN2235\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Cypress FX2\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.27 = private unnamed_addr constant [8 x i8] c"cypress\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 21, i32 38 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 52, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 55, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 59, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 66, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 75, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 94, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 99, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 111, i32 5 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 22, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 23, i32 35 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 24, i32 35 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [48 x i8] c"../drivers/media/usb/dvb-usb/dvb-usb-firmware.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 25, i32 35 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__ksymtab_dvb_usb_get_hexline, ptr @__ksymtab_usb_cypress_load_firmware, ptr @dvb_usb_download_firmware._entry, ptr @dvb_usb_download_firmware._entry.17, ptr @dvb_usb_download_firmware._entry.20, ptr @dvb_usb_download_firmware._entry_ptr, ptr @dvb_usb_download_firmware._entry_ptr.19, ptr @dvb_usb_download_firmware._entry_ptr.22, ptr @usb_cypress_load_firmware._entry, ptr @usb_cypress_load_firmware._entry.12, ptr @usb_cypress_load_firmware._entry.3, ptr @usb_cypress_load_firmware._entry.6, ptr @usb_cypress_load_firmware._entry.9, ptr @usb_cypress_load_firmware._entry_ptr, ptr @usb_cypress_load_firmware._entry_ptr.11, ptr @usb_cypress_load_firmware._entry_ptr.14, ptr @usb_cypress_load_firmware._entry_ptr.5, ptr @usb_cypress_load_firmware._entry_ptr.8, ptr @cypress, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_cypress_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_cypress_load_firmware._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_cypress_load_firmware._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_cypress_load_firmware._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_cypress_load_firmware._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_download_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 131, i32 192, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_download_firmware._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_download_firmware._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 121, i32 160, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_cypress_load_firmware(ptr noundef %udev, ptr nocapture noundef readonly %fw, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu_cs_register1 = getelementptr [4 x %struct.usb_cypress_controller], ptr @cypress, i32 0, i32 %type, i32 2
  %0 = ptrtoint ptr %cpu_cs_register1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cpu_cs_register1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 268) #9
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %call7.i, align 8
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %udev, align 8
  %shl.i.i = shl i32 %5, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call1.i = tail call i32 @usb_control_msg(ptr noundef %udev, i32 noundef %or.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %1, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %cmp.not = icmp eq i32 %call1.i, 1
  br i1 %cmp.not, label %if.end.if.end6_crit_edge, label %do.end

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  %data.i = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %addr.i = getelementptr inbounds %struct.hexline, ptr %call7.i, i32 0, i32 1
  %type.i = getelementptr inbounds %struct.hexline, ptr %call7.i, i32 0, i32 2
  %data29.i = getelementptr inbounds %struct.hexline, ptr %call7.i, i32 0, i32 3
  %chk.i = getelementptr inbounds %struct.hexline, ptr %call7.i, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %do.end20.while.cond_crit_edge, %if.end6
  %pos.0 = phi i32 [ 0, %if.end6 ], [ %add40.i, %do.end20.while.cond_crit_edge ]
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %7, i32 %pos.0
  %8 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.0, i32 %9)
  %cmp.not.i = icmp ult i32 %pos.0, %9
  br i1 %cmp.not.i, label %if.end.i, label %if.then49

if.end.i:                                         ; preds = %while.cond
  %10 = call ptr @memset(ptr %call7.i, i32 0, i32 268)
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %13 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %call7.i, align 8
  %conv.i = zext i8 %12 to i32
  %add.i = add nuw nsw i32 %conv.i, 4
  %add3.i = add nuw i32 %add.i, %pos.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %9)
  %cmp5.not.i = icmp ult i32 %add3.i, %9
  br i1 %cmp5.not.i, label %if.end8.i, label %if.end.i.do.end43_crit_edge

if.end.i.do.end43_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end43

if.end8.i:                                        ; preds = %if.end.i
  %arrayidx9.i = getelementptr i8, ptr %arrayidx.i, i32 1
  %14 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %15 to i32
  %arrayidx11.i = getelementptr i8, ptr %arrayidx.i, i32 2
  %16 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %17 to i32
  %shl.i = shl nuw nsw i32 %conv12.i, 8
  %or.i90 = or i32 %shl.i, %conv10.i
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i90, ptr %addr.i, align 4
  %arrayidx13.i = getelementptr i8, ptr %arrayidx.i, i32 3
  %19 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx13.i, align 1
  %21 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %20)
  %cmp16.i = icmp eq i8 %20, 4
  br i1 %cmp16.i, label %if.then18.i, label %if.end8.i.dvb_usb_get_hexline.exit_crit_edge

if.end8.i.dvb_usb_get_hexline.exit_crit_edge:     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dvb_usb_get_hexline.exit

if.then18.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx19.i = getelementptr i8, ptr %arrayidx.i, i32 4
  %22 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx19.i, align 1
  %conv20.i = zext i8 %23 to i32
  %shl21.i = shl nuw i32 %conv20.i, 24
  %arrayidx22.i = getelementptr i8, ptr %arrayidx.i, i32 5
  %24 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx22.i, align 1
  %conv23.i = zext i8 %25 to i32
  %shl24.i = shl nuw nsw i32 %conv23.i, 16
  %or25.i = or i32 %shl21.i, %or.i90
  %or27.i = or i32 %or25.i, %shl24.i
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or27.i, ptr %addr.i, align 4
  br label %dvb_usb_get_hexline.exit

dvb_usb_get_hexline.exit:                         ; preds = %if.then18.i, %if.end8.i.dvb_usb_get_hexline.exit_crit_edge
  %arrayidx30.i = getelementptr i8, ptr %arrayidx.i, i32 4
  %27 = call ptr @memcpy(ptr %data29.i, ptr %arrayidx30.i, i32 %conv.i)
  %arrayidx36.i = getelementptr i8, ptr %arrayidx.i, i32 %add.i
  %28 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx36.i, align 1
  %30 = ptrtoint ptr %chk.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %chk.i, align 8
  %add39.i = add nuw i32 %pos.0, 5
  %add40.i = add nuw i32 %add39.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add40.i)
  %cmp8 = icmp sgt i32 %add40.i, 0
  br i1 %cmp8, label %do.body9, label %dvb_usb_get_hexline.exit.do.end43_crit_edge

dvb_usb_get_hexline.exit.do.end43_crit_edge:      ; preds = %dvb_usb_get_hexline.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end43

do.body9:                                         ; preds = %dvb_usb_get_hexline.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %31 = load i32, ptr @dvb_usb_debug, align 4
  %and = and i32 %31, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.body9.do.end20_crit_edge, label %do.end14

do.body9.do.end20_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20

do.end14:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr.i, align 4
  %34 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %call7.i, align 8
  %conv = zext i8 %35 to i32
  %36 = ptrtoint ptr %chk.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %chk.i, align 8
  %conv16 = zext i8 %37 to i32
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %33, i32 noundef %conv, i32 noundef %conv16) #10
  br label %do.end20

do.end20:                                         ; preds = %do.end14, %do.body9.do.end20_crit_edge
  %38 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr.i, align 4
  %conv22 = trunc i32 %39 to i16
  %40 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %call7.i, align 8
  %42 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %udev, align 8
  %shl.i.i91 = shl i32 %43, 8
  %or.i92 = or i32 %shl.i.i91, -2147483648
  %conv.i93 = zext i8 %41 to i16
  %call1.i94 = tail call i32 @usb_control_msg(ptr noundef %udev, i32 noundef %or.i92, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv22, i16 noundef zeroext 0, ptr noundef %data29.i, i16 noundef zeroext %conv.i93, i32 noundef 5000) #6
  %44 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %call7.i, align 8
  %conv26 = zext i8 %45 to i32
  %cmp27.not = icmp eq i32 %call1.i94, %conv26
  br i1 %cmp27.not, label %do.end20.while.cond_crit_edge, label %while.end.thread

do.end20.while.cond_crit_edge:                    ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end.thread:                                 ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #8
  %conv26.le = zext i8 %45 to i32
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %call1.i94, i32 noundef %conv26.le) #10
  br label %do.end43

do.end43:                                         ; preds = %while.end.thread, %dvb_usb_get_hexline.exit.do.end43_crit_edge, %if.end.i.do.end43_crit_edge
  %ret.0109 = phi i32 [ -22, %while.end.thread ], [ -22, %if.end.i.do.end43_crit_edge ], [ %add40.i, %dvb_usb_get_hexline.exit.do.end43_crit_edge ]
  %pos.1104108 = phi i32 [ %add40.i, %while.end.thread ], [ %pos.0, %if.end.i.do.end43_crit_edge ], [ %add40.i, %dvb_usb_get_hexline.exit.do.end43_crit_edge ]
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %pos.1104108, i32 noundef %ret.0109) #10
  br label %cleanup.sink.split

if.then49:                                        ; preds = %while.cond
  %46 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %call7.i, align 8
  %47 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %udev, align 8
  %shl.i.i95 = shl i32 %48, 8
  %or.i96 = or i32 %shl.i.i95, -2147483648
  %call1.i97 = tail call i32 @usb_control_msg(ptr noundef %udev, i32 noundef %or.i96, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %1, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i97)
  %cmp52.not = icmp eq i32 %call1.i97, 1
  br i1 %cmp52.not, label %if.then49.cleanup.sink.split_crit_edge, label %do.end57

if.then49.cleanup.sink.split_crit_edge:           ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end57:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end57, %if.then49.cleanup.sink.split_crit_edge, %do.end43
  %retval.0.ph = phi i32 [ %ret.0109, %do.end43 ], [ -22, %do.end57 ], [ 0, %if.then49.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dvb_usb_get_hexline(ptr nocapture noundef readonly %fw, ptr nocapture noundef %hx, ptr nocapture noundef %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 %3
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp ult i32 %3, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = call ptr @memset(ptr %hx, i32 0, i32 268)
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %9 = ptrtoint ptr %hx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %hx, align 4
  %10 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pos, align 4
  %conv = zext i8 %8 to i32
  %add = add nuw nsw i32 %conv, 4
  %add3 = add i32 %add, %11
  %12 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %13)
  %cmp5.not = icmp ult i32 %add3, %13
  br i1 %cmp5.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %arrayidx9 = getelementptr i8, ptr %arrayidx, i32 1
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %15 to i32
  %arrayidx11 = getelementptr i8, ptr %arrayidx, i32 2
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %17 to i32
  %shl = shl nuw nsw i32 %conv12, 8
  %or = or i32 %shl, %conv10
  %addr = getelementptr inbounds %struct.hexline, ptr %hx, i32 0, i32 1
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or, ptr %addr, align 4
  %arrayidx13 = getelementptr i8, ptr %arrayidx, i32 3
  %19 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx13, align 1
  %type = getelementptr inbounds %struct.hexline, ptr %hx, i32 0, i32 2
  %21 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %20)
  %cmp16 = icmp eq i8 %20, 4
  br i1 %cmp16, label %if.then18, label %if.end8.if.end28_crit_edge

if.end8.if.end28_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then18:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx19 = getelementptr i8, ptr %arrayidx, i32 4
  %22 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %23 to i32
  %shl21 = shl nuw i32 %conv20, 24
  %arrayidx22 = getelementptr i8, ptr %arrayidx, i32 5
  %24 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %25 to i32
  %shl24 = shl nuw nsw i32 %conv23, 16
  %or25 = or i32 %shl21, %or
  %or27 = or i32 %or25, %shl24
  %26 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or27, ptr %addr, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then18, %if.end8.if.end28_crit_edge
  %data29 = getelementptr inbounds %struct.hexline, ptr %hx, i32 0, i32 3
  %arrayidx30 = getelementptr i8, ptr %arrayidx, i32 4
  %27 = call ptr @memcpy(ptr %data29, ptr %arrayidx30, i32 %conv)
  %arrayidx36 = getelementptr i8, ptr %arrayidx, i32 %add
  %28 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx36, align 1
  %chk = getelementptr inbounds %struct.hexline, ptr %hx, i32 0, i32 4
  %30 = ptrtoint ptr %chk to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %chk, align 4
  %add39 = add nuw nsw i32 %conv, 5
  %31 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pos, align 4
  %add40 = add i32 %add39, %32
  store i32 %add40, ptr %pos, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add40, %if.end28 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_usb_download_firmware(ptr noundef %udev, ptr nocapture noundef readonly %props) local_unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #6
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fw, align 4
  %firmware = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %props, i32 0, i32 3
  %1 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %firmware, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %2, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  %3 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %firmware, align 4
  br i1 %cmp.not, label %do.end5, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %4, i32 noundef %call) #10
  br label %cleanup

do.end5:                                          ; preds = %entry
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %4) #10
  %usb_ctrl = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %props, i32 0, i32 1
  %5 = ptrtoint ptr %usb_ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %usb_ctrl, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %do.end5.sw.epilog_crit_edge [
    i32 1, label %do.end5.sw.bb_crit_edge
    i32 2, label %do.end5.sw.bb_crit_edge32
    i32 3, label %do.end5.sw.bb_crit_edge33
    i32 0, label %sw.bb11
  ]

do.end5.sw.bb_crit_edge33:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

do.end5.sw.bb_crit_edge32:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

do.end5.sw.bb_crit_edge:                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

do.end5.sw.epilog_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end5.sw.bb_crit_edge, %do.end5.sw.bb_crit_edge32, %do.end5.sw.bb_crit_edge33
  %8 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw, align 4
  %call10 = call i32 @usb_cypress_load_firmware(ptr noundef %udev, ptr noundef %9, i32 noundef %6)
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end5
  %download_firmware = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %props, i32 0, i32 2
  %10 = ptrtoint ptr %download_firmware to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %download_firmware, align 8
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %do.end17, label %if.then12

if.then12:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw, align 4
  %call14 = call i32 %11(ptr noundef %udev, ptr noundef %13) #6
  br label %sw.epilog

do.end17:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end17, %if.then12, %sw.bb, %do.end5.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call14, %if.then12 ], [ -22, %do.end17 ], [ %call10, %sw.bb ], [ -22, %do.end5.sw.epilog_crit_edge ]
  %14 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %15) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %ret.0, %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-firmware.c", i32 52, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @usb_cypress_load_firmware._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @usb_cypress_load_firmware._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-firmware.c", i32 55, i32 3}
!8 = !{ptr @usb_cypress_load_firmware._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @usb_cypress_load_firmware._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-firmware.c", i32 59, i32 4}
!12 = !{ptr @usb_cypress_load_firmware._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @usb_cypress_load_firmware._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-firmware.c", i32 66, i32 3}
!16 = !{ptr @usb_cypress_load_firmware._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @usb_cypress_load_firmware._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-firmware.c", i32 75, i32 4}
!20 = !{ptr @usb_cypress_load_firmware._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @usb_cypress_load_firmware._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__ksymtab_usb_cypress_load_firmware, !23, !"__ksymtab_usb_cypress_load_firmware", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-firmware.c", i32 85, i32 1}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-firmware.c", i32 94, i32 3}
!26 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @dvb_usb_download_firmware._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @dvb_usb_download_firmware._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-firmware.c", i32 99, i32 2}
!31 = !{ptr @dvb_usb_download_firmware._entry.17, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @dvb_usb_download_firmware._entry_ptr.19, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-firmware.c", i32 111, i32 5}
!35 = !{ptr @dvb_usb_download_firmware._entry.20, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @dvb_usb_download_firmware._entry_ptr.22, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @__ksymtab_dvb_usb_get_hexline, !38, !"__ksymtab_dvb_usb_get_hexline", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-firmware.c", i32 155, i32 1}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-firmware.c", i32 22, i32 35}
!41 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-firmware.c", i32 23, i32 35}
!43 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-firmware.c", i32 24, i32 35}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-firmware.c", i32 25, i32 35}
!47 = !{ptr @cypress, !48, !"cypress", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-firmware.c", i32 21, i32 38}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
